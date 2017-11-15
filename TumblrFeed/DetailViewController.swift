//
//  DetailViewController.swift
//  TumblrFeed
//
//  Created by Allison Reiss on 11/11/17.
//  Copyright © 2017 Allison Reiss. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var PhotoImageView: UIImageView!
    var image: UIImage!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        PhotoImageView.image = image
//        PhotoImageView.af_setImage(withURL: url)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
