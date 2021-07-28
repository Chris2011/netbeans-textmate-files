PROGRAM demo_game_2048_740.

CLASS game DEFINITION.
  PUBLIC SECTION.
    METHODS:
      constructor,
      display.
  PRIVATE SECTION.
    TYPES:
      BEGIN OF t_cell,
        value TYPE i,
        id    TYPE string,
        born  TYPE i,
      END OF t_cell,
      t_cells  TYPE STANDARD TABLE OF t_cell  WITH EMPTY KEY,
      t_field  TYPE STANDARD TABLE OF t_cells WITH EMPTY KEY,
      t_ref    TYPE REF TO t_cell,
      t_refs   TYPE STANDARD TABLE OF t_ref WITH EMPTY KEY.
    CONSTANTS tile_colors TYPE string VALUE
      `eee4da ede0c8 f2b179 f59563 f67c5f f65e3b ` &
      `edcf72 f67c5f edc850 edc53f edc22e` ##NO_TEXT.
    DATA:
      mark_new_tiles TYPE abap_bool,
      rnd     TYPE REF TO cl_abap_random_int,
      field   TYPE t_field,
      n       TYPE i,             " dimension of field
      nsq     TYPE i,             " n * n
      target  TYPE i VALUE 2048,  " target value
      score   TYPE i,             " current score
      moves   TYPE i,             " # of moves
      header  TYPE string,        " HTML header string
      over    TYPE string,        " game-over message
      line    TYPE t_refs.
    METHODS:
      at_click FOR EVENT sapevent OF cl_abap_browser IMPORTING action,
      build_line IMPORTING VALUE(direction) TYPE char1 VALUE(i) TYPE i,
      move_lines IMPORTING VALUE(direction) TYPE char1
                 RETURNING VALUE(valid) TYPE abap_bool,
      move_line  RETURNING VALUE(valid) TYPE abap_bool,
      new_tiles  IMPORTING VALUE(factor) TYPE i DEFAULT 1,
      check_game.
ENDCLASS.

CLASS game IMPLEMENTATION.
  METHOD constructor.
    DATA(size) = 4.
    cl_demo_input=>add_field( CHANGING field = size ).
    cl_demo_input=>add_field( CHANGING field = target ).
    cl_demo_input=>add_field( EXPORTING text = 'Mark new tiles'
      as_checkbox = 'X'  CHANGING field = mark_new_tiles ) ##NO_TEXT.
    cl_demo_input=>request( ).
    n      = nmax( val1 = 3 val2 = nmin( val1 = size val2 = 8 ) ).
    nsq    = n * n.
    " target tile value must be a power of 2, at least 8
    target = nmax( val1 = 8 val2 = target ).
    target = ipow( base = 2 exp = ceil( log( target ) / log( 2 ) ) ).

    rnd = cl_abap_random_int=>create( seed = CONV i( sy-uzeit )
                                      min = 0  max = nsq - 1 ).
    field = VALUE #( FOR i = 1 UNTIL i > n
                     ( VALUE #( FOR j = 1 UNTIL j > n
                                ( id = |{ i }{ j }| born = -1 ) ) ) ).
    new_tiles( 2 ).  " place initial tiles in field

    " build header with styles for tiles; cell/font sizes depend on n
    header = REDUCE string( ##NO_TEXT
      LET  w = 360 / n IN
      INIT h =
        `<html><head><style type="text/css">` &
        `.t0{background-color:#cbbdb0}` &
        `td{border:1px solid bbada0;color:#776e65` &
        `;text-align:center;vertical-align:center` &
        `;font-family:'Century Gothic',sans-serif;font-weight:bold` &&
        |;width:{ w }px;height:{ w }px;font-size:{ w / 2 }px\}|
      FOR i = 1 UNTIL i > 11
      NEXT h =
        |{ h }.t{ ipow( base = 2 exp = i ) }\{| &
        |background-color:#{ segment( val   = tile_colors
                                      index = i ) }| &
        |{ COND #( WHEN i >= 3  THEN `;color:#f9f6f2` ) }| &
        |{ COND #( WHEN i >= 10 THEN |;font-size:{ w / 4 }px|
                   WHEN i >= 7  THEN |;font-size:{ w / 3 }px| ) }\}| ).
    header = header && ##NO_TEXT
     `div{text-align:center}</style><script type="text/javascript">` &
     `function okd(e)` &
     `{c=window.event.keyCode;window.location='sapevent:'+c;}` &
     `document.onkeydown = okd;</script></head> <body scroll=no ` &
     `style="background-color:#bbada0;color:white;font-size:20pt">`.
    SET HANDLER at_click.
  ENDMETHOD.

  METHOD display.
    cl_abap_browser=>show_html(
     title        = |Join the numbers and get to the { target } tile!|
     size         = cl_abap_browser=>small
     format       = cl_abap_browser=>portrait
     context_menu = 'X'
     html_string  =
       REDUCE string(
        INIT h = |{ header }<p align=right>Score { score }</p>| &
                 |<table align=center>|
        FOR  <cells> IN field
        NEXT h = h && |<tr>| &&
         REDUCE string(
          INIT k = ``
          FOR  <c> IN <cells>
          NEXT k = |{ k }<td class=t{ <c>-value }| &
                   |{ COND #( WHEN <c>-born = moves
                              THEN ` style="border-color:red"` ) }| &
                   |>{ COND #( WHEN <c>-value = 0 THEN `&nbsp;`
                               ELSE <c>-value ) }</td>| )
         && `</tr>` )
       && `</table>` &&
       COND #( WHEN over = ``
                 THEN `<div>Use arrow keys to join tiles</div>`
                 ELSE |<br>{ over }| )
       && `</body></html>` ).
  ENDMETHOD.

  METHOD at_click.
    DATA(direction) = SWITCH #( action  WHEN 37 THEN 'L'
                                        WHEN 38 THEN 'U'
                                        WHEN 39 THEN 'R'
                                        WHEN 40 THEN 'D' ).
    IF over <> ``.  " game is over; leave game with any non-arrow key
      IF direction IS INITIAL.
        cl_abap_browser=>close_browser( ).
        LEAVE PROGRAM.
      ENDIF.
      RETURN.
    ENDIF.
    IF move_lines( direction ).
       moves = moves + 1.
       new_tiles( ).
       check_game( ).
       display( ).
    ENDIF.
  ENDMETHOD.

  METHOD check_game.
    CONSTANTS dirs TYPE char4 VALUE 'LRUD'.
    " find highest tile value and check if an empty cell exists
    DATA(fill) = REDUCE t_cell(
      INIT m = VALUE #( )
      FOR  <cells> IN field
      FOR  <c>     IN <cells>
      NEXT m-value = nmax( val1 = m-value val2 = <c>-value )
           m-id    = COND #( WHEN <c>-value = 0 THEN `!` ELSE m-id ) ).
    " game is won if target value is reached
    IF fill-value >= target.
      over = |<div>Finished in { moves } moves!</div>|.
    ELSEIF fill-id <> `!`.
      " no empty cell -> check if stuck: try move in all 4 directions
      DO 4 TIMES.
        DATA(off) = sy-index - 1.
        DO n TIMES.
          build_line( direction = dirs+off(1) i = sy-index ).
          LOOP AT line FROM 2 ASSIGNING FIELD-SYMBOL(<curr>).
            IF <curr>->value = line[ sy-tabix - 1 ]->value.
              RETURN.  " found a possible move; game not over
            ENDIF.
          ENDLOOP.
        ENDDO.
      ENDDO.
      over = `<div>*** Stuck  -  Game over ***</div>`.
    ENDIF.
  ENDMETHOD.

  METHOD move_lines.
    CHECK direction IS NOT INITIAL.
    DO n TIMES.
      build_line( direction = direction i = sy-index ).
      valid = cmax( val1 = move_line( ) val2 = valid ).
    ENDDO.
    CLEAR line.
  ENDMETHOD.

  METHOD build_line.
    " build cell references to line i, starting at end (wrt direction)
    line = VALUE #(
      FOR j = n THEN j - 1 UNTIL j = 0  " j = n...1
      LET y = SWITCH i( direction
                WHEN 'L' OR 'R' THEN i
                WHEN 'D'        THEN j
                WHEN 'U'        THEN n + 1 - j )
          x = SWITCH i( direction
                WHEN 'U' OR 'D' THEN i
                WHEN 'R'        THEN j
                WHEN 'L'        THEN n + 1 - j )
      IN ( REF #( field[ y ][ x ] ) ) ).
  ENDMETHOD.

  METHOD move_line.
    DATA: idx TYPE i VALUE 1, next_idx TYPE i VALUE 2.
    DATA(curr) = line[ 1 ].
    WHILE next_idx <= n.
      DATA(next) = line[ next_idx ].
      IF curr->value > 0.
        IF curr->value = next->value.
          curr->value = curr->value * 2.  " join tiles
          next->value = 0.
          valid = abap_true.
          score = score + curr->value.
          idx = idx + 1.  curr = line[ idx ].  " proceed
        ELSEIF next->value > 0 OR next_idx = n.
          idx = idx + 1.  curr = line[ idx ].  " proceed
          next_idx = idx.
        ENDIF.
      ELSEIF next->value <> 0.
        curr->value = next->value.  " shift tile to empty cell
        next->value = 0.
        valid = abap_true.
      ENDIF.
      next_idx = next_idx + 1.
    ENDWHILE.
  ENDMETHOD.

  METHOD new_tiles.
    " place 1 or more (for n>4) new tiles (* 2 at start of game)
    DO nmax( val1 = n - 3 val2 = 1 ) * factor TIMES.
      DATA(pos) = rnd->get_next( ).
      DATA(attempts) = nsq.
      DO. " try to place new tile at this or next free position
        ASSIGN field[ 1 + pos DIV n ][ 1 + pos MOD n ]
          TO FIELD-SYMBOL(<cell>).
        IF <cell>-value = 0.
          " free position found - tile value: 2 (likelihood 75%) or 4
          <cell>-value = COND #( WHEN rnd->get_next( ) > nsq / 4
                                 THEN 2 ELSE 4 ).
          " remember when tile was born, to display it as 'new'
          <cell>-born = COND #( WHEN moves > 0 AND
                                     mark_new_tiles = abap_true
                                THEN moves ELSE -1 ).
          EXIT.
        ENDIF.
        pos = ( pos + 1 ) MOD nsq.
        attempts = attempts - 1.
        IF attempts = 0.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.
  NEW game( )->display( ).