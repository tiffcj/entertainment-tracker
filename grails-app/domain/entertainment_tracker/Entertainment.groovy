package entertainment_tracker

class Entertainment {
    String name
    EntertainmentType entertainmentType
    User createdByUser
    Date createdOnDatetime
    User lastUpdatedByUser
    Date lastUpdatedOnDatetime
    User logicalDeletedByUser
    Date logicalDeletedOnDatetime

    static constraints = {
        logicalDeletedByUser nullable: true
        logicalDeletedOnDatetime nullable: true
    }

    static mapping = {
        id generator: 'sequence', params: [sequence: 'ENTERTAINMENT_SEQUENCE']
        version false
    }
}
