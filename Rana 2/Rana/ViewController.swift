//
//  ViewController.swift
//  Rana
//
//  Created by Rana on 20/08/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    
   // @IBOutlet weak var corner: UITextView!
    @IBOutlet weak var Text: UITextView!
   // corner.layer.cornerRadius = 4.0
   // override func viewDidLoad{
   //    super.viewDidLoad()
   // textview.layer.cornerRadius=4.0
        var calenderDays: [Calender] = [
            Calender(day: "Sun", date: "01"),
            Calender(day: "Mon", date: "02"),
            Calender(day: "Tue", date: "03"),
            Calender(day: "Wed", date: "04"),
            Calender(day: "Thu", date: "05"),
            
            Calender(day: "Sun", date: "08"),
            Calender(day: "Mon", date: "09"),
            Calender(day: "Tue", date: "10"),
            Calender(day: "Wed", date: "11"),
            Calender(day: "Thu", date: "12"),
            
            Calender(day: "Sun", date: "15"),
            Calender(day: "Mon", date: "16"),
            Calender(day: "Tue", date: "17"),
            Calender(day: "Wed", date: "18"),
            Calender(day: "Thu", date: "19"),
            
            Calender(day: "Sun", date: "22"),
            Calender(day: "Mon", date: "23"),
            Calender(day: "Tue", date: "24"),
            Calender(day: "Wed", date: "25"),
            Calender(day: "Thu", date: "26"),
            
            Calender(day: "Sun", date: "29"),
            Calender(day: "Mon", date: "30"),
            Calender(day: "Tue", date: "31"),
        ]
        
        
        @IBOutlet weak var calenderCollection: UICollectionView!
        
    @IBOutlet weak var corner: UITextView!
    
    @IBOutlet weak var corner2: UIView!
    override func viewDidLoad() {
        
            super.viewDidLoad()
        corner.layer.cornerRadius = 5
        corner2.layer.cornerRadius = 5
        
        
        
    
            //delegate&datasource
            calenderCollection.dataSource = self
            calenderCollection.delegate = self
            
            //collection design
            //        collectionView.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "calenderCell")
            
            
            
        }
        
        
    @IBAction func Booking(_ sender: Any) {
        performSegue(withIdentifier: "Details", sender: self)
    }
}
    
    extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            calenderDays.count
    
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell = calenderCollection.dequeueReusableCell(withReuseIdentifier: "calenderCell", for: indexPath) as! CollectionViewCell
            cell.days.text = calenderDays[indexPath.row].day
            cell.date.text = calenderDays[indexPath.row].date
            
            cell.date.layer.cornerRadius = cell.date.frame.width/2
            
            
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 50, height: 50)
        }
        
        
        
        
    }
//}
