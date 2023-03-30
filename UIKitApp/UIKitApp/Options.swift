//
//  Options.swift
//  UIKitApp
//
//  Created by Ariuna Banzarkhanova on 30/03/23.
//

import Foundation
import SwiftUI

enum Options: String, Codable {
    case one
    case two
    case three
    case unknown
}

func imageFromOption(option: Options) -> Image {
    switch(option) {
    case .one:
        return Image("love")
    case .two:
        return Image("poker")
    case .three:
        return Image("wink")
    default:
        return Image("")
    }
}

func textFromOption(option: Options) -> String {
    switch(option) {
    case .one:
        return ("love")
    case .two:
        return ("poker")
    case .three:
        return ("wink")
    default:
        return ("Select emoji")
    }
}
