.class public Lcom/htc/music/util/LandingUtils;
.super Ljava/lang/Object;
.source "LandingUtils.java"


# static fields
.field public static final DEFINED_MUSIC_ARRAY:[Ljava/lang/String; = null

.field public static final PACKAGE_NAME_AMAZON:Ljava/lang/String; = "com.amazon.mp3"

.field public static final PACKAGE_NAME_BPM:Ljava/lang/String; = "com.htc.bpmrss"

.field public static final PACKAGE_NAME_DEEZER:Ljava/lang/String; = "deezer.android.app"

.field public static final PACKAGE_NAME_DOUBAN_FM:Ljava/lang/String; = "com.douban.radio"

.field public static final PACKAGE_NAME_FM_RADIO:Ljava/lang/String; = "com.htc.fm"

.field public static final PACKAGE_NAME_GOOGLE_MUSIC:Ljava/lang/String; = "com.google.android.music"

.field public static final PACKAGE_NAME_IHEARTRADIO:Ljava/lang/String; = "com.clearchannel.iheartradio.controller"

.field public static final PACKAGE_NAME_KKBOX:Ljava/lang/String; = "com.skysoft.kkbox.android"

.field public static final PACKAGE_NAME_KUWO:Ljava/lang/String; = "cn.kuwo.player"

.field public static final PACKAGE_NAME_LASTFM:Ljava/lang/String; = "fm.last.android"

.field public static final PACKAGE_NAME_LISMO_PLAYER:Ljava/lang/String; = "com.kddi.android.imp"

.field public static final PACKAGE_NAME_LISMO_UNLIMITED:Ljava/lang/String; = "com.kddi.android.rcss"

.field public static final PACKAGE_NAME_LISMO_WAVE:Ljava/lang/String; = "com.kddi.android.lismowave"

.field public static final PACKAGE_NAME_MOG:Ljava/lang/String; = "com.mog.android"

.field public static final PACKAGE_NAME_MUSIC_PLAYER:Ljava/lang/String; = "com.rba.mplayer"

.field public static final PACKAGE_NAME_MUSIC_WALL:Ljava/lang/String; = "com.htc.musicwall"

.field public static final PACKAGE_NAME_MUSIXMATCH:Ljava/lang/String; = "com.musixmatch.android.lyrify"

.field public static final PACKAGE_NAME_MUVE:Ljava/lang/String; = "com.cricket.shima.handset.android.v1.muvemusic"

.field public static final PACKAGE_NAME_N7PLAYER:Ljava/lang/String; = "com.n7mobile.nplayer"

.field public static final PACKAGE_NAME_PANDORA:Ljava/lang/String; = "com.pandora.android"

.field public static final PACKAGE_NAME_POWERAMP:Ljava/lang/String; = "com.maxmpz.audioplayer"

.field public static final PACKAGE_NAME_QQ:Ljava/lang/String; = "com.tencent.qqmusic"

.field public static final PACKAGE_NAME_RDIO:Ljava/lang/String; = "com.rdio.android.ui"

.field public static final PACKAGE_NAME_RHAPSODY:Ljava/lang/String; = "com.rhapsody"

.field public static final PACKAGE_NAME_SEVENDIGITAL:Ljava/lang/String; = "uk.co.sevendigital.android"

.field public static final PACKAGE_NAME_SHAZAM:Ljava/lang/String; = "com.shazam.android"

.field public static final PACKAGE_NAME_SIMFY:Ljava/lang/String; = "de.simfy.androidapp"

.field public static final PACKAGE_NAME_SINA:Ljava/lang/String; = "cn.sina.music"

.field public static final PACKAGE_NAME_SLACKER:Ljava/lang/String; = "com.slacker.radio"

.field public static final PACKAGE_NAME_SONOS:Ljava/lang/String; = "com.sonos.acr"

.field public static final PACKAGE_NAME_SOUNDHOUND:Ljava/lang/String; = "com.melodis.midomiMusicIdentifier"

.field public static final PACKAGE_NAME_SOUNDHOUND_FREEMIUM:Ljava/lang/String; = "com.melodis.midomiMusicIdentifier.freemium"

.field public static final PACKAGE_NAME_SPOTIFY:Ljava/lang/String; = "com.spotify.mobile.android.ui"

.field public static final PACKAGE_NAME_SPRINT:Ljava/lang/String; = "com.sprint.android.musicplus2033"

.field public static final PACKAGE_NAME_TUNEIN:Ljava/lang/String; = "tunein.player"

.field public static final PACKAGE_NAME_TUNEIN_PRO:Ljava/lang/String; = "radiotime.player"

.field public static final PACKAGE_NAME_UTA_PASS:Ljava/lang/String; = "com.kddi.android.UtaPass"

.field public static final PACKAGE_NAME_VERIZON:Ljava/lang/String; = "com.htc.vmm"

.field public static final PACKAGE_NAME_VODAFONE:Ljava/lang/String; = "com.vodafone.android.app.music"

.field public static final PACKAGE_NAME_WINAMP:Ljava/lang/String; = "com.nullsoft.winamp"

.field public static final PACKAGE_NAME_ZDIGITAL:Ljava/lang/String; = "au.com.zdigital.android"

.field private static final TAG:Ljava/lang/String; = "[LandingUtils]"

.field public static final TYPE_AUTO_DETECT:I = 0x2

.field public static final TYPE_LIBRARY:I = 0x0

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_PRELOAD:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.htc.vmm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.vodafone.android.app.music"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.htc.bpmrss"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sprint.android.musicplus2033"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.cricket.shima.handset.android.v1.muvemusic"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.kddi.android.imp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.kddi.android.UtaPass"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.melodis.midomiMusicIdentifier"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "radiotime.player"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tunein.player"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "au.com.zdigital.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.douban.radio"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "cn.kuwo.player"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.tencent.qqmusic"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "cn.sina.music"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.htc.musicwall"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.kddi.android.lismowave"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.kddi.android.rcss"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.htc.fm"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.rhapsody"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.maxmpz.audioplayer"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.nullsoft.winamp"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.musixmatch.android.lyrify"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.n7mobile.nplayer"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.rba.mplayer"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.sonos.acr"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.clearchannel.iheartradio.controller"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.shazam.android"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/util/LandingUtils;->DEFINED_MUSIC_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoAddList()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, autoAddList:[Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 242
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isChinaSku()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_2

    .line 244
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.htc.musicwall"

    aput-object v1, v0, v3

    const-string v1, "tunein.player"

    aput-object v1, v0, v4

    const-string v1, "com.douban.radio"

    aput-object v1, v0, v5

    const-string v1, "cn.kuwo.player"

    aput-object v1, v0, v6

    const-string v1, "com.tencent.qqmusic"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cn.sina.music"

    aput-object v2, v0, v1

    .line 287
    .restart local v0       #autoAddList:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 288
    const-string v1, "[LandingUtils]"

    const-string v2, "getAutoAddList, autoAddList = null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_1
    return-object v0

    .line 117
    :sswitch_0
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.htc.vmm"

    aput-object v1, v0, v3

    const-string v1, "tunein.player"

    aput-object v1, v0, v4

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v5

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v6

    const-string v1, "com.spotify.mobile.android.ui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 126
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto :goto_0

    .line 129
    :sswitch_1
    const/16 v1, 0x8

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.vodafone.android.app.music"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "tunein.player"

    aput-object v1, v0, v5

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v6

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    .line 139
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto :goto_0

    .line 142
    :sswitch_2
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.htc.bpmrss"

    aput-object v1, v0, v3

    const-string v1, "tunein.player"

    aput-object v1, v0, v4

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v5

    const-string v1, "com.spotify.mobile.android.ui"

    aput-object v1, v0, v6

    const-string v1, "de.simfy.androidapp"

    aput-object v1, v0, v7

    .line 149
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto :goto_0

    .line 152
    :sswitch_3
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.sprint.android.musicplus2033"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "tunein.player"

    aput-object v1, v0, v5

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v6

    const-string v1, "com.spotify.mobile.android.ui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    .line 161
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 164
    :sswitch_4
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v3

    const-string v1, "tunein.player"

    aput-object v1, v0, v4

    const-string v1, "au.com.zdigital.android"

    aput-object v1, v0, v5

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v6

    const-string v1, "com.spotify.mobile.android.ui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    .line 172
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 175
    :sswitch_5
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 176
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v3

    const-string v1, "tunein.player"

    aput-object v1, v0, v4

    const-string v1, "au.com.zdigital.android"

    aput-object v1, v0, v5

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v6

    const-string v1, "com.spotify.mobile.android.ui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 188
    :sswitch_6
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v3

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.music"

    aput-object v1, v0, v5

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v6

    const-string v1, "com.spotify.mobile.android.ui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    .line 197
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 200
    :sswitch_7
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v3

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v4

    const-string v1, "com.spotify.mobile.android.ui"

    aput-object v1, v0, v5

    const-string v1, "com.mog.android"

    aput-object v1, v0, v6

    const-string v1, "com.pandora.android"

    aput-object v1, v0, v7

    .line 207
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 210
    :sswitch_8
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.cricket.shima.handset.android.v1.muvemusic"

    aput-object v1, v0, v3

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v4

    const-string v1, "com.spotify.mobile.android.ui"

    aput-object v1, v0, v5

    const-string v1, "com.mog.android"

    aput-object v1, v0, v6

    const-string v1, "com.pandora.android"

    aput-object v1, v0, v7

    .line 217
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 220
    :sswitch_9
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v3

    const-string v1, "tunein.player"

    aput-object v1, v0, v4

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v5

    const-string v1, "com.spotify.mobile.android.ui"

    aput-object v1, v0, v6

    const-string v1, "com.mog.android"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    .line 228
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 231
    :sswitch_a
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.kddi.android.imp"

    aput-object v1, v0, v3

    const-string v1, "com.kddi.android.UtaPass"

    aput-object v1, v0, v4

    const-string v1, "com.kddi.android.lismowave"

    aput-object v1, v0, v5

    const-string v1, "com.kddi.android.rcss"

    aput-object v1, v0, v6

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "tunein.player"

    aput-object v2, v0, v1

    .line 239
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 253
    :cond_2
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "tunein.player"

    aput-object v1, v0, v3

    const-string v1, "com.douban.radio"

    aput-object v1, v0, v4

    const-string v1, "cn.kuwo.player"

    aput-object v1, v0, v5

    const-string v1, "com.tencent.qqmusic"

    aput-object v1, v0, v6

    const-string v1, "cn.sina.music"

    aput-object v1, v0, v7

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 261
    :cond_3
    const-string v1, "ro.cid"

    invoke-static {v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/LandingUtils;->isOrangeFRSku(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 262
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v3

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v4

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v5

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v6

    const-string v1, "com.spotify.mobile.android.ui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 272
    :cond_4
    const/16 v1, 0x9

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v3

    const-string v1, "tunein.player"

    aput-object v1, v0, v4

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v5

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v6

    const-string v1, "com.skysoft.kkbox.android"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_9
        0x38 -> :sswitch_5
        0x51 -> :sswitch_a
        0x66 -> :sswitch_7
        0x73 -> :sswitch_4
        0x94 -> :sswitch_3
        0x9b -> :sswitch_6
        0x9f -> :sswitch_2
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_1
        0x10e -> :sswitch_8
    .end sparse-switch
.end method

.method public static getShortcutInfoList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "context"
    .parameter "autoAddList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    const-string v19, "LandingPage"

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 342
    .local v13, preferences:Landroid/content/SharedPreferences;
    const-string v19, "launchitemlist"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v13, v0, v1}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 343
    .local v10, launchItemListStr:Ljava/lang/String;
    const-string v19, "launchtypelist"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v13, v0, v1}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 344
    .local v11, launchTypeListStr:Ljava/lang/String;
    const-string v19, "launchclassnamelist"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v13, v0, v1}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, launchClassNameListStr:Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v15, shortcutInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/ShortcutInfo;>;"
    invoke-static {v10}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 348
    .local v12, pkgNameArray:[Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, clsNameArray:[Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 351
    .local v18, typeArray:[Ljava/lang/String;
    new-instance v16, Lcom/htc/music/ShortcutPageInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/ShortcutPageInfo;-><init>(Landroid/content/Context;)V

    .line 353
    .local v16, shortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;
    if-eqz v12, :cond_2

    if-eqz v4, :cond_2

    if-eqz v18, :cond_2

    .line 354
    const/16 v17, 0x0

    .line 355
    .local v17, type:Ljava/lang/Integer;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_2

    .line 356
    new-instance v14, Lcom/htc/music/ShortcutInfo;

    invoke-direct {v14}, Lcom/htc/music/ShortcutInfo;-><init>()V

    .line 357
    .local v14, shortcutInfo:Lcom/htc/music/ShortcutInfo;
    aget-object v19, v12, v6

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 358
    aget-object v19, v4, v6

    if-eqz v19, :cond_1

    aget-object v19, v4, v6

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 359
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setClassName(Ljava/lang/String;)V

    .line 364
    :goto_1
    aget-object v19, v18, v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 365
    if-eqz v17, :cond_0

    .line 366
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setType(I)V

    .line 368
    :cond_0
    aget-object v19, v12, v6

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setIntent(Landroid/content/Intent;)V

    .line 369
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 361
    :cond_1
    aget-object v19, v4, v6

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setClassName(Ljava/lang/String;)V

    goto :goto_1

    .line 374
    .end local v6           #i:I
    .end local v14           #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    .end local v17           #type:Ljava/lang/Integer;
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/htc/music/util/LandingUtils;->getUpdatedAddList(Landroid/content/SharedPreferences;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, addList:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 377
    .restart local v17       #type:Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 378
    .local v5, count:I
    if-eqz v3, :cond_3

    .line 379
    array-length v5, v3

    .line 381
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    if-ge v6, v5, :cond_8

    .line 382
    const/4 v7, 0x0

    .line 383
    .local v7, isExist:Z
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 384
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/music/ShortcutInfo;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v19

    aget-object v20, v3, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 385
    const/4 v7, 0x1

    .line 389
    :cond_4
    if-nez v7, :cond_5

    .line 390
    new-instance v14, Lcom/htc/music/ShortcutInfo;

    invoke-direct {v14}, Lcom/htc/music/ShortcutInfo;-><init>()V

    .line 391
    .restart local v14       #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    aget-object v19, v3, v6

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 392
    aget-object v19, v3, v6

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutPageInfo;->getPreloadAutoDetectType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 393
    if-eqz v17, :cond_7

    .line 394
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setType(I)V

    .line 398
    :goto_4
    aget-object v19, v3, v6

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setIntent(Landroid/content/Intent;)V

    .line 399
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v14           #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 383
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 396
    .restart local v14       #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    :cond_7
    const-string v19, "[LandingUtils]"

    const-string v20, "type is null"

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 403
    .end local v7           #isExist:Z
    .end local v8           #j:I
    .end local v14           #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/htc/music/ShortcutPageInfo;->clear()V

    .line 405
    return-object v15
.end method

.method public static getShortcutInfoListByContentValues(Landroid/content/Context;)[Landroid/content/ContentValues;
    .locals 7
    .parameter "context"

    .prologue
    .line 409
    const-string v3, "[LandingUtils]"

    const-string v4, "getShortcutInfoListByContentValues start"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->getAutoAddList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/music/util/LandingUtils;->getShortcutInfoList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 411
    .local v2, shortcutInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/ShortcutInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/content/ContentValues;

    .line 413
    .local v0, contentValuesList:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 414
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v0, v1

    .line 415
    aget-object v4, v0, v1

    const-string v5, "pkgName"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    aget-object v4, v0, v1

    const-string v5, "clsName"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    aget-object v4, v0, v1

    const-string v5, "type"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 420
    aget-object v4, v0, v1

    const-string v5, "customizedIntentUri"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_0
    const-string v4, "com.htc.vmm"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 424
    aget-object v3, v0, v1

    const-string v4, "customizedAppName"

    const v5, 0x7f060002

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 428
    :cond_2
    const-string v3, "[LandingUtils]"

    const-string v4, "getShortcutInfoListByContentValues end"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-object v0
.end method

.method private static getUpdatedAddList(Landroid/content/SharedPreferences;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "preferences"
    .parameter "autoAddList"

    .prologue
    .line 457
    const-string v5, "removelist"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, removeListStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, removeList:[Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/LandingUtils;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, autoAddStr:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 463
    array-length v1, v3

    .line 464
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 465
    if-eqz v0, :cond_0

    aget-object v5, v3, v2

    if-eqz v5, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 466
    aget-object v5, v3, v2

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 464
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    invoke-static {v0}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static isChinaSku()Z
    .locals 2

    .prologue
    .line 311
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMetroPCSSku()Z
    .locals 2

    .prologue
    .line 336
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOrangeFRSku(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneCID"

    .prologue
    .line 326
    if-eqz p0, :cond_0

    .line 327
    const-string v0, "ORANG202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x1

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSprintSku()Z
    .locals 2

    .prologue
    .line 307
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTMOUSSku()Z
    .locals 2

    .prologue
    .line 322
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTelstraSku()Z
    .locals 2

    .prologue
    .line 303
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVerizonSku()Z
    .locals 2

    .prologue
    .line 295
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVodaFoneSku()Z
    .locals 2

    .prologue
    .line 299
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZdigital()Z
    .locals 2

    .prologue
    .line 315
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x38

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static strArrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strArray"

    .prologue
    .line 434
    if-nez p0, :cond_0

    .line 435
    const-string v3, "[LandingUtils]"

    const-string v4, "strArrayToStr, strArray is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v3, 0x0

    .line 444
    :goto_0
    return-object v3

    .line 438
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 439
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 440
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 441
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static strToStrArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 448
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    :cond_0
    const-string v1, "[LandingUtils]"

    const-string v2, "strToStrArray, str is null or empty"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x0

    .line 453
    :goto_0
    return-object v0

    .line 452
    :cond_1
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, strArray:[Ljava/lang/String;
    goto :goto_0
.end method
