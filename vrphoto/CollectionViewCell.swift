//
//  CollectionViewCell.swift
//  vrphoto
//
//  Created by David Kakaladze on 30.07.16.
//  Copyright © 2016 iosDevelopClub. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

 @IBOutlet weak var label: UILabel!
	@IBOutlet weak var imageView: UIImageView!
	
	let imagePicker = UIImagePickerController()
	
	@IBAction func tapImagePhotoLibrary(sender: UIButton) {
		imagePicker.allowsEditing = false
		imagePicker.sourceType = .PhotoLibrary
		presentViewController(imagePicker, animated: true, completion: nil)
	}
	
	func viewDidLoad() {
		imagePicker.delegate = self
	}
	
	func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]){
		if let imgPicker = info[UIImagePickerControllerOriginalImage] as? UIImage {
			imageView.contentMode = .ScaleAspectFit
			imageView.image = imgPicker
		}
		dismissViewControllerAnimated(true, completion: nil)
	}
	
	func funcAddImage(imgPicker: UIImagePickerController){
		dismissViewControllerAnimated(true, completion: nil)
	}
	
}
