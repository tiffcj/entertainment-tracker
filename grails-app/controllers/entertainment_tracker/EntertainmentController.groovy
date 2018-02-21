package entertainment_tracker

class EntertainmentController {
    static responseFormats = ['json']

    def entertainmentService

    def createEntertainment() {
        def result = entertainmentService.createEntertainment(params)

        if (result instanceof Integer) {
            response.sendError(result)
        } else {
            respond result
        }
    }

    def getAllByEntertainmentType() {
        respond entertainmentService.getAllByEntertainmentType(params)
    }
}
