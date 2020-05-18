grails.servlet.version = "3.0"
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.work.dir = "target/work"
grails.project.target.level = 1.8
grails.project.source.level = 1.8
grails.project.war.file = "target/ROOT.war"

grails.project.fork = [
        test: [maxMemory: 2048, minMemory: 64, debug: false, daemon:true],
        run: [maxMemory: 2048, minMemory: 64, debug: false, forkReserve:false],
        war: [maxMemory: 2048, minMemory: 64, debug: false, forkReserve:false],
        console: [maxMemory: 2048, minMemory: 64, debug: false]
]

grails.project.dependency.resolver = "maven" // or ivy
grails.project.dependency.resolution = {
    inherits("global") {}
    log "error"                     // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    checksums true
    legacyResolve false

    repositories {
        inherits true

        grailsPlugins()
        grailsHome()
        mavenLocal()
        grailsCentral()
        mavenCentral()

        mavenRepo "https://repo.grails.org/grails/core/"
        mavenRepo "https://repo.grails.org/grails/plugins/"
        mavenRepo "https://repo1.maven.org/maven2/"
    }

    dependencies {
        test    "org.grails:grails-datastore-test-support:1.0.2-grails-2.4"
    }

    plugins {
        build   ":tomcat:7.0.70"

        compile ":asset-pipeline:2.5.7"
        compile ':cache:1.1.8'
        runtime ":database-migration:1.4.0"
        runtime ":hibernate4:4.3.10"
        compile ":scaffolding:2.1.2"

        /*
        compile ":less-asset-pipeline:1.10.0"
        compile ":quartz:1.0.2"
        compile ":rendering:1.0.0"
        compile ":rest-client-builder:2.1.1"
        compile ":sass-asset-pipeline:1.9.0"
        compile ":spring-security-core:2.0.0"
        */


    }
}
