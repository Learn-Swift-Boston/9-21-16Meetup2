//
//  Item.swift
//  JsonPerf
//
//  Created by Matt Dias on 9/20/16.
//  Copyright © 2016 Zipcar. All rights reserved.
//

import Foundation

typealias MyJSON = [String: Any]

struct Repo {
	var id: Int
//	var name: String
//	var fullName: String
//	var owner: Owner
//	var isPrivate: Bool
//	var htmlUrl: String
//	var description: String
//	var fork: Bool
//	var url: String
//	var forksUrl: String
//	var keysUrl: String
//	var collaboratorsUrl: String
//	var teamsUrl: String
//	var hooksUrl: String
//	var issueEventsUrl: String
//	var eventsUrl: String
//	var assigneesUrl: String
//	var branchesUrl: String
//	var tagsUrl: String
//	var blobsUrl: String
//	var gitTagsUrls: String
//	var gitRefsUrl: String
//	var treesUrl: String
//	var statusesUrl: String
//	var languagesUrl: String
//	var stargazersUrl: String
//	var contributorsUrl: String
//	var subscribersUrl: String
//	var subscriptionUrl: String
//	var commitsUrl: String
//	var gitCommitsUrl: String
//	var commentsUrl: String
//	var issueCommentUrl: String
//	var contentsUrl: String
//	var compareUrl: String
//	var mergesURL: String
//	var archiveUrl: String
//	var downloadsUrl: String
//	var issuesUrl: String
//	var pullsUrl: String
//	var milestonesUrl: String
//	var notificationsUrl: String
//	var labelsUrl: String
//	var releasesUrl: String
//	var deploymentsUrl: String
//	var createdAt: String
//	var updatedAt: String
//	var pushedAt: String
//	var gitUrl: String
//	var sshUrl: String
//	var cloneUrl: String
//	var svnUrl: String
//	var homepage: String?
//	var size: Int
//	var stargazersCount: Int
//	var watchersCount: Int
//	var language: String
//	var hasIssues: Bool
//	var hasPages: Bool
//	var forksCount: Int
//	var openIssues: Int
//	var watchers: Int
//	var defaultBranch: String
//	var score: Int

	init(json: MyJSON) {
		self.id = json["id"] as! Int
	}
}
