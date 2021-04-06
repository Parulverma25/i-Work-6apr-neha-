//
//  WelcomeViewController.swift
//  i Work
//
//  Created by promatics on 31/03/21.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController  {
    
    // MARK:- Outlet
    
    @IBOutlet weak var collectionView: UICollectionView!
   
    // MARK:- Variables
    
    var images : [String] = ["download.jpeg","download.jpeg","download.jpeg"]
    
    // MARK:- Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    // MARK:- IBActions
    
    @IBAction func registerPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "PasswordUpdatedViewController") as! PasswordUpdatedViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = storyboard.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(vc1, animated: true)
    }
    @IBAction func helpBtnPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyboard.instantiateViewController(identifier: "HelpViewController") as! HelpViewController
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    @IBAction func aboutUsPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc3 = storyboard.instantiateViewController(identifier: "AboutUsViewController") as! AboutUsViewController
        self.navigationController?.pushViewController(vc3, animated: true)
    }
    @IBAction func lookingForJobPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Jobs", bundle: nil)
        let vc4 = storyboard.instantiateViewController(identifier: "SelectServiceViewController") as! SelectServiceViewController
        self.navigationController?.pushViewController(vc4, animated: true)
    }
}

    // MARK:- UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout

extension WelcomeViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("")
    }
}
    
extension WelcomeViewController : UICollectionViewDataSource{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! WelcomeCollectionViewCell
        let cellImages = UIImage(named: images[indexPath.row])
        cell.imageView.image = cellImages
        return cell
    }
}

extension WelcomeViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
