//
//  Request.swift
//  LoLApi
//
//  Created by Apple on 10/14/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

struct Request {
    static func httpGet(key: String, urlString: String, completion: @escaping (_ data: Data?) -> Void) {
        guard let formattedUrlString = urlString.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed),
            let url = URL(string: formattedUrlString) else {
            completion(nil)
            return
        }

        let urlConfig = URLSessionConfiguration.default
        urlConfig.httpAdditionalHeaders = ["X-Riot-Token": key]
        let session = URLSession(configuration: urlConfig)

        let task = session.dataTask(with: url) {(data, response, error) in
            guard let data = data else {
                completion(nil)
                return
            }

            completion(data)
        }

        task.resume()
    }
}
