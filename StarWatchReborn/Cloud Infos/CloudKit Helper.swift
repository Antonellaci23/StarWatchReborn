//
//  CloudKit Helper.swift
//  StarWatchReborn
//
//  Created by Giovanni Di Guida on 24/06/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import Foundation
import CloudKit
import SwiftUI

struct CloudKitHelper{
    
    struct recordType{
        static let card = "Card"
    }
    
    enum CloudKitHelperError: Error{
        case recordFailure
        case recordIDFailure
        case castFailure
        case cursorFailure
        case referenceFailure
    }
    
    static func saveTopic(item: Topic, completion: @escaping(Result<Topic, Error>) -> ()){
        let recordZoneId = CKRecordZone(zoneName: "Personal")
        let itemInZone = CKRecord(recordType: recordType.topic, recordID: CKRecord.ID(zoneID: recordZoneId.zoneID))
        itemInZone["name"] = item.name as CKRecordValue
//        itemInZone["phrases"] = item.phrases as CKRecordValue?
        CKContainer.default().privateCloudDatabase.save(itemInZone){(record, error) in
            DispatchQueue.main.async{
                if let error = error{
                    completion(.failure(error))
                    return
                }
                guard let record = record else{
                    completion(.failure(CloudKitHelperError.recordFailure))
                    return
                }
                
                let id = record.recordID
                
                guard let name = record["name"] as? String else{
                    completion(.failure(CloudKitHelperError.castFailure))
                    return
                }
                let element = Topic(n: name, rID: id/*, references: [CKRecord.Reference]()*/)
                completion(.success(element))
            }
        }
    }
    
    static func delete(id: CKRecord.ID, completion: @escaping(Result<CKRecord.ID, Error>) -> ()){
        CKContainer.default().privateCloudDatabase.delete(withRecordID: id){recordId, error in
            DispatchQueue.main.async{
                if let error = error{
                    completion(.failure(error))
                    return
                }
                guard let recordId = recordId else{
                    completion(.failure(CloudKitHelperError.castFailure))
                    return
                }
                completion(.success(recordId))
            }
        }
    }
    
    static func fetchTopic(completion: @escaping(Result<Topic, Error>) -> ()){
        let predicate = NSPredicate(value: true)
        let sort = NSSortDescriptor(key: "creationDate", ascending: false)
        let query = CKQuery(recordType: recordType.topic, predicate: predicate)
        query.sortDescriptors = [sort]
        let operation = CKQueryOperation(query: query)
        operation.desiredKeys = ["name", "phrases"]
        operation.resultsLimit = 50
        
        operation.recordFetchedBlock = {record in
            DispatchQueue.main.async {
                let id = record.recordID
                print("RecordID: \(id)")
                guard let name = record["name"] as? String else{
                    completion(.failure(CloudKitHelperError.castFailure))
                    return
                }
//                let phrases = record["phrases"] as? [CKRecord.Reference] ?? [CKRecord.Reference]()
                let element = Topic(n: name, rID: id/*, references: phrases*/)
                completion(.success(element))
                
            }
        }
        CKContainer.default().privateCloudDatabase.add(operation)
    }

    
    static func modifyTopic(item: Topic, completion: @escaping (Result<Topic, Error>) -> ()) {
        guard let recordID = item.recordID else { return }
        CKContainer.default().privateCloudDatabase.fetch(withRecordID: recordID) { record, err in
            if let err = err {
                DispatchQueue.main.async {
                    completion(.failure(err))
                }
                return
            }
            guard let record = record else {
                DispatchQueue.main.async {
                    completion(.failure(CloudKitHelperError.recordFailure))
                }
                return
            }
            record["name"] = item.name as CKRecordValue
            
            CKContainer.default().privateCloudDatabase.save(record) { (record, err) in
                DispatchQueue.main.async {
                    if let err = err {
                        completion(.failure(err))
                        return
                    }
                    guard let record = record else {
                        completion(.failure(CloudKitHelperError.recordFailure))
                        return
                    }
                    let recordID = record.recordID
                    
                    guard let name = record["name"] as? String else {
                        completion(.failure(CloudKitHelperError.castFailure))
                        return
                    }
                    let listElement = Topic(n: name, rID: recordID/*, references: phrases*/)
                    completion(.success(listElement))
                }
            }
        }
    }
}
