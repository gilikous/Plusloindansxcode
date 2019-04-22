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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIview = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIview?.backgroundColor = UIColor(displayP3Red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIview?.layer.cornerRadius = 25
        guard monPremierUIview != nil  else{return}
            view.addSubview(monPremierUIview!)
        print(monPremierUIview?.frame)
        print(monPremierUIview?.bounds)
        
        
        let secondeVue = UIView(frame: monPremierUIview!.frame)
        secondeVue.center.y += 50
        secondeVue.backgroundColor = UIColor.darkGray
        view.addSubview(secondeVue)
        
        let troisiemeVue = UIView(frame: monPremierUIview!.frame)
        troisiemeVue.center.y += 200
        troisiemeVue.backgroundColor = UIColor.brown
        view.addSubview(troisiemeVue)
        
        }
}
