<div class="table-responsive">
    <table class="table table-bordered table-striped">
        <tr>
            <th width="20%">Property</th>
            <th width="80%">Value</th>
        </tr>
        <% List props = (propertiesList ?: instance.properties*.key).sort() %>
        <g:each in="${props}" var="prop">
            <tr>
                <td>${prop}</td>
                <td>${fieldValue(bean: instance, field: prop)}</td>
            </tr>
        </g:each>
    </table>
</div>