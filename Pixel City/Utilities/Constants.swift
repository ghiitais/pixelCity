//
//  Constants.swift
//  Pixel City
//
//  Created by Ghita on 10/15/17.
//  Copyright © 2017 Ghita. All rights reserved.
//

import Foundation

let apiKey = "52321d57ba0733c73be8c080c010c72c"

func flickerUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberofphotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
}


