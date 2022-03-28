//
//  SceneViewController.swift
//  NewSceneCleanSwiftArhitecture
//
//  Created by Bulat Kamalov on 27.03.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class SceneViewController: UIViewController, SceneDisplayLogic {
    
    private let interactor: SceneBusinessLogic
    private let router: SceneRoutingLogic

    init(
        interactor: SceneBusinessLogic,
        router: SceneRoutingLogic
    ) {
        self.interactor = interactor
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }

    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        initForm()
        
    }

    // MARK: - SceneDisplayLogic

    func displayInitForm(_ viewModel: ViewModel) {}

    // MARK: - Private

    private func initForm() {
        interactor.requestInitForm(RequestModel())
    }
}
