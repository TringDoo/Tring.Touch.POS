import QtQuick 2.9

/**
 * @brief Manager that creates Toasts dynamically
 */
Column{

    /**
     * Public
     */

    /**
     * @brief Shows a Toast
     *
     * @param {string} text Text to show
     * @param {real} duration Duration to show in milliseconds, defaults to 3000
     */
    function show(text, duration){
        var toast = toastComponent.createObject(root);
        toast.selfDestroying = true;
        toast.show(text, duration);
    }

    /**
     * Private
     */

    id: root

    z: Infinity
    spacing: 5
   // anchors.centerIn: parent
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 10

    property var toastComponent

    Component.onCompleted: toastComponent = Qt.createComponent("Toast.qml")
}
