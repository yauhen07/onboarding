Description: Create new user on trello.com

Scenario: Sing Up new user
Meta:
    @Task1
Given I am on the main application page
When I enter `<email>` in field located `By.Name(email)`
When I click on element located `By.Xpath(//button[@type="submit"])`
Then field located `By.Xpath(//input[@value='<email>'])` exists
When I enter `<fullName>` in field located `By.Name(name)`
When I enter `<password>` in field located `By.Name(password)`
When I click on element located `By.Id(signup-submit)`
Examples:
{transformer=FROM_LANDSCAPE}
|email    |#{generate(Internet.emailAddress)}|#{generate(Internet.emailAddress)}|
|fullName |#{generate(Name.fullName)}        |#{generate(Name.fullName)}        |
|password |#{generate(Internet.password)}    |#{generate(Internet.password)}    |
|teamName |#{generate(Team.name)}            |#{generate(Team.name)}            |
