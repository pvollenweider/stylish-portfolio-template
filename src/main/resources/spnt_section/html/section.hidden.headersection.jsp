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
<c:set var="title" value="${currentNode.properties['jcr:title'].string}"/>
<c:set var="subtitle" value="${currentNode.properties.subtitle.string}"/>
<c:if test="${jcr:isNodeType(currentNode, 'spmix:image')}">
    <c:set var="imageNode" value="${currentNode.properties.image.node}"/>
    <c:if test="${! empty imageNode}">
        <c:url var="imageUrl" value="${imageNode.url}"/>
        <c:set var="bgImage"> style="background-image:url('${imageUrl}')"</c:set>
    </c:if>
</c:if>
<header class="masthead d-flex"${bgImage} id="${currentNode.name}">
    <div class="container text-center my-auto">
        <c:if test="${! empty title}">
            <h1 class="mb-1">${title}</h1>
        </c:if>
        <c:if test="${! empty subtitle}">
            <h3 class="mb-5">
                <em>${subtitle}</em>
            </h3>
        </c:if>
        <template:area path="sectioncontent" areaAsSubNode="true"/>
    </div>
    <div class="overlay"></div>
</header>
