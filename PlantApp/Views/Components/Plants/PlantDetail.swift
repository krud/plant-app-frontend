//import SwiftUI
//
//struct PlantDetail: View {
//    @EnvironmentObject var userData: UserData
//    var plant: Plant
//    
//    var plantIndex: Int {
//        userData.plants.firstIndex(where: { $0.id == plant.id })!
//    }
//    
//    var body: some View {
//        VStack {
//            CircleImage(image: plant.image)
//                .offset(x: 0, y: -130)
//                .padding(.bottom, -130)
//            
//            VStack(alignment: .leading) {
//                HStack {
//                    Text(plant.name)
//                        .font(.title)
//                    
//                    Button(action: {
//                        self.userData.plants[self.plantIndex]
//                            .isFavorite.toggle()
//                    }) {
//                        if self.userData.plants[self.plantIndex]
//                            .isFavorite {
//                            Image(systemName: "star.fill")
//                                .foregroundColor(Color.yellow)
//                        } else {
//                            Image(systemName: "star")
//                                .foregroundColor(Color.gray)
//                        }
//                    }
//                }
//                
//                HStack(alignment: .top) {
//                    Text(plant.commonName)
//                        .font(.subheadline)
//                    Spacer()
//                    Text(plant.latinName)
//                        .font(.subheadline)
//                }
//            }
//            .padding()
//            
//            Spacer()
//        }
//    }
//}
//
//struct PlantDetail_Preview: PreviewProvider {
//    static var previews: some View {
//        let userData = UserData()
//        return PlantDetail(plant: userData.Plants[0])
//            .environmentObject(userData)
//    }
//}
