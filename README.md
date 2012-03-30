## Overview
This is a simple shell app in Sinatra which can be used to share your personal contact info

This template uses:

- Basic Sinatra
- haml
- 960gs
- Portable Contacts
- Open Graph Prootocol

## To deploy on Cloud Foundry

First fork the project. Then run:

``` bash
git clone git@github.com:<your_name>/sinatra-cloudfoundry-basic-website.git mycf
cd mycf
bundle install;bundle package
vmc push
```

## To add your Facebook App ID do:

``` bash
vmc env-add <app_name> facebook_app_id=23823782

```