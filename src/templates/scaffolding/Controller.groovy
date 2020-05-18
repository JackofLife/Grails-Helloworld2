<%=packageName ? "package ${packageName}" : ''%>

class ${className}Controller {
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def ${propertyName.replace('Instance','')}Service

    def index(Integer max) {
        params.max = Math.min(max ?: 25, 500)
        List ${propertyName}List = ${propertyName.replace('Instance','')}Service.list${className}s(params)
        render(view:'index', model:[${propertyName}List: ${propertyName}List, ${propertyName}Count: ${className}.count()])
    }

    def create() {
        render(view: 'create', model:[${propertyName}: flash.instance ?: new ${className}(params)])
    }

    def edit(Long id) {
        render(view:'edit', model: [${propertyName}: flash.instance ?: ${propertyName.replace('Instance','')}Service.get${className}(id)])
    }

    def save() {
        ${className} ${propertyName} = ${propertyName.replace('Instance','')}Service.create${className}(params)
        if (${propertyName}.hasErrors()) {
            flash.instance = ${propertyName}
            redirect(action: 'create')
            return
        }
        flash.message = "Save successful"
        redirect(action:'index')
    }

    def update() {
        ${className} ${propertyName} = ${propertyName.replace('Instance','')}Service.update${className}(params)
        if (${propertyName}.hasErrors()) {
            flash.instance = ${propertyName}
            redirect(action: 'edit')
            return
        }
        flash.message = "Update successful"
        redirect(action: 'index')
    }
}