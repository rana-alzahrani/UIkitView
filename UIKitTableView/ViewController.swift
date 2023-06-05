//
//  ViewController.swift
//  UIKitTableView
//
//  Created by Lola Almasari on 22/08/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    let products: [Product] = [
        Product(productName: "Creative Space", productImage: "image2", productDescription: "Floor 5" , buttonn : "image2" ,available: "Available"),
        Product(productName: "Creative Space", productImage: "image1", productDescription: "Floor 3" ,buttonn : "image1" ,available: "unvailable"),
        Product(productName: "Creative Space", productImage: "image3", productDescription: "Floor 1" , buttonn : "image3" ,available: "unvailable")
    ]
    var calenderDays: [Calender] = [
        Calender(day: "Thu", date: "16"),
        Calender(day: "Sun", date: "19"),
        Calender(day: "Mon", date: "20"),
        Calender(day: "Tue", date: "21"),
        Calender(day: "Wed", date: "22"),
        Calender(day: "Thu", date: "23"),
        Calender(day: "Sun", date: "26"),
        Calender(day: "Mon", date: "27"),
        Calender(day: "Tue", date: "28"),
        Calender(day: "Wed", date: "29"),
        Calender(day: "Thu", date: "30"),
        Calender(day: "Sun", date: "31")
    ]
    @IBOutlet weak var calenderCollectionn: UICollectionView!
    @IBOutlet var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        calenderCollectionn.dataSource = self
        calenderCollectionn.delegate = self
    }
}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        calenderDays.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = calenderCollectionn.dequeueReusableCell(withReuseIdentifier: "calenderCell", for: indexPath) as! CalenderCellCollectionViewCell
        cell.dayss.text = calenderDays[indexPath.row].day
        cell.datee.text = calenderDays[indexPath.row].date
        cell.dayss.layer.cornerRadius = cell.datee.frame.width/2
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 120)
    }
}
//TableView
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        products.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! TableViewCell
        cell.productImage.image = UIImage(named: products[indexPath.row].productImage)
        cell.productName.text = products[indexPath.row].productName
        cell.productDesc.text = products[indexPath.row].productDescription
        cell.layer.cornerRadius=10
        cell.availableL.text = products[indexPath.row].available
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("this row \(indexPath.row) is selected")
    }
}


