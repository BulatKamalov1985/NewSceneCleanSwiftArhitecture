//
//  SceneProtocols.swift
//  NewSceneCleanSwiftArhitecture
//
//  Created by Bulat Kamalov on 27.03.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

protocol SceneDataPassing {
    var dataStore: SceneDataStore { get }
}

protocol SceneDataStore {}

protocol SceneBusinessLogic {
    func requestInitForm(_ request: RequestModel)
}

protocol SceneWorkerLogic {}

protocol ScenePresentationLogic {
    func presentInitForm(_ response: ResponseModel)
}

protocol SceneDisplayLogic: AnyObject {
    func displayInitForm(_ viewModel: ViewModel)
}

protocol SceneRoutingLogic {}
