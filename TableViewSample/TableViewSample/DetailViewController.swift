//
//  DetailViewController.swift
//  TableViewSample
//
//  Created by Sundir Talari on 07/07/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tableView2: UITableView!
    
var textArr = ["Sorry for the interruption", "Sorry for the interruption", "Sorry for the interruption"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailTableViewCell")
        cell?.textLabel?.text = textArr[indexPath.row]
        return cell!
    }
    

    

}
