//
//  PhotosDetailViewController.swift
//  Week1Lab-TumblrFeed
//
//  Created by Henry Vuong on 2/15/18.
//  Copyright © 2018 Henry Vuong. All rights reserved.
//

import UIKit

class PhotosDetailViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var photoLabel: UIImageView!
    
    @IBAction func didPinchTray(_ sender: Any) {
        performSegue(withIdentifier: "modalSegue", sender: nil)
    }
    
    var url: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoLabel.af_setImage(withURL: url!)
        
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(didPinch(sender:)))

        // Attach it to a view of your choice. If it's a UIImageView, remember to enable user interaction
        photoLabel.isUserInteractionEnabled = true
        photoLabel.addGestureRecognizer(pinchGestureRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc func didPinch(sender: UIPinchGestureRecognizer) {
        // get the scale value from the pinch gesture recognizer
        let scale = sender.scale
    }
    
    // prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! FullScreenPhotosViewController
        destinationViewController.url = url
    }
}
