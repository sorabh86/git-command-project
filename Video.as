var video:Video = new Video();

var nc:NetConnection = new NetConnection();
nc.connect(null);

var ns:NetStream = new NetStream(nc);
ns.addEventListner(NetStatusEvent.NET_STATUS, onStatusEvent);

function onStatusEvent(stat:Object) {
  trace(stat.info.code);
}

var meta:Object = new Object();

meta.onMetaData = function(meta:Object) {
  trace(meta.duration);
}

ns.client = meta;

video.attachNetStream(ns);

ns.play('myfile.flv');
