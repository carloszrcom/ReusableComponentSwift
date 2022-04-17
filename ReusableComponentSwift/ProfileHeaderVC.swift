//
//  ProfileHeaderVC.swift
//  ReusableComponentSwift
//
//  Created by Carlos ZR on 14/4/22.
//

import UIKit

class ProfileHeaderVC: UIViewController {

    // MARK: - OUTLET
    
    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var usernameLb: UILabel!
    @IBOutlet weak var editProfileBtn: UIButton!
    
    // MARK: - LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - ACTION
    
    @IBAction func editProfile(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editProfileVC = storyboard.instantiateViewController(withIdentifier: "EditProfileVC") as! EditProfileVC
        
        self.navigationController?.pushViewController(editProfileVC, animated: true)
    }

    // MARK: - FUNCTION
    
    func configureView() {
        // Image
        
        avatarImg.backgroundColor = .white
        avatarImg.layer.cornerRadius = avatarImg.frame.size.width / 2
        
        // Button
        
        editProfileBtn.backgroundColor = .white
        editProfileBtn.layer.cornerRadius = 5
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
