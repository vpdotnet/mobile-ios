
import XCTest

extension XCUIApplication {
    var loginButton: XCUIElement {button(with: VPLibraryAccessibility.Id.Login.submit)}
    var loginUsernameTextField: XCUIElement {textField(with: VPLibraryAccessibility.Id.Login.username)}
    var loginPasswordTextField: XCUIElement {secureTextField(with: VPLibraryAccessibility.Id.Login.password)}
    var loginErrorMessage: XCUIElement {otherElement(with: VPLibraryAccessibility.Id.Login.Error.banner)}
    
    func logIn(with credentials: Credentials) {
        loginUsernameTextField.waitForElementToAppear()
        loginPasswordTextField.waitForElementToAppear()
        loginUsernameTextField.tap()
        loginUsernameTextField.typeText(credentials.username)
        loginPasswordTextField.tap()
        loginPasswordTextField.typeText(credentials.password)
        loginButton.tap()
    }
}
