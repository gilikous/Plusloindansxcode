//
//  CycleEtFrameController.swift
//  Plus loin dans UI
//
//  Created by Bryan Richard on 21/04/2019.
//  Copyright © 2019 Bryan Richard. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {

    @IBOutlet weak var viewFrameEtBound: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        print("View did load appelé")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear appelé")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear appelé")
        print("Frame -> : \(viewFrameEtBound.frame)")
        print("Frame -> : \(viewFrameEtBound.bounds)")
        
        UIView.animate(withDuration: 2, animations: { self.viewFrameEtBound.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)/82 )}, completion: { (success) in
            <#code#>
            }})
    }
     
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear appelé")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View did disappear appelé")
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Did receive memory warning appelé")
    }
    

}
