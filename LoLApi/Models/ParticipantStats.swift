//
//  ParticipantStats.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct ParticipantStats: Decodable {
    public var participantId: Int
    public var win: Bool
    public var item0: Int
    public var item1: Int
    public var item2: Int
    public var item3: Int
    public var item4: Int
    public var item5: Int
    public var item6: Int
    public var kills: Int
    public var assists: Int
    public var deaths: Int
    public var largestKillingSpree: Int
    public var largestMultiKill: Int
    public var killingSprees: Int
    public var longestTimeSpentLiving: Int
    public var doubleKills: Int
    public var tripleKills: Int
    public var quadraKills: Int
    public var pentaKills: Int
    public var unrealKills: Int
    public var totalDamageDealt: Int
    public var magicDamageDealt: Int
    public var physicalDamageDealt: Int
    public var trueDamageDealt: Int
    public var largestCriticalStrike: Int
    public var totalDamageDealtToChampions: Int
    public var magicDamageDealtToChampions: Int
    public var physicalDamageDealtToChampions: Int
    public var trueDamageDealtToChampions: Int
    public var totalHeal: Int
    public var totalUnitsHealed: Int
    public var damageSelfMitigated: Int
    public var damageDealtToObjectives: Int
    public var damageDealtToTurrets: Int
    public var visionScore: Int
    public var timeCCingOthers: Int
    public var totalDamageTaken: Int
    public var magicalDamageTaken: Int
    public var physicalDamageTaken : Int
    public var trueDamageTaken: Int
    public var goldEarned: Int
    public var goldSpent: Int
    public var turretKills: Int
    public var inhibitorKills: Int
    public var totalMinionsKilled: Int
    public var neutralMinionsKilled: Int
    public var totalTimeCrowdControlDealt: Int
    public var champLevel: Int
    public var visionWardsBoughtInGame: Int
    public var sightWardsBoughtInGame: Int
    public var firstBloodKill: Bool
    public var firstBloodAssist: Bool
    public var firstTowerKill: Bool
    public var firstTowerAssist: Bool
    public var firstInhibitorKill: Bool
    public var firstInhibitorAssist: Bool
    public var combatPlayerScore: Int
    public var objectivePlayerScore: Int
    public var totalPlayerScore: Int
    public var totalScoreRank: Int
    public var playerScore0: Int
    public var playerScore1: Int
    public var playerScore2: Int
    public var playerScore3: Int
    public var playerScore4: Int
    public var playerScore5: Int
    public var playerScore6: Int
    public var playerScore7: Int
    public var playerScore8: Int
    public var playerScore9: Int
    public var perk0: Int
    public var perk0Var1: Int
    public var perk0Var2: Int
    public var perk0Var3: Int
    public var perk1: Int
    public var perk1Var1: Int
    public var perk1Var2: Int
    public var perk1Var3: Int
    public var perk2: Int
    public var perk2Var1: Int
    public var perk2Var2: Int
    public var perk2Var3: Int
    public var perk3: Int
    public var perk3Var1: Int
    public var perk3Var2: Int
    public var perk3Var3: Int
    public var perk4: Int
    public var perk4Var1: Int
    public var perk4Var2: Int
    public var perk4Var3: Int
    public var perk5: Int
    public var perk5Var1: Int
    public var perk5Var2: Int
    public var perk5Var3: Int
    public var perkPrimaryStyle: Int
    public var perkSubStyle: Int
    public var statPerk0: Int
    public var statPerk1: Int
    public var statPerk2: Int
    public var wardsPlaced: Int?
    public var wardsKilled: Int?
    public var neutralMinionsKilledTeamJungle: Int?
    public var neutralMinionsKilledEnemyJungle: Int?
    public var teamObjective: Int?
    public var altarsNeutralized: Int?
    public var altarsCaptured: Int?
    public var nodeCapture: Int?
    public var nodeCaptureAssist: Int?
    public var nodeNeutralize: Int?
    public var nodeNeutralizeAssist: Int?
}
