//
//  PortfolioAddTableController.swift
//  FoodTracker
//
//  Created by 유수민 on 2016. 2. 22..
//  Copyright © 2016년 Apple Inc. All rights reserved.
//

import UIKit

class PortfolioAddTableController: UITableViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: Navigation
    @IBAction func cancel(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var titleTextLabel: UITextField!
    @IBOutlet weak var duedateTextLabel: UITextField!
    @IBOutlet weak var objectTextLabel: UITextField!
    @IBOutlet weak var hostTextLabel: UITextField!
    @IBOutlet weak var categoryTextLabel: UITextField!
    @IBOutlet weak var documentTextLabel: UITextField!
    @IBOutlet weak var awardTextLabel: UITextField!
    @IBOutlet weak var siteTextLabel: UITextField!
    //@IBOutlet weak var posterTextLabel: UITextField!
    @IBOutlet weak var posterThumbnail: UIImageView!
    @IBOutlet weak var detailTextLabel: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    

    var applyList: Exhibit?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextLabel.delegate = self
        duedateTextLabel.delegate = self
        objectTextLabel.delegate = self
        hostTextLabel.delegate = self
        categoryTextLabel.delegate = self
        documentTextLabel.delegate = self
        awardTextLabel.delegate = self
        siteTextLabel.delegate = self
        detailTextLabel.delegate = self
        
        if let applyList = applyList {
            navigationItem.title = applyList.title
            titleTextLabel.text = applyList.title
            posterThumbnail.image = applyList.poster
            duedateTextLabel.text = applyList.duedate
            awardTextLabel.text = applyList.award
        }
        
        
        
        checkValidExhibitName()
        
        
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        checkValidExhibitName()
        navigationItem.title = textField.text
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        saveButton.enabled = false
    }
    
    func checkValidExhibitName() {
    
        let text = titleTextLabel.text ?? ""
        saveButton.enabled = !text.isEmpty
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        posterThumbnail.image = selectedImage
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
 
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if saveButton === sender {
            let title = titleTextLabel.text ?? ""
            let duedate = duedateTextLabel.text
            let object = objectTextLabel.text
            let host = hostTextLabel.text
            let category = categoryTextLabel.text
            let document = documentTextLabel.text ?? ""
            let award = awardTextLabel.text
            let site = siteTextLabel.text
            let poster = posterThumbnail.image
            let detail = detailTextLabel.text
            
            
            applyList = Exhibit(title: title, duedate: duedate, object: object, award: award, document: document, site: site, poster: poster, detail: detail, host:host, category: category)
            
        }
    }
        @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        titleTextLabel.resignFirstResponder()
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .PhotoLibrary
        
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)
    }
}