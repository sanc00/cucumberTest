Feature: Managing users and login credentials

Background:
  Given I have a list of users
  And I am going to manage their login credentials
  
@HappyPath
Scenario: Retrieving a list of users
  Given an endpoint exists to retrieve users 
  When I send a GET request to https://fakerestapi.azurewebsites.net/api/v1/Users
  Then it returns the users id
  Then it returns the users username
  Then it returns the users passowrd
  And  it returns a 200 response for a successful request
  
@HappyPath
Scenarios: Retrieving data using a user's id
  Given an endpoint exists to retrieve a single user
  And a user identifier exists
  When I send a GET request to https://fakerestapi.azurewebsites.net/api/v1/Users/{id}
  Then it returns the users username
  Then it returns the users passowrd
  And  it returns a 200 response for a successful request
  
