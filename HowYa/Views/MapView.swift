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
            MapView().onAppear(perform: self.addAttractionPins)
        }
    }
    
    func addOverlay() {
        let overlay = ParkMapOverlay(region: region)
        mapView.addOverlay(overlay)
    }

    func addAttractionPins() {
        guard let locations = Region.plist("HappyLocations") as? [[String: String]] else { return }
        guard let sadLocations = Region.plist("SadLocations") as? [[String: String]] else { return }
        guard let neutralLocations = Region.plist("NeutralLocations") as? [[String: String]] else { return }

        for location in locations {
            let coordinate = Region.parseCoord(dict: location, fieldName: "location")
            let title = location["activity"] ?? ""
            let annotation = AttractionAnnotation(coordinate: coordinate, title: title, subtitle: "", type: AttractionType.happy)
            mapView.addAnnotation(annotation)
        }
        
        for location in sadLocations {
            let coordinate = Region.parseCoord(dict: location, fieldName: "location")
            let title = location["activity"] ?? ""
            let annotation = AttractionAnnotation(coordinate: coordinate, title: title, subtitle: "", type: AttractionType.sad)
            mapView.addAnnotation(annotation)
        }
        
        for location in neutralLocations {
            let coordinate = Region.parseCoord(dict: location, fieldName: "location")
            let title = location["feeling"] ?? ""
            let annotation = AttractionAnnotation(coordinate: coordinate, title: title, subtitle: "", type: AttractionType.neutral)
            mapView.addAnnotation(annotation)
        }
    }
}
