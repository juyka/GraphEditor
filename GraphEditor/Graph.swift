//
//  Graph.swift
//  GraphEditor
//
//  Created by Анастасия Васюра on 31/08/16.
//  Copyright © 2016 Анастасия Васюра. All rights reserved.
//

import Foundation

protocol Serializable {
    func serialize() -> AnyObject
}

struct Node {
    let x: Float
    let y: Float
    let id: String
    var relatedNodes: [String]
}

struct Graph {
    private var nodeMap: [String: Node]
    
    var nodes: [Node] {
        return Array(nodeMap.values)
    }
    
    subscript(id: String) -> Node? {
        return nodeMap[id]
    }
    
    mutating func addNode(node: Node) {
        nodeMap[node.id] = node
    }
    
    mutating func addRelation(node1: Node, node2: Node) {
        nodeMap[node1.id]?.relatedNodes.append(node2.id)
        nodeMap[node2.id]?.relatedNodes.append(node1.id)
    }
}

extension Node: Serializable {
    
    func serialize() -> AnyObject {
        var dictionary = [:] as [String: AnyObject]
        dictionary["x"] = x
        dictionary["y"] = y
        dictionary["id"] = id
        dictionary["relaited_nodes"] = relatedNodes
        return dictionary
    }
}

extension Graph: Serializable {
    
    func serialize() -> AnyObject {
        return nodes.map { $0.serialize() }
    }
}

extension Graph {
    
    var json: NSData? {
        return try? NSJSONSerialization.dataWithJSONObject(serialize(), options: [])
    }
}
