# Entertainment Tracker

## About Project
This project was motivated by the various entertainment-delivery systems out there - e.g. Netflix, CraveTv, Crunchyroll, MangaFox, Podcast - , many of which have content that is exclusive to those site. You may have various progresses in various entertainments scattered on each of these sites. This web app collects all of those progresses in one place, so you may, for example, choose to watch a show where you're close to the end, or read a book that you're behind in.

### Tech stack
This app currently uses H2 for the database, Grails (and the Apache Groovy language) for the back-end/API, and HTML, CSS, JS (along with Bootstrap, jQuery and Mustache) for the front-end. Currently 

## Setup Instructions
Since this project is still in development, it is only currently available on localhost.

### Get Grails
1. Follow the instructions [here](http://docs.grails.org/latest/guide/gettingStarted.html) up until `2.3 Creating an Application` to download and install Grails
2. Clone this repo

### Set up database 
4. To run the app locally you will need a local copy of the database. Download the platform-independent zip from [here](http://www.h2database.com/html/download.html)
5. Unzip the file, go into the `bin` folder and open the `.jar` file. You should now see an H2 Console in your browser.
6. Replace the `JDBC Url` field with a path and database name of your choosing, e.g. `jdbc:h2:~/entertainment-tracker` and click `Connect`. This will, if the given JDBC Url doesn't already exist, create the new H2 database for you (and if it does exist, it will open the database in the console view).
7. Open the repo in your favorite IDE/text editor. Navigate to grails-app > conf > application.yml and change the data source url at `environment.development.dataSource.url` (located [here](https://github.com/tiffcj/entertainment-tracker/blob/9f2641db9d208af185ea7a7cf8db3063bd4271d6/grails-app/conf/application.yml#L104)) to the same url you choose in Step 6 (that you inputted into the H2 Console). Also change `environment.development.dataSource.dbCreate` to be `update`

### Run app and set up default data
8. Open up a terminal, `cd` into the directory where you cloned it, and type `grails` to start up the grails console
9. Type in `run app` to run the app on http://localhost:8080/ (8080 is the default for grails, but you can also specify a port with the `-port=xxxx` attribute)


### Screenshots
Home page with progress list:
![Screenshot of Homepage](https://user-images.githubusercontent.com/28549417/36463473-d0fe4d58-168f-11e8-804a-7cf9865646c7.png)

Create progress page:
![Screenshot of Create page](https://user-images.githubusercontent.com/28549417/36463493-e7ae7514-168f-11e8-9ae2-cf3f4bf80815.png)
