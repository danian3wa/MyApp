//
//  map.swift
//  MyApp
//
//  Created by Daniel IANOS on 30/07/2024.
//

import SwiftUI
import MapKit
struct map: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 47.65169, longitude: 23.5668),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    // 1. Create an identifiable struct to use as your annotation
    struct MarkerAnnotation: Identifiable {
        let id = UUID() // Required for identifiable
        var coordinate: CLLocationCoordinate2D
        
        // 2. Add title and subtitle (optional but recommended)
        var title: String?
        var subtitle: String?
    }
    var body: some View {
        Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, annotationItems: [
            MarkerAnnotation(coordinate: region.center, title: "Baia Mare", subtitle: "Romania")
        ]) { marker in
            // Use MapMarker for a simple marker view
            MapMarker(coordinate: marker.coordinate, tint: .red)
        }
    }
}

struct map_Previews:
    PreviewProvider {
    static var previews: some View {
        map()
    }
}
//  latitudinalMeters: 2500, longitudinalMeters: 2500)

