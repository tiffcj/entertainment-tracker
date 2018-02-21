<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${resource(dir: 'js', file: 'databaseService.js')}"></script>
<script src="${resource(dir: 'js/models', file: 'entertainmentTypeModel.js')}"></script>
<script src="${resource(dir: 'js/models', file: 'entertainmentModel.js')}"></script>
<script src="${resource(dir: 'js/models', file: 'userModel.js')}"></script>

<script>
    function fillDb() {
        // entertainmentTypeModelCreate({
        //     name: 'TV Show',
        //     username: 'admin'
        // });
        // entertainmentTypeModelCreate({
        //     name: 'Book',
        //     username: 'admin'
        // });
        // entertainmentTypeModelCreate({
        //     name: 'Movie',
        //     username: 'admin'
        // });
        // entertainmentTypeModelCreate({
        //     name: 'Podcast',
        //     username: 'admin'
        // });
        // entertainmentTypeModelCreate({
        //     name: 'Other',
        //     username: 'admin'
        // });
        // console.log(entertainmentTypeModelGetAll());

        // entertainmentModelCreate({
        //     name: 'Game of Thrones',
        //     entertainmentType: 1,
        //     username: 'admin'
        // });
        // entertainmentModelCreate({
        //     name: 'Mr. Robot',
        //     entertainmentType: 1,
        //     username: 'admin'
        // });
        // entertainmentModelCreate({
        //     name: 'Harry Potter',
        //     entertainmentType: 2,
        //     username: 'admin'
        // });
        // console.log(entertainmentModelGetAll(1));
        // console.log(entertainmentModelGetAll(2));
    }
</script>

<button type="button" onclick="fillDb()">Fill database with default values</button>