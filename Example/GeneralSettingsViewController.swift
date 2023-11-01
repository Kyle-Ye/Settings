import Cocoa
import Settings

final class GeneralSettingsViewController: NSViewController, SettingsPane {
	let paneIdentifier = AppSettings.PaneIdentifier.general
	let paneTitle = "General"
	let toolbarItemIcon = NSImage(systemSymbolName: "gearshape", accessibilityDescription: "General settings")!

	override var nibName: NSNib.Name? { "GeneralSettingsViewController" }

	override func viewDidLoad() {
		super.viewDidLoad()

		// Setup stuff here
	}
}
