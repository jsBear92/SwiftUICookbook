//
//  CurrenciesView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 16/6/2024.
//

import SwiftUI

struct CurrenciesView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ForEach(Currency.currencies) { currency in
                    HStack {
                        Text(currency.name)
                        Spacer()
                        Image(systemName: currency.image)
                    }
                    .font(Font.system(size: 32, design: .default))
                    .padding()
                }
                .navigationTitle("Currencies")
            }
        }
    }
}

#Preview {
    CurrenciesView()
}
