import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    
    var currentPage: String = "landing" {
        didSet {
            objectWillChange.send(self)
        }
    }
}

//struct ViewRouter_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewRouter()
//    }
//}
