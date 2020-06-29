<#macro panel>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Action
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Raise hand up</a>
                    </div>
                </li>
            </ul>
            <div class="float-left">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" width="320">
                        ${username}
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">
                                <form action="/logout" method="post" class="form-inline my-2 my-lg-0">
                                    <input type="hidden" name="_csrf" value="${_csrf.token}" />
                                    <input class="butInput my-2 my-lg-0 mr-sm-0 my-sm-0" type="submit" value="Sign Out"/>
                                </form>
                        </a>
                    </div>
                </li>
            </ul>
            </div>
        </div>
    </nav>
</#macro>