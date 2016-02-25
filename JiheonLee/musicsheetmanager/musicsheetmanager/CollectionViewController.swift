//
//  CollectionViewController.swift
//  musicsheetmanager
//
//  Created by cscoi021 on 2016. 2. 18..
//  Copyright © 2016년 cscoi021. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"
var myImage = UIImage(named: "sheet1")

class CollectionViewController: UICollectionViewController {
    
    var mySheet:[Sheet] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let spring = Sheet()
        spring.title = "spring"
        spring.beat = 90
        spring.imageFile = "sheet1"
        spring.pdfFile = "spring"
        
        let summer = Sheet()
        summer.title = "summer"
        summer.beat = 45
        summer.imageFile = "sheet2"
        summer.pdfFile = "summer"
        
        let sonata = Sheet()
        sonata.title = "sonata"
        sonata.beat = 45
        sonata.imageFile = "sheet3"
        sonata.pdfFile = "sonata"
        
        let river = Sheet()
        river.title = "river"
        river.beat = 50
        river.imageFile = "sheet4"
        river.pdfFile = "river"
        
        let etude = Sheet()
        etude.title = "etude"
        etude.beat = 90
        etude.imageFile = "sheet5"
        etude.pdfFile = "etude"
        
        mySheet += [spring,summer,sonata,river,etude]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return mySheet.count
    }
    
    
    

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
    
        cell.imageView.image = UIImage(named:mySheet[indexPath.row].imageFile!)
        cell.lblaaa.text = mySheet[indexPath.row].title
        
        return cell
    }
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let selectedIndePath = self.collectionView?.indexPathsForSelectedItems()
        
        if(segue.identifier == "push")
        {
            (segue.destinationViewController as! WebViewController).selectedSheet = mySheet[selectedIndePath!.first!.row].pdfFile
        }

    }
    
    
    
    
    
    }

    
    
