

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.7
import QtQuick.Controls 6.7
import UntitledProject
import QtQuick.Studio.DesignEffects
import QtQuick3D 6.7
import QtQuickUltralite.Extras
import QtQuick.Studio.Effects
import QtQuick.Studio.Components 1.0


/*
    x: "#00755a"*/
Rectangle {
    id: main
    width: Constants.width
    height: Constants.height
    visible: true
    color: "#272727"
    Button {
        id: menu_button1
        x: -73
        y: -171
        width: 50
        height: 50
        text: qsTr("Menu")
        anchors.verticalCenter: parent.verticalCenter
        flat: true
        transformOrigin: Item.Center
        smooth: true
        layer.smooth: false
        icon.source: "../img/menu.png"
        icon.color: "#ff00e1"
        highlighted: false
        display: AbstractButton.IconOnly
        Connections {
            target: menu_button1
            onClicked: menu_popup.visible = true
        }

        Rectangle {
            id: menu_borders1
            color: "#00ffffff"
            radius: 15
            border.color: "#ff00e1"
            border.width: 2
            anchors.fill: parent
        }
        clip: false
        checkable: true
        antialiasing: true
        anchors.verticalCenterOffset: -159
        anchors.horizontalCenterOffset: -316
        anchors.horizontalCenter: parent.horizontalCenter
        DesignEffect {
            layerBlurVisible: true
            backgroundBlurVisible: false
            backgroundBlurRadius: 6
            effects: [
                DesignDropShadow {
                    color: "#ff00e1"
                    offsetY: 0
                    offsetX: 0
                    showBehind: false
                }
            ]
        }
    }

    Text {
        id: heure
        x: 377
        y: 454
        color: "#ffffff"
        text: qsTr("12:12")
        font.pixelSize: 18
        DesignEffect {
            layerBlurVisible: true
            backgroundBlurVisible: false
            backgroundBlurRadius: 6
            effects: [
                DesignDropShadow {
                    color: "#ffffff"
                    offsetY: 0
                    offsetX: 0
                    showBehind: false
                }
            ]
        }
    }

    Item {
        id: __materialLibrary__
    }

    Image {
        id: voiture
        x: 174
        y: 56
        width: 450
        height: 351
        source: "../img/4l_cote.png"
        sourceSize.height: 0
        sourceSize.width: 0
        layer.enabled: true
        layer.effect: ColorOverlayEffect {
            id: couleur_voiture
            color: "#ff00e1"
            cached: false
            DesignEffect {
                layerBlurVisible: true
                backgroundBlurVisible: false
                backgroundBlurRadius: 0
                effects: [
                    DesignDropShadow {
                        color: "#ff00e1"
                        blur: 2
                        offsetY: 0
                        offsetX: 0
                        showBehind: false
                    }
                ]
            }
        }
        fillMode: Image.PreserveAspectFit
    }

    Item {
        id: item1
        x: 23
        y: 271
        width: 181
        height: 77

        Rectangle {
            id: contour1
            x: 0
            y: 0
            width: 93
            height: 35
            color: "#00ffffff"
            border.color: "#ff00e1"
        }

        Rectangle {
            id: tige1
            x: 92
            y: 32
            width: 75
            height: 1
            color: "#ff00e1"
            rotation: 20
        }
        Text {
            id: info_temp_eau
            x: 29
            y: 8
            color: "#ff00e1"
            text: qsTr("Eau : 80 °C")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: -22
            anchors.horizontalCenterOffset: -44
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Item {
        id: item2
        x: 611
        y: 237
        width: 181
        height: 77
        Rectangle {
            id: contour2
            x: 88
            y: 0
            width: 93
            height: 35
            color: "#00ffffff"
            border.color: "#ff00e1"
        }

        Rectangle {
            id: tige2
            x: -11
            y: 22
            width: 100
            height: 1
            color: "#ff00e1"
            rotation: -5
        }

        Text {
            id: info_temp_eau1
            x: 29
            y: 8
            color: "#ff00e1"
            text: qsTr("20 L")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: -22
            anchors.horizontalCenterOffset: 44
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Item {
        id: item3
        x: 23
        y: 178
        width: 294
        height: 154
        Rectangle {
            id: contour3
            x: 0
            y: 0
            width: 93
            height: 35
            color: "#00ffffff"
            border.color: "#ff00e1"
        }

        Rectangle {
            id: tige3
            x: 81
            y: 63
            width: 175
            height: 1
            color: "#ff00e1"
            rotation: 30
        }

        Text {
            id: info_temp_eau2
            x: 29
            y: 8
            color: "#ff00e1"
            text: qsTr("Huile : 2 bar")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: -60
            anchors.horizontalCenterOffset: -101
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Item {
        id: item4
        x: 23
        y: 223
        width: 294
        height: 154
        Rectangle {
            id: contour4
            x: 0
            y: 0
            width: 93
            height: 35
            color: "#00ffffff"
            border.color: "#ff00e1"
        }

        Rectangle {
            id: tige4
            x: 86
            y: 44
            width: 100
            height: 1
            color: "#ff00e1"
            rotation: 30
        }

        Text {
            id: info_temp_eau3
            x: 29
            y: 8
            color: "#ff00e1"
            text: qsTr("Huile : 75 °C")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: -60
            anchors.horizontalCenterOffset: -101
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Item {
        id: item5
        x: 23
        y: 322
        width: 181
        height: 77
        Rectangle {
            id: contour5
            x: 0
            y: 0
            width: 93
            height: 35
            color: "#00ffffff"
            border.color: "#ff00e1"
        }

        Rectangle {
            id: tige5
            x: 92
            y: 11
            width: 75
            height: 1
            color: "#ff00e1"
            rotation: -5
        }

        Text {
            id: info_temp_eau4
            x: 29
            y: 8
            color: "#ff00e1"
            text: qsTr("Turbo : 1.4 bar")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: -22
            anchors.horizontalCenterOffset: -44
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Item {
        id: item6
        x: 496
        y: 74
        width: 115
        height: 77
        Rectangle {
            id: contour6
            x: 11
            y: 21
            width: 93
            height: 35
            color: "#00ffffff"
            border.color: "#ff00e1"
        }

        Text {
            id: info_temp_eau5
            x: 29
            y: 8
            color: "#ff00e1"
            text: qsTr("Temp ext : 25°C")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: -1
            anchors.horizontalCenterOffset: -1
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Item {
        id: item7
        x: 309
        y: 95
        width: 181
        height: 77
        Rectangle {
            id: contour7
            x: 88
            y: 0
            width: 93
            height: 35
            color: "#00ffffff"
            border.color: "#ff00e1"
        }

        Rectangle {
            id: tige7
            x: 39
            y: 94
            width: 120
            height: 1
            color: "#ff00e1"
            rotation: 95
        }

        Text {
            id: info_temp_eau6
            x: 29
            y: 8
            color: "#ff00e1"
            text: qsTr("Temp int : 30°C")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: -22
            anchors.horizontalCenterOffset: 44
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Item {
        id: item8
        x: 23
        y: 322
        width: 181
        height: 77
        Rectangle {
            id: contour8
            x: 0
            y: 0
            width: 93
            height: 35
            color: "#00ffffff"
            border.color: "#ff00e1"
        }

        Rectangle {
            id: tige8
            x: 92
            y: 11
            width: 75
            height: 1
            color: "#ff00e1"
            rotation: -5
        }

        Text {
            id: info_temp_eau7
            x: 29
            y: 8
            color: "#ff00e1"
            text: qsTr("Turbo : 1.4 bar")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: -22
            anchors.horizontalCenterOffset: -44
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Item {
        id: item9
        x: 611
        y: 282
        width: 181
        height: 77
        Rectangle {
            id: contour9
            x: 88
            y: 0
            width: 93
            height: 35
            color: "#00ffffff"
            border.color: "#ff00e1"
        }

        Rectangle {
            id: tige9
            x: -112
            y: 18
            width: 200
            height: 1
            color: "#ff00e1"
            rotation: 0
        }

        Text {
            id: info_temp_eau8
            x: 29
            y: 8
            color: "#ff00e1"
            text: qsTr("Batterie : 12 V")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: -22
            anchors.horizontalCenterOffset: 44
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: menu_popup
        x: 45
        y: 41
        width: 330
        height: 362
        opacity: 1
        visible: true
        color: "#191919"
        radius: 10
        border.color: "#ff00e1"
        border.width: 2
        Button {
            id: menu_button2
            x: 14
            y: 15
            width: 50
            height: 50
            text: qsTr("Menu")
            anchors.verticalCenter: parent.verticalCenter
            transformOrigin: Item.Center
            smooth: true
            layer.smooth: false
            icon.source: "../img/menu.png"
            icon.color: "#ff00e1"
            highlighted: false
            flat: true
            display: AbstractButton.IconOnly
            Connections {
                target: menu_button2
                onClicked: menu_popup.visible = false
            }

            Rectangle {
                id: menu_borders2
                color: "#00ffffff"
                radius: 15
                border.color: "#ff00e1"
                border.width: 2
                anchors.fill: parent
            }

            DesignEffect {
                layerBlurVisible: true
                effects: [
                    DesignDropShadow {
                        color: "#ff00e1"
                        showBehind: false
                        offsetY: 0
                        offsetX: 0
                    }]
                backgroundBlurVisible: false
                backgroundBlurRadius: 6
            }
            clip: false
            checkable: true
            antialiasing: true
            anchors.verticalCenterOffset: -141
            anchors.horizontalCenterOffset: -126
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: cruise_button
            x: 15
            y: 71
            width: 300
            height: 50
            text: qsTr("")
            icon.color: "#00ffffff"
            highlighted: false
            font.pointSize: 33
            flat: true
            display: AbstractButton.TextOnly
            Rectangle {
                id: cruise_mode
                x: 0
                y: 0
                width: 300
                height: 50
                color: "#272727"
                radius: 12
                border.color: "#272727"
                border.width: 0
                focus: false
                Text {
                    id: cruise_texte
                    x: 75
                    y: 59
                    color: "#ff00e1"
                    text: qsTr("Cruise")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 33
                    horizontalAlignment: Text.AlignLeft
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                clip: false
                antialiasing: false
                activeFocusOnTab: false
            }

            Connections {
                target: cruise_button
                onClicked: main.visible = true
            }
            clip: false
        }

        Button {
            id: inspection_button
            x: 15
            y: 127
            width: 300
            height: 50
            text: qsTr("")
            flat: true
            display: AbstractButton.TextOnly
            Rectangle {
                id: inspection_mode
                x: 0
                y: 0
                width: 300
                height: 50
                color: "#0e0e0e"
                radius: 12
                border.color: "#272727"
                border.width: 0
                focus: false
                Text {
                    id: inspection_texte
                    x: 75
                    y: 40
                    color: "#ff00e1"
                    text: qsTr("Inspection")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 33
                    horizontalAlignment: Text.AlignLeft
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                clip: false
                antialiasing: false
                activeFocusOnTab: false
            }

            Connections {
                target: inspection_button
                onClicked: menu_popup.visible = false
            }
        }

        Button {
            id: rallye_button
            x: 15
            y: 183
            width: 300
            height: 50
            text: qsTr("")
            flat: true
            display: AbstractButton.TextOnly
            Rectangle {
                id: rallye_mode
                x: 0
                y: 0
                width: 300
                height: 50
                color: "#272727"
                radius: 12
                border.color: "#272727"
                border.width: 0
                focus: false
                Text {
                    id: rallye_texte
                    color: "#ff00e1"
                    text: qsTr("Rallye")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 33
                    horizontalAlignment: Text.AlignLeft
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                clip: false
                antialiasing: false
                activeFocusOnTab: false
            }
        }

        Button {
            id: map_button
            x: 14
            y: 239
            width: 301
            height: 50
            text: qsTr("")
            flat: true
            display: AbstractButton.TextOnly
            Rectangle {
                id: map_mode
                x: 0
                y: 0
                width: 300
                height: 50
                color: "#272727"
                radius: 12
                border.color: "#272727"
                border.width: 0
                focus: false
                Text {
                    id: map_texte
                    color: "#ff00e1"
                    text: qsTr("Map")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 33
                    horizontalAlignment: Text.AlignLeft
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                clip: false
                antialiasing: false
                activeFocusOnTab: false
            }
        }

        Button {
            id: web
            x: 45
            y: 295
            width: 60
            height: 60
            text: qsTr("")
            icon.width: 150
            icon.source: "../img/web.png"
            icon.height: 150
            icon.color: "#ff00e1"
            icon.cache: true
            flat: true
            display: AbstractButton.IconOnly
        }

        Button {
            id: youtube
            x: 135
            y: 295
            width: 60
            height: 60
            text: qsTr("")
            icon.width: 150
            icon.source: "../img/youtube.png"
            icon.height: 150
            icon.cache: true
            flat: true
            display: AbstractButton.IconOnly
        }

        Button {
            id: streaming
            x: 225
            y: 295
            width: 60
            height: 60
            text: qsTr("")
            icon.width: 150
            icon.source: "../img/movie.png"
            icon.height: 150
            icon.color: "#ff00e1"
            icon.cache: true
            flat: true
            display: AbstractButton.IconOnly
        }
    }

    states: [
        State {
            name: "clicked"
        }
    ]
}
