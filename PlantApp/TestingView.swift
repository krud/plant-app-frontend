import SwiftUI

struct TestingView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(entity: Plant.entity(),
                  sortDescriptors: [],
                  predicate: NSPredicate(value: true))
    
    var plants: FetchedResults<Plant>
//    @FetchRequest(fetchRequest: PlantItem.getAllPlantItems()) var plantItems:FetchedResults<PlantItem>
    
//    @State private var newPlantItem = ""
    @State var showPlantSheet = false
// adding the oreder status part
    var body: some View {
        NavigationView{
            List {
//                ForEach(plants) { plant in
//                    HStack {
//                        VStack(alignment: .leading) {
//                            Text("\(plant?.name)")
//                                .font(.headline)
////                            Text("\(plant.id)")
////                                .font(.subheadline)
//                        }
//                        Spacer()
//                        Button(action: {print("Update plant")}) {
//                            Text("Testing")
//                                .foregroundColor(.blue)
//                        }
//                    }
//                }
                Text("Sample plant").sheet(isPresented: $showPlantSheet){
                    PlantSheet().environment(\.managedObjectContext, self.managedObjectContext)
                }
                        }
                            .navigationBarTitle("My Plants")
                            .navigationBarItems(trailing: Button(action: {
                self.showPlantSheet = true
                            }, label: {
                Image(systemName: "plus.circle")
                                    .resizable()
                                    .frame(width: 32, height: 32, alignment: .center)
                            }))
            }
        }
    }

struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        TestingView()
    }
}

struct PlantSheet: View {
    @Environment(\.managedObjectContext) var managedObjectContext
//    @Environment (\.presentationMode) var presentationMode
//    let plantTypes = [true, false]
    
//    @State var selectedPlantIndex = 1
    @State var plant = 1
    @State var name = ""
    
    var body: some View {
        NavigationView {
            Form {
//                Section(header: Text("Plant Details")) {
//                    Picker(selection: $selectedPlantIndex, label: Text("Plant Status")) {
//                        ForEach(0 ..< plantTypes.count) {
//                                Text(self.plantTypes[$0]).tag($0)
//                        }
//                    }
                    
//                    Stepper("\(numberOfSlices) Slices", value: $numberOfSlices, in: 1...12)
//                }
                
                Section(header: Text("Name")) {
                    TextField("Name", text: $name)
                    
                }
                
                Button(action: {
                    print("Add Plant")
//                    guard self.name != "" else { return }
//                    let newPlant = Plant(context: self.managedObjectContext)
//                        newPlant.name = self.name
//                        newPlant.id = UUID()
//                    do {
//                     try self.managedObjectContext.save()
//                     print("Plant saved.")
//                        self.presentationMode.wrappedValue.dismiss()
//                    } catch {
//                     print(error.localizedDescription)
//                     }
                }) {
                    Text("Add Plant")
                }.navigationBarTitle("Add Plant")
                
            }
        }
    }
}
