//
//  Map.swift
//  CaneToadApp
//
//  Created by 김진우 on 2022/09/13.
//

import SwiftUI
import MapKit

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapTest: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -31.953512, longitude: 115.857048), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))

    let annotations = [
        City(name: "city", coordinate: CLLocationCoordinate2D(latitude: -31.953512, longitude: 115.857048)),
        City(name: "eastperth", coordinate: CLLocationCoordinate2D(latitude: -31.958488, longitude: 115.87162)),
        City(name: "west perth", coordinate: CLLocationCoordinate2D(latitude: -31.94882, longitude: 115.84212)),
        City(name: "northbridge", coordinate:
                CLLocationCoordinate2D(latitude: -31.948521, longitude: 115.860229))
    ]

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) {
            MapPin(coordinate: $0.coordinate)
        }
        .frame(width: 400, height: 300)
    }
}

struct MapTest_Previews: PreviewProvider {
    static var previews: some View {
        MapTest()
    }
}
