<%@ page import="com.databasil.auth.SecurityRules; grails.util.Environment" %>
<footer>
    <g:if test="${Environment.current == Environment.DEVELOPMENT || SecurityRules.hasPermission(SecurityRules.roleSuperAdmin)}">
    <nav class="navbar fixed-bottom navbar-expand-lg navbar-light bg-light" style="border-top: 1px solid #aaa">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <g:link controller="admin" action="cpanel" class="nav-link">
                    <i class="fas fa-fw fa-cog"></i> Control Panel
                </g:link>
            </li>
        </ul>

        <ul class="navbar-nav">
            <li class="nav-item">
                <g:if env="development">
                    <g:link class="nav-link" uri="/dbconsole" target="_blank">
                        <i class="fas fa-fw fa-database"></i> Database Console
                    </g:link>
                </g:if>
                <g:else>
                    <a href="https://apps.databasil.com/phpmyadmin" class="nav-link" target="_blank">
                        <i class="fas fa-fw fa-database"></i> Database Console
                    </a>
                </g:else>
            </li>
        </ul>
    </nav>
    </g:if>
</footer>