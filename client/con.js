// This script automatically picks the right IP for the stream 
// Thanks to wonx (github.com/wonx)
host = window.location.hostname;
img = '<img src="http://' + host + ':9000/?action=stream" style="height:100vh;"/>';
//img = '<img src="stream.png" style="height:100vh;"/>';
document.getElementById("stream").innerHTML = img;
function takePicture() {
	socket.emit('cam', 1);
}
function shutdown() {
    if(confirm("This will shutdown the Pi.\nAre you sure?")){
		alert('Shutting down...\nPlease wait 20s before turning the power off.');
		socket.emit('power', 1);
	}
}
// Handle headlight button
function handleHeadlightClick(cb) {
  if (cb.checked) {
	// Turn on headlight
	headlight = 1;
  } else {
	// Turn off headlight
	headlight = 0;
  }
  socket.emit('light', headlight);
}
