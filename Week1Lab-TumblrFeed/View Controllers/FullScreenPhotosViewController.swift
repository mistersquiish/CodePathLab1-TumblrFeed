//
//  FullScreenPhotosViewController.swift
//  Week1Lab-TumblrFeed
//
//  Created by Henry Vuong on 2/15/18.
//  Copyright © 2018 Henry Vuong. All rights reserved.
//

import UIKit

class FullScreenPhotosViewController: UIViewController, UIScrollViewDelegate {
    
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var imageView: UIImageView!
    
    var url: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        imageView.af_setImage(withURL: url!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
}
