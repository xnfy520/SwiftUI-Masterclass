//
//  MapView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        let mapCoordinate = CLLocationCoordinate2D(latitude: 6.0, longitude: 16.4)
        let mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        let region = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLevel)
        return region
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView()
            }
        }
        .overlay(
            
            HStack {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                    .padding(.horizontal,10)
                    .padding(.vertical, 8)
                
                VStack {
                    HStack {
                        Text("latitude: ")
                            .foregroundColor(.accentColor)
                            .font(.footnote)
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .padding(.trailing, 10)
                    }
                    
                    Divider()
                        .background(Color.red)
                        .padding(.trailing, 10)
                    
                    HStack {
                        Text("longitude: ")
                            .foregroundColor(.accentColor)
                            .font(.footnote)
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .padding(.trailing, 10)
                    }
                }
                .padding(.vertical, 10)
                
            }
            .frame(height: 80)
            .background(
                Color
                    .black
                    .opacity(0.6)
            )
            .cornerRadius(6)
            
            .padding()
            
            
            
            ,alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
