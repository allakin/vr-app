//
//  ViewController.swift
//  vrphoto
//
//  Created by David Kakaladze on 27.07.16.
//  Copyright © 2016 iosDevelopClub. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100 // возвращаем количество ячеек
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell // выводим управление ячейкой в отдельный класс
        
        cell.label.text = String(indexPath.row) // текст в ячейках
        cell.backgroundColor = UIColor.lightGrayColor() // цвет ячеек
        
        return cell
     }
    
    func collectionView(collectionView:UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    
        let size = CGSize(width: 80, height: 80) // задаем размеры ячейки
        return size
    
    }
    
    

}

