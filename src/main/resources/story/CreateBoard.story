Description: Create board on trello.com via API

Scenario: Create board via API
Meta:
    @Task2-1
When I issue a HTTP POST request for a resource with the URL '${POST-Board}?key=${key}&token=${token}&name=<boardName>'
Examples:
|boardName|
|#{generate(Artist.name)}|
