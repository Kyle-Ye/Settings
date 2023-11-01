/// The namespace for this package.
public enum AppSettings {}

// TODO: Remove in the next major version.
// Preserve backwards compatibility.
@available(*, deprecated, renamed: "AppSettings")
public typealias Settings = AppSettings

// TODO: Remove in the next major version.
// Preserve backwards compatibility.
@available(*, deprecated, renamed: "AppSettings")
public typealias Preferences = AppSettings
@available(*, deprecated, renamed: "SettingsPane")
public typealias PreferencePane = SettingsPane
@available(*, deprecated, renamed: "SettingsPaneConvertible")
public typealias PreferencePaneConvertible = SettingsPaneConvertible
@available(*, deprecated, renamed: "SettingsWindowController")
public typealias PreferencesWindowController = SettingsWindowController

@available(macOS 10.15, *)
extension AppSettings.Pane {
	@available(*, deprecated, renamed: "asSettingsPane()")
	public func asPreferencePane() -> PreferencePane {
		asSettingsPane()
	}
}

extension SettingsWindowController {
	@available(*, deprecated, renamed: "init(panes:style:animated:hidesToolbarForSingleItem:)")
	public convenience init(
		preferencePanes: [PreferencePane],
		style: AppSettings.Style = .toolbarItems,
		animated: Bool = true,
		hidesToolbarForSingleItem: Bool = true
	) {
		self.init(
			panes: preferencePanes,
			style: style,
			animated: animated,
			hidesToolbarForSingleItem: hidesToolbarForSingleItem)
	}
}
