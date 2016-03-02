[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Overview

The purpose of this app is to allow a front-end app to create, store, and access
records of users and stock purchases. Each user record has an email and password
as attributes, which are used for authentication. Each stock purchase record has
a ticker symbol, name, purchase price, number of shares purchased, and current
price, as well as the id number of the user associated with the stock purchase.

##Technologies used

This app is built with Ruby on Rails. It also utilizes a third-party API for
current price data, ticker symbol validation, and company name assignment.

##Actions

User Actions:
POST '/sign-up' => creates a new user
POST '/sign-in' => signs in a new user, returns a token
DELETE '/sign-out/:id' => sign out the current user
PATCH '/change-password/:id' => changes the password associated with a User

Stock Purchase Actions:
POST /stock_purchases => creates a new stock purchase
GET /stock_purchases => returns all stock purchases associated with current user
GET /stock_purchases/:id => returns a single stock purchase if it is associated
  with the current user
PATCH /stock_purchases/:id => updates a stock purchase associated with the user
DELETE /stock_purchases/:id => destroys a stock purchase associated with user

##ERD

See ERD [here](https://drive.google.com/file/d/0B7bwsjwFCuRgRVFLT1g2aXVNMkJZeHYtMm51Y25DYkpjSC04/view?usp=sharing)
