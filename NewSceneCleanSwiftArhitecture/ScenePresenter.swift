//
//  ScenePresenter.swift
//  NewSceneCleanSwiftArhitecture
//
//  Created by Bulat Kamalov on 27.03.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

final class ScenePresenter: ScenePresentationLogic {
    
    weak var viewController: SceneDisplayLogic?

    func presentInitForm(_ response: Scene.InitForm.Response) {
        viewController?.displayInitForm(Scene.InitForm.ViewModel())
    }
}
