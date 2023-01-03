//
//  CornerRadiusBtn.swift
//  moneyNoteiOS
//
//  Created by ho on 2023/01/11.
//

import Foundation
import UIKit

// 인스펙터 패널에서 사용
@IBDesignable
class CornerRadiusBtn: UIButton {
    
    // 인스펙터 패널에서 사용
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            // cornerRadius 직접 입력한 값으로 설정하겠끔
            layer.cornerRadius = cornerRadius
            // 스토리 보드상에 바로 적용
            layer.masksToBounds = cornerRadius > 0
        }
    }
}
