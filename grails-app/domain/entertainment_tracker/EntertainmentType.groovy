package entertainment_tracker

class EntertainmentType {
    String name
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
        id generator: 'sequence', params: [sequence: 'ENTERTAINMENT_TYPE_SEQUENCE']
        version false
    }
}
