//
//  PhotoDetailViewController.swift
//  tumblr_demo
//
//  Created by Sijin Wang on 2/27/18.
//  Copyright © 2018 Sijin Wang. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    var post: [String: Any]?
    @IBOutlet weak var imagePost: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let post = post {
            let photos = post["photos"] as! [[String: Any]]
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let imageURLPath = originalSize["url"] as! String
            let imageURL = URL(string: imageURLPath)
            imagePost.af_setImage(withURL: imageURL!)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
