# Loren's Phase 3 Sinatra React Project
## Introduction

The project contained in this and its sister repository were created to demonstrate knowledge of the Sinatra API backend that uses Active Record to access and persist data in the database that is found in this repo. The sister repository is a separate entity that uses React to interact with the database contained here.


## Getting Started

In order to use this application, you will need to clone both the frontend and backend repositories onto your machine. They are located here:

[Frontend Repository Link](https://github.com/loren-michael/phase-3-project-frontend)

[Backend Repository Link](https://github.com/loren-michael/phase-3-sinatra-react-project)

### Backend Setup

Once the Backend repository is on your machine, navigate to its directory and start the server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

Then, you will need to make sure there is data seeded into your database. Do this by executing the following in your console:

```
$ bundle exec rake db:seed
```

This will reset any data in the database and make sure you have good data to start with.

### Frontend Setup

Now that your Backend is up and running and the database is seeded, we can get your React Frontend communicating to it. Navigate to the directory for the Frontend and start the application with: 

```console
$ npm start
```
Once the application is up and running in your browser window, you will be able to log in to see different characters by using the following list of users:


## Read More

A blog post about the initial development of this application can be found [here](https://dev.to/lorenmichael/creating-an-app-with-react-and-sinatra-loa)

