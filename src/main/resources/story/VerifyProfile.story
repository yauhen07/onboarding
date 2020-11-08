Description: Verify user profile

Scenario: Verify profile
Meta:
    @Task2-2
When Log in as existing user
When I click on element located `${memberMenuButton}`
When I click on element located `${profileAndVisibilityLink}`
Then field located `By.Xpath(//input[@value="${username}"])` exists

Scenario: Boards and Templates pages visual check
Meta:
    @Task2-2
Given I am on the main application page
When I COMPARE_AGAINST baseline with `BoardPage` ignoring:
|ELEMENT|
|${listOfAllBoards}|
When I click on element located `${templatesPageLink}`
When I wait until element located `${templateElements}` appears
When I ESTABLISH baseline with `Templates`
