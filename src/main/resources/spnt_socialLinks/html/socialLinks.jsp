<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>
<template:include view="hidden.header"/>

<ul class="list-inline mb-5">
    <c:forEach items="${moduleMap.currentList}" var="socialLink" begin="${moduleMap.begin}" end="${moduleMap.end}"
               varStatus="status">
        <li class="list-inline-item">
            <template:module node="${socialLink}" editable="true"/>
        </li>
    </c:forEach>
    <c:if test="${renderContext.editMode}">
        <li class="list-inline-item">
        <template:module path="*" nodeTypes="spnt:socialLink"/>
        </li>
    </c:if>
</ul>
