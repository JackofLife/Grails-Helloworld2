<nav class="mt-1 mb-3 no-print border border-secondary rounded" id="breadcrumbs" style="background-color: #e9ecef;">
    <ol class="breadcrumb mb-0 py-2 d-inline-flex" role="toolbar">
        <li class="breadcrumb-item">
            <g:link controller="home">
                <i class="fas fa-fw fa-home"></i> Home
            </g:link>
        </li>
        <g:each in="${breadcrumbs}" var="b">
            <g:if test="${b.active}">
                <li class="breadcrumb-item active">
                    ${b.icon ? raw("<i class='$b.icon'></i>") : ""} ${b.title}
                </li>
            </g:if>
            <g:else>
                <li class="breadcrumb-item d-none d-sm-inline">
                    <a href="${b.uri ?: createLink(controller: b.controller ?: controllerName, action: b.action ?: 'index')}">
                        ${b.icon ? raw("<i class='$b.icon'></i>") : ""} ${b.title}
                    </a>
                </li>
            </g:else>
        </g:each>
    </ol>
    <g:if test="${help}">
        <div class="mb-0 py-1 d-inline-flex" style="float: right">
            <a class="nav-link" href="javascript:void(0);" onclick="javascript:startHelp();">
                <i class="fas fa-question-circle fa-lg mr-1"></i> Help
            </a>
        </div>
    </g:if>
</nav>