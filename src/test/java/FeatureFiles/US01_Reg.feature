Feature: Creating User Registration (Register)

  @SmokeTest
  Scenario: US01_Reg
    Given Navigate To Presta Shop 4
    When Click On The Element
      | singInClick |
    Then Enter Data in Text Box
      | emailBoxSendKeys | m.smith3@gmail.com |
    And Click On The Element
      | createAccountButtonClick |
      | genderMale               |
    And Enter Data in Text Box
      | firstName | Martin            |
      | lastName  | Smith             |
      | email     | m.smith3@gmail.com |
      | password  | Qwerty12          |
    And Click On The Element
      | submitAccount |
    And Verification Is In Progress
      | accountSuccess | Your account has been created. |
    And Click On The Element
      | myAccount |
    And Verification Is In Progress
      | myAccountSuccess | Welcome to your account. |