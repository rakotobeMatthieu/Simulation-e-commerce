package grails
import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import org.springframework.web.multipart.MultipartHttpServletRequest

@Secured(["ROLE_ADMIN","ROLE_MODERATOR"])
class ChartController {

    UserRoleService userRoleService
    UserService userService
    IllustrationService illustrationService
    SaleAdService saleAdService

    def index(Integer max) {
        def listAllUser = User.findAll()
        def listAllIllu = Illustration.findAll()
        def listAllAnno = SaleAd.findAll()

        def total = 0
        for(int i=0 ; i<listAllAnno.size() ; i++){
            total = total + listAllAnno.get(i).price
        }

        def moyenne = total/listAllAnno.size()

        def criteria = UserRole.createCriteria()
        def userRoleGroupe = criteria.list {
            projections{
                groupProperty('role')
                count('user')
            }
        }

        def listColor = ["#c6fc03","#fc0303","#fc9003"]

        def saleAdPrix1 = SaleAd.findAllByPriceBetween(0,150)
        def saleAdPrix2 = SaleAd.findAllByPriceBetween(150,200)
        def saleAdPrix3 = SaleAd.findAllByPriceBetween(200,250)
        def saleAdPrix4 = SaleAd.findAllByPriceGreaterThan(250)

        def listPrice = [saleAdPrix1.size(),saleAdPrix2.size(),saleAdPrix3.size(),saleAdPrix4.size()]
        respond userRoleService.list(params), model:[userRoleCount: userRoleService.count() , nbUser : listAllUser.size() , nbIllu : listAllIllu.size() , nbAnno : listAllAnno.size(), moyenne : moyenne , userRoleLst : userRoleGroupe , listColor : listColor ,listPrice : listPrice]
    }
}
