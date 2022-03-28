//
//  ScenePresenter.swift
//  NewSceneCleanSwiftArhitecture
//
//  Created by Bulat Kamalov on 27.03.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

final class ScenePresenter: ScenePresentationLogic {
    
    var presenerString = "" {
        didSet {
            print("data coming from interactor to presenter \(presenerString)")
        }
    }
    
    weak var viewController: SceneDisplayLogic?

    func presentInitForm(_ response: ResponseModel) {
        presenerString = response.stringResponse
        viewController?.displayInitForm(ViewModel.init(stringVM: presenerString))
    }
}
