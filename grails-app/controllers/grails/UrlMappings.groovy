package grails

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
            }
        }

        "/"(controller:'saleAd', action: 'index')
        "/login/auth"(view: "/login/newLogin")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
