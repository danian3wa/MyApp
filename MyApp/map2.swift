//
//  map2.swift
//  MyApp
//
//  Created by Daniel IANOS on 30/07/2024.
//

import Foundation
import SwiftUI
import MapKit

struct map2: View {
    @State private var cityHallLocation = CLLocationCoordinate2D(latitude: 47.657205, longitude: 23.5743076)
    @State private var publicLibraryLocation = CLLocationCoordinate2D(latitude:47.6592341, longitude: 23.569137)
    @State private var playgroundLocation = CLLocationCoordinate2D(latitude: 47.6530628, longitude: 23.570353)
        var body: some View {
            Map {
                Marker("Baia Mare City Hall", coordinate: cityHallLocation)
                    .tint(.orange)
                Marker("Baia Mare Public Library", coordinate: publicLibraryLocation)
                    .tint(.blue)
                Annotation("Park for children", coordinate: playgroundLocation) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.yellow)
                        Text("🛝")
                            .padding(5)
                    }
                }
            }
            .mapControlVisibility(.hidden)
        }
    }

struct map2_Previews:
    PreviewProvider {
    static var previews: some View {
        map2()
    }
}
