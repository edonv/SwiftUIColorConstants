//
//  Color+UIColor.swift
//  
//
//  Created by Edon Valdman on 3/2/23.
//

import SwiftUI

#if canImport(UIKit)
import UIKit

extension Color {
    private init(uiBackport color: UIColor) {
        if #available(iOS 15.0, macCatalyst 15.0, tvOS 15.0, watchOS 8.0, *) {
            self.init(uiColor: color)
        } else {
            self.init(color)
        }
    }
    
    // MARK: - Static Colors
    
    //    public static var uiBlack: Color { Color(uiBackport: .black) }
    
    /// A color object with a grayscale value of 1/3 and an alpha value of `1.0`.
    public static var uiDarkGray: Color { Color(uiBackport: .darkGray) }
    
    /// A color object with a grayscale value of 2/3 and an alpha value of `1.0`.
    public static var uiLightGray: Color { Color(uiBackport: .lightGray) }
    
    //    public static var uiWhite: Color { Color(uiBackport: .white) }
    
    /// A color object with a grayscale value of `0.5` and an alpha value of `1.0`.
    public static var uiGray: Color { Color(uiBackport: .gray) }
    
    /// A color object with RGB values of `1.0`, `0.0`, and `0.0`, and an alpha value of `1.0`.
    public static var uiRed: Color { Color(uiBackport: .red) }
    
    /// A color object with RGB values of `0.0`, `1.0`, and `0.0`, and an alpha value of `1.0`.
    /// - Returns: The `Color` object.
    public static var uiGreen: Color { Color(uiBackport: .green) }
    
    /// A color object with RGB values of `0.0`, `0.0`, and `1.0`, and an alpha value of `1.0`.
    /// - Returns: The `Color` object.
    public static var uiBlue: Color { Color(uiBackport: .blue) }
    
    /// A color object with RGB values of `0.0`, `1.0`, and `1.0`, and an alpha value of `1.0`.
    /// - Returns: The `Color` object.
    public static var uiCyan: Color { Color(uiBackport: .cyan) }
    
    /// A color object with RGB values of `1.0`, `1.0`, and `0.0`, and an alpha value of `1.0`.
    /// - Returns: The `Color` object.
    public static var uiYellow: Color { Color(uiBackport: .yellow) }
    
    /// A color object with RGB values of `1.0`, `0.0`, and `1.0`, and an alpha value of `1.0`.
    /// - Returns: The `Color` object.
    public static var uiMagenta: Color { Color(uiBackport: .magenta) }
    
    /// A color object with RGB values of `1.0`, `0.5`, and `0.0`, and an alpha value of `1.0`.
    /// - Returns: The `Color` object.
    public static var uiOrange: Color { Color(uiBackport: .orange) }
    
    /// A color object with RGB values of `0.5`, `0.0`, and `0.5`, and an alpha value of `1.0`.
    /// - Returns: The `Color` object.
    public static var uiPurple: Color { Color(uiBackport: .purple) }
    
    /// A color object with RGB values of `0.6`, `0.4`, and `0.2`, and an alpha value of `1.0`.
    /// - Returns: The `Color` object.
    public static var uiBrown: Color { Color(uiBackport: .brown) }

    
    // MARK: - Semantic Colors
    
    //    public static var systemRed: Color { Color(uiBackport: .systemRed) }
    //
    //    public static var systemGreen: Color { Color(uiBackport: .systemGreen) }
    //
    //    public static var systemBlue: Color { Color(uiBackport: .systemBlue) }
    //
    //    public static var systemOrange: Color { Color(uiBackport: .systemOrange) }
    //
    //    public static var systemYellow: Color { Color(uiBackport: .systemYellow) }
    //
    //    public static var systemPink: Color { Color(uiBackport: .systemPink) }
    //
    //    public static var systemPurple: Color { Color(uiBackport: .systemPurple) }
    //
    //    public static var systemTeal: Color { Color(uiBackport: .systemTeal) }
    //
    //    public static var systemIndigo: Color { Color(uiBackport: .systemIndigo) }
    //
    //    public static var systemBrown: Color { Color(uiBackport: .systemBrown) }
    //
    //    public static var systemMint: Color { Color(uiBackport: .systemMint) }
    //
    //    public static var systemCyan: Color { Color(uiBackport: .systemCyan) }
    
//    public static var systemGray: Color { Color(uiBackport: .systemGray) }
    
    // MARK: - Numbered Shades of Gray
    
    /* The numbered variations, systemGray2 through systemGray6, are grays which increasingly
     * trend away from systemGray and in the direction of systemBackgroundColor.
     *
     * In UIUserInterfaceStyleLight: systemGray2 is slightly lighter than systemGray.
     *                               systemGray3 is lighter than that, and so on.
     * In UIUserInterfaceStyleDark:  systemGray2 is slightly darker than systemGray.
     *                               systemGray3 is darker than that, and so on.
     */
    
    /// A second-level shade of gray that adapts to the environment.
    ///
    /// This color adapts to the current environment.
    /// In light environments, this gray is slightly lighter than [systemGray](https://developer.apple.com/documentation/uikit/uicolor/3173143-systemgray).
    /// In dark environments, this gray is slightly darker than `systemGray`.
    public static var systemGray2: Color { Color(uiBackport: .systemGray2) }
    
    /// A third-level shade of gray that adapts to the environment.
    ///
    /// This color adapts to the current environment.
    /// In light environments, this gray is slightly lighter than [systemGray2](https://developer.apple.com/documentation/uikit/uicolor/3255071-systemgray2).
    /// In dark environments, this gray is slightly darker than `systemGray2`.
    public static var systemGray3: Color { Color(uiBackport: .systemGray3) }

    /// A fourth-level shade of gray that adapts to the environment.
    ///
    /// This color adapts to the current environment.
    /// In light environments, this gray is slightly lighter than [systemGray3](https://developer.apple.com/documentation/uikit/uicolor/3255072-systemgray3).
    /// In dark environments, this gray is slightly darker than `systemGray3`.
    public static var systemGray4: Color { Color(uiBackport: .systemGray4) }

    /// A fifth-level shade of gray that adapts to the environment.
    ///
    /// This color adapts to the current environment.
    /// In light environments, this gray is slightly lighter than [systemGray4](https://developer.apple.com/documentation/uikit/uicolor/3255073-systemgray4).
    /// In dark environments, this gray is slightly darker than `systemGray4`.
    public static var systemGray5: Color { Color(uiBackport: .systemGray5) }
    
    /// A fifth-level shade of gray that adapts to the environment.
    ///
    /// This color adapts to the current environment,
    /// and is close in color to [systemBackground](https://developer.apple.com/documentation/uikit/uicolor/3173140-systembackground).
    /// In light environments, this gray is slightly lighter than [systemGray5](https://developer.apple.com/documentation/uikit/uicolor/3255074-systemgray5).
    /// In dark environments, this gray is slightly darker than `systemGray5`.
    public static var systemGray6: Color { Color(uiBackport: .systemGray6) }
    
    // MARK: - Tint Color
    
    //    public static var tintColor: Color { Color(uiBackport: .tintColor) }
    
    // MARK: - Foreground Colors
    /* Foreground colors for static text and related elements.
     */
    
    /// The color for text labels that contain primary content.
//    public static var label: Color { Color(uiBackport: .label) }
    
    /// The color for text labels that contain secondary content.
    public static var secondaryLabel: Color { Color(uiBackport: .secondaryLabel) }
    
    /// The color for text labels that contain tertiary content.
    public static var tertiaryLabel: Color { Color(uiBackport: .tertiaryLabel) }
    
    /// The color for text labels that contain quaternary content.
    public static var quaternaryLabel: Color { Color(uiBackport: .quaternaryLabel) }
    
    /// The specified color for links.
    ///
    /// Foreground color for standard system links
    public static var link: Color { Color(uiBackport: .link) }
    
    
    /// The color for placeholder text in controls or text views.
    ///
    /// Foreground color for placeholder text in controls or text fields or text views.
    public static var placeholderText: Color { Color(uiBackport: .placeholderText) }
    
    // MARK: - Separator Colors
    /* Foreground colors for separators (thin border or divider lines).
     * `separatorColor` may be partially transparent, so it can go on top of any content.
     * `opaqueSeparatorColor` is intended to look similar, but is guaranteed to be opaque, so it will
     * completely cover anything behind it. Depending on the situation, you may need one or the other.
     */
    
    /// The color for thin borders or divider lines that allows some underlying content to be visible.
    ///
    /// This color may be partially transparent to allow the underlying content to show through. It adapts to the underlying trait environment.
    public static var separator: Color { Color(uiBackport: .separator) }
    
    /// The color for borders or divider lines that hides any underlying content.
    ///
    /// This color is always opaque. It will completely cover anything behind it. Depending on the situation, you may need one or the other. It adapts to the underlying trait environment.
    public static var opaqueSeparator: Color { Color(uiBackport: .opaqueSeparator) }
    
    // MARK: - Background Colors
    /* We provide two design systems (also known as "stacks") for structuring an iOS app's backgrounds.
     *
     * Each stack has three "levels" of background colors. The first color is intended to be the
     * main background, farthest back. Secondary and tertiary colors are layered on top
     * of the main background, when appropriate.
     *
     * Inside of a discrete piece of UI, choose a stack, then use colors from that stack.
     * We do not recommend mixing and matching background colors between stacks.
     * The foreground colors above are designed to work in both stacks.
     *
     * 1. systemBackground
     *    Use this stack for views with standard table views, and designs which have a white
     *    primary background in light mode.
     */
    
    
    /// The color for the main background of your interface.
    ///
    /// Use this color for standard table views and designs that have a white primary background in a light environment.
    public static var systemBackground: Color { Color(uiBackport: .systemBackground) }
    
    /// The color for content layered on top of the main background.
    ///
    /// Use this color for standard table views and designs that have a white primary background in a light environment.
    public static var secondarySystemBackground: Color { Color(uiBackport: .secondarySystemBackground) }
    
    /// The color for content layered on top of secondary backgrounds.
    ///
    /// Use this color for standard table views and designs that have a white primary background in a light environment.
    public static var tertiarySystemBackground: Color { Color(uiBackport: .tertiarySystemBackground) }
    
    /* 2. systemGroupedBackground
     *    Use this stack for views with grouped content, such as grouped tables and
     *    platter-based designs. These are like grouped table views, but you may use these
     *    colors in places where a table view wouldn't make sense.
     */
    
    /// The color for the main background of your grouped interface.
    ///
    /// Use this color for grouped content, including table views and platter-based designs.
    public static var systemGroupedBackground: Color { Color(uiBackport: .systemGroupedBackground) }
    
    /// The color for content layered on top of the main background of your grouped interface.
    ///
    /// Use this color for grouped content, including table views and platter-based designs.
    public static var secondarySystemGroupedBackground: Color { Color(uiBackport: .secondarySystemGroupedBackground) }
    
    /// The color for content layered on top of secondary backgrounds of your grouped interface.
    ///
    /// Use this color for grouped content, including table views and platter-based designs.
    public static var tertiarySystemGroupedBackground: Color { Color(uiBackport: .tertiarySystemGroupedBackground) }
    
    // MARK: - Fill Colors
    /* Fill colors for UI elements.
     * These are meant to be used over the background colors, since their alpha component is less than 1.
     */
    
    /// An overlay fill color for thin and small shapes.
    ///
    /// Use system fill colors for items situated on top of an existing background color. System fill colors incorporate transparency to allow the background color to show through.
    ///
    /// Use this color to fill thin or small shapes, such as the track of a slider.
    public static var systemFill: Color { Color(uiBackport: .systemFill) }
    
    /// An overlay fill color for medium-size shapes.
    ///
    /// Use system fill colors for items situated on top of an existing background color. System fill colors incorporate transparency to allow the background color to show through.
    ///
    /// Use this color to fill medium-size shapes, such as the background of a switch.
    public static var secondarySystemFill: Color { Color(uiBackport: .secondarySystemFill) }
    
    /// An overlay fill color for large shapes.
    ///
    /// Use system fill colors for items situated on top of an existing background color. System fill colors incorporate transparency to allow the background color to show through.
    ///
    /// Use this color to fill large shapes, such as input fields, search bars, or buttons.
    public static var tertiarySystemFill: Color { Color(uiBackport: .tertiarySystemFill) }
    
    /// An overlay fill color for large areas that contain complex content.
    ///
    /// Use system fill colors for items situated on top of an existing background color. System fill colors incorporate transparency to allow the background color to show through.
    ///
    /// Use this color to fill large areas that contain complex content, such as an expanded table cell.
    public static var quaternarySystemFill: Color { Color(uiBackport: .quaternarySystemFill) }
    
    // MARK: - Static Text Colors
    /* lightTextColor is always light, and darkTextColor is always dark, regardless of the current UIUserInterfaceStyle.
     * When possible, we recommend using `labelColor` and its variants, instead.
     */
    
    /// The nonadaptable system color for text on a dark background.
    ///
    /// This color doesn’t adapt to changes in the underlying trait environment.
    ///
    /// - Returns: The `Color` object.
    public static var lightText: Color { Color(uiBackport: .lightText) }
    
    /// The nonadaptable system color for text on a light background.
    ///
    /// This color doesn’t adapt to changes in the underlying trait environment.
    ///
    /// - Returns: The `Color` object.
    public static var darkText: Color { Color(uiBackport: .darkText) }
}
#endif
