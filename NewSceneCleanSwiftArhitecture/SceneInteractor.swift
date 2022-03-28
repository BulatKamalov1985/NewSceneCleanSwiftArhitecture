//
//  SceneInteractor.swift
//  NewSceneCleanSwiftArhitecture
//
//  Created by Bulat Kamalov on 27.03.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
import Foundation

final class SceneInteractor: SceneBusinessLogic, SceneDataStore {
    
    var InreractorString = "" {
        didSet {
            print("data coming from viewController to interactor \(InreractorString)")
        }
    }
    
    private let presenter: ScenePresentationLogic
    private let worker: SceneWorkerLogic

    init(
        presenter: ScenePresentationLogic,
        worker: SceneWorkerLogic
    ) {
        self.presenter = presenter
        self.worker = worker
    }

    func requestInitForm(_ request: RequestModel) {
        InreractorString = request.stringRequest
        DispatchQueue.main.async {
            self.presenter.presentInitForm(ResponseModel.init(stringResponse: self.InreractorString))
        }
    }
}
