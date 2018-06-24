//
//  DesignableButton.swift
//  WeatherTest
//
//  Created by Zimma on 24.06.2018.
//  Copyright © 2018 Zimma. All rights reserved.
//


import UIKit

@IBDesignable class DisignableButton: UIButton {
    /// Радиус гараницы
    @IBInspectable var cornerRadius: CGFloat {
        set { layer.cornerRadius = newValue  }
        get { return layer.cornerRadius }
    }
    /// Толщина границы
    @IBInspectable var borderWidth: CGFloat {
        set { layer.borderWidth = newValue }
        get { return layer.borderWidth }
    }
    
    //Цвет границ
    @IBInspectable var borderColor: CGColor {
        set { layer.borderColor = newValue}
        get { return layer.borderColor! }
    }
}
