file(GLOB QML_JS_FILES *.qml *.js)

install(FILES ${QML_JS_FILES} DESTINATION ${FINGER-PAINTING_DIR})
