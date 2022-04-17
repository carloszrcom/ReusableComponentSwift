//
//  ProfileDetailVC.swift
//  ReusableComponentSwift
//
//  Created by Carlos ZR on 16/4/22.
//

import UIKit

class ProfileDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addProfileHeaderTo(vc: self)
    }
    
    @IBAction func navigateBack() {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: - FUNCTIONS
    
    func addProfileHeaderTo(vc: UIViewController) {
        let profileHeader = ProfileHeaderVC(nibName: "ProfileHeaderVC", bundle: nil)
        
        vc.view.addSubview(profileHeader.view)
        vc.addChild(profileHeader)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
