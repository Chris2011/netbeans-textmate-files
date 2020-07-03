
<html>
    <head>
        <% base_tag %>
        <title>$Title</title>
        <% require themedCSS("screen") %>
    </head>
    <body>
        <header>
            <h1>Bob's Chicken Shack</h1>
        </header>

        <% with $CurrentMember %>
            <p>Welcome $FirstName $Surname.</p>
        <% end_with %>

        <% if $Dishes %>
        <ul>
            <% loop $Dishes %>
                <li>$Title ($Price.Nice)</li>
            <% end_loop %>
        </ul>
        <% end_if %>

        <% include Footer %>
    </body>
</html>
