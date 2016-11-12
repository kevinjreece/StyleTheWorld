//
//  ViewController.swift
//  StyleTheWorld
//
//  Created by Kevin J Reece on 11/12/16.
//  Copyright © 2016 Kevin J Reece. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var imageView: UIImageView!
    
    var cameraEngine: CameraEngine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.captureImage), userInfo: nil, repeats: true)
        cameraEngine = CameraEngine()
        cameraEngine.startSession()
    }
    
    func captureImage() {
        self.cameraEngine.capturePhoto { (image: UIImage?, error: Error?) -> (Void) in
            self.imageView.image = image
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

