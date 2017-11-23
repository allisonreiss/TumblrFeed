//
//  DetailViewController.swift
//  TumblrFeed
//
//  Created by Allison Reiss on 11/11/17.
//  Copyright © 2017 Allison Reiss. All rights reserved.
//

import UIKit
import AlamofireImage



class DetailViewController: UIViewController {
    
    @IBOutlet weak var PhotoImageView: UIImageView!
    
    var post: [String: Any] = [:]
//    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let photos = post["photos"] as? [[String: Any]] {
            // photos is NOT nil, we can use it!
            // Get the first photo in the photos array
            let photo = photos[0]
            // Get the original size dictionary from the photo
            let originalSize = photo["original_size"] as! [String: Any]
            // Get the url string from the orginal size dictionary
            let urlString = originalSize["url"] as! String
            // Create a URL using the urlString
            if let url = URL(string: urlString) {
                PhotoImageView.af_setImage(withURL: url)
            }
//            image = PhotoImageView.image
        }
    }
/*
    @IBAction func onTap(_ sender: Any) {
        // get the screen that we want to show
        let mainStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let fsViewController = mainStoryboard.instantiateViewController(withIdentifier: "FullScreenPhotoViewController") as! FullScreenPhotoViewController
        
        fsViewController.zoomImage = self.image
        
        present(fsViewController, animated:true, completion:nil)
        //performSegue(withIdentifier: "ZoomSegue", sender: nil)
    }
*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
