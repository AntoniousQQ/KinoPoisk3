//
//  FilmGanresCase.swift
//  KinoPoisk
//
//  Created by Admin on 8.10.22.
//

import Foundation

class FilmGanresCase {
    
enum filmGanres {
   case boevik
   case fentezi
   case fantastika
   case triller
   case voennyj
   case detektiv
   case komediya
   case drama
   case uzhasy
   case kriminal
   case melodrama
   case vestern
   case biografiya
   case detskij
   case multfilm
   case filmNuar
   case dlyaVzroslyh
   case dokumentalnyj
   case igra
   case istoriya
   case koncert
   case korotkometrazhka
   case muzyka
   case myuzikl
   case novosti
   case priklyucheniya
   case realnoeTv
   case semejnyj
   case sport
   case tokShou
   case ceremoniya
    
    
    var url: String {
        switch self {
            case .boevik:
             return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=боевик&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
                
            case .fentezi:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=фэнтези&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .fantastika:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=фантастика&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .triller:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=фантастика&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .voennyj:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=военный&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .detektiv:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=детектив&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .komediya:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=комедия&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .drama:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=драма&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .uzhasy:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=ужасы&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .kriminal:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=криминал&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .melodrama:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=мелодрама&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .vestern:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=вестерн&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .biografiya:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=биография&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .detskij:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=детский&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .multfilm:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=мультфильм&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .filmNuar:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=фильм-нуар&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .dlyaVzroslyh:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=для взрослых&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .dokumentalnyj:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=документальный&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .igra:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=игра&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .istoriya:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=история&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .koncert:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=концерт&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .korotkometrazhka:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=короткометражка&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .muzyka:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=музыка&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .myuzikl:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=мюзикл&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .novosti:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=новости&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .priklyucheniya:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=приключения&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .realnoeTv:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=реальное ТВ&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .semejnyj:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=семейный&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .sport:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=спорт&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .tokShou:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=ток-шоу&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
            case .ceremoniya:
                return "https://api.kinopoisk.dev/movie?token=1HGAM56-CFZM33W-HR9ECJK-REH9X31&search[]=movie&search[]=церемония&search[]=1990-2021&search[]=2-10&search[]=!null&search[]=!null&page=1&field[]=type&field[]=genres.name&field[]=year&field[]=rating.kp&field[]=name&field[]=votes.kp&limit=100&sortField[]=premiere.world&sortField[]=votes.kp&sortType[]=-1&sortType[]=-1"
        }
    }
}

}

