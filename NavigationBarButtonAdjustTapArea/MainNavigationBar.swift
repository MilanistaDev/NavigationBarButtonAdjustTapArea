//
//  MainNavigationBar.swift
//  NavigationBarButtonAdjustTapArea
//
//  Created by 麻生 拓弥 on 2016/10/06.
//  Copyright © 2016年 麻生 拓弥. All rights reserved.
//

import UIKit

class MainNavigationBar: UINavigationBar {

    /**
      タップされた座標がナビゲーションバーの領域内だとユーザインタラクトを有効にする
      If the point tapped is inside of the NavigationBar area,
      navigationbar's userinteract is true.
      - parameters point tap point /タップ座標
      - parameters event TapEvent / タップイベント
      - return self / ユーザインタラクト設定した自身のビュー
    */
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {

        if (self.point(inside: point, with: event)) {
            self.isUserInteractionEnabled = true
        } else {
            self.isUserInteractionEnabled = false
        }
        return super.hitTest(point, with: event)
    }
}
