import QtQuick 1.1
//import qb.base 1.0
import qb.components 1.0

Tile {
	id: bareTile

	/// Will be called when widget instantiated
	function init() {}

	onClicked: {
		stage.openFullscreen(app.fullScreenUrl);
	}

	Text {
		id: txtBig
		text: app.bigStr
		color: colors.clockTileColor
		anchors.centerIn: parent
		horizontalAlignment: Text.AlignHCenter
		font.pixelSize: dimState ? qfont.clockFaceText : qfont.timeAndTemperatureText
		font.family: qfont.regular.name
	}

	Text {
		id: txtSmall
		text: app.smallStr
		color: colors.clockTileColor
		anchors {
			horizontalCenter: parent.horizontalCenter
			baseline: parent.bottom
			baselineOffset: -16
		}
		horizontalAlignment: Text.AlignHCenter
		font.pixelSize: qfont.tileTitle
		font.family: qfont.regular.name
		visible: !dimState
	}
}
