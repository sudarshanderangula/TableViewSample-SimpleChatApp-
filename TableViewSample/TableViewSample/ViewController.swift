//
//  ViewController.swift
//  TableViewSample
//
//  Created by Sundir Talari on 07/07/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var table: UITableView!
    var imageArray = ["stevejobs", "billgates", "che guevara", "warrenbuffett"]
    var items = ["Steve Jobs", "Billgates", "Che guevara", "warrenbuffett"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.imgView.image = UIImage(named: imageArray[indexPath.row])
        cell.textLbl.text = items[indexPath.row]
    
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController")
        self.navigationController?.pushViewController(detailVC!, animated: true)
    }



}

