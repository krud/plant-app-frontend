//
//  PlantItemView.swift
//  PlantApp
//
//  Created by Kelly Rudnicki on 3/4/20.
//  Copyright © 2020 Kelly Rudnicki. All rights reserved.
//

import SwiftUI

struct PlantItemView: View {
    var name: String = ""
    var createdAt: String = ""
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(name)
                Text(createdAt)
            }
        }
    }
}

struct PlantItemView_Previews: PreviewProvider {
    static var previews: some View {
        PlantItemView(name: "Big Al", createdAt: "Today")
    }
}
