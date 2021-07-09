//
//  ViewController.swift
//  YarukiCalender
//
//  Created by 石澤大輔 on 2020/12/18.
//

import UIKit

class ViewController: UIViewController {

    let date = Date()
    @IBOutlet private weak var collection: UICollectionView!
    @IBOutlet weak var preMonthButton: UIButton!
    @IBOutlet weak var nextMonthButton: UIButton!
    var displayWidth: CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.overrideUserInterfaceStyle = .light

    }
}
