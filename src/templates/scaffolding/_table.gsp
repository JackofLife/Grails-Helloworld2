<% import grails.persistence.Event %>

<table class="table table-bordered table-striped table-hover table-sm">
    <thead>
    <tr>
        <%
            excludedProps = Event.allEvents.toList() << 'id' << 'version'
            allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
            props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) && (domainClass.constrainedProperties[it.name] ? domainClass.constrainedProperties[it.name].display : true) }
            Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
            props.eachWithIndex { p, i ->
                if (i < 6) {
                    if (p.isAssociation()) { %>
        <th>${p.naturalName}</th>
        <%      } else { %>
        <bs4:sortableColumn property="${p.name}" title="${p.naturalName}" />
        <%      }
        }
        } %>
    </tr>
    </thead>
    <tbody>
    <g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
        <tr>
            <%  props.eachWithIndex { p, i ->
                if (i == 0) { %>
            <td><g:link action="edit" id="\${${propertyName}.id}">\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</g:link></td>
            <%      } else if (i < 6) {
                if (p.type == Boolean || p.type == boolean) { %>
            <td><g:formatBoolean boolean="\${${propertyName}.${p.name}}" /></td>
            <%          } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
            <td><g:formatDate date="\${${propertyName}.${p.name}}" /></td>
            <%          } else { %>
            <td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
            <%      }
            }
            } %>
        </tr>
    </g:each>
    </tbody>
</table>