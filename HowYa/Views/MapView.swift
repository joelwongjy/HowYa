//
//  MapView.swift
//  HowYa
//
//  Created by Joel Wong on 16/10/22.
//

import SwiftUI
import MapKit

struct AppleParkMap: View {
     
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.334_900,
                                           longitude: -122.009_020),
            latitudinalMeters: 750,
            longitudinalMeters: 750
        )

    var body: some View {
        Map(coordinateRegion: $region)
    }
}
