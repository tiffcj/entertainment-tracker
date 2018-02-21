package entertainment_tracker

import grails.gorm.transactions.Transactional

@Transactional
class EntertainmentTypeService {

    def createEntertainmentType(params) {
        EntertainmentType newEntType = new EntertainmentType()
        def currUser = User.findByUsername (params.username)
        Date createDate = new Date()

        if (currUser == null) {
            return 400
        }

        newEntType.name = params.name
        newEntType.createdByUser = currUser
        newEntType.createdOnDatetime = createDate
        newEntType.lastUpdatedByUser = currUser
        newEntType.lastUpdatedOnDatetime = createDate

        try {
            if (!newEntType.save(flush:true)) {
                println newEntType.errors
                return newEntType.errors
            } else {
                return newEntType
            }
        } catch (Exception e) {
            throw new RuntimeException(e)
        }
    }

    def getAllEntertainmentTypes() {
        return EntertainmentType.findAllByLogicalDeletedOnDatetimeIsNull([sort: 'name'])
    }
}
