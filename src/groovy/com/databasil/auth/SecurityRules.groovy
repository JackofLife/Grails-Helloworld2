package com.databasil.auth

// import grails.plugin.springsecurity.SpringSecurityUtils

class SecurityRules {

    static final String rolePublic     = "permitAll"
    static final String roleAdmin      = "ROLE_ADMIN"
    static final String roleSuperAdmin = "ROLE_SUPER_ADMIN"
    static final String roleTester     = "ROLE_TESTER"
    static final String roleUser       = "ROLE_USER"


    // Unsecured URLs
    static final List urlsPublic = ['/*', '/assets/**', '/dbconsole/**', '/grails-errorhandler/**', '/public/**']

    // Secured URLs
    static final List urlsUser       = ['/', '/home/**', '/profile/**', '/share/**']
    static final List urlsAdmin      = ['/admin/**']
    static final List urlsTester     = ['/prototype/**']

    public static List config = [
        [urls: urlsPublic,     roles: rolePublic],
        [urls: urlsUser,       roles: roleUser],
        [urls: urlsTester,     roles: roleTester],
        [urls: urlsAdmin,      roles: roleAdmin]
    ]

    static final String roleHierarchy = """
        $roleSuperAdmin > $roleAdmin
        $roleSuperAdmin > $roleTester
        $roleAdmin > $roleTester
        $roleAdmin > $roleUser
    """

    public static boolean hasPermission(String permissions) {
        return false
    }
}