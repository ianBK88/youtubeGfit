//
//  Constants.swift
//  G-Fit YouTube
//
//  Created by ian oliver on 3/9/23.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyBZKbC24aCjuTifahyjHoCYA-sOeebQ-Fc"
    static var PLAYLIST_ID = "UULFI3PkROb8aD3K6vKCvu3lyQ"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
