@api
@post
Feature: Posts API
  As an anonymous or logged in user
  The Blog should
  Provide an interface for interacting with posts

  Background: Headers
    Given the following posts exist
      | id | title | body     |
      | 1  | One   | Text 1   |
      | 2  | Two   | Text 2   |
    When I send and accept JSON

  Scenario: Index action
    When I send a GET request to "/posts"
    Then the response status should be "200"
    #And show me the response
    #And show me the response headers
    And the JSON response should have "$.meta.total" with the text "2"
    And the JSON response should have "$.posts[*]" with a length of 2
    And the JSON response should have "$..posts[0].title" with the text "One"
    And the JSON response should have "$..posts[0].body" with the text "Text 1"

  Scenario: View action
    When I send a GET request to "/posts/1"
    Then the response status should be "200"
    #And show me the response
    #And show me the response headers
    And the JSON response should have "$.post.title" with the text "One"
    And the JSON response should have "$.post.body" with the text "Text 1"

  Scenario: Create action (successfully)
    When I send a POST request to "/posts" with the following:
      """
      {"title":"New Title","body":"Nothing else matters ..."}
      """
    And show me the response headers
    Then the response status should be "201"
