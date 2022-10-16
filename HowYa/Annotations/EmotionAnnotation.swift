//
//  EmotionAnnotation.swift
//  HowYa
//
//  Created by Joel Wong on 16/10/22.
//

import MapKit

// 1
enum AttractionType: Int {
  case misc = 0
  case ride
  case food
  case firstAid

  func image() -> UIImage {
    switch self {
    case .misc:
      return UIImage(imageLiteralResourceName: "star") // #imageLiteral(resourceName: "star")
    case .ride:
      return UIImage(imageLiteralResourceName: "ride") //#imageLiteral(resourceName: "ride")
    case .food:
      return UIImage(imageLiteralResourceName: "food") //#imageLiteral(resourceName: "food")
    case .firstAid:
      return UIImage(imageLiteralResourceName: "firstaid") //#imageLiteral(resourceName: "firstaid")
    }
  }
}

// 2
class AttractionAnnotation: NSObject, MKAnnotation {
  // 3
  let coordinate: CLLocationCoordinate2D
  let title: String?
  let subtitle: String?
  let type: AttractionType

  // 4
  init(
    coordinate: CLLocationCoordinate2D,
    title: String,
    subtitle: String,
    type: AttractionType
  ) {
    self.coordinate = coordinate
    self.title = title
    self.subtitle = subtitle
    self.type = type
  }
}
