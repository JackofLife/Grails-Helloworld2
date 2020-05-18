<%@ page import="com.databasil.auth.SecurityRules" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark py-1 sticky-top" id="mainNavigation">
    <g:render template="/layouts/fragments/menus/main"/>
    <div class="flex-row mx-auto d-md-flex">
        <g:if test="${navbarLinks}"><g:render template="${navbarLinks}"/></g:if>
    </div>
    <div class="collapse navbar-collapse" style="flex-grow: unset" id="navbarCollapse">
        <form class="form-inline mr-4 d-none d-sm-inline-block">
            <div class="input-group" id="searchBar">
                <div class="input-group-append">
                    <input class="form-control-sm rounded" type="search" placeholder="Search..." name="q" id="searchField"/>
                    <button class="btn btn-sm btn-secondary" style="margin-left: -4px" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
    </div>
    <g:render template="/layouts/fragments/menus/user"/>
</nav>
