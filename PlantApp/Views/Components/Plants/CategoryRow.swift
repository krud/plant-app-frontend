//import SwiftUI
//
//struct CategoryRow: View {
//    var categoryName: String
//    var items: [Plants]
//    
//    var body: some View {
//        VStack(alignment: .leading) {
//            Text(self.categoryName)
//                .font(.headline)
//                .padding(.leading, 15)
//                .padding(.top, 5)
//            
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack(alignment: .top, spacing: 0) {
//                    ForEach(self.items) { plant in
//                        NavigationLink(
//                            destination: PlantDetail(
//                                plant: plant
//                            )
//                        ) {
//                            CategoryItem(plant: plant)
//                        }
//                    }
//                }
//            }
//            .frame(height: 185)
//        }
//    }
//}
//
//struct CategoryItem: View {
//    var plant: Plant
//    var body: some View {
//        VStack(alignment: .leading) {
//            plant.image
//                .renderingMode(.original)
//                .resizable()
//                .frame(width: 155, height: 155)
//                .cornerRadius(5)
//            Text(plant.name)
//                .foregroundColor(.primary)
//                .font(.caption)
//        }
//        .padding(.leading, 15)
//    }
//}
//
//struct CategoryRow_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryRow(
//            categoryName: plantData[0].category.rawValue,
//            items: Array(plantData.prefix(4))
//        )
//        .environmentObject(UserData())
//    }
//}
