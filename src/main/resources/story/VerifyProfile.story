Description: Verify user profile

Scenario: Verify profile
Meta:
    @Task2-2
When Log in as existing user with ${login} and ${password}
When I click on element located `${memberMenuButton}`
When I click on element located `${profileAndVisibilityLink}`
Then field located `By.Xpath(//input[@value="${username}"])` exists

Scenario: Check presence of 12 boards
Meta:
    @Task2-3
Given I am on the main application page
When I find > '12' elements ${allPersonalBoardsList} and while they exist do up to 10 iteration of
|step                                                         |
|When I wait until element located `${boardsPageLink}` appears|
|When Delete board                                            |
|Given I am on the main application page                      |

Scenario: Boards and Templates pages visual check
Meta:
    @Task2-2
Given I am on the main application page
When I COMPARE_AGAINST baseline with `BoardPage` ignoring:
|ELEMENT|
|${personalAndTestApiSections}|
When I click on element located `${templatesPageLink}`
When I wait until element located `${templateElements}` appears
When I COMPARE_AGAINST baseline with `Templates`
