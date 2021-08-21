//
//  ManagedCache.swift
//  FeedStoreChallenge
//
//  Created by tamorim on 21/08/2021.
//  Copyright © 2021 Essential Developer. All rights reserved.
//

import Foundation
import CoreData

@objc(ManagedCache)
final class ManagedCache: NSManagedObject {
	@NSManaged var timestamp: Date
	@NSManaged var feed: NSOrderedSet

	static func find(in context: NSManagedObjectContext) throws -> ManagedCache? {
		let request = NSFetchRequest<ManagedCache>(entityName: ManagedCache.entity().name!)
		request.returnsObjectsAsFaults = false

		return try context.fetch(request).first
	}
}
