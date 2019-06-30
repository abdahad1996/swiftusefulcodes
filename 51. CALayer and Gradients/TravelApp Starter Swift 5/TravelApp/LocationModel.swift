//
//  FeaturedLocationModel.swift
//  TravelApp
//
//  Created by Gwinyai on 1/3/2019.
//  Copyright © 2019 Gwinyai Nyatsoka. All rights reserved.
//

import UIKit

class LocationModel {
    
    static let featuredData: [LocationModel] = [
        LocationModel(locationTitle: "Clifton Beach Apartment", locationSubTitle: "PRIVATE 1 ROOM", locationPrice: "$104 per night", locationImage: UIImage(named: "1bedroomapartment")!),
        LocationModel(locationTitle: "Mediteranean Villa Apartment", locationSubTitle: "ENTIRE VILLA 4 BEDS", locationPrice: "$168 per night", locationImage: UIImage(named: "mediteraneanvilla")!),
        LocationModel(locationTitle: "City Penthouse", locationSubTitle: "ENTIRE APARTMENT", locationPrice: "$119 per night", locationImage: UIImage(named: "citypenthouse")!)]
    
    static let recommendData: [LocationModel] = [
    
        LocationModel(locationTitle: "Lake View Apartment", locationSubTitle: "PRIVATE 2 ROOMS", locationPrice: "$110 per night", locationImage: UIImage(named: "lakeviewapartment")!),
        LocationModel(locationTitle: "Stylish Apartment", locationSubTitle: "PRIVATE 1 ROOM", locationPrice: "$95 per night", locationImage: UIImage(named: "stylishapartment")!),
        LocationModel(locationTitle: "Small Room", locationSubTitle: "PRIVATE 1 ROOM", locationPrice: "$70 per night", locationImage: UIImage(named: "smallroom")!)
    ]
    
    var locationTitle: String
    
    var locationSubTitle: String
    
    var locationPrice: String
    
    var locationImage: UIImage
    
    init(locationTitle: String, locationSubTitle: String, locationPrice: String, locationImage: UIImage) {
        
        self.locationTitle = locationTitle
        
        self.locationPrice = locationPrice
        
        self.locationSubTitle = locationSubTitle
        
        self.locationImage = locationImage
        
    }
    
}
