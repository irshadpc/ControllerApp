//
//  NSViewExtension.swift
//  ControllerApp
//
//  Created by Galvin on 2020/3/11.
//  Copyright © 2020 GalvinLi. All rights reserved.
//

import Cocoa

extension NSView {
    @IBInspectable var ib_CornerRadius: CGFloat {
        set {
            wantsLayer = true
            layer?.masksToBounds = true
            layer?.cornerRadius = newValue
        }
        get { return layer?.cornerRadius ?? 0 }
    }
    @IBInspectable var ib_BorderColor: NSColor? {
        set {
            wantsLayer = true
            layer?.borderColor = newValue?.cgColor
        }
        get {
            guard let cgColor = layer?.borderColor else { return nil}
            return NSColor(cgColor: cgColor)
        }
    }
    @IBInspectable var ib_BorderWidth: CGFloat {
        set {
            wantsLayer = true
            layer?.borderWidth = newValue
        }
        get { return layer?.borderWidth ?? 0 }
    }
    func hide(when shouldHide: Bool = true) {
        guard isHidden != shouldHide else { return }
        isHidden = shouldHide
    }
    func show(when shouldShow: Bool = true) {
        guard isHidden != !shouldShow else { return }
        isHidden = !shouldShow
    }
    
}
