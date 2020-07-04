proc file'hexdump filename {
   set fp [open $filename]
   fconfigure $fp -translation binary
   set n 0
   while {![eof $fp]} {
       set bytes [read $fp 16]
       regsub -all {[^\x20-\xfe]} $bytes . ascii
       puts [format "%04X %-48s %-16s" $n [hexdump $bytes] $ascii]
       incr n 16
   }
   close $fp
}

proc hexdump string {
   binary scan $string H* hex
   regexp -all -inline .. $hex
}
