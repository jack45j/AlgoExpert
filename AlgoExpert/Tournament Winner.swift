//
//  TournamentWinner.swift
//  Algoexpert
//
//  Created by Yi-Cheng Lin on 2021/4/4.
//

import Foundation

let HOME_TEAM_WON = 1
extension Program {
	static func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
		var record: [String: Int] = [:]
		var bestTeam = ""
		
		record[bestTeam] = 0
		for (idx, compResult) in competitions.enumerated() {
			let result = results[idx]
			let (home, away) = (compResult[0], compResult[1])
			
			var winningTeam = away
			
			// Home team won
			if HOME_TEAM_WON == result {
				winningTeam = home
			}
			
			if let _ = record[winningTeam] {
				record[winningTeam]! += competitions.count
			} else {
				record[winningTeam] = competitions.count
			}
			
			if record[winningTeam]! > record[bestTeam]! {
				bestTeam = winningTeam
			}
			
		}
		
		return bestTeam
	}
}
