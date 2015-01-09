# Title
As an authenticated user of the application I need to be able to enter valid credentials to be able to log in.

# Acceptance Criteria
* Fields to be filled in: User Name, Password
* User Name is an email address
* User Name is required
* Password is required
* Password must be a minimum of 6 characters
* Password must be a maximum of 24 characters
* Password must require at least one uppercase letter
* Password must require at least one lowercase letter
* Password must require at least one number
* The user must not be able to submit crendentials if the above criteria are not met (submit button disabled?)
* The Password must be masked to not display the characters the user is typing

## Happy Path
* When the user enters valid credentials they should be displayed the home page of the application

## Unhappy Paths
* When the user enters invalid credentials they should be displayed a generic error about invalid credentials (do not
give any indication why the credentials failed)
* When the user enters a non-email address for the User Name a message must immediately be displayed before submitting
the credentials

# Definition of Done

