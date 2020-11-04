package grails

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured(["ROLE_ADMIN","ROLE_MODERATOR"])
class IllustrationController {

    IllustrationService illustrationService
    UploadService uploadService
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond illustrationService.list(params), model:[illustrationCount: illustrationService.count()]
    }

    def show(Long id) {
        respond illustrationService.get(id)
    }

    def create() {
        respond new Illustration(params)
    }

//    def save(Illustration illustration) {
//        if (illustration == null) {
//            notFound()
//            return
//        }
//
//        try {
//            illustrationService.save(illustration)
//        } catch (ValidationException e) {
//            respond illustration.errors, view:'create'
//            return
//        }
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.created.message', args: [message(code: 'illustration.label', default: 'Illustration'), illustration.id])
//                redirect illustration
//            }
//            '*' { respond illustration, [status: CREATED] }
//        }
//    }

    def save(Illustration illustration) {
        if (illustration == null) {
            notFound()
            return
        }

        try {
            if (request.getFiles('listeFchiers')) {
                def fileList = request.getFiles('listeFchiers');
                fileList.each { file ->
                    def index = file.getOriginalFilename().lastIndexOf(".")
                    // def nomFichier = file.getOriginalFilename().substring(0, index)
                    def nomFichier = file.getOriginalFilename()
                    def illustrationInstance = new Illustration()
                    illustrationInstance.setFilename(nomFichier)
                    illustrationInstance.setSaleAd(illustration.getSaleAd())
                    illustrationInstance.save(flush: true)
                    if (!file.isEmpty()) {
                        uploadService.uploadFile(file, "${file.getOriginalFilename()}", "files_Images")
                    }
                    redirect action: 'index', controller: 'illustration'
                }
            }
        } catch (ValidationException e) {
            respond illustration.errors, view: 'create'
            return
        }


    }

    def edit(Long id) {
        respond illustrationService.get(id)
    }

    def update(Illustration illustration) {
        if (illustration == null) {
            notFound()
            return
        }

        try {
            illustrationService.save(illustration)
        } catch (ValidationException e) {
            respond illustration.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'illustration.label', default: 'Illustration'), illustration.id])
                redirect illustration
            }
            '*'{ respond illustration, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        illustrationService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'illustration.label', default: 'Illustration'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ redirect action: 'index', controller: 'illustration'}
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'illustration.label', default: 'Illustration'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
