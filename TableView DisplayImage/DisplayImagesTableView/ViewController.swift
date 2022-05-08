//
//  ViewController.swift
//  DisplayImagesTableView
//
//  Created by Mac on 20/04/22.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var animalImageView:UITableView!
    
    var animalNames = ["Cat","Dog","Elephant","Lion","Zebra"]
    var animalImages = [UIImage(named: "cat"),UIImage(named: "Dog"),UIImage(named: "Elephant"),UIImage(named: "Lion"),UIImage(named: "Zebra")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        animalImageView.dataSource = self
        animalImageView.delegate = self
    }
}
extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.animalImageView.dequeueReusableCell(withIdentifier: "ImageTableViewCell", for: indexPath) as? ImageTableViewCell else{
            return UITableViewCell ()
        }
        cell.animalName.text = animalNames[indexPath.row]
        cell.animalImage.image = animalImages[indexPath.row]
        return cell
    }
    
}
extension ViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
        }
    
