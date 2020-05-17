<%@ page import="com.databasil.auth.SecurityRules" %>
<ul class="navbar-nav">
    <li class="nav-item dropdown">
        <a data-toggle="dropdown" class="navbar-brand">
            <span style="font-size: 1.5rem"><i class="fas fa-bars ml-2 my-1"></i> Menu</span>
        </a>
        <div class="dropdown-menu shadow">
            <g:link class="dropdown-item" controller="admin" action="cpanel">
                <i class="fas fa fa-fw mr-2 fa-cogs"></i> Control Panel
            </g:link>
        </div>
    </li>
</ul>
