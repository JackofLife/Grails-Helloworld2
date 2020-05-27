<%@ page import="com.databasil.auth.SecurityRules" %>
<ul class="navbar-nav flex-row d-md-flex d-none d-sm-inline-block">
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="userMenu" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw mr-2 fa-user"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right shadow" aria-labelledby="navbarDropdown">
            <g:link class="dropdown-item" controller="home">
                <i class="fas fa-fw mr-2 fa-home pr-1"></i> Home
            </g:link>
            <g:link class="dropdown-item" controller="home" action="profile">
                <i class="fas fa-fw mr-2 fa-user-edit">
                </i> My Profile
            </g:link>
            <div class="dropdown-divider"></div>
            <form action="${createLink(uri:'/logout')}" method="post" id="logout">
                <a href="#" class="dropdown-item" onclick="document.getElementById('logout').submit();">
                    <i class="fas fa fa-fw mr-2 fa-sign-out-alt"></i> Log Out</a>
            </form>
        </div>
    </li>
</ul>