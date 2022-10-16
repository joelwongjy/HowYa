//
//  EmotionAnnotation.swift
//  HowYa
//
//  Created by Joel Wong on 16/10/22.
//

import MapKit
import SwiftUI

// 1
enum AttractionType: Int {
    case happy
    case sad
    case neutral
    
    func image() -> UIImage {
        switch self {
        case .happy:
            return UIImage(imageLiteralResourceName: "smile").resizeImageTo(size: CGSize(width: 48, height: 48))!
        case .sad:
            return UIImage(imageLiteralResourceName: "frown").resizeImageTo(size: CGSize(width: 48, height: 48))!
        case .neutral:
            return UIImage(imageLiteralResourceName: "neutral").resizeImageTo(size: CGSize(width: 48, height: 48))!
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
