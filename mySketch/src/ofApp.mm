#include "ofApp.h"

ofPoint posN; // contains x and y position (and z, but we ignore that for now)
ofPoint posO; // contains x and y position (and z, but we ignore that for now)
ofColor col; // contains r,g,b and a( alpha) components for color
//--------------------------------------------------------------
void ofApp::setup(){
    ofxAccelerometer.setup();
    ofxMultiTouch.addListener(this);
    ofBackground(20,0,30);  // Sets the background color to red
   // ofSetColor(0,0,255);
   // ofFill();

}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetColor(20,0,30);
    ofFill();
    ofCircle(posO.x,posO.y,20);
    
    ofSetColor(col.r,col.g,col.b);
    ofFill();
    ofCircle(posN.x,posN.y,20);
    
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    ofLog(OF_LOG_NOTICE, "X: " + ofToString(touch.x));
        ofLog(OF_LOG_NOTICE, "Y: " + ofToString(touch.y));
    posO = posN;
    posN.x = touch.x;
    posN.y = touch.y;
    
    col.r = ofMap(touch.x, 0, 320, 0, 255);
    col.g = ofMap(touch.y, 0, 570, 0, 255);
    col.b = 20;
    
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}
