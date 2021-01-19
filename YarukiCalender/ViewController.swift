//
//  ViewController.swift
//  YarukiCalender
//
//  Created by 石澤大輔 on 2020/12/18.
//

import FSCalendar
import UIKit

class ViewController: UIViewController {

    @IBOutlet var calender: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {

    }
}
