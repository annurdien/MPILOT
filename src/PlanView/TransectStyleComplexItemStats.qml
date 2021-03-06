import QtQuick          2.3
import QtQuick.Controls 1.2

import QGroundControl               1.0
import QGroundControl.ScreenTools   1.0
import QGroundControl.Controls      1.0

// Statistics section for TransectStyleComplexItems
Grid {
    // The following properties must be available up the hierarchy chain
    //property var    missionItem       ///< Mission Item for editor

    columns:        2
    columnSpacing:  ScreenTools.defaultFontPixelWidth

    QGCLabel { text: qsTr("Calculated Area") }
    QGCLabel { text: QGroundControl.squareMetersToAppSettingsAreaUnits(missionItem.coveredArea).toFixed(2) + " " + QGroundControl.appSettingsAreaUnitsString }

    QGCLabel { text: qsTr("Image Count") }
    QGCLabel { text: missionItem.cameraShots }

    QGCLabel { text: qsTr("Image Interval") }
    QGCLabel { text: missionItem.timeBetweenShots.toFixed(1) + " " + qsTr("secs") }

    QGCLabel { text: qsTr("Image Distance") }
    QGCLabel { text: missionItem.cameraCalc.adjustedFootprintFrontal.valueString + " " + missionItem.cameraCalc.adjustedFootprintFrontal.units }
}
