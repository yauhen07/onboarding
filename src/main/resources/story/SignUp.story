Description: Create new user on trello.com

Scenario: Sing Up new user
Meta:
    @Task2-1
Given I am on the main application page
When I enter `<email>` in field located `${emailField}`
When I click on element located `${submitButton}`
Then field located `By.Xpath(//input[@value='<email>'])` exists
When I enter `<fullName>` in field located `${nameField}`
When I enter `<password>` in field located `${passwordField}`
When I click on element located `${signupSubmitButton}`
Examples:
{transformer=FROM_LANDSCAPE}
|email    |#{generate(Internet.emailAddress)}|#{generate(Internet.emailAddress)}|
|fullName |#{generate(Name.fullName)}        |#{generate(Name.fullName)}        |
|password |#{generate(Internet.password)}    |#{generate(Internet.password)}    |
|teamName |#{generate(Team.name)}            |#{generate(Team.name)}            |
