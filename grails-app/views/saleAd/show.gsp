<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-saleAd" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <ol class="property-list saleAd">

                <li class="fieldcontain">
                    <span id="title-label" class="property-label">Title</span>
                    <div class="property-value" aria-labelledby="title-label">${saleAd.title}</div>
                </li>

                <li class="fieldcontain">
                    <span id="description-label" class="property-label">Description</span>
                    <div class="property-value" aria-labelledby="description-label">${saleAd.description}</div>
                </li>

                <li class="fieldcontain">
                    <span id="price-label" class="property-label">Price</span>
                    <div class="property-value" aria-labelledby="price-label">${saleAd.price}</div>
                </li>

                <li class="fieldcontain">
                    <span id="illustrations-label" class="property-label">Illustrations</span>
                    <div class="property-value" aria-labelledby="illustrations-label">
                        <g:each in="${saleAd.illustrations}" var="illustrationList">

                            <ul><li>
                                <a href="/illustration/show/${illustrationList.id}">grails.Illustration : ${illustrationList.id}</a>
                            </li></ul>

                        </g:each>
                    </div>
                </li>

                <li class="fieldcontain">
                    <span id="author-label" class="property-label">Author</span>
                    <div class="property-value" aria-labelledby="author-label"><a href="/user/show/${saleAd.author.id}">${saleAd.author}</a></div>
                </li>

            </ol>

            <g:form resource="${this.saleAd}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.saleAd}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
