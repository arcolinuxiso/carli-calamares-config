/* Sample of QML progress tree.

   SPDX-FileCopyrightText: 2020 Adriaan de Groot <groot@kde.org>
   SPDX-FileCopyrightText: 2021 Anke Boersma <demm@kaosx.us>
   SPDX-License-Identifier: GPL-3.0-or-later


   The progress tree (actually a list) is generally "vertical" in layout,
   with the steps going "down", but it could also be a more compact
   horizontal layout with suitable branding settings.

   This example emulates the layout and size of the widgets progress tree.
*/
import io.calamares.ui 1.0
import io.calamares.core 1.0

import QtQuick 2.3
import QtQuick.Layouts 1.3

Rectangle {
    id: sideBar;
    color: Branding.styleString( Branding.SidebarBackground );
    anchors.fill: parent;

    ColumnLayout {
        anchors.fill: parent;
        spacing: 0;

        /*
        Image {
            Layout.topMargin: 12;
            Layout.bottomMargin: 12;
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            id: logo;
            width: 80;
            height: width;  // square
            source: "file:/" + Branding.imagePath(Branding.ProductLogo);
            sourceSize.width: width;
            sourceSize.height: height;
        }
        */

        Repeater {
            model: ViewManager
            Rectangle {
                Layout.topMargin: 6;
                Layout.leftMargin: 6;
                Layout.rightMargin: 6;
                Layout.fillWidth: true;
                height: 24;
                radius: 0;
                color: index == ViewManager.currentStepIndex ? "#5E6472" : "#788091"; // Active 

                Text {
                    anchors.verticalCenter: parent.verticalCenter;
                    anchors.horizontalCenter: parent.horizontalCenter;
                    text: display;
                    font.pointSize: 12;
                }
            }
        }

        Item {
            Layout.fillHeight: true;
        }

        Rectangle {
            Layout.fillWidth: true;
            height: 35;
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom;
            color: Branding.styleString( mouseArea.containsMouse ? Branding.SidebarTextHighlight : Branding.SidebarBackground);
            visible: debug.enabled;

            MouseArea {
                id: mouseArea;
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                hoverEnabled: true;

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter; // Centers the text horizontally
                    anchors.verticalCenter: undefined; // Keeps default vertical alignment
                    x: parent.x + 4;
                    text: qsTr("Show debug information");
                    font.pointSize: 9;
                }

                onClicked: debug.toggle();
            }
        }
    }
}

