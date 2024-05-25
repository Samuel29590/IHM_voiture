

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

    Button {
        id: musique
        width: 50
        height: 50
        opacity: 1
        visible: true
        text: qsTr("Musique")
        anchors.verticalCenter: parent.verticalCenter
        icon.color: "#ff00e1"
        icon.source: "../img/musique.png"
        display: AbstractButton.IconOnly
        highlighted: false
        flat: true
        Connections {
            target: musique
            onClicked: animation.start()
        }

        Rectangle {
            id: musiqueborders
            x: -647
            y: -6
            visible: true
            color: "#00ffffff"
            radius: 15
            border.color: "#ff00e1"
            border.width: 2
            anchors.fill: parent
        }
        checkable: true
        anchors.verticalCenterOffset: -159
        anchors.horizontalCenterOffset: 316
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

    Rectangle {
        id: main_data
        x: 175
        y: 21
        width: 450
        height: 120
        color: "#00ffffff"
        radius: 15
        border.color: "#ff00e1"
        border.width: 2

        Text {
            id: vitesse_kph
            x: 8
            y: 33
            width: 78
            height: 33
            color: "#ff00e1"
            text: qsTr("150")
            font.letterSpacing: 2
            font.pixelSize: 45
            topPadding: -17
        }

        Text {
            id: vitesse_mph
            x: 52
            y: 72
            width: 34
            height: 21
            color: "#ff00e1"
            text: qsTr("76")
            font.letterSpacing: 2
            font.pixelSize: 28
            lineHeight: 1
            topPadding: -10
        }

        Text {
            id: kph
            x: 92
            y: 33
            width: 116
            height: 33
            color: "#ff00e1"
            text: qsTr("Km/h")
            font.letterSpacing: 2
            font.pixelSize: 45
            font.preferShaping: true
            font.kerning: true
            font.capitalization: Font.MixedCase
            style: Text.Normal
            styleColor: "#ff00e1"
            topPadding: -17
        }

        Text {
            id: mph
            x: 92
            y: 72
            width: 34
            height: 21
            color: "#ff00e1"
            text: qsTr("Mph")
            font.letterSpacing: 2
            font.pixelSize: 28
            lineHeight: 1
            topPadding: -10
        }

        Text {
            id: tours_minute
            x: 234
            y: 44
            width: 106
            height: 33
            color: "#ff00e1"
            text: qsTr("5666")
            font.letterSpacing: 2
            font.pixelSize: 45
            topPadding: -17
        }

        Text {
            id: rpm
            x: 346
            y: 44
            width: 96
            height: 33
            color: "#ff00e1"
            text: qsTr("RPM")
            font.letterSpacing: 2
            font.pixelSize: 45
            topPadding: -17
        }
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

    Image {
        id: voiture
        x: 356
        y: 360
        width: 88
        height: 94
        source: "../img/4l.png"
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
        fillMode: Image.PreserveAspectFit
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

    Item {
        id: panel_gauche
        x: 21
        y: 232
        width: 205
        height: 152

        Item {
            id: tmp_eau
            x: 8
            y: 27
            width: 64
            height: 98

            Image {
                id: icon_tmp_eau
                x: 7
                y: -32
                width: 28
                height: 24
                source: "../img/temperature.png"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: icon_tmp_eau_couleur
                    color: "#ffffff"
                }

                fillMode: Image.PreserveAspectFit

                DesignEffect {}
            }

            Rectangle {
                id: tmp_eau_120
                x: 5
                y: 0
                width: 30
                height: 10
                color: "#550000"
                radius: 4
            }

            Rectangle {
                id: tmp_eau_110
                x: 5
                y: 11
                width: 30
                height: 10
                color: "#7c3500"
                radius: 4
            }

            Rectangle {
                id: tmp_eau_100
                x: 5
                y: 22
                width: 30
                height: 10
                color: "#7c3500"
                radius: 4
            }

            Rectangle {
                id: tmp_eau_90
                x: 5
                y: 33
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: tmp_eau_80
                x: 5
                y: 44
                width: 30
                height: 10
                color: "#00ffc4"
                radius: 4
            }

            Rectangle {
                id: tmp_eau_70
                x: 5
                y: 55
                width: 30
                height: 10
                color: "#00ffc4"
                radius: 4
            }

            Rectangle {
                id: tmp_eau_60
                x: 5
                y: 66
                width: 30
                height: 10
                color: "#00ffc4"
                radius: 4
            }

            Rectangle {
                id: tmp_eau_50
                x: 5
                y: 77
                width: 30
                height: 10
                color: "#00ffc4"
                radius: 4
            }

            Rectangle {
                id: tmp_eau_40
                x: 5
                y: 88
                width: 30
                height: 10
                color: "#00ffc4"
                radius: 4
            }

            Rectangle {
                id: tmp_eau_bordure_g
                x: 0
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_eau_bordure_d
                x: 37
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_eau_bordure_d1
                x: 37
                y: 4
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_eau_bordure_d2
                x: 37
                y: 26
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_eau_bordure_d3
                x: 37
                y: 48
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_eau_bordure_d4
                x: 37
                y: 68
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_eau_bordure_d5
                x: 37
                y: 92
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Text {
                id: eau_120
                x: 44
                y: -2
                width: 22
                height: 14
                color: "#ffffff"
                text: qsTr("120")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: eau_100
                x: 44
                y: 20
                width: 22
                height: 14
                color: "#ffffff"
                text: qsTr("100")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                minimumPointSize: 10
                minimumPixelSize: 10
                styleColor: "#ffffff"
                topPadding: 0
            }

            Text {
                id: eau_90
                x: 44
                y: 42
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("80")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: eau_60
                x: 44
                y: 62
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("60")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: eau_40
                x: 44
                y: 86
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("40")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: degre_eau
                x: 9
                y: 104
                width: 22
                height: 19
                color: "#ffffff"
                text: qsTr("°c")
                font.letterSpacing: 2
                font.pixelSize: 15
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }
        }

        Item {
            id: tmp_huile
            x: 78
            y: 27
            width: 64
            height: 98
            Image {
                id: icon_tmp_huile
                x: 7
                y: -32
                width: 28
                height: 24
                source: "../img/temperature.png"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: icon_tmp_huile_couleur
                    color: "#ffffff"
                }
                fillMode: Image.PreserveAspectFit
                DesignEffect {}
            }

            Rectangle {
                id: tmp_huile_120
                x: 5
                y: 0
                width: 30
                height: 10
                color: "#550000"
                radius: 4
            }

            Rectangle {
                id: tmp_huile_110
                x: 5
                y: 11
                width: 30
                height: 10
                color: "#7c3500"
                radius: 4
            }

            Rectangle {
                id: tmp_huile_100
                x: 5
                y: 22
                width: 30
                height: 10
                color: "#7c3500"
                radius: 4
            }

            Rectangle {
                id: tmp_huile_90
                x: 5
                y: 33
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: tmp_huile_80
                x: 5
                y: 44
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: tmp_huile_70
                x: 5
                y: 55
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: tmp_huile_60
                x: 5
                y: 66
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: tmp_huile_50
                x: 5
                y: 77
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: tmp_huile_40
                x: 5
                y: 88
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: tmp_huile_bordure_g
                x: 0
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_huile_bordure_d
                x: 37
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_huile_bordure_d1
                x: 37
                y: 4
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_huile_bordure_d2
                x: 37
                y: 26
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_huile_bordure_d3
                x: 37
                y: 48
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_huile_bordure_d4
                x: 37
                y: 68
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: tmp_huile_bordure_d5
                x: 37
                y: 92
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Text {
                id: huile_120
                x: 44
                y: -2
                width: 22
                height: 14
                color: "#ffffff"
                text: qsTr("120")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: huile_100
                x: 44
                y: 20
                width: 22
                height: 14
                color: "#ffffff"
                text: qsTr("100")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: huile_80
                x: 44
                y: 42
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("80")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: huile_60
                x: 44
                y: 62
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("60")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: huile_40
                x: 44
                y: 86
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("40")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: degre_huile
                x: 9
                y: 104
                width: 22
                height: 19
                color: "#ffffff"
                text: qsTr("°c")
                font.letterSpacing: 2
                font.pixelSize: 15
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }
        }

        Item {
            id: press_huile
            x: 148
            y: 27
            width: 51
            height: 98
            Image {
                id: icon_press_huile
                x: 6
                y: -32
                width: 34
                height: 29
                source: "../img/huile.png"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: icon_press_huile_couleur
                    color: "#ffffff"
                }
                sourceSize.height: 520
                sourceSize.width: 520
                fillMode: Image.PreserveAspectFit
                DesignEffect {}
            }

            Rectangle {
                id: press_huile_40
                x: 5
                y: 0
                width: 30
                height: 10
                color: "#550000"
                radius: 4
            }

            Rectangle {
                id: press_huile_35
                x: 5
                y: 11
                width: 30
                height: 10
                color: "#7c3500"
                radius: 4
            }

            Rectangle {
                id: press_huile_30
                x: 5
                y: 22
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: press_huile_25
                x: 5
                y: 33
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: press_huile_20
                x: 5
                y: 44
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: press_huile_15
                x: 5
                y: 55
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: press_huile_10
                x: 5
                y: 66
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: press_huile_5
                x: 5
                y: 77
                width: 30
                height: 10
                color: "#7c3500"
                radius: 4
            }

            Rectangle {
                id: prss_huile_0
                x: 5
                y: 88
                width: 30
                height: 10
                color: "#550000"
                radius: 4
            }

            Rectangle {
                id: press_huile_bordure_g
                x: 0
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: press_huile_bordure_d
                x: 37
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: press_huile_bordure_d1
                x: 37
                y: 4
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: press_huile_bordure_d2
                x: 37
                y: 48
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: press_huile_bordure_d3
                x: 37
                y: 92
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Text {
                id: huile_4
                x: 44
                y: -2
                width: 22
                height: 14
                color: "#ffffff"
                text: qsTr("4")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: huile_2
                x: 44
                y: 42
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("2")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: huile_0
                x: 44
                y: 86
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("0")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: pression_huile
                x: 7
                y: 104
                width: 28
                height: 19
                color: "#ffffff"
                text: qsTr("bar")
                font.letterSpacing: 2
                font.pixelSize: 15
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }
        }

        Rectangle {
            id: bordure_g_haut
            x: 0
            y: 21
            width: 205
            height: 3
            color: "#ffffff"
        }

        Rectangle {
            id: bordure_g_bas
            x: 0
            y: 128
            width: 205
            height: 3
            color: "#ffffff"
        }
    }

    Item {
        id: panel_droite
        x: 577
        y: 232
        width: 205
        height: 152
        Item {
            id: press_turbo
            x: 8
            y: 27
            width: 64
            height: 98
            Image {
                id: icon_press_turbo
                x: 7
                y: -34
                width: 28
                height: 26
                source: "../img/turbo.png"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: icon_press_turbo_couleur
                    color: "#ffffff"
                }
                fillMode: Image.PreserveAspectFit
                DesignEffect {}
            }

            Rectangle {
                id: press_trubo_20
                x: 5
                y: 0
                width: 30
                height: 10
                color: "#550000"
                radius: 4
            }

            Rectangle {
                id: press_trubo_175
                x: 5
                y: 11
                width: 30
                height: 10
                color: "#7c3500"
                radius: 4
            }

            Rectangle {
                id: press_trubo_150
                x: 5
                y: 22
                width: 30
                height: 10
                color: "#7c3500"
                radius: 4
            }

            Rectangle {
                id: press_trubo_125
                x: 5
                y: 33
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: press_trubo_10
                x: 5
                y: 44
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: press_trubo_075
                x: 5
                y: 55
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: press_trubo_050
                x: 5
                y: 66
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: press_trubo_025
                x: 5
                y: 77
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: press_trubo_0
                x: 5
                y: 88
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: press_turbo_bordure_g
                x: 0
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: press_turbo_bordure_d
                x: 37
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: press_turbo_bordure_d1
                x: 37
                y: 4
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: press_turbo_bordure_d2
                x: 37
                y: 48
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: press_turbo_bordure_d3
                x: 37
                y: 92
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Text {
                id: trubo_2
                x: 44
                y: -2
                width: 22
                height: 14
                color: "#ffffff"
                text: qsTr("2")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: turbo_1
                x: 44
                y: 42
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("1")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: turbo_0
                x: 44
                y: 86
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("0")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: pression_turbo
                x: 7
                y: 104
                width: 28
                height: 19
                color: "#ffffff"
                text: qsTr("bar")
                font.letterSpacing: 2
                font.pixelSize: 15
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }
        }

        Item {
            id: batterie
            x: 78
            y: 27
            width: 64
            height: 98
            Image {
                id: icon_batterie
                x: 0
                y: -38
                width: 41
                height: 30
                source: "../img/batterie.png"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: icon_batterie_couleur
                    color: "#ffffff"
                }
                fillMode: Image.PreserveAspectFit
                DesignEffect {}
            }

            Rectangle {
                id: batterie_140
                x: 5
                y: 0
                width: 30
                height: 10
                color: "#550000"
                radius: 4
            }

            Rectangle {
                id: batterie_135
                x: 5
                y: 11
                width: 30
                height: 10
                color: "#7c3500"
                radius: 4
            }

            Rectangle {
                id: batterie_130
                x: 5
                y: 22
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: batterie_125
                x: 5
                y: 33
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: batterie_120
                x: 5
                y: 44
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: batterie_115
                x: 5
                y: 55
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: batterie_110
                x: 5
                y: 66
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: batterie_105
                x: 5
                y: 77
                width: 30
                height: 10
                color: "#7c3500"
                radius: 4
            }

            Rectangle {
                id: batterie_100
                x: 5
                y: 88
                width: 30
                height: 10
                color: "#550000"
                radius: 4
            }

            Rectangle {
                id: batterie_bordure_g
                x: 0
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: batterie_bordure_d
                x: 37
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: batterie_bordure_d1
                x: 37
                y: 4
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: batterie_bordure_d2
                x: 37
                y: 48
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: batterie_bordure_d3
                x: 37
                y: 92
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Text {
                id: batterie_14
                x: 44
                y: -2
                width: 22
                height: 14
                color: "#ffffff"
                text: qsTr("14")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: batterie_12
                x: 44
                y: 42
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("12")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: batterie_10
                x: 44
                y: 86
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("10")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: voltage
                x: 16
                y: 104
                width: 10
                height: 19
                color: "#ffffff"
                text: qsTr("V")
                font.letterSpacing: 2
                font.pixelSize: 15
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }
        }

        Item {
            id: essence
            x: 148
            y: 27
            width: 51
            height: 98
            Image {
                id: icon_essence
                x: 6
                y: -37
                width: 34
                height: 29
                source: "../img/essence.png"
                sourceSize.width: 520
                sourceSize.height: 520
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: icon_essence_couleur
                    color: "#ffffff"
                }
                fillMode: Image.PreserveAspectFit
                DesignEffect {}
            }

            Rectangle {
                id: essence_100
                x: 5
                y: 0
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: essence_87
                x: 5
                y: 11
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: essence_75
                x: 5
                y: 22
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: essence_62
                x: 5
                y: 33
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: essence_50
                x: 5
                y: 44
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: essence_37
                x: 5
                y: 55
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: essence_25
                x: 5
                y: 66
                width: 30
                height: 10
                color: "#00755a"
                radius: 4
            }

            Rectangle {
                id: essence_12
                x: 5
                y: 77
                width: 30
                height: 10
                color: "#7c3500"
                radius: 4
            }

            Rectangle {
                id: essence_0
                x: 5
                y: 88
                width: 30
                height: 10
                color: "#550000"
                radius: 4
            }

            Rectangle {
                id: essence_bordure_g
                x: 0
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: essence_bordure_d
                x: 37
                y: 0
                width: 3
                height: 98
                color: "#9fffe9"
            }

            Rectangle {
                id: essence_bordure_d1
                x: 37
                y: 4
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: essence_bordure_d2
                x: 37
                y: 48
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Rectangle {
                id: essence_bordure_d3
                x: 37
                y: 92
                width: 5
                height: 3
                color: "#9fffe9"
            }

            Text {
                id: essence_10
                x: 44
                y: -2
                width: 22
                height: 14
                color: "#ffffff"
                text: qsTr("1")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: essence_05
                x: 44
                y: 42
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("1/2")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: essence_00
                x: 44
                y: 86
                width: 14
                height: 14
                color: "#ffffff"
                text: qsTr("0")
                font.letterSpacing: 2
                font.pixelSize: 10
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }

            Text {
                id: litre
                x: 16
                y: 104
                width: 8
                height: 19
                color: "#ffffff"
                text: qsTr("L")
                font.letterSpacing: 2
                font.pixelSize: 15
                lineHeight: 1
                topPadding: 0
                styleColor: "#ffffff"
                minimumPointSize: 10
                minimumPixelSize: 10
            }
        }

        Rectangle {
            id: bordure_d_haut
            x: 0
            y: 21
            width: 205
            height: 3
            color: "#ffffff"
        }

        Rectangle {
            id: bordure_d_bas
            x: 0
            y: 128
            width: 205
            height: 3
            color: "#ffffff"
        }
    }

    Image {
        id: sunset
        x: 322
        y: 96
        width: 157
        height: 140
        source: "../img/sunset.png"
        layer.enabled: true
        layer.effect: ColorOverlayEffect {
            id: colorOverlay
            color: "#4eff8d00"
        }
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: jauge_gauche
        x: 0
        y: 0
        width: 800
        height: 480
        source: "../img/gauche.png"
        layer.effect: ColorOverlayEffect {
            id: gauche_couleur
            color: "#ff00e1"
        }
        layer.enabled: true
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: jauge_droite
        x: 0
        y: 0
        width: 800
        height: 480
        source: "../img/droit.png"
        layer.enabled: true
        layer.effect: ColorOverlayEffect {
            id: droite_couleur
            color: "#ff00e1"
        }
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: traits_gauche
        x: 0
        y: 0
        width: 800
        height: 480
        source: "../img/gauche jauge.png"
        layer.enabled: true
        layer.effect: ColorOverlayEffect {
            id: traits_gauche_couleur
            color: "#272727"
        }
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: traits_droite
        x: 0
        y: 0
        width: 800
        height: 480
        source: "../img/droit jauge.png"
        layer.enabled: true
        layer.effect: ColorOverlayEffect {
            id: traits_droite_couleur
            color: "#272727"
        }
        fillMode: Image.PreserveAspectFit
    }

    Rectangle {
        id: menu_popup
        x: 45
        y: 41
        width: 330
        height: 377
        visible: false
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
                    }
                ]
                backgroundBlurVisible: false
                backgroundBlurRadius: 6
            }
            clip: false
            checkable: true
            antialiasing: true
            anchors.verticalCenterOffset: -149
            anchors.horizontalCenterOffset: -126
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Text {
        id: text1
        x: 257
        y: 423
        color: "#ffffff"
        text: qsTr("10")
        font.pixelSize: 15
        font.italic: true
    }

    Text {
        id: text2
        x: 266
        y: 405
        color: "#ffffff"
        text: qsTr("20")
        font.pixelSize: 15
        font.italic: true
    }

    Text {
        id: text3
        x: 274
        y: 390
        color: "#ffffff"
        text: qsTr("30")
        font.pixelSize: 15
        font.italic: true
    }

    Text {
        id: text4
        x: 283
        y: 373
        color: "#ffffff"
        text: qsTr("40")
        font.pixelSize: 15
        font.italic: true
    }

    Text {
        id: text5
        x: 290
        y: 357
        color: "#ffffff"
        text: qsTr("50")
        font.pixelSize: 15
        font.italic: true
    }

    Text {
        id: text6
        x: 299
        y: 341
        color: "#ffffff"
        text: qsTr("60")
        font.pixelSize: 15
        font.italic: true
    }

    Text {
        id: text7
        x: 307
        y: 325
        color: "#ffffff"
        text: qsTr("70")
        font.pixelSize: 15
        font.italic: true
    }

    Text {
        id: text8
        x: 316
        y: 309
        color: "#ffffff"
        text: qsTr("80")
        font.pixelSize: 15
        font.italic: true
    }

    Text {
        id: text9
        x: 324
        y: 293
        color: "#ffffff"
        text: qsTr("90")
        font.pixelSize: 15
        font.italic: true
    }

    Text {
        id: text10
        x: 330
        y: 278
        color: "#ffffff"
        text: qsTr("100")
        font.pixelSize: 13
        font.italic: true
    }

    Text {
        id: text11
        x: 339
        y: 262
        color: "#ffffff"
        text: qsTr("110")
        font.pixelSize: 13
        font.italic: true
    }

    Text {
        id: text12
        x: 347
        y: 246
        color: "#ffffff"
        text: qsTr("120")
        font.pixelSize: 13
        font.italic: true
    }

    Text {
        id: text13
        x: 357
        y: 231
        height: 20
        color: "#ffffff"
        text: qsTr("130")
        font.pixelSize: 12
        font.italic: true
    }

    states: [
        State {
            name: "clicked"
        }
    ]
}
