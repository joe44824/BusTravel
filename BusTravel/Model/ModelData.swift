import Foundation
import SwiftUI
import CoreLocation


struct DecodedBusStops: Codable {
    var value: [BusStop]
}

struct BusStop: Codable {

    var BusStopCode: String
    var RoadName: String
    var Description: String

    private var Latitude: Double
    private var Longitude: Double


    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: Latitude,
            longitude: Longitude)
    }
}


var decodedBusStops: DecodedBusStops = load("DummyBusStops.json")
var busStops = decodedBusStops.value





func load<T: Decodable>(_ filename: String) -> T {

    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)

    else {

        fatalError("Couldn't find \(filename) in main bundle.")

    }


    do {

        data = try Data(contentsOf: file)

    } catch {

        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")

    }


    do {

        let decoder = JSONDecoder()

        return try decoder.decode(T.self, from: data)

    } catch {

        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")

    }

}
