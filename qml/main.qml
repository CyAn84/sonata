import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 800
    height: 600
    visible: true
    title: qsTr("Scroll")

    property var dataModel // Filtered model

    ScrollView {
        id: itemList
        anchors.fill: parent

        ListView {
            width: parent.width
            model: dataModel
            header: Text {
                text: 'Elements with "Clock" type:'
                width: parent.width
            }

            delegate: ItemDelegate {
                text: dataModel[index].name
                width: parent.width
            }
        }
    }

    // Send request and handle respond
    Component.onCompleted: {
        const http = new XMLHttpRequest()

        http.open("GET", "http://localhost:3000")

        http.onerror = () => {
            console.log("Error!")
        }

        http.onload = () => {
            console.log("Loaded!")
            console.log(http.response)

            var d = JSON.parse(http.response)
            dataModel = d.pattern.filter(function(item) {
                if (item.type === "clock") {
                    return item.name
                }
            })
        }

        http.send()
    }
}
