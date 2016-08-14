//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {

        var nameContainsLazerErrors = 0
        var itemsFromCuniaErrors = 0
        var valueLessThanTenErrors = 0
        
        for uditem in inventory {
            do {
                try policingFilter(uditem)
            } catch UDPolicingError.ItemFromCunia {
                itemsFromCuniaErrors += 1
            } catch UDPolicingError.NameContainsLaser {
               nameContainsLazerErrors += 1
            } catch UDPolicingError.ValueLessThan10 {
                valueLessThanTenErrors += 1
            } catch {
                // all errors
                print("there's an unknown error")
            }
        }
        
        return [UDPolicingError.ItemFromCunia    : itemsFromCuniaErrors,
                UDPolicingError.NameContainsLaser: nameContainsLazerErrors,
                UDPolicingError.ValueLessThan10  : valueLessThanTenErrors]
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"