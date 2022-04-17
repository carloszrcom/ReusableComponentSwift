//
//  ViewController.swift
//  ReusableComponentSwift
//
//  Created by Carlos ZR on 14/4/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - LIFECYCLE

    override func viewDidLoad() {
        super.viewDidLoad()
        addProfileHeaderTo(vc: self)
    }
    
    // MARK: - FUNCTION
    
    func addProfileHeaderTo(vc: UIViewController) {
        let profileHeader = ProfileHeaderVC(nibName: "ProfileHeaderVC", bundle: nil)
        
        vc.view.addSubview(profileHeader.view)
        vc.addChild(profileHeader)
    }
    
    @IBAction func navigateToDetailScreen () {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "ProfileDetailVC") as! ProfileDetailVC
        
        self.navigationController?.pushViewController(detailVC, animated: true)
    }


}

