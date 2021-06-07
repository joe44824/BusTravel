//
//  MapView.swift
//  BusTravel
//
//  Created by The Legend Joe on 7/6/21.
//

import SwiftUI
import MapKit
import Combine

struct MapView: View {
    // MARK: - PROPERTIES

    @ObservedObject private var locationManager = LocationManager()
    @State private var region = MKCoordinateRegion.defaultRegion
    @State private var cancellable: AnyCancellable?
      
    private func setCurrentLocation() {
        cancellable = locationManager.$location.sink { location in
            region = MKCoordinateRegion(center: location?.coordinate ?? CLLocationCoordinate2D(), latitudinalMeters: 500, longitudinalMeters: 500)
        }
    }
    
    
    // MARK: - BODY

    var body: some View {
        
        VStack {
            if locationManager.location != nil {
                Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: nil)
            } else {
                Text("Locating user location...")
            }
        } //: VSTACK
        .onAppear() {
            setCurrentLocation()
        }
        
    }
}

// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
