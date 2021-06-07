//
//  ContentView.swift
//  BusTravel
//
//  Created by The Legend Joe on 4/6/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    
    var body: some View {
        
        VStack {
            MapView()
            BusStopsList()
        }
    } //: BODY
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
