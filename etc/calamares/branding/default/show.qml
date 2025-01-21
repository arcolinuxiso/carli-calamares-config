/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2015 Teo Mrnjavac <teo@kde.org>
 *   SPDX-FileCopyrightText: 2018 Adriaan de Groot <groot@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 5000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {
        anchors.fill: parent

        Image {
            id: background1
            source: "1-welcometo.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
    }

    Slide {
        anchors.fill: parent

        Image {
            id: background2
            source: "2-carli.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
    }

    Slide {
        anchors.fill: parent

        Image {
            id: background3
            source: "3-carliis.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
    }

    Slide {
        anchors.fill: parent

        Image {
            id: background4
            source: "4-customised.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
    }

    Slide {
        anchors.fill: parent

        Image {
            id: background5
            source: "5-archlinux.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
    }

    Slide {
        anchors.fill: parent

        Image {
            id: background6
            source: "6-iso.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
    }

    Slide {
        anchors.fill: parent

        Image {
            id: background7
            source: "7-enjoy.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
    }

    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }
}
