<%--
  User: cesarreyes
  Date: 18/11/10
  Time: 23:06
--%>

<%@ page import="org.nopalsoft.mercury.domain.IssueType; org.nopalsoft.mercury.domain.Priority" contentType="text/html;charset=UTF-8" %>
<html>
<head>
   <meta name="layout" content="main">
   <title>${issue.summary}</title>
   <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/skins/simple', file: 'style.css')}"/>
   <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/sets/default', file: 'style.css')}"/>
   <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.markitup.js')}"></script>
   <script type="text/javascript" src="${resource(dir: 'js/sets/default', file: 'set.js')}"></script>
</head>

<body>

<content tag="navbar">
   <g:render template="/shared/menu" model="[selected:'issues']"/>
</content>

<div class="content">
   <h2>Editar incidencia</h2>

   <g:form action="saveEdit" name="issueForm" class="form-stacked">
      <g:hiddenField name="id" value="${issue.id}"/>
      <g:hasErrors bean="${issue}">
         <div class="errors">
            <g:renderErrors bean="${issue}" as="list"/>
         </div>
      </g:hasErrors>
      <div class="row">
         <div class="span10 columns">
            <div class="clearfix">
               <label for="summary">Resumen:</label>
               <div class="input"><g:textField name="summary" value="${issue.summary}" style="width:500px;"/></div>
            </div>

            <div class="clearfix">
               <label for="description">Descripcion:</label>
               <div class="input"><g:textArea name="description" value="${issue.description}" style="width:500px;height:100px;"/></div>
            </div>

            <div class="clearfix">
               <label>Entrega</label>

               <div class="input"><g:select name="milestone.id" value="${issue.milestone?.id}" from="${milestones}"
                                            optionKey="id"
                                            optionValue="name" noSelection="['':'-Sin asignar-']"/></div>
            </div>

            <div class="clearfix">
               <label for="dueDate">Fecha de entrega</label>
               <div class="input"><g:textField name="dueDate" value="${formatDate(date:issue.dueDate, format:'dd/MM/yyyy')}"/></div>
            </div>

            <div class="clearfix">
               <label for="issueType.id">Tipo de incidencia</label>
               <div class="input"><g:select name="issueType.id" value="${issue.issueType?.id}" from="${IssueType.list()}" optionKey="id"
                         optionValue="name"/></div>
            </div>

            <div class="clearfix">
               <label for="priority.id">Prioridad</label>
               <div class="input"><g:select name="priority.id" value="${issue.priority?.id}" from="${Priority.list()}" optionKey="id"
                         optionValue="name"/></div>
            </div>

            <div class="clearfix">
               <label for="category.id">Categoria</label>
               <div class="input"><g:select name="category.id" value="${issue.category?.id}" from="${categories}" optionKey="id"
                         optionValue="name" noSelection="['':'Seleccione...']"/></div>
            </div>
         </div>

         <div class="span4 columns">
            <div class="clearfix">
               <label for="assignee.id">Asignado a:</label>
               <div class="input"><g:select name="assignee.id" value="${issue.assignee?.id}"
                         from="${project.users.findAll{ it.enabled }.sort{ it.fullName }}" optionKey="id"
                         optionValue="fullName" noSelection="${['':'Seleccione']}"/></div>
            </div>

            <div class="clearfix">
               <label for="watchers">Observadores:</label>
               <div class="input"><g:select name="watchers" from="${project.users.findAll{ it.enabled }.sort{ it.fullName }}"
                         optionKey="id" optionValue="fullName"
                         multiple="true" value="${issue.watchers}" style="height:100px;"/></div>
            </div>
         </div>
      </div>

      <div class="actions">
         <g:submitButton name="save" class="btn primary" value="Guardar"/>
         <g:link action="view" id="${issue.code}" class="button">cancelar</g:link>
      </div>
   </g:form>
</div>

<script type="text/javascript">
   $(function () {
      $("#dueDate").datepicker({dateFormat: 'dd/mm/yy'});
      $('#summary').focus();
      $('#description').markItUp(mySettings);
   });
</script>

</body>
</html>