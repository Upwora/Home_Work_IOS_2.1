//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by V SEO on 30.05.2022.


import UIKit


class ProfileHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(imageView)
        addSubview(name)
        addSubview(statusLabel)
        addSubview(button)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 16, y: 16, width: 100, height: 100))
        imageView.image = UIImage(named: "Vinchi-Leonardo-Da")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.cornerRadius = 50
        return imageView
    }()

    var name: UILabel = {
        
        let uiText = UILabel()
        uiText.text = "Leonardo Da Vinci"
        uiText.font = UIFont(name: "Helvetica-Bold", size: 18)
        uiText.translatesAutoresizingMaskIntoConstraints = false
        
        return uiText
    }()
    
    var statusLabel: UILabel = {
        
        let uiText = UILabel()
        uiText.text = "Learning never exhausts the mind."
        uiText.font = UIFont(name: "Helvetica", size: 14)
        uiText.textColor = .gray
        uiText.translatesAutoresizingMaskIntoConstraints = false
        
        return uiText
    }()
    
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
    
    func setupView() {
        
        backgroundColor = .lightGray
  
  //      
        

        button.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 67).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        name.leftAnchor.constraint(equalTo: imageView.rightAnchor).isActive = true
        name.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        name.topAnchor.constraint(equalTo: self.topAnchor, constant:15).isActive = true
        name.heightAnchor.constraint(equalToConstant: 50).isActive = true
        name.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/1.5).isActive = true
        
        statusLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor).isActive = true
        statusLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        statusLabel.topAnchor.constraint(equalTo: self.topAnchor, constant:65).isActive = true
        statusLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        statusLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/1.5).isActive = true
        
        }

}
