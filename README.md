# Entertainment Tracker

## About Project
This project was motivated by the wide variety of entertainment-delivery systems e.g. Netflix, Amazon Video, Crunchyroll, MangaFox, podcast apps, many of which have content that is exclusive to those sites/apps. You may have various progresses in various shows/books/movies etc. scattered on each of these sites. This web app allows you to collect all of those progresses in one place for your convenience, so you may, for example, choose to watch a show where you're close to the end, read a book that you need to catch up on, or jot down something that you want to watch/read later.

### Tech stack
This app currently uses H2 for the database, Grails (and the Apache Groovy language) for the back-end/API, and HTML, CSS, JavaScript (along with Bootstrap, jQuery and Mustache) for the front-end. The back-end is located [here](https://github.com/tiffcj/entertainment-tracker/tree/master/grails-app). The JavaScript and styling of the front-end is located [here](https://github.com/tiffcj/entertainment-tracker/tree/master/src/main/webapp), and the views are located [here](https://github.com/tiffcj/entertainment-tracker/tree/master/grails-app/views) as Groovy Server Pages. The front-end is currently embedded in the Grails app to take advantage of its navigation capabilities and to avoid CORS issues, with a vision to eventually move the front-end to a separate repo/location and use an existing framework for the routing. The database is stored locally.

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
9. Type in `run app` to run the app on http://localhost:8080/ (8080 is the default for grails, but you can also specify a port with the `-port=xxxx` attribute). You should see the login page.
10. Click on the `Register` button and create a user with the username `admin` (password can be whatever you like).
11. Head to http://localhost:8080/startup and click the button to run the script that will fill the database with some default values as admin that will allow you to use the app. At this point I recommend logging out of admin and registering as a new user, but it's entirely up to you.
12. You can now use the app and start creating your first entertainment progress!

## Upcoming Features
To see all upcoming features/improvements/fixes, see the [project board](https://github.com/tiffcj/entertainment-tracker/projects/1).

## Screenshots
Home page with progress list:
![Screenshot of Homepage](https://user-images.githubusercontent.com/28549417/36464324-d91981b0-1694-11e8-95b8-a251ee393f2c.png)

Create progress page:
![Screenshot of Create page](https://user-images.githubusercontent.com/28549417/36463493-e7ae7514-168f-11e8-9ae2-cf3f4bf80815.png)
