//
//  SheetView().swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            Text("This is the sheet we want to display")
        }
    }
}

#Preview {
    SheetView()
}
