//
//  MoviesView.swift
//  MyTCA
//
//  Created by Andrew Ikenna Jones on 8/9/23.
//

import SwiftUI
import Combine
import ComposableArchitecture


struct MoviesView: View {
  let store: Store<RepositoryState, RepositoryAction>

  var body: some View {
    WithViewStore(self.store) { viewStore in
      ScrollView {
        LazyVStack {
          ForEach(viewStore.repositories) { repository in
            RepositoryView(store: store, repository: repository)
              .padding([.leading, .trailing, .bottom])
          }
        }
      }
      .background(Color("rw-dark")
        .edgesIgnoringSafeArea([.top, .leading, .trailing]))
      .onAppear {
        viewStore.send(.onAppear)
      }
    }
  }
}

//struct MoviesView_Previews: PreviewProvider {
//    static var previews: some View {
//        MoviesView()
//    }
//}
