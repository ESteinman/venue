Feature: Fans can follow artists
    As a Fan
    In order to stay updated about Artists
    I would like to be able to follow the Artists and gets notified about updates

    Background:
        Given the following user exist
            | email             | role   | password       |
            | kanye@artist.se   | artist | my-pasword     |
            | users@artist.se   | fan    | users-password |

        Given the following Performer exist
            | name       |
            | Kanye West |

        And I am logged in as 'users@artist.se'

    Scenario:
        When I am on the Campaign page for 'Veronica Maggio in Stockholm'
        And I click on 'Follow'
        Then I should see 'You are now following Kanye West'