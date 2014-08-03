## Overview
This is a simple shell app in Sinatra which can be used to share your personal contact info

This template uses:

- Basic Sinatra
- haml
- Twitter Bootstrap
- Portable Contacts
- Open Graph Protocol

## To deploy on Cloud Foundry

First fork the project. Then run:

``` bash
git clone git@github.com:<your_name>/sinatra-cloudfoundry-basic-website.git mycf
cd mycf
bundle install;bundle package
git push heroku master
```

## To add your Facebook App ID do:

``` bash
heroku config:set facebook_app_id=23823782

```