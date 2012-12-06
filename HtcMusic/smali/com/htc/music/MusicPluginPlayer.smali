.class public interface abstract Lcom/htc/music/MusicPluginPlayer;
.super Ljava/lang/Object;
.source "MusicPluginPlayer.java"


# virtual methods
.method public abstract clearAlbumArtRequests()V
.end method

.method public abstract clearNowplayingQueueRequests()V
.end method

.method public abstract close(Z)V
.end method

.method public abstract duration()J
.end method

.method public abstract getAlbumArtPathByPosition(I)Ljava/lang/String;
.end method

.method public abstract getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
.end method

.method public abstract getAlbumId()I
.end method

.method public abstract getAlbumName()Ljava/lang/String;
.end method

.method public abstract getAlbumQueue()[I
.end method

.method public abstract getArtistName()Ljava/lang/String;
.end method

.method public abstract getAudioId()I
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getBufferingPercent()I
.end method

.method public abstract getComposer()Ljava/lang/String;
.end method

.method public abstract getCurrentMode()I
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getGenre()Ljava/lang/String;
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getNowplayingQueue(I)V
.end method

.method public abstract getPlayerName()Ljava/lang/String;
.end method

.method public abstract getPluginIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getPluginNotReadyMsg()Ljava/lang/String;
.end method

.method public abstract getPositionByShufflePosition(I)I
.end method

.method public abstract getQueuePosition()I
.end method

.method public abstract getQueueSize()I
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getShuffleMode()I
.end method

.method public abstract getShufflePositionByPosition(I)I
.end method

.method public abstract getTrackDetails(I)V
.end method

.method public abstract getTrackName()Ljava/lang/String;
.end method

.method public abstract getVolume()I
.end method

.method public abstract isDmcOrPushMode()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPluginReady()Z
.end method

.method public abstract next(Z)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract position()J
.end method

.method public abstract prev(Z)V
.end method

.method public abstract registerCallback(Lcom/htc/music/IPluginIPCNotify;)V
.end method

.method public abstract release()V
.end method

.method public abstract seek(J)J
.end method

.method public abstract setPlaylistInfo(Landroid/os/Bundle;)V
.end method

.method public abstract setQueuePosition(I)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleMode(I)V
.end method

.method public abstract setVolume(I)V
.end method

.method public abstract startPluginActivity()V
.end method

.method public abstract stop(Z)V
.end method

.method public abstract unregisterCallback()V
.end method
