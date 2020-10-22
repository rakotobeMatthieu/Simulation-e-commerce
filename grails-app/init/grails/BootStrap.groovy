package grails

class BootStrap {

    def init = { servletContext ->

        //Definition of three roles
        def adminRole = new Role(authority: "ROLE_ADMIN").save()
        def moderatorRole = new Role(authority: "ROLE_MODERATOR").save()
        def clientRole = new Role(authority: "ROLE_CLIENT").save()

        //Admin creation account
        def userAdmin = new User(username: "admin",password: "admin").save()

        //Moderator creation account
        def userModerator = new User(username: "moderator",password: "moderator").save()

        UserRole.create(userAdmin,adminRole,true)
        UserRole.create(userModerator,moderatorRole,true)

        ["Serge", "Gabriel", "Gregory","Gonzales"].each {
            String name ->
                def userInstance = new User(username: name, password: "password").save()
                UserRole.create(userInstance,clientRole,true)
                (1..5).each {
                    Integer index ->
                        def saleAdInstance = new SaleAd(
                                title: "title $name $index",
                                description: "description générique",
                                price: 100*index
                        )
                        (1..3).each {
                            saleAdInstance.addToIllustrations(
                                    new Illustration(filename: "grails.svg")
                            )
                        }
                        userInstance.addToSaleAds(saleAdInstance)
                }
                userInstance.save(flush: true, failOnError: true)
        }
    }
    def destroy = {
    }
}
