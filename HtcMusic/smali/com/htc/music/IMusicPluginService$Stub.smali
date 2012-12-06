.class public abstract Lcom/htc/music/IMusicPluginService$Stub;
.super Landroid/os/Binder;
.source "IMusicPluginService.java"

# interfaces
.implements Lcom/htc/music/IMusicPluginService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/IMusicPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/IMusicPluginService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.music.IMusicPluginService"

.field static final TRANSACTION_clearAlbumArtRequests:I = 0x21

.field static final TRANSACTION_clearNowplayingQueueRequests:I = 0x23

.field static final TRANSACTION_close:I = 0x2d

.field static final TRANSACTION_duration:I = 0x8

.field static final TRANSACTION_getAlbumArtPathByPosition:I = 0x1f

.field static final TRANSACTION_getAlbumArtPathByShufflePosition:I = 0x20

.field static final TRANSACTION_getAlbumId:I = 0x2b

.field static final TRANSACTION_getAlbumName:I = 0xc

.field static final TRANSACTION_getArtistName:I = 0xd

.field static final TRANSACTION_getAudioSessionId:I = 0x27

.field static final TRANSACTION_getBufferingPercent:I = 0x1c

.field static final TRANSACTION_getComposer:I = 0x1a

.field static final TRANSACTION_getFileName:I = 0x18

.field static final TRANSACTION_getGenre:I = 0x19

.field static final TRANSACTION_getLocation:I = 0x1b

.field static final TRANSACTION_getNowplayingQueue:I = 0x22

.field static final TRANSACTION_getPlayerName:I = 0x2a

.field static final TRANSACTION_getPluginIcon:I = 0x14

.field static final TRANSACTION_getPluginNotReadyMsg:I = 0x26

.field static final TRANSACTION_getPositionByShufflePosition:I = 0x1d

.field static final TRANSACTION_getQueuePosition:I = 0x1

.field static final TRANSACTION_getQueueSize:I = 0x13

.field static final TRANSACTION_getRepeatMode:I = 0x12

.field static final TRANSACTION_getShuffleMode:I = 0x10

.field static final TRANSACTION_getShufflePositionByPosition:I = 0x1e

.field static final TRANSACTION_getTrackDetails:I = 0x24

.field static final TRANSACTION_getTrackName:I = 0xb

.field static final TRANSACTION_getVolume:I = 0x28

.field static final TRANSACTION_isDmcOrPushMode:I = 0x2c

.field static final TRANSACTION_isPlaying:I = 0x2

.field static final TRANSACTION_isPluginReady:I = 0x25

.field static final TRANSACTION_next:I = 0x7

.field static final TRANSACTION_pause:I = 0x4

.field static final TRANSACTION_play:I = 0x5

.field static final TRANSACTION_position:I = 0x9

.field static final TRANSACTION_prev:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x15

.field static final TRANSACTION_seek:I = 0xa

.field static final TRANSACTION_setQueuePosition:I = 0xe

.field static final TRANSACTION_setRepeatMode:I = 0x11

.field static final TRANSACTION_setShuffleMode:I = 0xf

.field static final TRANSACTION_setVolume:I = 0x29

.field static final TRANSACTION_startPluginActivity:I = 0x17

.field static final TRANSACTION_stop:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.music.IMusicPluginService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMusicPluginService;
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
    const-string v1, "com.htc.music.IMusicPluginService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/music/IMusicPluginService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/music/IMusicPluginService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/music/IMusicPluginService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/music/IMusicPluginService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 425
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getQueuePosition()I

    move-result v2

    .line 49
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v2           #_result:I
    :sswitch_2
    const-string v6, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->isPlaying()Z

    move-result v2

    .line 57
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v2           #_result:Z
    :sswitch_3
    const-string v6, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 66
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->stop(Z)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v4

    .line 65
    goto :goto_1

    .line 72
    :sswitch_4
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->pause()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->play()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    :sswitch_6
    const-string v6, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v0, v5

    .line 89
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->prev(Z)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_2
    move v0, v4

    .line 88
    goto :goto_2

    .line 95
    :sswitch_7
    const-string v6, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v5

    .line 98
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->next(Z)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_3
    move v0, v4

    .line 97
    goto :goto_3

    .line 104
    :sswitch_8
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->duration()J

    move-result-wide v2

    .line 106
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 112
    .end local v2           #_result:J
    :sswitch_9
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->position()J

    move-result-wide v2

    .line 114
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 120
    .end local v2           #_result:J
    :sswitch_a
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 123
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/htc/music/IMusicPluginService$Stub;->seek(J)J

    move-result-wide v2

    .line 124
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 130
    .end local v0           #_arg0:J
    .end local v2           #_result:J
    :sswitch_b
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    .line 140
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 148
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->setQueuePosition(I)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 163
    .end local v0           #_arg0:I
    :sswitch_f
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->setShuffleMode(I)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 172
    .end local v0           #_arg0:I
    :sswitch_10
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getShuffleMode()I

    move-result v2

    .line 174
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 180
    .end local v2           #_result:I
    :sswitch_11
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->setRepeatMode(I)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 189
    .end local v0           #_arg0:I
    :sswitch_12
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getRepeatMode()I

    move-result v2

    .line 191
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    .end local v2           #_result:I
    :sswitch_13
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getQueueSize()I

    move-result v2

    .line 199
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 205
    .end local v2           #_result:I
    :sswitch_14
    const-string v6, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 207
    .local v2, _result:Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v2, :cond_4

    .line 209
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {v2, p3, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 213
    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    .end local v2           #_result:Landroid/graphics/Bitmap;
    :sswitch_15
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/IPluginIPCNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v0

    .line 222
    .local v0, _arg0:Lcom/htc/music/IPluginIPCNotify;
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->registerCallback(Lcom/htc/music/IPluginIPCNotify;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 228
    .end local v0           #_arg0:Lcom/htc/music/IPluginIPCNotify;
    :sswitch_16
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->unregisterCallback()V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 235
    :sswitch_17
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->startPluginActivity()V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 242
    :sswitch_18
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_19
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getGenre()Ljava/lang/String;

    move-result-object v2

    .line 252
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1a
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getComposer()Ljava/lang/String;

    move-result-object v2

    .line 260
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1b
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1c
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getBufferingPercent()I

    move-result v2

    .line 276
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    .end local v2           #_result:I
    :sswitch_1d
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 285
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->getPositionByShufflePosition(I)I

    move-result v2

    .line 286
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 292
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_1e
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->getShufflePositionByPosition(I)I

    move-result v2

    .line 296
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 302
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_1f
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    .end local v0           #_arg0:I
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_20
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 315
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v2

    .line 316
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    .end local v0           #_arg0:I
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_21
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->clearAlbumArtRequests()V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 329
    :sswitch_22
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 332
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->getNowplayingQueue(I)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 338
    .end local v0           #_arg0:I
    :sswitch_23
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->clearNowplayingQueueRequests()V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 345
    :sswitch_24
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->getTrackDetails(I)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 354
    .end local v0           #_arg0:I
    :sswitch_25
    const-string v6, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->isPluginReady()Z

    move-result v2

    .line 356
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v2, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 362
    .end local v2           #_result:Z
    :sswitch_26
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_27
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getAudioSessionId()I

    move-result v2

    .line 372
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 378
    .end local v2           #_result:I
    :sswitch_28
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getVolume()I

    move-result v2

    .line 380
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 386
    .end local v2           #_result:I
    :sswitch_29
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 389
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMusicPluginService$Stub;->setVolume(I)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 395
    .end local v0           #_arg0:I
    :sswitch_2a
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getPlayerName()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2b
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->getAlbumId()I

    move-result v2

    .line 405
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 411
    .end local v2           #_result:I
    :sswitch_2c
    const-string v6, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->isDmcOrPushMode()Z

    move-result v2

    .line 413
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 419
    .end local v2           #_result:Z
    :sswitch_2d
    const-string v4, "com.htc.music.IMusicPluginService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/htc/music/IMusicPluginService$Stub;->close()V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
