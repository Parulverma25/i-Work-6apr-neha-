//
//  UserTabBarViewController.swift
//  i Work
//
//  Created by promatics on 4/5/21.
//

import UIKit

class UserTabBarViewController: UITabBarController {

    let gradientlayer = CAGradientLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.unselectedItemTintColor = .white
        for item in self.tabBar.items!{
            item.selectedImage = item.selectedImage?.withRenderingMode(.alwaysOriginal)
            
            item.image = item.image?.withRenderingMode(.alwaysOriginal)
            setGradientBackground (colorOne: UIColor(red: 91/255, green: 134/255, blue: 229/255, alpha: 1), colorTwo: UIColor(red: 54/255, green: 209/255, blue: 220/255, alpha: 1))
        }
        navigationController?.navigationBar.isHidden = true
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor) {
        
        gradientlayer.frame = tabBar.bounds
        gradientlayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientlayer.locations = [0, 1]
        gradientlayer.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradientlayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        self.tabBar.layer.insertSublayer(gradientlayer, at: 0)
        
    }

}
