import Cocoa

protocol SettingsStyleController: AnyObject {
	var delegate: SettingsStyleControllerDelegate? { get set }
	var isKeepingWindowCentered: Bool { get }

	func toolbarItemIdentifiers() -> [NSToolbarItem.Identifier]
	func toolbarItem(paneIdentifier: AppSettings.PaneIdentifier) -> NSToolbarItem?
	func selectTab(index: Int)
}

protocol SettingsStyleControllerDelegate: AnyObject {
	func activateTab(paneIdentifier: AppSettings.PaneIdentifier, animated: Bool)
	func activateTab(index: Int, animated: Bool)
}
