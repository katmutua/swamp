Feature: user scans submits in a page

  The user enters an url to a given page, swamp fires up the browser and go to that url
  once the page is loaded swamp start looking for inputs of type submit then swamp generates the code
  snippets to interact with those elements using capybara.

  Background: swamp is running
    Given that swamp is already running

  Scenario: A submit that has value and id
    Given user types the url "file:///home/juraci/projects/swamp/features/support/page_examples/input_submit.html"
    When swamp scans that url
    Then swamp should output the following code snippet
      """
      def log_in
        source.find(:css, "input#u_0_b").click
      end
      """
