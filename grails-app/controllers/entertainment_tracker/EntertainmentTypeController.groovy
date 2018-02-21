package entertainment_tracker

class EntertainmentTypeController {
    static responseFormats = ['json']

    def entertainmentTypeService

    def createEntertainmentType() {
        def result = entertainmentTypeService.createEntertainmentType(params)

        if (result instanceof Integer) {
            response.sendError(result)
        } else {
            respond result
        }
    }

    def getAllEntertainmentTypes() {
        respond entertainmentTypeService.getAllEntertainmentTypes()
    }
}
