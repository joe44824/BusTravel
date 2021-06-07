//
//  BusStopsList.swift
//  BusTravel
//
//  Created by The Legend Joe on 5/6/21.
//

import SwiftUI

struct BusStopsList: View {
    
    @State private var showAnimation = false
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: BusStopDetail(busStop: busStops[0]),
                    isActive: $showAnimation
                ) {
                    BusStopRow(busStop: busStops[0])
                }
                NavigationLink(
                    destination: BusStopDetail(busStop: busStops[1]),
                    isActive: $showAnimation
                ) {
                    BusStopRow(busStop: busStops[1])
                }
                NavigationLink(
                    destination: BusStopDetail(busStop: busStops[2]),
                    isActive: $showAnimation
                ) {
                    BusStopRow(busStop: busStops[2])
                }
                NavigationLink(
                    destination: BusStopDetail(busStop: busStops[3]),
                    isActive: $showAnimation
                ) {
                    BusStopRow(busStop: busStops[3])
                }
                NavigationLink(
                    destination: BusStopDetail(busStop: busStops[4]),
                    isActive: $showAnimation
                ) {
                    BusStopRow(busStop: busStops[4])
                }
                NavigationLink(
                    destination: BusStopDetail(busStop: busStops[5]),
                    isActive: $showAnimation
                ) {
                    BusStopRow(busStop: busStops[5])
                }
                
            } //: List
            .navigationBarTitle("")
            .navigationBarHidden(true)
        } //: NavigationView

    }
}

struct BusStopsList_Previews: PreviewProvider {
    static var previews: some View {
        BusStopsList()
    }
}
