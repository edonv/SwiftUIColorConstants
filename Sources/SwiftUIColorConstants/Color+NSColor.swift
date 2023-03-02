//
//  Color+NSColor.swift
//  
//
//  Created by Edon Valdman on 3/2/23.
//

import SwiftUI

#if canImport(AppKit)
import AppKit

extension Color {
    private init(nsBackport color: NSColor) {
        if #available(macOS 12.0, *) {
            self.init(nsColor: color)
        } else {
            self.init(color)
        }
    }
    
    // MARK: - Static Colors
    
//    public static var nsBlack: Color { Color(nsBackport: .black) }
    
    /// Returns a color object whose grayscale value is `1/3` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsDarkGray: Color { Color(nsBackport: .darkGray) }
    
    /// Returns a color object whose grayscale value is `2/3` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsLightGray: Color { Color(nsBackport: .lightGray) }
    
//    public static var nsWhite: Color { Color(nsBackport: .white) }
    
    /// Returns a color object whose grayscale value is `0.5` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsGray: Color { Color(nsBackport: .gray) }
    
    /// Returns a color object whose RGB value is `1.0`, `0.0`, `0.0` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsRed: Color { Color(nsBackport: .red) }
    
    /// Returns a color object whose RGB value is `0.0`, `1.0`, `0.0` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsGreen: Color { Color(nsBackport: .green) }
    
    /// Returns a color object whose RGB value is `0.0`, `0.0`, `1.0` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsBlue: Color { Color(nsBackport: .blue) }
    
    /// Returns a color object whose RGB value is `0.0`, `1.0`, `1.0` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsCyan: Color { Color(nsBackport: .cyan) }
    
    /// Returns a color object whose RGB value is `1.0`, `1.0`, `0.0` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsYellow: Color { Color(nsBackport: .yellow) }
    
    /// Returns a color object whose RGB value is `1.0`, `0.0`, `1.0` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsMagenta: Color { Color(nsBackport: .magenta) }
    
    /// Returns a color object whose RGB value is `1.0`, `0.5`, `0.0` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsOrange: Color { Color(nsBackport: .orange) }
    
    /// Returns a color object whose RGB value is `0.5`, `0.0`, `0.5` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsPurple: Color { Color(nsBackport: .purple) }
    
    /// Returns a color object whose RGB value is `0.6`, `0.4`, `0.2` and whose alpha value is `1.0`.
    /// - Returns: The `Color` object.
    public static var nsBrown: Color { Color(nsBackport: .brown) }
    
//    public static var nsClear: Color { Color(nsBackport: .clear) }
    
    // MARK: - Semantic Colors
    
//    public static var labelColor: Color { Color(nsBackport: .labelColor) }
    
//    public static var secondaryLabelColor: Color { Color(nsBackport: .secondaryLabelColor) }
    
    /// The tertiary color to use for text labels.
    ///
    /// Use this color for disabled text and for other less important text in your interface. You can also use it for other types of tertiary app content.
    public static var tertiaryLabelColor: Color { Color(nsBackport: .tertiaryLabelColor) }
    
    /// The quaternary color to use for text labels and separators.
    ///
    /// Use this color for the least important text in your interface and for separators between text items. For example, you would use this color for secondary text that is disabled. You can also use it for other types of quaternary app content.
    public static var quaternaryLabelColor: Color { Color(nsBackport: .quaternaryLabelColor) }
    
    /// The color to use for links.
    public static var linkColor: Color { Color(nsBackport: .linkColor) }
    
    /// The color to use for placeholder text in controls or text views.
    public static var placeholderTextColor: Color { Color(nsBackport: .placeholderTextColor) }
    
    /// The color to use for text in a window's frame.
    ///
    /// The color used for text in window frames. For general information about system colors, see [Accessing System Colors](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/DrawColor/Tasks/SystemColors.html#//apple_ref/doc/uid/20000790).
    public static var windowFrameTextColor: Color { Color(nsBackport: .windowFrameTextColor) }
    
    /// The color to use for the text in menu items.
    ///
    /// The system color used for text in selected menu items. For general information about system colors, see [Accessing System Colors](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/DrawColor/Tasks/SystemColors.html#//apple_ref/doc/uid/20000790).
    public static var selectedMenuItemTextColor: Color { Color(nsBackport: .selectedMenuItemTextColor) }
    
    /// The color to use for text in a selected control.
    ///
    /// This color is the table and list view equivalent to the [selectedControlTextColor](https://developer.apple.com/documentation/appkit/nscolor/1535591-selectedcontroltextcolor) color, which is used for controls in other views.
    ///
    /// For general information about system colors, see [Accessing System Colors](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/DrawColor/Tasks/SystemColors.html#//apple_ref/doc/uid/20000790).
    public static var alternateSelectedControlTextColor: Color { Color(nsBackport: .alternateSelectedControlTextColor) }
    
    // MARK: -
    
    /// The color to use for text in header cells in table views and outline views.
    ///
    /// The system color used for text in header cells in table and outline views. For general information about system colors, see [Accessing System Colors](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/DrawColor/Tasks/SystemColors.html#//apple_ref/doc/uid/20000790).
    public static var headerTextColor: Color { Color(nsBackport: .headerTextColor) }
    
    /// The color to use for separators between different sections of content.
    ///
    /// Do not use this color for split view dividers or window chrome dividers.
    public static var separatorColor: Color { Color(nsBackport: .separatorColor) }
    
    /// The color to use for the optional gridlines, such as those in a table view.
    ///
    /// The system color used for gridlines. For general information about system colors, see [Accessing System Colors](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/DrawColor/Tasks/SystemColors.html#//apple_ref/doc/uid/20000790).
    public static var gridColor: Color { Color(nsBackport: .gridColor) }
    
    /// The color to use for the window background.
    ///
    /// The window background color.
    ///
    /// When applied to an [NSBox](https://developer.apple.com/documentation/appkit/nsbox) object, this color supports Desktop Tinting in Dark Mode. With Desktop Tinting, the system modifies this color dynamically by incorporating some of the color from the underlying desktop image. The system does not apply this dynamic tinting effect to other types of views.
    public static var windowBackgroundColor: Color { Color(nsBackport: .windowBackgroundColor) }
    
    /// The color to use in the area beneath your window's views.
    ///
    /// Use this color to fill the backdrop underneath your app's main content.
    ///
    /// When applied to an [NSBox](https://developer.apple.com/documentation/appkit/nsbox) object, this color supports Desktop Tinting in Dark Mode. With Desktop Tinting, the system modifies this color dynamically by incorporating some of the color from the underlying desktop image. The system does not apply this dynamic tinting effect to other types of views.
    public static var underPageBackgroundColor: Color { Color(nsBackport: .underPageBackgroundColor) }
    
    // MARK: -
    
    /// The color to use for the background of large controls, such as scroll views or table views.
    ///
    /// Do not use this color for drawing. Instead, use an NSVisualEffectView with the appropriate background material.
    ///
    /// When applied to an [NSBox](https://developer.apple.com/documentation/appkit/nsbox) object, this color supports Desktop Tinting in Dark Mode. With Desktop Tinting, the system modifies this color dynamically by incorporating some of the color from the underlying desktop image. The system does not apply this dynamic tinting effect to other types of views.
    public static var controlBackgroundColor: Color { Color(nsBackport: .controlBackgroundColor) }
    
    /// The color to use for the background of selected and emphasized content.
    public static var selectedContentBackgroundColor: Color { Color(nsBackport: .selectedContentBackgroundColor) }
    
    /// The color to use for selected and unemphasized content.
    ///
    /// Use this color when the window containing the content is not key, or when the view containing the content does not have key focus.
    public static var unemphasizedSelectedContentBackgroundColor: Color { Color(nsBackport: .unemphasizedSelectedContentBackgroundColor) }
    
    /// The highlight color to use for the bubble that shows inline search result values.
    public static var findHighlightColor: Color { Color(nsBackport: .findHighlightColor) }
    
    // MARK: -
    
    /// The color to use for text.
    ///
    /// When text is selected, its color changes to the return value of [selectedTextColor](https://developer.apple.com/documentation/appkit/nscolor/1528605-selectedtextcolor).
    public static var textColor: Color { Color(nsBackport: .textColor) }
    
    /// The color to use for the background area behind text.
    ///
    /// When text is selected, its background color changes to the return value of [selectedTextBackgroundColor](https://developer.apple.com/documentation/appkit/nscolor/1528136-selectedtextbackgroundcolor).
    ///
    /// When applied to an [NSBox](https://developer.apple.com/documentation/appkit/nsbox) object, this color supports Desktop Tinting in Dark Mode. With Desktop Tinting, the system modifies this color dynamically by incorporating some of the color from the underlying desktop image. The system does not apply this dynamic tinting effect to other types of views.
    public static var textBackgroundColor: Color { Color(nsBackport: .textBackgroundColor) }
    
    /// The color to use for selected text.
    public static var selectedTextColor: Color { Color(nsBackport: .selectedTextColor) }
    
    // MARK: -
    
    /// The color to use for the background of selected text.
    public static var selectedTextBackgroundColor: Color { Color(nsBackport: .selectedTextBackgroundColor) }
    
    /// The color to use for the text background in an unemphasized context.
    ///
    /// Use this color when the window containing the text is not key, or when the view containing the text does not have key focus.
    public static var unemphasizedSelectedTextBackgroundColor: Color { Color(nsBackport: .unemphasizedSelectedTextBackgroundColor) }
    
    /// The color to use for selected text in an unemphasized context.
    ///
    /// Use this color when the window containing the text is not key, or when the view containing the text does not have key focus.
    public static var unemphasizedSelectedTextColor: Color { Color(nsBackport: .unemphasizedSelectedTextColor) }
    
    // MARK: -
    
    /// The color to use for the flat surfaces of a control.
    ///
    /// The system color used for the flat surfaces of a control. By default, the control color is a pattern color that will draw the ruled lines for the window background, which is the same as returned by [windowBackgroundColor](https://developer.apple.com/documentation/appkit/nscolor/1528630-windowbackgroundcolor).
    ///
    /// If you use `controlColor` assuming that it is a solid, you may have an incorrect appearance. You should use [lightGray](https://developer.apple.com/documentation/appkit/nscolor/1535184-lightgray) in its place.
    public static var controlColor: Color { Color(nsBackport: .controlColor) }
    
    /// The color to use for text on enabled controls.
    ///
    /// The color used for text on enabled controls. For general information about system colors, see [Accessing System Colors](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/DrawColor/Tasks/SystemColors.html#//apple_ref/doc/uid/20000790).
    public static var controlTextColor: Color { Color(nsBackport: .controlTextColor) }
    
    /// The color to use for the face of a selected control—that is, a control that has been clicked or is being dragged.
    public static var selectedControlColor: Color { Color(nsBackport: .selectedControlColor) }
    
    /// The color to use for text in a selected control—that is, a control being clicked or dragged.
    ///
    /// For general information about system colors, see [Accessing System Colors](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/DrawColor/Tasks/SystemColors.html#//apple_ref/doc/uid/20000790).
    public static var selectedControlTextColor: Color { Color(nsBackport: .selectedControlTextColor) }
    
    /// The color to use for text on disabled controls.
    ///
    /// The color used for text on disabled controls. For general information about system colors, see [Accessing System Colors](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/DrawColor/Tasks/SystemColors.html#//apple_ref/doc/uid/20000790).
    public static var disabledControlTextColor: Color { Color(nsBackport: .disabledControlTextColor) }
    
    /// The color to use for the keyboard focus ring around controls.
    public static var keyboardFocusIndicatorColor: Color { Color(nsBackport: .keyboardFocusIndicatorColor) }
    
//    public static var scrubberTexturedBackground: Color { Color(nsBackport: .scrubberTexturedBackground) }
    
//    public static var systemRed: Color { Color(backport: .systemRed) }
//    public static var systemGreen: Color { Color(backport: .systemGreen) }
//    public static var systemBlue: Color { Color(backport: .systemBlue) }
//    public static var systemOrange: Color { Color(backport: .systemOrange) }
//    public static var systemYellow: Color { Color(backport: .systemYellow) }
//    public static var systemBrown: Color { Color(backport: .systemBrown) }
//    public static var systemPink: Color { Color(backport: .systemPink) }
//    public static var systemPurple: Color { Color(backport: .systemPurple) }
//    public static var systemGray: Color { Color(backport: .systemGray) }
//    public static var systemTeal: Color { Color(backport: .systemTeal) }
//    public static var systemIndigo: Color { Color(backport: .systemIndigo) }
//    public static var systemMint: Color { Color(backport: .systemMint) }
//    public static var systemCyan: Color { Color(backport: .systemCyan) }
    
//    public static var controlAccentColor: Color { Color(nsBackport: .controlAccentColor) }
    
    // MARK: -
    
    /// The color to use as a virtual light source on the screen.
    ///
    /// This method is invoked by the [highlight(withLevel:)](https://developer.apple.com/documentation/appkit/nscolor/1533061-highlight) method. For general information about system colors, see [Accessing System Colors](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/DrawColor/Tasks/SystemColors.html#//apple_ref/doc/uid/20000790).
    /// - Returns: The system color for the virtual light source on the screen.
    public static var highlightColor: Color { Color(nsBackport: .highlightColor) }
    
    /// The color to use for virtual shadows cast by raised objects on the screen.
    ///
    /// This method is invoked by the [shadow(withLevel:)](https://developer.apple.com/documentation/appkit/nscolor/1528523-shadow) method. For general information about system colors, see [Accessing System Colors](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/DrawColor/Tasks/SystemColors.html#//apple_ref/doc/uid/20000790).
    /// - Returns: The system color for the virtual shadows case by raised objects on the screen.
    public static var shadowColor: Color { Color(nsBackport: .shadowColor) }
}
#endif
