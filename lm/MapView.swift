//
//  MapView.swift
//  lm
//
//  Created by Nik Lorem on 15.10.23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return MapView(coordinate: landmarks[1].locationCoordinate)
}
