package grails

class BootStrap {

    def init = { servletContext ->
        ["ADMIN", "MODERATOR", "CLIENT"].each {
            String name ->
                // Je crée l'utilisateur correspondant au nom récupéré
                def userInstance = new User(username: name, password: "password")
                // J'itère 5 fois par user créé
                (1..5).each {
                    Integer index ->
                        // Je crée une instance d'annonce
                        def saleAdInstance = new SaleAd(
                                title: "title $name $index",
                                description: "description générique",
                                price: 100*index
                        )
                        // 3 itérations
                        (1..3).each {
                            // Création + ajout à l'annonce d'une nouvelle illustration
                            saleAdInstance.addToIllustrations(
                                    new Illustration(filename: "grails.svg")
                            )
                        }
                        // J'ajoute l'instance d'annonce à l'utilisateur
                        userInstance.addToSaleAds(saleAdInstance)
                }
                userInstance.save(flush: true, failOnError: true)
        }
    }
    def destroy = {
    }
}
