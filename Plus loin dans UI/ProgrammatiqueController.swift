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
    var monPremierUIButton: UIButton?
    
    
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
        
        
        let rectDeMonButton = CGRect(x: view.frame.width/2-75, y: monPremierLabel!.frame.maxY + 20, width: 150, height: 40)
        monPremierUIButton = UIButton(frame: rectDeMonButton)
        monPremierUIButton?.setTitle("Appuyer", for: .normal)
        monPremierUIButton?.tintColor = UIColor.red
        monPremierUIButton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierUIButton?.backgroundColor = UIColor.black
        monPremierUIButton?.layer.borderColor = UIColor.white.cgColor
        monPremierUIButton?.layer.borderWidth = 2
        view.addSubview(monPremierUIButton!)
        
        monPremierUIButton?.addTarget(self, action: #selector(boutonAppuyer), for: .touchUpInside)
        
        
        }
    
    
    @objc func boutonAppuyer() {
        print("Tu as bien appuyer")
    }
}
