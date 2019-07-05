//
//  Serialize.swift
//  JSONParser
//
//  Created by JH on 05/07/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct Serialize {
    //jsonValue 직렬화하는 메소드
    func serializeValue(jsonData: JsonType) -> String {
        switch jsonData {
            case let strjsonData as String :
                return ("\(strjsonData)")
            case let intjsonData as Int :
                return ("\(intjsonData)")
            case let booljsonData as Bool :
                return ("\(booljsonData)")
            case let arrayjsonData as [JsonType] :
                return ("\(arrayjsonData)")
            default:
                return ("모른다")
            }
        return ""
    }
    //jsonType배열 직렬화하는 메소드
    func serializeArray(array: [JsonType]) -> String {
        var result = ""
        var isFirst = true
        
        result.append("[")
        array.forEach { number in
            if isFirst {
                isFirst = false
            } else {
                result.append(",")
            }
            result.append("\n    ")
            result.append(String(number))
        }
        result.append("\n]")
        return result
    }
    //jsonType오브젝트 직렬화하는 메소드
    func serializeObject(jsonData: [String:JsonType]) -> String {
        
    }

    
    
}
