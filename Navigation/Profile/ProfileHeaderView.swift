//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by V SEO on 30.05.2022.

import UIKit

class ProfileHeaderView: UIView {}


let profileHeaderView: ProfileHeaderView = {
    let header = ProfileHeaderView()
    header.backgroundColor = .white
    
    return header
}()


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



