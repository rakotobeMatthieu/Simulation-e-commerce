package grails

import grails.gorm.services.Service
import grails.gorm.transactions.Transactional

@Service(SaleAd)
interface SaleAdService {

    SaleAd get(Serializable id)

    List<SaleAd> list(Map args)

    Long count()

    void delete(Serializable id)

    SaleAd save(SaleAd saleAd)

}