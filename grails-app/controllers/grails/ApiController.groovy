package grails

import grails.converters.JSON
import grails.converters.XML
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_MODERATOR"])
class ApiController {

    def index() { render User.list() as JSON }

    def user() {
        switch (request.getMethod()) {
            case "GET":
                if (params.id) {
                    def userInstance = User.get(params.id)
                    if (!userInstance)
                        return response.status = 404
                    response.withFormat {
                        xml { render userInstance as XML }
                        json { render userInstance as JSON }
                    }
                } else {
                    def listUser = User.list()
                    response.withFormat {
                        xml { render listUser as XML }
                        json { render listUser as JSON }
                    }
                }
                break
            case "PUT":
                if (!params.id)
                    return response.status = 400
                def userInstance = User.get(params.id)
                if (!userInstance)
                    return response.status = 404
                if (!request.getJSON().username) {
                    return response.status = 404
                } else {
                    userInstance.setUsername(request.getJSON().username)
                }
                if (!request.getJSON().password) {
                    return response.status = 404
                } else {
                    userInstance.setPassword(request.getJSON().password)
                }
                if (!request.getJSON().enabled) {
                    return response.status = 404
                } else {
                    userInstance.setEnabled(request.getJSON().enabled)
                }
                if (!request.getJSON().accountExpired) {
                    return response.status = 404
                } else {
                    userInstance.setAccountExpired(request.getJSON().accountExpired)
                }
                if (!request.getJSON().accountLocked) {
                    return response.status = 404
                } else {
                    userInstance.setAccountLocked(request.getJSON().accountLocked)
                }
                if (!request.getJSON().passwordExpired) {
                    return response.status = 404
                } else {
                    userInstance.setPasswordExpired(request.getJSON().passwordExpired)
                }
                userInstance.save(flush: true)
                response.withFormat {
                    xml { render userInstance as XML }
                    json { render userInstance as JSON }
                }
                break
            case "POST":
                if (!params.username)
                    return response.status = 400
                def username = params.username
                if (!params.password)
                    return response.status = 400
                def password = params.password
                def enabled
                def accountExpired
                def accountLocked
                def passwordExpired
                if (!params.enabled) {
                    enabled = true
                } else {
                    enabled = params.enabled
                }
                if (!params.accountExpired) {
                    accountExpired = false
                } else {
                    accountExpired = params.accountExpired
                }
                if (!params.accountLocked) {
                    accountLocked = false
                } else {
                    accountLocked = params.accountLocked
                }
                if (!params.passwordExpired) {
                    passwordExpired = false
                } else {
                    passwordExpired = params.passwordExpired
                }
                def userInstance = new User(
                        username: username, password: password,
                        enabled: enabled, accountExpired: accountExpired,
                        accountLocked: accountLocked, passwordExpired: passwordExpired
                )
                userInstance.save(flush: true)
                response.withFormat {
                    xml { render userInstance as XML }
                    json { render userInstance as JSON }
                }
                break
            case "PATCH":
                if (!params.id)
                    return response.status = 400
                def userInstance = User.get(params.id)
                if (!userInstance)
                    return response.status = 404
                if (request.getJSON().username)
                    userInstance.setUsername(request.getJSON().username)
                if (request.getJSON().password)
                    userInstance.setPassword(request.getJSON().password)
                if (request.getJSON().enabled)
                    userInstance.setEnabled(request.getJSON().enabled)
                if (request.getJSON().accountExpired)
                    userInstance.setAccountExpired(request.getJSON().accountExpired)
                if (request.getJSON().accountLocked)
                    userInstance.setAccountLocked(request.getJSON().accountLocked)
                if (request.getJSON().passwordExpired)
                    userInstance.setPasswordExpired(request.getJSON().passwordExpired)
                userInstance.save(flush: true)
                response.withFormat {
                    xml { render userInstance as XML }
                    json { render userInstance as JSON }
                }
                break
            case "DELETE":
                if (!params.id)
                    return response.status = 400
                def userInstance = User.get(params.id)
                if (!userInstance)
                    return response.status = 404
                userInstance.delete(flush: true);
                response.withFormat {
                    xml { render userInstance as XML }
                    json { render userInstance as JSON }
                }
                break
            default:
                return response.status = 405
                break
        }
        return response.status = 406
    }

    def users() {
        switch (request.getMethod()) {
            case "GET":
                def listUser = User.list()
                response.withFormat {
                    xml { render listUser as XML }
                    json { render listUser as JSON }
                }
                break
            default:
                return response.status = 405
                break
        }
        return response.status = 406
    }

    @Secured(["ROLE_ADMIN", "ROLE_MODERATOR", "ROLE_CLIENT"])
    def saleAd() {
        switch (request.getMethod()) {
            case "GET":
                if (params.id) {
                    def saleAdInstance = SaleAd.get(params.id)
                    if (!saleAdInstance)
                        return response.status = 404
                    respond(saleAdInstance)
                } else {
                    def listSaleAd = SaleAd.list()
                    respond(listSaleAd)
                }
                break
            case "POST":
                if (!params.title)
                    return response.status = 400
                def title = params.title
                if (!params.description)
                    return response.status = 400
                def description = params.description
                if (!params.price)
                    return response.status = 400
                def price = params.price
                if (!params.author_id)
                    return response.status = 400
                def author = params.author_id
                def authorInstance = User.get(author)
                def saleAdInstance = new SaleAd(
                        title: title, description: description,
                        price: price, author: authorInstance
                )
                saleAdInstance.save(flush: true)
                response.withFormat {
                    xml { render saleAdInstance as XML }
                    json { render saleAdInstance as JSON }
                }
                break
            case "PUT":
                if (!params.id)
                    return response.status = 400
                def saleAdInstance = SaleAd.get(params.id)
                if (!request.getJSON().title) {
                    return response.status = 400
                } else {
                    saleAdInstance.setTitle(request.getJSON().title)
                }
                if (!request.getJSON().description) {
                    return response.status = 400
                } else {
                    saleAdInstance.setDescription(request.getJSON().description)
                }
                if (!request.getJSON().price) {
                    return response.status = 400
                } else {
                    saleAdInstance.setPrice(request.getJSON().price)
                }
                if (!request.getJSON().author_id) {
                    return response.status = 400
                } else {
                    def authorInstance = User.get(request.getJSON().author_id)
                    if (!authorInstance)
                        return response.status = 400
                    saleAdInstance.setAuthor(authorInstance)
                }
                saleAdInstance.save(flush: true)
                break
            case "PATCH":
                if (!params.id)
                    return response.status = 400
                def saleAdInstance = SaleAd.get(params.id)
                if (request.getJSON().title)
                    saleAdInstance.setTitle(request.getJSON().title)
                if (request.getJSON().description)
                    saleAdInstance.setDescription(request.getJSON().description)
                if (request.getJSON().price)
                    saleAdInstance.setPrice(request.getJSON().price)
                if (request.getJSON().author_id) {
                    def authorInstance = User.get(request.getJSON().author_id)
                    saleAdInstance.setAuthor(authorInstance)
                }
                saleAdInstance.save(flush: true)
                break
            case "DELETE":
                if (!params.id)
                    return response.status = 400
                def saleAdInstance = SaleAd.get(params.id)
                if (!saleAdInstance)
                    return response.status = 404
                saleAdInstance.delete(flush: true);
                response.withFormat {
                    xml { render saleAdInstance as XML }
                    json { render saleAdInstance as JSON }
                }
                break

            default:
                return response.status = 405
                break
        }
        return response.status = 406
    }

    @Secured(["ROLE_ADMIN", "ROLE_MODERATOR", "ROLE_CLIENT"])
    def saleAds() {
        switch (request.getMethod()) {
            case "GET":
                if (params.username) {
                    //  def saleAdInstance = SaleAd.get(params.idUser)
                    def userInstance = User.findByUsername(params.username)
                    def listSaleAd = SaleAd.findAllByAuthor(userInstance)
                    if (!listSaleAd)
                        return response.status = 404
                    respond(listSaleAd)
                } else {
                    def listSaleAd = SaleAd.list()
                    respond(listSaleAd)
                }
                break
            default:
                return response.status = 405
                break
        }
        return response.status = 406
    }

    def test() {
        respond(SaleAd.list())
    }

}