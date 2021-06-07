//
//  DefaultLocationRegion.swift
//  BusTravel
//
//  Created by The Legend Joe on 7/6/21.
//

import Foundation
import MapKit

extension MKCoordinateRegion {
    
    static var defaultRegion: MKCoordinateRegion {
        MKCoordinateRegion(center: CLLocationCoordinate2DMake(1.350040, 103.945020), latitudinalMeters: 100, longitudinalMeters: 100)
    }
}
