Feature: Herokuapp tests

  @Outline
  Scenario Outline: Test 5 links of herokuapp
    Given user navigated to Herokuapp home page
    When user clicks on "<link>"
    Then user should see "<page header>"


    Examples:
      | link            | page header     |
      | File Download   | File Downloader |
      | Hovers          | Hovers          |
      | Redirect Link   | Redirection     |
      | Frames          | Frames          |
      | Forgot Password | Forgot Password |


    @datatable
  Scenario: Validate checkbox text and checkbox statutes
    When user navigates to Checkboxes page
    Then user should see checkboxes as follows:
      | checkbox1Text   | checkbox 1 |
      | checkbox2Text   | checkbox 2 |
      | checkbox1Status | unchecked  |
      | checkbox2Status | checked    |
