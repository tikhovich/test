Feature: Create Username page (Curacao)

  @regression @pending
  Scenario: C95219. "When you create a username it will be automatically used as the authorisation method" is absent when multi-login is enabled
    Given I load "curacao" with "MainPage"
    And I want to login "noNickname" by "email"
    And I wait popup "Popup.PopupNoNickname" and close "Popup.CloseButton"
    And I want to open right menu
    
    Then I click route "SettingsSection" for "SettingsPage"
    Then I click route "DetailsSection" for "PersonalDetailsPage"
    Then I click route "CreateNicknameBtn" for "NicknamePage"
	
	And "Header.ButtonBack" has been appeared
    And "Header.TitleText" has been appeared
    And "NicknameInput" has been appeared
    And "NicknameNoteField" has been appeared
	And Content of "NicknameNoteField" with "Username will be used for authorisation.Once set, the username cannot be changed."
	And "SubmitButtonDisabled" has been appeared
	
	
	
	
  @regression @pending
  Scenario: C95221. "When you create a username it will be automatically used as the authorisation method" is displayed when multi-login is unavailable
    Given I load "curacao" with "MainPage"
    And I want to login "noNickname" by "email"
    And I wait popup "Popup.PopupNoNickname" and close "Popup.CloseButton"
    And I want to open right menu
    
    Then I click route "SettingsSection" for "SettingsPage"
    Then I click route "DetailsSection" for "PersonalDetailsPage"
    Then I click route "CreateNicknameBtn" for "NicknamePage"
	
	And "Header.ButtonBack" has been appeared
    And "Header.TitleText" has been appeared
    And Content of "Header.TitleText" with "Create Username"
    And "NicknameInput" has been appeared
    And "NicknameNoteField" has been appeared
	And Content of "NicknameNoteField" with "Username will be used for authorisation.Once set, the username cannot be changed."
    # "Note" лучше переназвать так чтобы было понятно любому что за поле, ну и главное объяснить разработке где это поле и они добавили на него дататест
	And Content of "Note" with "When you create a username it will be automatically used as the authorisation method"
	And "SubmitButtonDisabled" has been appeared