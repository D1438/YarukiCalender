//
//  ViewController.swift
//  YarukiCalender
//
//  Created by 石澤大輔 on 2020/12/18.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet private weak var collection: UICollectionView!
    @IBOutlet private weak var preMonthButton: UIButton!
    @IBOutlet private weak var nextMonthButton: UIButton!
    var displayWidth: CGFloat = 0
    let weekLabel: [String] = ["日", "月", "火", "水", "木", "金", "土"]
    let calendar = CalendarPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.overrideUserInterfaceStyle = .light

        displayWidth = UIScreen.main.bounds.width

        // Do any additional setup after loading the view.

        calendar.getToday()
        collection.dataSource = self
        collection.delegate = self

        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 15, left: 10, bottom: 15, right: 10)
        layout.minimumInteritemSpacing = 0
        collection.collectionViewLayout = layout
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }

//    セルの数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        switch section {
//        週のセル数
        case 0:
            return 7

//        日付のセル数
        case 1:
            return 35

        default:
            print("error")
            return 0
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "data", for: indexPath)

        switch indexPath.section {
//        週のセル
        case 0:
            cell.backgroundColor = UIColor.blue
            let week = cell.contentView.viewWithTag(1) as? UILabel
            week!.text = weekLabel[indexPath.row]

        case 1:
//            各日にちのセル
//            cell.backgroundColor = UIColor.red
            cell.layer.borderColor = UIColor.black.cgColor
            cell.layer.borderWidth = 1

            let dateLabel = cell.contentView.viewWithTag(1) as? UILabel
            dateLabel!.text = "aaaa"

        default:
            print("section error")
        }

//        枠をなくす
        cell.layer.borderWidth = 0

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizonSize: CGFloat = displayWidth / 7 - 5
        let verticalSize: CGFloat = 50
        return CGSize(width: horizonSize, height: verticalSize)
    }
}
