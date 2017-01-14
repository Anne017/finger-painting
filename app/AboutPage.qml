import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3

Page {
    title: i18n.tr('About')

    header: PageHeader {
        id: header
        title: parent.title
    }

    Flickable {
        anchors {
            top: header.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        contentHeight: contentColumn.height + units.gu(4)

        ColumnLayout {
            id: contentColumn
            anchors {
                left: parent.left;
                top: parent.top;
                right: parent.right;
                margins: units.gu(2)
            }
            spacing: units.gu(2)

            Label {
                Layout.fillWidth: true

                text: i18n.tr('Finger Painting is a simple, multi-touch painting app geared towards children.')
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
            }

            Label {
                Layout.fillWidth: true

                text: i18n.tr('This app was inspired by https://github.com/rburchell/qmlstuff');
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
            }

            Label {
                Layout.fillWidth: true

                text: i18n.tr('This app is dedicated to my two wonderful children.');
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
            }

            Label {
                Layout.fillWidth: true

                text: i18n.tr('This app is open source software under the GPL v3.');
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
            }

            Button {
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                text: i18n.tr('Website')
                color: UbuntuColors.orange
                onClicked: Qt.openUrlExternally('http://bhdouglass.com/')
            }
        }
    }
}
