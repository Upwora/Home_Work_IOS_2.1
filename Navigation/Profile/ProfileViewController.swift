//
//  ProfileViewController.swift
//  Navigation
//
//  Created by V SEO on 30.05.2022.


import UIKit

class ProfileViewController: UIViewController {
    
    let profileHeaderView = ProfileHeaderView()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        navigationItem.title = "Profile"
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(profileHeaderView)
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
    }
    
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        profileHeaderView.frame = view.frame
        let screenSize: CGRect = UIWindow().frame
       
        print(screenSize.width, screenSize.height)
        view.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height)
        
    }
    
  
    
    

}
