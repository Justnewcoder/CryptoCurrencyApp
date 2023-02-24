//
//  HomeView.swift
//  CryptoCurrencyApp
//
//  Created by Kirill Kisner on 2/23/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
               // Top Movers View
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                // All Coins View
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
