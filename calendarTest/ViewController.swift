//
//  ViewController.swift
//  calendarTest
//
//  Created by Yuki Shinohara on 2020/06/06.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, FSCalendarDelegate {
    
    @IBOutlet var calendar:FSCalendar!

    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
    }

    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none

        let dateString = dateFormatter.string(from: date)
//        print(dateString)
        
        let alert: UIAlertController = UIAlertController(title: dateString, message: nil, preferredStyle: .alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(defaultAction)

        present(alert, animated: true, completion: nil)
    }
}

