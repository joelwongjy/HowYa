//
//  MapView.swift
//  HowYa
//
//  Created by Joel Wong on 16/10/22.
//

import SwiftUI
import MapKit

let region = Region(filename: "CurrentLocation")
let mapView = MKMapView(frame: UIScreen.main.bounds)

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        let latDelta = region.overlayTopLeftCoordinate.latitude - region.overlayBottomRightCoordinate.latitude
        
        let span = MKCoordinateSpan(latitudeDelta: fabs(latDelta), longitudeDelta: 0.0)
        let region = MKCoordinateRegion(center: region.midCoordinate, span: span)
        
        mapView.region = region
        mapView.delegate = context.coordinator
        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView
        
        init(_ parent: MapView) {
            self.parent = parent
        }
        
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            if overlay is MKPolyline {
                let lineView = MKPolylineRenderer(overlay: overlay)
                lineView.strokeColor = .green
                return lineView
            } else if overlay is MKPolygon {
                let polygonView = MKPolygonRenderer(overlay: overlay)
                polygonView.strokeColor = .magenta
                return polygonView
            } else if let character = overlay as? Character {
                let circleView = MKCircleRenderer(overlay: character)
                circleView.strokeColor = character.color
                return circleView
            }
            
            return MKOverlayRenderer()
        }
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            let annotationView = AttractionAnnotationView(annotation: annotation, reuseIdentifier: "Attraction")
            annotationView.canShowCallout = true
            return annotationView
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}


struct WholeMapView: View {
    
    @State var mapBoundary = false
    @State var mapOverlay = false
    @State var mapPins = false
    @State var mapCharacterLocation = false
    @State var mapRoute = false
    
    var body: some View {
        NavigationView {
            MapView().onAppear(perform: addAttractionPins)
        }
    }
}


func addOverlay() {
    let overlay = ParkMapOverlay(region: region)
    mapView.addOverlay(overlay)
}

func addAttractionPins() {
    // 1
    guard let attractions = Region.plist("HappyLocations") as? [[String: String]] else { return }
    
    // 2
    for attraction in attractions {
        let coordinate = Region.parseCoord(dict: attraction, fieldName: "location")
        let title = attraction["name"] ?? ""
        let typeRawValue = Int(attraction["type"] ?? "0") ?? 0
        let type = AttractionType(rawValue: typeRawValue) ?? .misc
        let subtitle = attraction["subtitle"] ?? ""
        // 3
        let annotation = AttractionAnnotation(coordinate: coordinate, title: title, subtitle: subtitle, type: type)
        mapView.addAnnotation(annotation)
    }
}
