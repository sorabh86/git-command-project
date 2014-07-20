var video:Video = new Video();

var nc:NetConnection = new NetConnection();
nc.connect(null);

var ns:NetStream = new NetStream(nc);

var meta:Object = new Object();

meta.onMetaData = function(meta:Object) {
  trace(meta.duration);
}

ns.client = meta;

video.attachNetStream(ns);

ns.play('myfile.flv');
