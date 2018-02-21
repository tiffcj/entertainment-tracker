package entertainment_tracker

import grails.gorm.transactions.Transactional
import org.grails.web.json.JSONArray
import org.grails.web.json.JSONObject

@Transactional
class EntertainmentService {

    def createEntertainment(params) {
        Entertainment newEnt = new Entertainment()
        def currUser = User.findByUsername (params.username)
        Date createDate = new Date()
        def entertainmentType = EntertainmentType.findByIdAndLogicalDeletedOnDatetime(params.entertainmentType, null)

        if (entertainmentType == null || currUser == null) {
            return 400
        }

        newEnt.name = params.name
        newEnt.entertainmentType = entertainmentType
        newEnt.createdByUser = currUser
        newEnt.createdOnDatetime = createDate
        newEnt.lastUpdatedByUser = currUser
        newEnt.lastUpdatedOnDatetime = createDate

        try {
            if (!newEnt.save(flush:true)) {
                println newEnt.errors
                return newEnt.errors
            } else {
                return newEnt
            }
        } catch (Exception e) {
            throw new RuntimeException(e)
        }
    }

    def updateEntertainment(params) {
        Entertainment ent = Entertainment.findByIdAndLogicalDeletedOnDatetime(params.entertainment, null)
        def currUser = User.findByUsername (params.username)

        if (ent == null) {
            return 404
        } else if (currUser == null) {
            return 400
        }

        ent.name = params.name
        ent.lastUpdatedByUser = currUser
        ent.lastUpdatedOnDatetime = new Date()

        try {
            if (!ent.save(flush:true)) {
                println ent.errors
                return ent.errors
            } else {
                return ent
            }
        } catch (Exception e) {
            throw new RuntimeException(e)
        }
    }

    def getAllByEntertainmentType(params) {
        def result

        def entType = EntertainmentType.findByIdAndLogicalDeletedOnDatetime(params.entertainmentTypeId, null)
        if (entType == null) {
            return new JSONArray()
        }

        result = Entertainment.findAllByEntertainmentTypeAndLogicalDeletedOnDatetime(entType, null)
        result.sort { a, b -> a.name <=> b.name }

        return result
    }
}
