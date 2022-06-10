//
//  ProfileViewController.swift
//  Navigation
//
//  Created by V SEO on 30.05.2022.


import UIKit

class ProfileViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.addSubview(profileHeaderView)
        view.addSubview(imageView)
        view.addSubview(name)
        view.addSubview(statusLabel)
        view.addSubview(button)
        profileHeaderView.backgroundColor = .lightGray
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        

        setupView()
        navigationItem.title = "Profile"
    }
    
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        //profileHeaderView.frame = view.frame
        let screenSize: CGRect = UIWindow().frame
       
        print(screenSize.width, screenSize.height)
        profileHeaderView.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height)
        
    }
    
    private func setupView() {
            
        button.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 67).isActive = true
        button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        name.leftAnchor.constraint(equalTo: imageView.rightAnchor).isActive = true
        name.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -10).isActive = true
        name.topAnchor.constraint(equalTo: self.view.topAnchor, constant:15).isActive = true
        name.heightAnchor.constraint(equalToConstant: 50).isActive = true
        name.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/1.5).isActive = true
        
        statusLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor).isActive = true
        statusLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -10).isActive = true
        statusLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant:65).isActive = true
        statusLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        statusLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/1.5).isActive = true
        
        }
    
    var button: UIButton = {
           let button = UIButton(frame: CGRect(x: 20, y: 40, width: 100, height: 50))
           button.backgroundColor = .blue
           button.layer.cornerRadius = 12
           button.layer.shadowOffset = CGSize(width: 4, height: 4)
           button.setTitle("Show post", for: .normal)
           button.setTitleColor(.white, for: .normal)
           button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
           button.layer.borderColor = UIColor.white.cgColor
           button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
           button.translatesAutoresizingMaskIntoConstraints = false
           return button
       }()

   @objc private func tapAction() {
       print(statusLabel.text ?? "Nothing to show ")
       
   }
    
    

}
