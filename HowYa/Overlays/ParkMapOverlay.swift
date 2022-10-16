//
//  ParkMapOverlay.swift
//  HowYa
//
//  Created by Joel Wong on 16/10/22.
//

import MapKit

class ParkMapOverlay: NSObject, MKOverlay {
  let coordinate: CLLocationCoordinate2D
  let boundingMapRect: MKMapRect

  init(region: Region) {
    boundingMapRect = region.overlayBoundingMapRect
    coordinate = region.midCoordinate
  }
}
