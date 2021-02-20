//
//  ViewController.swift
//  YarukiCalender
//
//  Created by 石澤大輔 on 2020/12/18.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    let date = Date()
    @IBOutlet private weak var collection: UICollectionView!
    var displayWidth: CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.overrideUserInterfaceStyle = .light

        displayWidth = UIScreen.main.bounds.width

        // Do any additional setup after loading the view.
        let today = Calendar.current.startOfDay(for: date)

        print(today)

        collection.dataSource = self
        collection.delegate = self

        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 15, left: 10, bottom: 15, right: 10)
        layout.minimumInteritemSpacing = 0
        collection.collectionViewLayout = layout
    }

//    セルの数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "data", for: indexPath)
        print(indexPath.item)
        cell.backgroundColor = UIColor.red

        let dateLabel = cell.contentView.viewWithTag(1) as? UILabel
        dateLabel!.text = "aaaa"

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizonSize: CGFloat = displayWidth / 7 - 5
        let verticalSize: CGFloat = 50
        return CGSize(width: horizonSize, height: verticalSize)
    }
}
