//
//  MainRepo.swift
//  MvvmC
//
//  Created by Eliran Sharabi on 03/09/2020.
//  Copyright © 2020 Eliran Sharabi. All rights reserved.
//
protocol MainRepository {
    //<# Add data source here #>
}

extension Main {
    
    typealias DataSource = MainRepository
    
    class Repo: MainRepository {
        private let remoteDataSource: DataSource
        private let localDataSource: DataSource
        
        init(remote: DataSource = RemoteDataSource(), local: DataSource = LocalDataSource()) {
            self.remoteDataSource = remote
            self.localDataSource = local
        }
    }
}
