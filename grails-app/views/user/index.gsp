<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-user" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                <tr>

                    <th class="sortable" ><a href="/user/index?sort=username&amp;max=10&amp;order=asc">Username</a></th>

                    <th class="sortable" ><a href="/user/index?sort=password&amp;max=10&amp;order=asc">Password</a></th>

                    <th class="sortable" ><a href="/user/index?sort=saleAds&amp;max=10&amp;order=asc">Sale Ads</a></th>

                </tr>
                </thead>
                <tbody>

            <g:each in="${grails.User.list()}" var="userList">

                <tr class="even">


                    <td><a href="/user/show/${userList.id}">${userList.username}</a></td>



                    <td>${userList.password}</td>



                    <td><ul>
                        <g:each in="${userList.saleAds}" var="saleAds">
                                <li><a href="/saleAd/show/${saleAds.id}">grails.SaleAd : ${saleAds.id}</a></li>
                        </g:each>
                    </ul></td>


                </tr>

            </g:each>

                </tbody>

            <div class="pagination">
                <g:paginate total="${userCount ?: 0}" />
            </div>
        </div>
    </body>
</html>