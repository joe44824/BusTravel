//
//  BusStopRowView.swift
//  BusTravel
//
//  Created by The Legend Joe on 4/6/21.
//

import SwiftUI

struct BusStopRow: View {
    // MARK: - PROPERTIES
    
    var busStop: BusStop
    
    
    // MARK: - BODY
    var body: some View {
        
        HStack {
            Image(systemName: "chevron.forward")
                .imageScale(.large)
                .frame(width: 30, height: 50, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(busStop.Description)
                    .font(.title2)
                    .fontWeight(.bold)
                    
                HStack {
                    Text(busStop.BusStopCode)
                    Text(busStop.RoadName)
                } //: HStack
                .foregroundColor(Color.secondary)
            }) //: VStack
            
            Spacer()
            
        } //: HStack
        .padding(.leading, 1.0)
        
    }
}

struct BusStopRowView_Previews: PreviewProvider {
    static var previews: some View {
        BusStopRow(busStop: busStops[4])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
