# encoding: utf-8

Feature: Question
  Scenario: Answer a question and get a result
    Given a question
    When I answer yes
    Then I get a result
  