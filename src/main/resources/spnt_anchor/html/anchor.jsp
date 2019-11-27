<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<div id="${currentNode.name}">
    <c:if test="${renderContext.editMode}">
        #${currentNode.name} (${currentNode.displayableName})
    </c:if>
</div>