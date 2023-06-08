import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Page {
    id: root

    signal writeUSBClicked();
    signal backButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "white"

        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            id: writeToUSBButton
            height: 70
            width: 200
            background: Rectangle{
                color: "#7432c9"
                radius: 5
            }
            contentItem: Text{
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: "Get USB devices info"
                color: "white"
            }
            onClicked: root.writeUSBClicked()
        }

        Grid {
            id: colorPicker
            x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
            rows: 3; columns: 3; spacing: 3

            Cell { cellColor: "red"; onClicked: page.color = cellColor }
            Cell { cellColor: "green"; onClicked: page.color = cellColor }
            Cell { cellColor: "blue"; onClicked: page.color = cellColor }
            Cell { cellColor: "yellow"; onClicked: page.color = cellColor }
            Cell { cellColor: "steelblue"; onClicked: page.color = cellColor }
            Cell { cellColor: "black"; onClicked: page.color = cellColor }
        }

        BackButton { onClicked: root.backButtonClicked() }
    }
}
