//
//  DialVC.swift
//  SpeedDial
//
//  Created by iMac on 24/02/21.
//

import UIKit

class DialVC: UIViewController {

//MARK:- outlets
    
    @IBOutlet weak var LBL_Heading: UILabel!
    @IBOutlet weak var TBL_callers: UITableView!
    
//MARK:- Veriable
    
    var ArrName = ["Karan","Mataji","Pitaji","Mamu","Sirji","LR","Khushi","Priyanshu"]
    var Arrnumber = ["9510301768","4585458696","4523698521","7529812305","5252362362","5895856965","1252125236","21514789925"]
//MARK:- life cycyle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TBL_callers.delegate = self
        TBL_callers.dataSource = self
        self.TBL_callers.register(UINib(nibName: "DialCell", bundle: nil),forCellReuseIdentifier :"DialCell")
        // Do any additional setup after loading the view.
    }
    
}
extension DialVC: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DialCell") as! DialCell
        cell.LBL_Name.text = ArrName[indexPath.row]
        cell.LBL_PhoneNumber.text = Arrnumber[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let Phonenumber = Arrnumber[indexPath.row]
        print(Phonenumber)
        let phoneURLString = "tel://\(Phonenumber)"
        let phoneUrl = NSURL(string: phoneURLString)
        print(phoneUrl)
        UIApplication.shared.openURL(phoneUrl! as URL)
    }
    
}
