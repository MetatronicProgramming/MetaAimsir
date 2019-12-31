/**
 * MetaAimsir: a weather forecast prgoram for the forecast and UV Index
 *
 * Copyright © 2019 Benrick Smit
 *
 * This file is part of MetaAimsir.
 *
 * MetaAimsir is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * MetaAimsir is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with MetaAimsir (/LICENSE). If not, see <https://www.gnu.org/licenses/>.
 */
/**
 * Notice:
 * This program contains some of Qt's Libraries which are licensed under
 * GPL as well. MetaAimsir will only support GPLv3 or later should Qt and the
 * relevant libraries in question also support the same condition. In the case of
 * any discrepencies default to the conditions specified in Qt's library notices.
 */

/**
 * @author: Benrick Smit
 * @moderators: N/A             //Anyone who added their input
 * @date_finished: 29/12/2019   //Finished All core functionality
 * @date_updated: 29/12/2019    //Updated one or two components, includes Refactoring
 * @brief: displays the loading icon on the screen.
 */

import QtQuick 2.12

import styles 1.0

Item{
    id: loading_icon_item_frame

    Image{
        id: loading_icon_image
        source: Styles.loading_icon_path
        width: Styles.loading_icon_default_width
        height: Styles.loading_icon_default_height

        NumberAnimation {
            id: loading_icon_image_animation
            running: true
            loops: Animation.Infinite

            target: loading_icon_image
            property: "rotation"
            from: 0
            to: 360
            duration: 1000
        }//end of Number Animation

        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }//end of Image
}//end of Item