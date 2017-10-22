//
//  droppablePin.swift
//  Pixel City
//
//  Created by Ghita on 10/14/17.
//  Copyright © 2017 Ghita. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
