<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-saleAd" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                <tr>

                    <th class="sortable" ><a href="/saleAd/index?sort=title&amp;max=10&amp;order=asc">Title</a></th>

                    <th class="sortable" ><a href="/saleAd/index?sort=description&amp;max=10&amp;order=asc">Description</a></th>

                    <th class="sortable" ><a href="/saleAd/index?sort=price&amp;max=10&amp;order=asc">Price</a></th>

                    <th class="sortable" ><a href="/saleAd/index?sort=illustrations&amp;max=10&amp;order=asc">Illustrations</a></th>

                    <th class="sortable" ><a href="/saleAd/index?sort=author&amp;max=10&amp;order=asc">Author</a></th>

                </tr>
                </thead>

                <tbody>

                <g:each in="${grails.SaleAd.list()}" var="saleAdList">

                        <tr class="even">


                            <td><a href="/saleAd/show/${saleAdList.id}">${saleAdList.title}</a></td>



                            <td>${saleAdList.description}</td>



                            <td>${saleAdList.price}</td>

                            <td><ul>
                                <g:each in="${saleAdList.illustrations}" var="illustration">
                                        <li><a href="/illustration/show/${illustration.id}">grails.Illustration : ${illustration.id}</a></li>
                                </g:each>
                            </ul></td>

                            <td><a href="/user/show/${saleAdList.author}">grails.User : ${saleAdList.author}</a></td>

                        </tr>

                </g:each>

                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${saleAdCount ?: 0}" />
            </div>
        </div>
    </body>
</html>