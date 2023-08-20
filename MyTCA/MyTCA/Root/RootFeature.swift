//
//  RootFeature.swift
//  MyTCA
//
//  Created by Andrew Ikenna Jones on 8/9/23.
//

import ComposableArchitecture

struct RootState {
}

enum RootAction {
}

struct RootEnvironment { }

// swiftlint:disable trailing_closure
//let rootReducer = Reducer<
//  RootState,
//  RootAction,
//  SystemEnvironment<RootEnvironment>
//>.combine(
//  userReducer.pullback(
//    state: \.userState,
//    action: /RootAction.userAction,
//    environment: { _ in .live(environment: UserEnvironment(userRequest: userEffect)) }),
//  // 1
//  repositoryReducer.pullback(
//    // 2
//    state: \.repositoryState,
//    // 3
//    action: /RootAction.repositoryAction,
//    // 4
//    environment: { _ in
//      .live(
//        environment: RepositoryEnvironment(repositoryRequest: repositoryEffect))
//    }))
// swiftlint:enable trailing_closure
