//
//  BusStopDetail.swift
//  BusTravel
//
//  Created by The Legend Joe on 5/6/21.
//

import SwiftUI

struct BusStopDetail: View {
    
    var busStop: BusStop
    
    var body: some View {
        Text(busStop.RoadName)
    }
}

struct BusStopDetail_Previews: PreviewProvider {
    static var previews: some View {
        BusStopDetail(busStop: busStops[1])
    }
}
