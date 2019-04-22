//
//  ProgrammatiqueController.swift
//  Plus loin dans UI
//
//  Created by Bryan Richard on 22/04/2019.
//  Copyright © 2019 Bryan Richard. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    var monPremierUIview: UIView?
    var monPremierLabel: UILabel?
    var monPremierUIButton: UIButton?
    var monPremierUIImageView: UIImageView?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIview = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIview?.backgroundColor = UIColor(displayP3Red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIview?.layer.cornerRadius = 25
        guard monPremierUIview != nil  else{return}
            scroll.addSubview(monPremierUIview!)
       
        
        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIview!.frame.maxY +  20, width: view.frame.width, height: 50))
        monPremierLabel?.text = " Coucou je suis un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = NSTextAlignment.center
        scroll.addSubview(monPremierLabel!)
        
        
        let rectDeMonButton = CGRect(x: view.frame.width/2-75, y: monPremierLabel!.frame.maxY + 20, width: 150, height: 40)
        monPremierUIButton = UIButton(frame: rectDeMonButton)
        monPremierUIButton?.setTitle("Appuyer", for: .normal)
        monPremierUIButton?.tintColor = UIColor.red
        monPremierUIButton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierUIButton?.backgroundColor = UIColor.black
        monPremierUIButton?.layer.borderColor = UIColor.white.cgColor
        monPremierUIButton?.layer.borderWidth = 2
        scroll.addSubview(monPremierUIButton!)
        
        monPremierUIButton?.addTarget(self, action: #selector(boutonAppuyer), for: .touchUpInside)
        
        let largeur = view.frame.width - 60
        let tailleImageView = CGRect(x: view.frame.width / 2 - largeur, y: view.frame.width - 30 , width: largeur, height: largeur)
        monPremierUIImageView = UIImageView(frame: tailleImageView)
        monPremierUIImageView?.image = UIImage(named: "logo")
        monPremierUIImageView?.contentMode = .scaleAspectFill
        monPremierUIImageView?.clipsToBounds = true
        scroll.addSubview(monPremierUIImageView!)
        
        
        let couleurs: [UIColor] = [.red, .blue, .black, .white]
        var maximum: CGFloat = (monPremierUIImageView!.frame.maxY)
        
        for couleur in couleurs
        {
        let vue = UIView(frame: CGRect(x: 0, y: maximum + 10, width: 100, height: 100))
        vue.backgroundColor = couleur
            scroll.addSubview(vue)
            maximum = vue.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width, height: maximum + 100 )
        }
    
    
    @objc func boutonAppuyer() {
        print("Tu as bien appuyer")
    }
}
