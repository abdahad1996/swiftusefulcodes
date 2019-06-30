//
//  ViewController.swift
//  TravelApp
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    lazy var featuredLocationData: [LocationModel] = {
        
        return LocationModel.featuredData
        
    }()
    
    lazy var recommendedLocationData: [LocationModel] = {
    
        return LocationModel.recommendData
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "FeaturedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeaturedTableViewCell")
        
        tableView.register(UINib(nibName: "RecommendedTableViewCell", bundle: nil), forCellReuseIdentifier: "RecommendedTableViewCell")
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        title = "Places"
        
        tableView.rowHeight = CGFloat(396.0)
        
        tableView.tableFooterView = UIView()
        
        tableView.separatorStyle = .none
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            
            return 1
            
        }
        
        return recommendedLocationData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        return cell
        
        /*
        
        if indexPath.section == 0 {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "FeaturedTableViewCell") as! FeaturedTableViewCell
            
            cell.topLocationsData = featuredLocationData
        
            return cell
            
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecommendedTableViewCell") as! RecommendedTableViewCell
        
        let location: LocationModel = recommendedLocationData[indexPath.row]
        
        cell.locationImage.image = location.locationImage
        
        cell.locationTitle.text = location.locationTitle
        
        cell.locationSubTitle.text = location.locationSubTitle
        
        cell.price.text = location.locationPrice
        
        return cell
         
         */
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            
            return CGFloat(396.0)
            
        }
        
        return CGFloat(125.0)
        
    }

}

