//
//  CapturedImageViewController.swift
//  Snapsie Plus
//
//  Created by Gwinyai on 11/5/2019.
//  Copyright © 2019 Gwinyai Nyatsoka. All rights reserved.
//

import UIKit

class CapturedImageViewController: UIViewController {
    
    @IBOutlet weak var capturedImageView: UIImageView!
    
    var capturedImage: Data?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let image = capturedImage {
            
            capturedImageView.image = UIImage(data: image)
            
        }
        
    }

    @IBAction func dismissButtonDidTouch(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

}
