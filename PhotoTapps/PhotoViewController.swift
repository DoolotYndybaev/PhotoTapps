//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Doolot on 3/8/22.
//

import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }

    @IBAction func shareAction(_ sender: UIButton) {

        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        present(shareController, animated: true, completion: nil)
    }
}
