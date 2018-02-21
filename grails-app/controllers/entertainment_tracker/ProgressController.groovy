package entertainment_tracker

class ProgressController {
    static responseFormats = ['json']

    def progressService

    def createProgress() {
        respond progressService.createProgress(params)
    }

    def getAllByUser() {
        respond progressService.getAllByUser(params)
    }

    def deleteProgress() {
        respond progressService.deleteProgress(params)
    }
}
