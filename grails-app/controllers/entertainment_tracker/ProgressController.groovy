package entertainment_tracker

class ProgressController {
    static responseFormats = ['json']

    def progressService

    def createProgress() {
        def result = progressService.createProgress(params)

        if (result instanceof Integer) {
            response.sendError(result)
        } else {
            respond result
        }
    }

    def getAllByUser() {
        respond progressService.getAllByUser(params)
    }

    def deleteProgress() {
        def result = progressService.deleteProgress(params)

        if (result instanceof Integer) {
            response.sendError(result)
        } else {
            respond result
        }
    }
}
