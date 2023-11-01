import AppKit

extension AppSettings {
	public struct PaneIdentifier: Hashable, RawRepresentable, Codable {
		public let rawValue: String

		public init(rawValue: String) {
			self.rawValue = rawValue
		}
	}
}

public protocol SettingsPane: NSViewController {
	var paneIdentifier: AppSettings.PaneIdentifier { get }
	var paneTitle: String { get }
	var toolbarItemIcon: NSImage { get }
}

extension SettingsPane {
	public var toolbarItemIdentifier: NSToolbarItem.Identifier {
		paneIdentifier.toolbarItemIdentifier
	}

	public var toolbarItemIcon: NSImage { .empty }
}

extension AppSettings.PaneIdentifier {
	public init(_ rawValue: String) {
		self.init(rawValue: rawValue)
	}

	public init(fromToolbarItemIdentifier itemIdentifier: NSToolbarItem.Identifier) {
		self.init(rawValue: itemIdentifier.rawValue)
	}

	public var toolbarItemIdentifier: NSToolbarItem.Identifier {
		NSToolbarItem.Identifier(rawValue)
	}
}
