//
//  ReferenceBox.swift
//  Action
//
//  Created by Stefan Kofler on 18.07.18.
//

import Foundation

public class ReferenceBox<T: AnyObject> {

    // MARK: - Stored properties

    private weak var weakReference: T?
    private var strongReference: T?

    // MARK: - Init

    public init(_ value: T? = nil) {
        if let value = value {
            set(value)
        }
    }

    // MARK: - Methods

    public func set(_ value: T) {
        strongReference = value
        weakReference = value
    }

    public func get() -> T? {
        return strongReference ?? weakReference
    }

    public func releaseStrongReference() {
        strongReference = nil
    }
}
