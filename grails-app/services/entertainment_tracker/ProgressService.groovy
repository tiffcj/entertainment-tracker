package entertainment_tracker

import grails.gorm.transactions.Transactional
import org.grails.web.json.JSONArray
import org.grails.web.json.JSONObject

@Transactional
class ProgressService {

    def createProgress(params) {
        Progress newProgress = new Progress()
        def currUser = User.findByUsername(params.username)
        def createDate = new Date()

        def entertainment = Entertainment.findByIdAndLogicalDeletedOnDatetime(params.entertainment, null)

        if (entertainment == null || currUser == null) {
            return 400
        }

        newProgress.entertainment = entertainment
        newProgress.progress = params.progress
        newProgress.createdByUser = currUser
        newProgress.createdOnDatetime = createDate
        newProgress.lastUpdatedByUser = currUser
        newProgress.lastUpdatedOnDatetime = createDate

        try {
            if (!newProgress.save(flush:true)) {
                println newProgress.errors
                return newProgress.errors
            } else {
                return newProgress
            }
        } catch (Exception e) {
            throw new RuntimeException(e)
        }
    }

    def getAllByUser(params) {
        def currUser = User.findByUsername(params.username)

        if (currUser == null) {
            return new JSONArray()
        }

        return Progress.findAllByCreatedByUserAndLogicalDeletedOnDatetime(currUser, null)
    }

    def deleteProgress (params) {
        def currUser = User.findByUsername(params.username)
        def deleteDate = new Date()
        def progress = Progress.findByIdAndLogicalDeletedOnDatetime(params.id, null)

        if (progress == null) {
            return 404
        } else if (currUser == null) {
            return 400
        } else if (progress.createdByUser.username != currUser.username) {
            return 403
        }

        progress.logicalDeletedByUser = currUser
        progress.logicalDeletedOnDatetime = deleteDate
        progress.lastUpdatedOnDatetime = deleteDate

        try {
            if (!progress.save(flush:true)) {
                println progress.errors
                return progress.errors
            } else {
                return progress
            }
        } catch (Exception e) {
            throw new RuntimeException(e)
        }
    }

//    def updateProgress(params) {
//        def currUser = User.findByUsername(params.username)
//        def updateDate = new Date()
//        def progress = Progress.findByIdAndLogicalDeletedOnDatetime(params.id, null)
//
//        if (progress == null) {
//            return 404
//        } else if (currUser == null) {
//            return 400
//        } else if (progress.createdByUser.username != currUser.username) {
//            return 403
//        }
//
//        progress.lastUpdatedOnDatetime = updateDate
//        if (params.progress != null) {
//            progress.progress = params.progress
//        }
//        if (params.entertainment != null && params.entertainment.id != null && params.entertainment.name != null) {
//
//        }
//
//        try {
//            if (!progress.save(flush:true)) {
//                println progress.errors
//                return progress.errors
//            } else {
//                return progress
//            }
//        } catch (Exception e) {
//            throw new RuntimeException(e)
//        }
//    }
}
