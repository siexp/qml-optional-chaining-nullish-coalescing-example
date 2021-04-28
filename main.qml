import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Component.onCompleted: {
        var empty = undefined
        var nullempty = null
        var foo = { "bar": "bar" }

        // Nullish coalescing operator (??)
        // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Nullish_coalescing_operator

        // TypeError: Cannot read property 'bar' of undefined
        // console.log( empty.bar ?? "not found" )

        // TypeError: Cannot read property 'bar' of undefined
        // console.log( nullempty.bar ?? "not found" )

        console.log( foo.bar ?? "not found" )


        // Optional chaining (?.)
        // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Optional_chaining
        // Not implemented yet https://bugreports.qt.io/browse/QTBUG-77926

        // console.log( empty?.bar ?? "not found" )
        // console.log( nullempty?.bar ?? "not found" )
        // console.log( foo?.bar ?? "not found" )
    }
}
