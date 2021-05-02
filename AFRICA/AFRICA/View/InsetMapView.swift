//
//  InsetMapView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/2/21.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 25.7617,
            longitude: 80.1918
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 10,
            longitudeDelta: 10
        )
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack(spacing: 8) {
                        Image(systemName: "map")
                            .imageScale(.large)
                            .foregroundColor(.white)
                        
                        Text("Locations")
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    } //: HStack
                    .padding()
                    .background(
                        Color.black
                            .opacity(0.5)
                            .cornerRadius(10)
                        
                    )
                    .padding(.all, 10)
                }
                ,alignment: .topTrailing)
            .frame(height: 200)
            .cornerRadius(10)
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
        //.previewLayout(.sizeThatFits)
    }
}
