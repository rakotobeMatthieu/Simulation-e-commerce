package grails

class User {

    String username
    String password

    static hasMany = [saleAds : SaleAd]

    static constraints = {
        username blank: false,nullable: false, unique: true
        password blank: false,nullable: false
    }
}
