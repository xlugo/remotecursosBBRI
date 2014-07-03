<div id="menu">
<nobr>
 <g:if test="${session.user}">
  <b>${session.user?.firstName}&nbsp;${session.user?.lastName}</b>
  <g:link controller="alumno" action="logout"><g:message code="default.button.logout.label" /></g:link>
</g:if>
<g:else>
<g:link controller="alumno" action="login"><g:message code="default.button.login.label" /></g:link>
</g:else>
</nobr>
</div>

