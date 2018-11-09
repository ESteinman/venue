@javascript
Feature: As an Artist
    In order to sell tickets to my event
    I would like to be able to link to Eventbrite.  

    Background:
        Given the following user exist
            | email          | role   | password   |
            | user@artist.se | artist | my-pasword |
        And the following Performer with name exist
            | name            | user           |
            | Clare Cunningham| user@artist.se |
        And I am logged in as 'user@artist.se'
        And I am on the 'landing' page

    Scenario:
        Then stop
        When I click on 'New Campaign'
        And I fill in 'Title' with 'Clare Cunningham'
        And I select 'Clare Cunningham' as performer
        And I fill in 'Description' with 'Dubbed as having a vocal register similar to Adele'
        And I fill in 'Location' with 'Stockholm'
        And I set the date to '2019-05-05'
        And I fill in 'Eventbrite-link' with 'https://www.eventbrite.com/e/breakthrough-music-business-summit-stockholm-tickets-27266256106?aff=ebdssbcitybrowse'
        And I attach an image to the campaign
        And I click on 'Launch Campaign'
