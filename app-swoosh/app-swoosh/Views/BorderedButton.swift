//
//  BorderedButton.swift
//  app-swoosh
//
//  Created by Robert Varga on 15/10/2017.
//  Copyright © 2017 Robert Varga. All rights reserved.
//

import UIKit

class BorderedButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
