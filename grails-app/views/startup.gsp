<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${resource(dir: 'js', file: 'databaseService.js')}"></script>
<script src="${resource(dir: 'js/models', file: 'entertainmentTypeModel.js')}"></script>
<script src="${resource(dir: 'js/models', file: 'entertainmentModel.js')}"></script>

<script>
    function fillDb() {
        $.when(entertainmentTypeModelCreate({
            name: 'TV Show',
            username: 'admin'
        })).done(function(entertainmentType){
            $.when(entertainmentTypeModelCreate({
                name: 'Book',
                username: 'admin'
            })).done(function(entertainmentType){
                $.when(entertainmentTypeModelCreate({
                    name: 'Movie',
                    username: 'admin'
                })).done(function(entertainmentType){
                    $.when(entertainmentTypeModelCreate({
                        name: 'Podcast',
                        username: 'admin'
                    })).done(function(entertainmentType){
                        $.when(entertainmentTypeModelCreate({
                            name: 'Other',
                            username: 'admin'
                        })).done(function(entertainmentType){
                            $.when(entertainmentModelCreate({
                                name: 'Game of Thrones',
                                entertainmentType: 1,
                                username: 'admin'
                            })).done(function(entertainment) {
                                $.when(entertainmentModelCreate({
                                    name: 'Mr. Robot',
                                    entertainmentType: 1,
                                    username: 'admin'
                                })).done(function(entertainment) {
                                    $.when(entertainmentModelCreate({
                                        name: 'Harry Potter',
                                        entertainmentType: 2,
                                        username: 'admin'
                                    })).done(function(entertainment) {
                                        alert("Done populating database with some default data!")
                                    });
                                });
                            });
                        });
                    });
                });
            });
        });
    }
</script>

<button type="button" onclick="fillDb()">Fill database with default values</button>