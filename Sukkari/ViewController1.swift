//
//  ViewController1.swift
//  Sukkari
//
//  Created by apple on 26/03/2021.
//  Copyright © 2021 a. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {


    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var l6: UILabel!
    @IBOutlet weak var l7: UILabel!
    
    var record :[Double]=[4,5,6,6,5,5,5,6,8,8,6,6,4,5,6,6,5,5,5,6,8,8,6,6,4,8,5,6]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        l1.text = average(record: record, day: 1)
        l2.text = average(record: record, day: 2)
        l3.text = average(record: record, day: 3)
        l4.text = average(record: record, day: 4)
        l5.text = average(record: record, day: 5)
        l6.text = average(record: record, day: 6)
        l7.text = average(record: record, day: 7)
        // Do any additional setup after loading the view.
    }
    
    func average(record: [Double], day: Int) -> String {
        var sum:Double=0
        for i in 4*day-4...4*day-1{
            sum+=record[i]
        }
        return String(sum/4)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
