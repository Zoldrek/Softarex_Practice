<#macro page>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Sweater</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form action="/logout" method="post" class="form-inline my-2 my-lg-0">
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <input class="butInput my-2 my-lg-0 mr-sm-0 my-sm-0" type="submit" value="Sign Out"/>
            </form>
        </div>
    </nav>

    <#nested>
    </body>
    </html>


    <style type="text/css">
        .butInput{
            background-color: white;
            border: 1px solid white;
        }
        .butInput:hover{
            border-bottom: 1px solid black;
        }
        a{
            border: 1px solid white;
        }
        a:hover{
            border-bottom: 1px solid black;
        }
    </style>
</#macro>
