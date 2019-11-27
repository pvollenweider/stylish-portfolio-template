<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="ui" uri="http://www.jahia.org/tags/uiComponentsLib" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="propertyDefinition" type="org.jahia.services.content.nodetypes.ExtendedPropertyDefinition"--%>
<%--@elvariable id="type" type="org.jahia.services.content.nodetypes.ExtendedNodeType"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>
<c:set var="type" value="${currentNode.properties.type.string}"/>
<c:choose>
    <c:when test="${type eq 'header'}">
        <template:include view="hidden.headersection"/>
    </c:when>
    <c:when test="${type eq 'callout'}">
        <template:include view="hidden.callout"/>
    </c:when>
    <c:when test="${type eq 'blue'}">
        <template:include view="hidden.blue"/>
    </c:when>
    <c:when test="${type eq 'light'}">
        <template:include view="hidden.light"/>
    </c:when>
    <c:when test="${type eq 'portfolio'}">
        <template:include view="hidden.portfolio"/>
    </c:when>
    <c:otherwise>
        <c:if test="${renderContext.editMode}">
            Mhh... it seems that something is not working as expected... Check your current section type!
        </c:if>
    </c:otherwise>
</c:choose>
