//
//  DataManager.swift
//  TableList
//
//  Created by olga.krjuckova on 03/08/2021.
//

import Foundation

//File created to keep our Album cover

//create a new class( dont need a Superclass for it)
class DataManager{
    // will be reusable, that why we called it 'shared'
   static let shared = DataManager()
    
    //previously created var (track,album, albumCover) in Model->Song
    //basing on this info, we'll fullfill our class in Model->Song
    
        var track = [
                "Carly Rae Japsen ",
                "Dj Khaled ",
                "Injury Reserve ",
                "Jonas Brothers  ",
                "Joyner Lucas ",
                "Maluma ",
                "Never Young ",
                "Rammstein ",
                "Skepta ",
                "Skillet ",
                "Tylor the Creator ",
                "YG ",
            ]
    var album = [
            "Dedicated",
            "father of",
            "Jailbrake",
            "Happiness Begins ",
            "adhd",
            "11-11",
            "LOSER",
            "rammstein",
            "Ignorance Is Bliss",
            "Victory",
            "IGOR",
            "Stop Snitching",
        ]
    var albumCover = [
            "Carly Rae Japsen - Dedicated",
            "Dj Khaled - father of",
            "Injury Reserve - Jailbrake",
            "Jonas Brothers - Happiness Begins ",
            "Joyner Lucas - adhd",
            "Maluma - 11-11",
            "Never Young - LOSER",
            "Rammstein - rammstein",
            "Skepta - Ignorance Is Bliss",
            "Skillet - Victory",
            "Tylor the Creator - IGOR",
            "YG - Stop Snitching",
        ]
}
