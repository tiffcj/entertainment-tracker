<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${resource(dir: 'js', file: 'databaseService.js')}"></script>
<script src="${resource(dir: 'js/models', file: 'entertainmentTypeModel.js')}"></script>
<script src="${resource(dir: 'js/models', file: 'entertainmentModel.js')}"></script>
<script src="${resource(dir: 'js/models', file: 'progressModel.js')}"></script>

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
        //     entertainmentType: 4,
        //     username: 'admin'
        // });
        // console.log(entertainmentModelGetAll(1));
        // console.log(entertainmentModelGetAll(2));

        // progressModelCreateProgress({
        //     username: 'admin',
        //     entertainment: 1,
        //     progress: 'Season 2 Episode 1'
        // });
        // console.log(progressModelGetAllByUser('admin'));
        // progressModelCreateProgress({
        //     username: 'admin',
        //     entertainment: 2,
        //     progress: 'Season 1 Episode 1'
        // });
        // console.log(progressModelGetAllByUser('admin'));
        // progressModelDeleteProgress(2, {
        //     username: 'admin'
        // });

        //TODO separate into functions
    }
</script>

<button type="button" onclick="fillDb()">Fill database with default values</button>