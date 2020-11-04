package grails

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

//        "/"(view:"/testIndex/index")
//        "/"(view:"/index")
        "/"(view:"/saleAd/index")
        "/login/auth"(view: "/login/newLogin")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
