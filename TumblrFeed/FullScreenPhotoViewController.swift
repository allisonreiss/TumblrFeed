//
//  FullScreenPhotoViewController.swift
//  TumblrFeed
//
//  Created by Allison Reiss on 11/20/17.
//  Copyright © 2017 Allison Reiss. All rights reserved.
//

import UIKit

class FullScreenPhotoViewController: UIViewController {

    @IBOutlet weak var ZoomScrollView: UIScrollView!
    @IBOutlet weak var ZoomImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ZoomScrollView.delegate = self as? UIScrollViewDelegate
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return ZoomImageView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
