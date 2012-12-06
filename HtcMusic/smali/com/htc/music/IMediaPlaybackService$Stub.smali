.class public abstract Lcom/htc/music/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/htc/music/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.music.IMediaPlaybackService"

.field static final TRANSACTION_activityGoSleep:I = 0x28

.field static final TRANSACTION_activityWakeup:I = 0x29

.field static final TRANSACTION_addToQueue:I = 0x52

.field static final TRANSACTION_addToQueueByDbTable:I = 0x5c

.field static final TRANSACTION_addToQueueForMultiConditions:I = 0x53

.field static final TRANSACTION_addToQueueForMultiConditionsByDbTable:I = 0x5d

.field static final TRANSACTION_addToQueueForTrackAlbumList:I = 0x66

.field static final TRANSACTION_clearAlbumArtRequests:I = 0x4d

.field static final TRANSACTION_duration:I = 0xd

.field static final TRANSACTION_endAnimation:I = 0x23

.field static final TRANSACTION_enqueue:I = 0x15

.field static final TRANSACTION_getAlbumArtPath:I = 0x32

.field static final TRANSACTION_getAlbumArtPathByPosition:I = 0x4b

.field static final TRANSACTION_getAlbumArtPathByShufflePosition:I = 0x4c

.field static final TRANSACTION_getAlbumId:I = 0x12

.field static final TRANSACTION_getAlbumName:I = 0x11

.field static final TRANSACTION_getAlbumQueue:I = 0x26

.field static final TRANSACTION_getAlbumQueuePosition:I = 0x27

.field static final TRANSACTION_getAlbumQueueSize:I = 0x2b

.field static final TRANSACTION_getAnimationStatus:I = 0x24

.field static final TRANSACTION_getArtistId:I = 0x14

.field static final TRANSACTION_getArtistName:I = 0x13

.field static final TRANSACTION_getAudioId:I = 0x1a

.field static final TRANSACTION_getAudioSessionId:I = 0x4f

.field static final TRANSACTION_getBufferingPercent:I = 0x48

.field static final TRANSACTION_getComposer:I = 0x46

.field static final TRANSACTION_getCurrentMode:I = 0x5e

.field static final TRANSACTION_getDmsServer:I = 0x5b

.field static final TRANSACTION_getExternalPluginCount:I = 0x38

.field static final TRANSACTION_getFileName:I = 0x44

.field static final TRANSACTION_getGenre:I = 0x45

.field static final TRANSACTION_getLocation:I = 0x47

.field static final TRANSACTION_getMediaMountedCount:I = 0x21

.field static final TRANSACTION_getNowplaying:I = 0x4e

.field static final TRANSACTION_getPath:I = 0x19

.field static final TRANSACTION_getPlayerName:I = 0x56

.field static final TRANSACTION_getPluginClass:I = 0x3c

.field static final TRANSACTION_getPluginCount:I = 0x37

.field static final TRANSACTION_getPluginDescription:I = 0x3b

.field static final TRANSACTION_getPluginIcon:I = 0x3a

.field static final TRANSACTION_getPluginName:I = 0x39

.field static final TRANSACTION_getPluginNotReadyMsg:I = 0x40

.field static final TRANSACTION_getPositionByShufflePosition:I = 0x49

.field static final TRANSACTION_getQueue:I = 0x16

.field static final TRANSACTION_getQueuePosition:I = 0x6

.field static final TRANSACTION_getQueuePositionImmediately:I = 0x65

.field static final TRANSACTION_getQueueSize:I = 0x2a

.field static final TRANSACTION_getRecentAlbumId:I = 0x41

.field static final TRANSACTION_getRecentAlbumartPath:I = 0x42

.field static final TRANSACTION_getRecentPlayedPlaylist:I = 0x50

.field static final TRANSACTION_getRepeatMode:I = 0x20

.field static final TRANSACTION_getShortcutInfoList:I = 0x43

.field static final TRANSACTION_getShuffleMode:I = 0x1c

.field static final TRANSACTION_getShufflePositionByPosition:I = 0x4a

.field static final TRANSACTION_getSongInfo:I = 0x1

.field static final TRANSACTION_getTrackName:I = 0x10

.field static final TRANSACTION_getVolume:I = 0x54

.field static final TRANSACTION_isDmcOrPushMode:I = 0x3e

.field static final TRANSACTION_isPlaying:I = 0x7

.field static final TRANSACTION_isPluginMode:I = 0x33

.field static final TRANSACTION_isPluginReady:I = 0x3f

.field static final TRANSACTION_isServiceConnected:I = 0x3d

.field static final TRANSACTION_isSystemReady:I = 0x2e

.field static final TRANSACTION_moveQueueItem:I = 0x17

.field static final TRANSACTION_next:I = 0xc

.field static final TRANSACTION_nextAlbum:I = 0x2d

.field static final TRANSACTION_nextAsync:I = 0x62

.field static final TRANSACTION_onPluginSelected:I = 0x35

.field static final TRANSACTION_open:I = 0x5

.field static final TRANSACTION_openAsync:I = 0x5f

.field static final TRANSACTION_openfile:I = 0x3

.field static final TRANSACTION_openfileAsync:I = 0x4

.field static final TRANSACTION_pause:I = 0x9

.field static final TRANSACTION_pauseAsync:I = 0x61

.field static final TRANSACTION_play:I = 0xa

.field static final TRANSACTION_playAlbum:I = 0x2

.field static final TRANSACTION_playAlbumAsync:I = 0x64

.field static final TRANSACTION_playAsync:I = 0x60

.field static final TRANSACTION_position:I = 0xe

.field static final TRANSACTION_prev:I = 0xb

.field static final TRANSACTION_prevAlbum:I = 0x2c

.field static final TRANSACTION_prevAsync:I = 0x63

.field static final TRANSACTION_refreshPlugin:I = 0x34

.field static final TRANSACTION_reloadQueue:I = 0x2f

.field static final TRANSACTION_removeQueueTracks:I = 0x51

.field static final TRANSACTION_removeTrack:I = 0x1e

.field static final TRANSACTION_removeTracks:I = 0x1d

.field static final TRANSACTION_removeTracksReduceBroadcast:I = 0x57

.field static final TRANSACTION_saveDmsInfo:I = 0x5a

.field static final TRANSACTION_seek:I = 0xf

.field static final TRANSACTION_setAlbumQueue:I = 0x25

.field static final TRANSACTION_setMediaMode:I = 0x30

.field static final TRANSACTION_setPlaylistInfo:I = 0x58

.field static final TRANSACTION_setQueuePosition:I = 0x18

.field static final TRANSACTION_setRepeatMode:I = 0x1f

.field static final TRANSACTION_setShuffleMode:I = 0x1b

.field static final TRANSACTION_setVolume:I = 0x55

.field static final TRANSACTION_startAnimation:I = 0x22

.field static final TRANSACTION_stop:I = 0x8

.field static final TRANSACTION_stopActivePlugin:I = 0x36

.field static final TRANSACTION_switchMode:I = 0x59

.field static final TRANSACTION_syncNowPlayingQueue:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.htc.music.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/music/IMediaPlaybackService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/music/IMediaPlaybackService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/music/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 946
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getSongInfo(I)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:I
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->playAlbum(I)I

    move-result v5

    .line 61
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_3
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->openfile(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->openfileAsync(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 89
    .local v0, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->open([II)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:[I
    .end local v2           #_arg1:I
    :sswitch_6
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v5

    .line 98
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 104
    .end local v5           #_result:I
    :sswitch_7
    const-string v9, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v5

    .line 106
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v5, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v5           #_result:Z
    :sswitch_8
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->stop()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    :sswitch_9
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->pause()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    :sswitch_a
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->play()V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 133
    :sswitch_b
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->prev()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    :sswitch_c
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->next()V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 147
    :sswitch_d
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v5

    .line 149
    .local v5, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 155
    .end local v5           #_result:J
    :sswitch_e
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->position()J

    move-result-wide v5

    .line 157
    .restart local v5       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 163
    .end local v5           #_result:J
    :sswitch_f
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 166
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/htc/music/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v5

    .line 167
    .restart local v5       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 173
    .end local v0           #_arg0:J
    .end local v5           #_result:J
    :sswitch_10
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    .line 183
    .restart local v5       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumId()I

    move-result v5

    .line 191
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    .end local v5           #_result:I
    :sswitch_13
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getArtistId()I

    move-result v5

    .line 207
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v5           #_result:I
    :sswitch_15
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 217
    .local v0, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->enqueue([II)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 224
    .end local v0           #_arg0:[I
    .end local v2           #_arg1:I
    :sswitch_16
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getQueue()[I

    move-result-object v5

    .line 226
    .local v5, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 232
    .end local v5           #_result:[I
    :sswitch_17
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 243
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_18
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 252
    .end local v0           #_arg0:I
    :sswitch_19
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_1a
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAudioId()I

    move-result v5

    .line 262
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 268
    .end local v5           #_result:I
    :sswitch_1b
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 277
    .end local v0           #_arg0:I
    :sswitch_1c
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v5

    .line 279
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 285
    .end local v5           #_result:I
    :sswitch_1d
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v5

    .line 291
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 297
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v5           #_result:I
    :sswitch_1e
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 300
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->removeTrack(I)I

    move-result v5

    .line 301
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 307
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_1f
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 316
    .end local v0           #_arg0:I
    :sswitch_20
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v5

    .line 318
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 324
    .end local v5           #_result:I
    :sswitch_21
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v5

    .line 326
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 332
    .end local v5           #_result:I
    :sswitch_22
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->startAnimation()V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 339
    :sswitch_23
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->endAnimation()V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 346
    :sswitch_24
    const-string v9, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAnimationStatus()Z

    move-result v5

    .line 348
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v5, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 354
    .end local v5           #_result:Z
    :sswitch_25
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 357
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setAlbumQueue([I)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 363
    .end local v0           #_arg0:[I
    :sswitch_26
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumQueue()[I

    move-result-object v5

    .line 365
    .local v5, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 371
    .end local v5           #_result:[I
    :sswitch_27
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumQueuePosition()I

    move-result v5

    .line 373
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 379
    .end local v5           #_result:I
    :sswitch_28
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->activityGoSleep()V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 386
    :sswitch_29
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->activityWakeup()V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 393
    :sswitch_2a
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getQueueSize()I

    move-result v5

    .line 395
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 401
    .end local v5           #_result:I
    :sswitch_2b
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumQueueSize()I

    move-result v5

    .line 403
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 409
    .end local v5           #_result:I
    :sswitch_2c
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->prevAlbum()V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 416
    :sswitch_2d
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->nextAlbum()V

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 423
    :sswitch_2e
    const-string v9, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->isSystemReady()Z

    move-result v5

    .line 425
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v5, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 431
    .end local v5           #_result:Z
    :sswitch_2f
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->reloadQueue()V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 438
    :sswitch_30
    const-string v9, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    move v0, v8

    .line 441
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setMediaMode(Z)V

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_3
    move v0, v7

    .line 440
    goto :goto_1

    .line 447
    :sswitch_31
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 450
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->syncNowPlayingQueue([I)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 456
    .end local v0           #_arg0:[I
    :sswitch_32
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_33
    const-string v9, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->isPluginMode()Z

    move-result v5

    .line 466
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v5, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 472
    .end local v5           #_result:Z
    :sswitch_34
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->refreshPlugin()V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 479
    :sswitch_35
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 482
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->onPluginSelected(I)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 488
    .end local v0           #_arg0:I
    :sswitch_36
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->stopActivePlugin()V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 495
    :sswitch_37
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getPluginCount()I

    move-result v5

    .line 497
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 503
    .end local v5           #_result:I
    :sswitch_38
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getExternalPluginCount()I

    move-result v5

    .line 505
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 511
    .end local v5           #_result:I
    :sswitch_39
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 514
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getPluginName(I)Ljava/lang/String;

    move-result-object v5

    .line 515
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    .end local v0           #_arg0:I
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_3a
    const-string v9, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 523
    .local v5, _result:Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    if-eqz v5, :cond_5

    .line 525
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    invoke-virtual {v5, p3, v8}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 529
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 535
    .end local v5           #_result:Landroid/graphics/Bitmap;
    :sswitch_3b
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 538
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 545
    .end local v0           #_arg0:I
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_3c
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 548
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getPluginClass(I)Ljava/lang/String;

    move-result-object v5

    .line 549
    .restart local v5       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    .end local v0           #_arg0:I
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_3d
    const-string v9, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->isServiceConnected()Z

    move-result v5

    .line 557
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    if-eqz v5, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 563
    .end local v5           #_result:Z
    :sswitch_3e
    const-string v9, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->isDmcOrPushMode()Z

    move-result v5

    .line 565
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    if-eqz v5, :cond_7

    move v7, v8

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 571
    .end local v5           #_result:Z
    :sswitch_3f
    const-string v9, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->isPluginReady()Z

    move-result v5

    .line 573
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    if-eqz v5, :cond_8

    move v7, v8

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 579
    .end local v5           #_result:Z
    :sswitch_40
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 587
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_41
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getRecentAlbumId()[I

    move-result-object v5

    .line 589
    .local v5, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 595
    .end local v5           #_result:[I
    :sswitch_42
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 598
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getRecentAlbumartPath([I)[Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 605
    .end local v0           #_arg0:[I
    .end local v5           #_result:[Ljava/lang/String;
    :sswitch_43
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getShortcutInfoList()[Landroid/content/ContentValues;

    move-result-object v5

    .line 607
    .local v5, _result:[Landroid/content/ContentValues;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, v5, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 613
    .end local v5           #_result:[Landroid/content/ContentValues;
    :sswitch_44
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 621
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_45
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getGenre()Ljava/lang/String;

    move-result-object v5

    .line 623
    .restart local v5       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_46
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getComposer()Ljava/lang/String;

    move-result-object v5

    .line 631
    .restart local v5       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 637
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_47
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 639
    .restart local v5       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 645
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_48
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getBufferingPercent()I

    move-result v5

    .line 647
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 653
    .end local v5           #_result:I
    :sswitch_49
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 656
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getPositionByShufflePosition(I)I

    move-result v5

    .line 657
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 663
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_4a
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 666
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getShufflePositionByPosition(I)I

    move-result v5

    .line 667
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 673
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_4b
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 676
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v5

    .line 677
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 683
    .end local v0           #_arg0:I
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_4c
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 686
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v5

    .line 687
    .restart local v5       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 693
    .end local v0           #_arg0:I
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_4d
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->clearAlbumArtRequests()V

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 700
    :sswitch_4e
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getNowplaying()[I

    move-result-object v5

    .line 702
    .local v5, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 708
    .end local v5           #_result:[I
    :sswitch_4f
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAudioSessionId()I

    move-result v5

    .line 710
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 716
    .end local v5           #_result:I
    :sswitch_50
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getRecentPlayedPlaylist()[I

    move-result-object v5

    .line 718
    .local v5, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 724
    .end local v5           #_result:[I
    :sswitch_51
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 727
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->removeQueueTracks([I)I

    move-result v5

    .line 728
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 734
    .end local v0           #_arg0:[I
    .end local v5           #_result:I
    :sswitch_52
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 738
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->addToQueue(II)V

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 745
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_53
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 749
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 751
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 752
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/music/IMediaPlaybackService$Stub;->addToQueueForMultiConditions(III)V

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 758
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_54
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getVolume()I

    move-result v5

    .line 760
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 766
    .end local v5           #_result:I
    :sswitch_55
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 769
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setVolume(I)V

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 775
    .end local v0           #_arg0:I
    :sswitch_56
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getPlayerName()Ljava/lang/String;

    move-result-object v5

    .line 777
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 783
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_57
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 786
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->removeTracksReduceBroadcast([I)I

    move-result v5

    .line 787
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 793
    .end local v0           #_arg0:[I
    .end local v5           #_result:I
    :sswitch_58
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    .line 796
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 801
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setPlaylistInfo(Landroid/os/Bundle;)V

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 799
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_2

    .line 807
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_59
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 810
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->switchMode(I)V

    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 816
    .end local v0           #_arg0:I
    :sswitch_5a
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    .line 819
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 824
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->saveDmsInfo(Landroid/os/Bundle;)V

    .line 825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 822
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_3

    .line 830
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_5b
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getDmsServer()Ljava/lang/String;

    move-result-object v5

    .line 832
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 838
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_5c
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 842
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 844
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 845
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/music/IMediaPlaybackService$Stub;->addToQueueByDbTable(III)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 851
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_5d
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 855
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 857
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 859
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 860
    .local v4, _arg3:I
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService$Stub;->addToQueueForMultiConditionsByDbTable(IIII)V

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 866
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_5e
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getCurrentMode()I

    move-result v5

    .line 868
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 874
    .end local v5           #_result:I
    :sswitch_5f
    const-string v9, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 878
    .local v0, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 880
    .local v2, _arg1:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 882
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    move v4, v8

    .line 883
    .local v4, _arg3:Z
    :goto_4
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService$Stub;->openAsync([I[IIZ)V

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v4           #_arg3:Z
    :cond_b
    move v4, v7

    .line 882
    goto :goto_4

    .line 889
    .end local v0           #_arg0:[I
    .end local v2           #_arg1:[I
    .end local v3           #_arg2:I
    :sswitch_60
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->playAsync()V

    .line 891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 896
    :sswitch_61
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->pauseAsync()V

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 903
    :sswitch_62
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->nextAsync()V

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 910
    :sswitch_63
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->prevAsync()V

    .line 912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 917
    :sswitch_64
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 921
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 922
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->playAlbumAsync(II)V

    .line 923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 928
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_65
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getQueuePositionImmediately()I

    move-result v5

    .line 930
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 936
    .end local v5           #_result:I
    :sswitch_66
    const-string v7, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 940
    .local v0, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 941
    .local v2, _arg1:[I
    invoke-virtual {p0, v0, v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->addToQueueForTrackAlbumList([I[I)V

    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
