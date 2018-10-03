//
//  menucontroller2.swift
//  boilerplate
//
//  Created by Hasanul Isyraf on 27/09/2018.
//  Copyright © 2018 Hasanul Isyraf. All rights reserved.
//

import UIKit

class menucontroller2: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    @IBOutlet weak var profileimage: UIImageView!
    
    var tableitem = ["Home","Feeds","Profile","Setting","Sign Out"];
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
        
        profileimage.image = UIImage(named: "ProfileH")
        profileimage.layer.cornerRadius = 50

    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableitem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menucell", for: indexPath) as! menucell
        
        
        cell.imageitem.image = UIImage(named:tableitem[indexPath.row])
        cell.itemtext.text = tableitem[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: tableitem[indexPath.row], sender: self)
    }


}
