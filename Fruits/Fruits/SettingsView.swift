//
//  SettingsView.swift
//  Fruits
//
//  Created by Ahmad AlSofi on 4/30/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    GroupBox(label:
                                SettingLabelView(text: "Fructus".uppercased(), image: "info.circle")) {
                        Divider().padding(.top, 10)
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                                .padding()
                            
                            
                            Text("In botany, a fruit is the seed-bearing structure in flowering plants formed from the ovary after flowering. Fruits are the means by which angiosperms disseminate seeds. ")
                                .font(.footnote)
                        }
                    }
                    
                    GroupBox(label:
                                SettingLabelView(text: "Customization".uppercased(), image: "loupe")
                    ) {
                        Divider().padding(.top, 10)
                        Text("if you wish, you can restart the app by toggling the switch in this box, that way will reatart the app and you will see the onboarding screen")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding) {
                            Text("Restart".uppercased())
                        }.padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .cornerRadius(10)
                        )
                    }
                    
                    GroupBox(label:
                                SettingLabelView(text: "Fructus".uppercased(), image: "apps.iphone")) {
                      
                        SettingRowView(name: "Developer", content: " Jhon / Jane")
                        SettingRowView(name: "Designer", content: " Rober")
                        SettingRowView(name: "Website", linkLabel: "Ahmad AlSofi",linkDestination: "https://www.google.jo/")

                        
                    }
                } // VStack
            } // ScrollView
            .navigationBarTitle("Settings",displayMode: .large)
            .padding()
            .navigationBarItems(
                trailing:
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
            )
        } // NavigationView
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
