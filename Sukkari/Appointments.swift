//
//  Appointments.swift
//  Sukkari
//
//  Created by apple on 27/03/2021.
//  Copyright © 2021 a. All rights reserved.
//

import UIKit

class Appointments: UIViewController {
    @IBOutlet var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func configureCell(cell:AppointmentsCell, indexPath:IndexPath){
        cell.l1.text="مستشفى الملك فهد"
        cell.l2.text="27 Mar 2021"
        cell.l3.text="4:30 PM"
    }
}

extension Appointments: UITableViewDelegate{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AppointmentsCell
        configureCell(cell: cell, indexPath: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(170)
    }
}

extension Appointments: UITableViewDataSource{
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print()
    }
}
