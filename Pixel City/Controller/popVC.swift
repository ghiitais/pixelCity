//
//  popVC.swift
//  Pixel City
//
//  Created by Ghita on 10/20/17.
//  Copyright © 2017 Ghita. All rights reserved.
//

import UIKit

class popVC: UIViewController, UIGestureRecognizerDelegate {

    var passedImage: UIImage?
    
    func initData(forImage image: UIImage ) {
        self.passedImage = image
    }
     
    @IBOutlet weak var popViewImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popViewImage.image = passedImage
        addToubleTap()
    }
    
    func addToubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
         doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
 


}
