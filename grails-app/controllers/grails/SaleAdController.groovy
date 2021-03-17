package grails

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import org.springframework.web.multipart.MultipartHttpServletRequest


@Secured(["ROLE_ADMIN","ROLE_MODERATOR"])
class SaleAdController {


    SaleAdService saleAdService

    def search(Integer max){
        params.max = params?.max ?: 8
        params.offset = params?.offset ?: 0
        def saleAdList = SaleAd.findAllByDescriptionRlikeOrTitleRlike(params.recherche,params.recherche,params)
        def saleAdListTemp = SaleAd.findAllByDescriptionRlikeOrTitleRlike(params.recherche,params.recherche)
        println ("sale AD LIST PLEAAAASE ${saleAdList.size()}")
        respond saleAdService.list(params), model:[saleAdCount: saleAdService.count(), saleAdListe : saleAdList , saleAdTotal: saleAdListTemp.size(),max: params.max,offset: params.offset , params : params]
    }

    def index(Integer max) {
        params.max = params?.max ?: 8
        params.offset = params?.offset ?: 0
        //params.max = Math.min(max ?: 10, 100)
        def saleAdList = SaleAd.list(params)
        println ("sale AD LIST PLEAAAASE ${saleAdList}")
        respond saleAdService.list(params), model:[saleAdCount: saleAdService.count(), saleAdListe : saleAdList , saleAdTotal: SaleAd.count,max: params.max,offset: params.offset]
    }

    def show(Long id) {
        respond saleAdService.get(id)
    }

    def create() {
        respond new SaleAd(params)
    }

    def save(SaleAd saleAd) {
        if (saleAd == null) {
            notFound()
            return
        }

        try {
            saleAdService.save(saleAd)
        } catch (ValidationException e) {
            respond saleAd.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'saleAd.label', default: 'SaleAd'), saleAd.id])
                redirect action: 'index', controller: 'saleAd'
            }
            '*' { respond saleAd, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond saleAdService.get(id)
    }

    def update() {
        def saleAd = SaleAd.get(params.id)
        if (saleAd == null) {
            notFound()
            return
        }
        saleAd.title = params.title
        saleAd.description = params.description
        saleAd.price = Double.valueOf(params.price)
        saleAd.author = User.get(params.author)

        try {
            saleAdService.save(saleAd)
            println("where author == ${params.title}")
        } catch (ValidationException e) {
            println saleAd.errors
            redirect (action: "edit",id: saleAd.id)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'saleAd.label', default: 'SaleAd'), saleAd.id])
                //redirect saleAd
                redirect action: 'index', controller: 'saleAd'
            }
            '*'{ respond saleAd, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        saleAdService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'saleAd.label', default: 'SaleAd'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'saleAd.label', default: 'SaleAd'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
