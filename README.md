# Advertisement Web Application

## Functionalities

* User Registration 
* User Login 
* Edit profile
* CRUD operations like 
  - User can publish advertisements
  - User can edit advertisements published by them
  - User can delete advertisements published by them
  - User can comment on advertisements published by any user

## Tools and Technologies

* Technology: HTML, CSS, Ruby on Rails, Bootstrap
* Database: sqlite3(for developement), PostgreSQL(for production)

## Information about the web application

* Home tab - contains home page
* About tab - contains information about the web application

### Before user sign in into their account (Navigation bar information)

* Advertisements tab
  * User can advertisements posted by all the users
  * User can post comments on the advertisements
  * To post a comment user need to login into their account
* Login tab
  * User need to enter email id and password to login into their account
* Register tab
  * User need to fill the details in order to create an account

### After user sign in into their account (Navigation bar information)

* View Advertisements tab
  * User can see advertisements posted by all the users.
  * User can see edit and delete option only to the advertisements posted by them, for all other advertisements they can only write comments.
  * Comments can be posted by clicking on View/Add comments button.
* My Advertisements tab 
  * User can only see the advertisements posted by them.
  * User can edit, delete their advertisements here.
* Add Advertisement tab
  * User can publish new advertisement.
* Edit profile tab
  * User can update their profile here by filling the details.
* Sign out tab
  * User can log out from their account.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

You'll be ready to run the app in a local server:

```
$ rails server
```


