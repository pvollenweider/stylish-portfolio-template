<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<span class="service-icon rounded-circle mx-auto mb-3"><i
        class="${currentNode.properties.simpleLineIcon.string}"></i></span>
<h4><strong>${currentNode.properties['jcr:title'].string}</strong></h4>
<p class="text-faded mb-0">${currentNode.properties.subtitle.string}</p>
