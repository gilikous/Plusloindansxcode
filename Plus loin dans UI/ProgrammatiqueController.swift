//
//  ProgrammatiqueController.swift
//  Plus loin dans UI
//
//  Created by Bryan Richard on 22/04/2019.
//  Copyright © 2019 Bryan Richard. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {

    var monPremierUIview: UIView?
    var monPremierLabel: UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIview = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIview?.backgroundColor = UIColor(displayP3Red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIview?.layer.cornerRadius = 25
        guard monPremierUIview != nil  else{return}
            view.addSubview(monPremierUIview!)
       
        
        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIview!.frame.maxY +  20, width: view.frame.width, height: 50))
        monPremierLabel?.text = " Coucou je suis un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = NSTextAlignment.center
        view.addSubview(monPremierLabel!)
        }
}
