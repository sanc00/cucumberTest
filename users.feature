Feature: Managing users login credentials

Background:
  Given a list of users exists
  And user login credentials are managed
  
@HappyPath
Scenario: Retrieving a list of users
  Given an endpoint exists to retrieve users 
  When a GET request is sent to https://fakerestapi.azurewebsites.net/api/v1/Users
  Then it returns the users id
  Then it returns the users userName
  Then it returns the users passowrd
  And it returns a 200 response for a successful request
  
@HappyPath
Scenarios: Retrieving data using a user's id
  Given an endpoint exists to retrieve a single user
  And a user identifier exists
  When a GET request is sent to https://fakerestapi.azurewebsites.net/api/v1/Users/{id}
  Then it returns the users userName
  Then it returns the users passowrd
  And it returns a 200 response for a successful request
  
@HappyPath
Scenarios: Create a new user
   Given an endpoint exists to create a new user
   When a POST request is sent to https://fakerestapi.azurewebsites.net/api/v1/Users
   Then the request sends an id
   Then the request sends a userName
   Then the request sends a password
   And it returns a 201 for a successful request
   
