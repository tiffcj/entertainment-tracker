package entertainment_tracker

class Progress {
    Entertainment entertainment
    String progress
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
        id generator: 'sequence', params: [sequence: 'PROGRESS_SEQUENCE']
        version false
    }
}
