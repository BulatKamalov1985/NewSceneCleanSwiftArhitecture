//
//  SceneModels.swift
//  NewSceneCleanSwiftArhitecture
//
//  Created by Bulat Kamalov on 27.03.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

typealias ViewModel = Scene.InitForm.ViewModel
typealias RequestModel = Scene.InitForm.Request
typealias ResponseModel = Scene.InitForm.Response

enum Scene {
    
    enum InitForm {
        
        struct Request {
            var stringRequest = "1" {
                didSet {
                    print("data coming")
                }
            }
        }
        struct Response {
            var stringResponse = ""
        }
        struct ViewModel {
            var stringVM = ""
        }
    }
}
