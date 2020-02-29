//
//  ViewController.swift
//  TakePicture
//
//  Created by Nilo Vila on 2/29/20.
//  Copyright © 2020 Nilo Vila. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var takePicture: UIButton!
    
    
    var imagePicker: UIImagePickerController!
    
    @IBAction func click(_ sender: Any) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera

        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        imageView.image = info[.originalImage] as? UIImage
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //let vc = UIImagePickerController()
    
    }



}

