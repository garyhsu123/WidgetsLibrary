//
//  FDRoundButton.swift
//  WidgetsLibrary
//
//  Created by Yu-Chun Hsu on 2021/5/29.
//

import UIKit

@IBDesignable
class FDRoundButton: UIButton {

    @IBInspectable var radiusRation: CGFloat = 0.0
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.bounds.size.height * radiusRation
    }
}
