.class public Lcom/htc/music/dlna/DmcMusicPlayer;
.super Ljava/lang/Object;
.source "DmcMusicPlayer.java"

# interfaces
.implements Lcom/htc/music/MusicPluginPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/dlna/DmcMusicPlayer$1;,
        Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;,
        Lcom/htc/music/dlna/DmcMusicPlayer$RendererStatusListener;,
        Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;,
        Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;,
        Lcom/htc/music/dlna/DmcMusicPlayer$MediaPlayerHandler;,
        Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.htc.music.dlna.DmcMusicPlayer"

.field public static final CMDDMC_ALBUMLIST:Ljava/lang/String; = "com.htc.music.dmc_albumlist"

.field public static final CMDDMC_CURRENTINDEX:Ljava/lang/String; = "com.htc.music.dmc_currentindex"

.field public static final CMDDMC_DMR:Ljava/lang/String; = "com.htc.music.dmc_dmr"

.field public static final CMDDMC_PLAYLIST:Ljava/lang/String; = "com.htc.music.dmc_playlist"

.field public static final CMDDMC_SETDMR:Ljava/lang/String; = "com.htc.music.dmc_setdmr"

.field public static final CMDDMC_SETSRC:Ljava/lang/String; = "com.htc.music.dmc_setsrc"

.field public static final CMDFORCEPLAY:Ljava/lang/String; = "forcePlay"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDREFRESH_PLAYLIST:Ljava/lang/String; = "com.htc.music.refreshplaylist"

.field public static final DLNA_COOKIE_MUSIC:I = 0x1

.field private static final DLNA_ERROR_HANDLE:I = 0x4

.field public static final DLNA_SOURCE_LOCAL:I = 0x0

.field public static final DLNA_SOURCE_REMOTE:I = 0x1

.field public static final DMCSERVICE_DLNA_CONNECTED:Ljava/lang/String; = "com.htc.music.dmcservice.dlna_connected"

.field public static final DMCSERVICE_RELEASED:Ljava/lang/String; = "com.htc.music.dmcservice.released"

.field public static final DMCSERVICE_REPEAT_CHANGED:Ljava/lang/String; = "com.htc.music.dmcservice.repeat_changed"

.field public static final DMCSERVICE_SET_PLAYBACK_COTNROL_ENABLED:Ljava/lang/String; = "com.htc.music.dmcservice.set_playback_control_enabled"

.field public static final DMCSERVICE_SHUFFLE_CHANGED:Ljava/lang/String; = "com.htc.music.dmcservice.shuffle_changed"

.field private static final DMS_PLAYLIST_READY:I = -0x135

.field public static final ERROR_CANNOT_PAUSE:I = -0x2712

.field public static final ERROR_CANNOT_SEEK:I = -0x2713

.field public static final ERROR_DEFAULT:I = -0x2710

.field public static final ERROR_DMR_DISCONNECT:I = -0x2715

.field public static final ERROR_DMR_RESPONSE_TIMEOUT:I = -0x2717

.field public static final ERROR_DMS_DISCONNECT:I = -0x2716

.field public static final ERROR_NOT_SURRPOT_FORMAT:I = -0x2714

.field public static final ERROR_UNABLE_TO_PALY:I = -0x2711

.field public static final ERROR_UNKNOWN_ERROR:I = -0x2718

.field public static final EXTRA_IS_ENABLED:Ljava/lang/String; = "is_enabled"

.field private static final MEDIA_ERROR_BASE:I = -0x2710

.field private static final NOTIFY_UPPER:I = 0x5

.field public static final PLAYBACKSERVICE_STATUS:I = 0x2

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[DmcMusicPlayer]"

.field private static final TRACK_ENDED:I = 0x1


# instance fields
.field private final CV_CONTENT:Ljava/lang/String;

.field private final CV_POSITION:Ljava/lang/String;

.field private final CV_SERVER:Ljava/lang/String;

.field private final CV_SHUFFLE_MODE:Ljava/lang/String;

.field private final DLNA_CALLER_MUSIC:I

.field private final DMC_PUSH_ALBUMLIST:Ljava/lang/String;

.field private final DMC_PUSH_PLAYLIST:Ljava/lang/String;

.field private final DMC_SERVICE_PREFERENCES:Ljava/lang/String;

.field private final DMC_SOURCE:Ljava/lang/String;

.field private final MAX_PLAYABCK_CONTROL_TIMEOUT:I

.field private final MAX_TRANSITIONING_COUNT:I

.field private final MSG_CLEAR_ALBUMART_REQ_QUEUE:I

.field private final MSG_CREATE_DLNA_SERVICE_MANAGER:I

.field private final MSG_GET_NOW_PLAYING_QUEUE:I

.field private final MSG_HANDLE_ALBUMART:I

.field private final MSG_NEXT:I

.field private final MSG_PLAYER_ERROR_HANDLE:I

.field private final MSG_PREV:I

.field private final MSG_REQUEST_ALBUMART:I

.field private final MSG_SET_DATA_SOURCE:I

.field private final UI_PLAYBACK_CONTROL_TIMEOUT:I

.field private final UI_REQUEST_NEXT:I

.field private final UI_REQUEST_PAUSE:I

.field private final UI_REQUEST_PLAY:I

.field private final UI_REQUEST_PREV:I

.field private final hexdigits:[C

.field isPlaybackDisabled:Z

.field private mAlbumArtNameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumList:[I

.field private mAlbumListLen:I

.field private mAlbumSize:I

.field private mArtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerID:Ljava/lang/String;

.field private mContentID:Ljava/lang/String;

.field private mContentPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

.field private mControllerListener:Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;

.field private mCurrentDMRID:Ljava/lang/String;

.field private mCurrentDMRName:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCols:[Ljava/lang/String;

.field private mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

.field private mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field private mDLNAServiceStatusListener:Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;

.field private mDirection:I

.field private mEndIdx:J

.field private mForcePlay:Z

.field private mIdToContentIdTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAlbumArtGetting:Z

.field private mIsDLNAManagerConnected:Z

.field private mIsRelease:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMediaPlayerHandler:Landroid/os/Handler;

.field private volatile mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

.field private volatile mNonUILooper:Landroid/os/Looper;

.field private mNotify:Lcom/htc/music/IPluginIPCNotify;

.field private mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPlayList:[I

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayState:I

.field private mPlaybackCompleted:Z

.field private mPlaybackHandler:Landroid/os/Handler;

.field private mPlaylistInfo:Landroid/os/Bundle;

.field private mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererStatusListener:Lcom/htc/music/dlna/DmcMusicPlayer$RendererStatusListener;

.field private mRepeatMode:I

.field private mServerID:Ljava/lang/String;

.field private mSetRemoveDataSourceReady:Z

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mShuffleMode:I

.field private final mSortOrder:Ljava/lang/String;

.field private mSquareAlbum:Landroid/graphics/Bitmap;

.field private mStartIdx:J

.field private mTransCanvas:Landroid/graphics/Canvas;

.field private mTransitionCount:I

.field private mnSource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    .line 89
    iput v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->DLNA_CALLER_MUSIC:I

    .line 103
    const-string v1, "server"

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->CV_SERVER:Ljava/lang/String;

    .line 104
    const-string v1, "content"

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->CV_CONTENT:Ljava/lang/String;

    .line 105
    const-string v1, "position"

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->CV_POSITION:Ljava/lang/String;

    .line 106
    const-string v1, "shuffle"

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->CV_SHUFFLE_MODE:Ljava/lang/String;

    .line 108
    const-string v1, "index_id COLLATE NOCASE ASC"

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSortOrder:Ljava/lang/String;

    .line 138
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 139
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAServiceStatusListener:Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;

    .line 140
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerListener:Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;

    .line 141
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 143
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 147
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    .line 149
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumList:[I

    .line 150
    iput v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumListLen:I

    .line 152
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    .line 163
    iput-boolean v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsAlbumArtGetting:Z

    .line 165
    iput v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayListLen:I

    .line 166
    iput v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    .line 167
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCursor:Landroid/database/Cursor;

    .line 169
    iput v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mShuffleMode:I

    .line 170
    iput v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mRepeatMode:I

    .line 173
    new-instance v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;

    invoke-direct {v1}, Lcom/htc/dlnainterface/DLNAContentItemDetails;-><init>()V

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 175
    new-instance v1, Lcom/htc/music/dlna/DmcMusicPlayer$RendererStatusListener;

    invoke-direct {v1, p0, v4}, Lcom/htc/music/dlna/DmcMusicPlayer$RendererStatusListener;-><init>(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/music/dlna/DmcMusicPlayer$1;)V

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mRendererStatusListener:Lcom/htc/music/dlna/DmcMusicPlayer$RendererStatusListener;

    .line 180
    const/16 v1, 0x23

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->MAX_TRANSITIONING_COUNT:I

    .line 181
    const v1, 0x88b8

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->MAX_PLAYABCK_CONTROL_TIMEOUT:I

    .line 183
    const/4 v1, 0x6

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I

    .line 186
    iput v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->UI_REQUEST_PLAY:I

    .line 187
    iput v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->UI_REQUEST_PAUSE:I

    .line 188
    iput v7, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->UI_REQUEST_NEXT:I

    .line 189
    iput v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->UI_REQUEST_PREV:I

    .line 191
    iput v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mTransitionCount:I

    .line 192
    iput-boolean v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->isPlaybackDisabled:Z

    .line 196
    const/16 v1, 0x2710

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->UI_PLAYBACK_CONTROL_TIMEOUT:I

    .line 198
    iput-boolean v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsDLNAManagerConnected:Z

    .line 199
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaylistInfo:Landroid/os/Bundle;

    .line 201
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 202
    const-string v1, "dmc_service"

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->DMC_SERVICE_PREFERENCES:Ljava/lang/String;

    .line 203
    const-string v1, "dmc_source"

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->DMC_SOURCE:Ljava/lang/String;

    .line 204
    const-string v1, "push_playlist"

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->DMC_PUSH_PLAYLIST:Ljava/lang/String;

    .line 205
    const-string v1, "album_playlist"

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->DMC_PUSH_ALBUMLIST:Ljava/lang/String;

    .line 208
    iput v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->MSG_PREV:I

    .line 209
    iput v7, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->MSG_NEXT:I

    .line 210
    iput v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->MSG_SET_DATA_SOURCE:I

    .line 211
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->MSG_REQUEST_ALBUMART:I

    .line 212
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->MSG_HANDLE_ALBUMART:I

    .line 213
    const/4 v1, 0x6

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->MSG_CLEAR_ALBUMART_REQ_QUEUE:I

    .line 214
    const/4 v1, 0x7

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->MSG_GET_NOW_PLAYING_QUEUE:I

    .line 215
    const/16 v1, 0x8

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->MSG_PLAYER_ERROR_HANDLE:I

    .line 216
    const/16 v1, 0x9

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->MSG_CREATE_DLNA_SERVICE_MANAGER:I

    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mArtMap:Ljava/util/Map;

    .line 224
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRID:Ljava/lang/String;

    .line 225
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRName:Ljava/lang/String;

    .line 226
    iput-boolean v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mForcePlay:Z

    .line 227
    iput v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    .line 230
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIdToContentIdTable:Ljava/util/Hashtable;

    .line 232
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "content_id"

    aput-object v2, v1, v3

    const-string v2, "content_name"

    aput-object v2, v1, v7

    const-string v2, "container"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "uri_path"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "artist_name"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "albumart_uri"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "serve_id"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "index_id"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCursorCols:[Ljava/lang/String;

    .line 245
    iput-boolean v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackCompleted:Z

    .line 246
    iput-boolean v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsRelease:Z

    .line 247
    iput-boolean v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSetRemoveDataSourceReady:Z

    .line 549
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mStartIdx:J

    .line 550
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mEndIdx:J

    .line 551
    iput v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDirection:I

    .line 552
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mServerID:Ljava/lang/String;

    .line 553
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContainerID:Ljava/lang/String;

    .line 556
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    .line 557
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentPath:Ljava/lang/String;

    .line 561
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;

    .line 562
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    .line 746
    const/16 v1, 0x100

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumSize:I

    .line 747
    iget v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumSize:I

    iget v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSquareAlbum:Landroid/graphics/Bitmap;

    .line 749
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mTransCanvas:Landroid/graphics/Canvas;

    .line 750
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    .line 751
    iput-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 831
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->hexdigits:[C

    .line 835
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    .line 836
    const-string v1, "[DmcMusicPlayer]"

    const-string v2, "DmcMusicPlayer create()+++"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iput-boolean v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsRelease:Z

    .line 839
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[DmcMusicPlayer]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 840
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 841
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUILooper:Landroid/os/Looper;

    .line 842
    new-instance v1, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;-><init>(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    .line 843
    new-instance v1, Lcom/htc/music/dlna/DmcMusicPlayer$MediaPlayerHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/dlna/DmcMusicPlayer$MediaPlayerHandler;-><init>(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;

    .line 844
    new-instance v1, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;-><init>(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    .line 846
    iput-boolean v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsDLNAManagerConnected:Z

    .line 847
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    const-string v2, "dmc_service"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 849
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "dmc_source"

    invoke-static {v1, v2, v5}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    .line 851
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mArtMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 852
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mArtMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 854
    :cond_0
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    .line 855
    const-string v1, "[DmcMusicPlayer]"

    const-string v2, "DmcMusicPlayer create()---"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    return-void

    .line 831
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/htc/music/dlna/DmcMusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->initErrorRetryHandle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->ensurePathExists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->eraseAllFilesIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/htc/music/dlna/DmcMusicPlayer;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/music/dlna/DmcMusicPlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerListener:Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;)Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerListener:Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$RendererStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mRendererStatusListener:Lcom/htc/music/dlna/DmcMusicPlayer$RendererStatusListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAServiceStatusListener:Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;)Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAServiceStatusListener:Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/htc/music/dlna/DmcMusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsDLNAManagerConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/dlna/DmcMusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsAlbumArtGetting:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/music/dlna/DmcMusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->loadMusicInfo()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/music/dlna/DmcMusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsAlbumArtGetting:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/dlna/DmcMusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsRelease:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/music/dlna/DmcMusicPlayer;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaylistInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->setRenderer(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->startToPlay(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/dlna/DmcMusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->notifyDlnaConnected()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/music/dlna/DmcMusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->disablePlaybakControl()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/dlna/DmcMusicPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/dlna/DmcMusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->enablePlaybakControl()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/dlna/DmcMusicPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyError(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/music/dlna/DmcMusicPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/dlna/DmcMusicPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I

    return v0
.end method

.method static synthetic access$3202(Lcom/htc/music/dlna/DmcMusicPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I

    return p1
.end method

.method static synthetic access$3300(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/htc/music/dlna/DmcMusicPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    return v0
.end method

.method static synthetic access$3502(Lcom/htc/music/dlna/DmcMusicPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    return p1
.end method

.method static synthetic access$3602(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/htc/music/dlna/DmcMusicPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/music/dlna/DmcMusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->saveCurrentPos()V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/dlna/DmcMusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSetRemoveDataSourceReady:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/htc/music/dlna/DmcMusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSetRemoveDataSourceReady:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/htc/music/dlna/DmcMusicPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->handleError(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private checkFileExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 657
    const/4 v1, 0x0

    .line 659
    .local v1, retval:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    .local v0, albumArtFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    const/4 v1, 0x1

    .line 665
    :cond_0
    return v1
.end method

.method private disablePlaybakControl()V
    .locals 5

    .prologue
    const/16 v4, 0x2710

    .line 2062
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2063
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2064
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2065
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->isPlaybackDisabled:Z

    .line 2066
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 2067
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2068
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2069
    :cond_0
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x88b8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2072
    :cond_1
    return-void
.end method

.method private enablePlaybakControl()V
    .locals 4

    .prologue
    const/16 v3, 0x2710

    .line 2075
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2076
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2077
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2078
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->isPlaybackDisabled:Z

    .line 2079
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2080
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2081
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2083
    :cond_0
    return-void
.end method

.method private ensurePathExists(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 683
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    const-string v1, "[DmcMusicPlayer]"

    const-string v2, "ensurePathExists path is empty"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private eraseAllFilesIfNeeded(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 697
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    const-string v3, "[DmcMusicPlayer]"

    const-string v4, "eraseAllFilesIfNeeded path is empty"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_0
    return-void

    .line 701
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 703
    .local v1, fileArray:[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_0

    .line 704
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 705
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 706
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 705
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getAlbumArtPath(I)Ljava/lang/String;
    .locals 16
    .parameter "position"

    .prologue
    .line 1285
    const-string v13, "[DmcMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    if-nez v13, :cond_2

    .line 1288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-nez v13, :cond_1

    .line 1289
    const-string v13, "[DmcMusicPlayer]"

    const-string v14, "mControllerInfo is null"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const/4 v11, 0x0

    .line 1405
    :cond_0
    :goto_0
    return-object v11

    .line 1292
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v10, v13, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1293
    .local v10, path:Ljava/lang/String;
    const-string v13, "[DmcMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...Local returned path => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    invoke-direct/range {p0 .. p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->getAlbumArtPathLocal(I)Ljava/lang/String;

    move-result-object v10

    .line 1297
    const-string v13, "[DmcMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...Local get path => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v10

    .line 1299
    goto :goto_0

    .line 1304
    .end local v10           #path:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    .line 1305
    const/4 v11, 0x0

    .line 1307
    .local v11, retval:Ljava/lang/String;
    const-string v13, "[DmcMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...REMOTE, current=> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_4

    .line 1311
    :cond_3
    const-string v13, "[DmcMusicPlayer]"

    const-string v14, "getAlbumArtPathByPosition()...REMOTE, contentID is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const/4 v11, 0x0

    goto :goto_0

    .line 1316
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 1317
    .local v12, status:Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1318
    const-string v13, "[DmcMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...SD card is not ready...status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1326
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v13, :cond_7

    .line 1327
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1328
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1340
    :cond_6
    :goto_1
    if-nez v11, :cond_0

    .line 1346
    :cond_7
    const/4 v5, 0x0

    .line 1347
    .local v5, duplicatedRequest:Z
    const/4 v1, 0x0

    .line 1348
    .local v1, curCV:Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 1349
    .local v2, curCV_contentId:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1351
    .local v3, curCV_shuffleMode:Ljava/lang/Integer;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_8

    .line 1352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #curCV:Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 1353
    .restart local v1       #curCV:Landroid/content/ContentValues;
    if-nez v1, :cond_a

    .line 1354
    const-string v13, "[DmcMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :cond_8
    :goto_3
    const/4 v13, 0x1

    if-ne v5, v13, :cond_10

    .line 1384
    const-string v13, "[DmcMusicPlayer]"

    const-string v14, "getAlbumArtPathByPosition()..Duplated Album art request. Ignore this request and break it."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1331
    .end local v1           #curCV:Landroid/content/ContentValues;
    .end local v2           #curCV_contentId:Ljava/lang/String;
    .end local v3           #curCV_shuffleMode:Ljava/lang/Integer;
    .end local v5           #duplicatedRequest:Z
    .end local v8           #i:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1332
    .local v6, fileName:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1334
    .local v7, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/music/dlna/DmcMusicPlayer;->checkFileExist(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v13, v14, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    move-object v11, v7

    goto :goto_1

    .line 1358
    .end local v6           #fileName:Ljava/lang/String;
    .end local v7           #filePath:Ljava/lang/String;
    .restart local v1       #curCV:Landroid/content/ContentValues;
    .restart local v2       #curCV_contentId:Ljava/lang/String;
    .restart local v3       #curCV_shuffleMode:Ljava/lang/Integer;
    .restart local v5       #duplicatedRequest:Z
    .restart local v8       #i:I
    :cond_a
    const-string v13, "content"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "shuffle"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 1359
    :cond_b
    const-string v13, "[DmcMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...There is no content id or shuffle information in curCV when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1366
    :cond_c
    const-string v13, "content"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1367
    const-string v13, "shuffle"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1369
    if-eqz v2, :cond_d

    if-nez v3, :cond_e

    .line 1370
    :cond_d
    const-string v13, "[DmcMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV_contentId or curCV_shuffleMode is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1376
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_f

    .line 1378
    const/4 v5, 0x1

    .line 1379
    goto/16 :goto_3

    .line 1351
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1391
    :cond_10
    if-nez v11, :cond_0

    .line 1393
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1394
    .local v9, msg:Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1395
    .local v4, data:Landroid/os/Bundle;
    const-string v13, "shuffle"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1396
    const-string v13, "position"

    move/from16 v0, p1

    invoke-virtual {v4, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1397
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v13, "content"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v9, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    invoke-virtual {v13, v9}, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1405
    .end local v1           #curCV:Landroid/content/ContentValues;
    .end local v2           #curCV_contentId:Ljava/lang/String;
    .end local v3           #curCV_shuffleMode:Ljava/lang/Integer;
    .end local v4           #data:Landroid/os/Bundle;
    .end local v5           #duplicatedRequest:Z
    .end local v8           #i:I
    .end local v9           #msg:Landroid/os/Message;
    .end local v11           #retval:Ljava/lang/String;
    .end local v12           #status:Ljava/lang/String;
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private getAlbumArtPathLocal(I)Ljava/lang/String;
    .locals 9
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 1411
    iget v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumListLen:I

    if-ge p1, v5, :cond_0

    if-gez p1, :cond_2

    .line 1412
    :cond_0
    const-string v5, "[DmcMusicPlayer]"

    const-string v6, "Positon index out of bound in getAlbumArtPathLocal"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 1454
    :cond_1
    :goto_0
    return-object v4

    .line 1415
    :cond_2
    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumList:[I

    aget v3, v5, p1

    .line 1416
    .local v3, id:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    move-object v4, v0

    .line 1417
    goto :goto_0

    .line 1426
    :cond_3
    const/4 v2, 0x0

    .line 1428
    .local v2, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    int-to-long v7, v3

    invoke-static {v5, v6, v7, v8}, Lcom/htc/music/util/ContentUtils;->getAlbum(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v2

    .line 1430
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_6

    .line 1431
    :cond_4
    const-string v5, "[DmcMusicPlayer]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find album with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    if-eqz v2, :cond_5

    .line 1458
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1459
    const/4 v2, 0x0

    :cond_5
    move-object v4, v0

    .line 1432
    goto :goto_0

    .line 1435
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1436
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1437
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 1438
    .local v4, path:Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_7

    .line 1457
    if-eqz v2, :cond_1

    .line 1458
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1459
    const/4 v2, 0x0

    goto :goto_0

    .line 1443
    .end local v4           #path:Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string v5, "album_art"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1444
    .local v1, artColumnIndex:I
    if-gez v1, :cond_9

    .line 1445
    const-string v5, "[DmcMusicPlayer]"

    const-string v6, "Cannot find art column index"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1457
    if-eqz v2, :cond_8

    .line 1458
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1459
    const/4 v2, 0x0

    :cond_8
    move-object v4, v0

    .line 1446
    goto :goto_0

    .line 1449
    :cond_9
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1450
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 1457
    .local v0, albumArtPath:Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 1458
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1459
    const/4 v2, 0x0

    :cond_a
    move-object v4, v0

    .line 1451
    goto/16 :goto_0

    .line 1453
    .end local v0           #albumArtPath:Ljava/lang/String;
    :cond_b
    :try_start_4
    const-string v5, "[DmcMusicPlayer]"

    const-string v6, "Cannot move to first position"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1457
    if-eqz v2, :cond_c

    .line 1458
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1459
    const/4 v2, 0x0

    :cond_c
    move-object v4, v0

    .line 1454
    goto/16 :goto_0

    .line 1457
    .end local v1           #artColumnIndex:I
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_d

    .line 1458
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1459
    const/4 v2, 0x0

    .line 1457
    :cond_d
    throw v5
.end method

.method private getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 619
    const/4 v1, 0x0

    .line 622
    .local v1, cpClient:Landroid/content/ContentProviderClient;
    iget-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://dlna/images"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 626
    const-string v4, "[DmcMusicPlayer]"

    const-string v5, "$$ albumArtDownloadedNotify: No provider client: cpClient..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v0, 0x0

    .line 653
    :goto_0
    return-object v0

    .line 631
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 633
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 635
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v4, "r"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 636
    const-string v4, "[DmcMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: afDescriptor => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 650
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 651
    const/4 v1, 0x0

    .line 653
    goto :goto_0

    .line 639
    :cond_1
    :try_start_1
    const-string v4, "[DmcMusicPlayer]"

    const-string v5, "getAssetFileDescriptorFromPath: afDescriptor is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 641
    :catch_0
    move-exception v2

    .line 642
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "[DmcMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 645
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 646
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v4, "[DmcMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getDLNAErrorString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, errorCause:Ljava/lang/String;
    const-string v1, "[DmcMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%%% getDLNAErrorString()... errorCause => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-object v0
.end method

.method private getDmpAlbumArtDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, retval:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 672
    .local v1, vSDcard:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.dmp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    :goto_0
    return-object v0

    .line 675
    :cond_0
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "getDmpAlbumArtDirPath()...vSDcard is null and return path as null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleError(I)V
    .locals 3
    .parameter "errorId"

    .prologue
    const/4 v1, 0x7

    .line 2101
    sparse-switch p1, :sswitch_data_0

    .line 2152
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    const/16 v0, -0x2718

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyError(I)V

    .line 2158
    :goto_0
    return-void

    .line 2103
    :sswitch_0
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyError(I)V

    goto :goto_0

    .line 2106
    :sswitch_1
    const/16 v0, -0x2713

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyError(I)V

    goto :goto_0

    .line 2114
    :sswitch_2
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyError(I)V

    .line 2115
    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I

    goto :goto_0

    .line 2119
    :sswitch_3
    const/16 v0, -0x2714

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyError(I)V

    .line 2120
    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I

    goto :goto_0

    .line 2125
    :sswitch_4
    const/16 v0, -0x2715

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyError(I)V

    .line 2126
    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I

    goto :goto_0

    .line 2130
    :sswitch_5
    const/16 v0, -0x2717

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyError(I)V

    .line 2131
    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I

    goto :goto_0

    .line 2135
    :sswitch_6
    const/16 v0, -0x2716

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyError(I)V

    .line 2136
    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I

    goto :goto_0

    .line 2148
    :sswitch_7
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received commnad error. Ignore it. Command id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2101
    nop

    :sswitch_data_0
    .sparse-switch
        -0x40cb -> :sswitch_7
        -0x40ca -> :sswitch_7
        -0x40c9 -> :sswitch_7
        -0x40c8 -> :sswitch_7
        -0x40c7 -> :sswitch_7
        -0x40c6 -> :sswitch_7
        -0x40c5 -> :sswitch_7
        -0x40c4 -> :sswitch_7
        -0x4064 -> :sswitch_7
        -0x13c -> :sswitch_2
        -0x13a -> :sswitch_0
        -0x134 -> :sswitch_2
        -0x133 -> :sswitch_5
        -0x12f -> :sswitch_2
        -0x12e -> :sswitch_2
        -0x12d -> :sswitch_6
        -0x12c -> :sswitch_4
        -0x1 -> :sswitch_4
        0x2c0 -> :sswitch_3
        0x2c6 -> :sswitch_1
        0x2ca -> :sswitch_3
        0x2cc -> :sswitch_2
    .end sparse-switch
.end method

.method private initErrorRetryHandle()V
    .locals 0

    .prologue
    .line 828
    return-void
.end method

.method private loadCurrentPos()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2387
    iget v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    if-nez v2, :cond_2

    .line 2388
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    const-string v3, "Music"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2390
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "curpos"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2391
    .local v0, pos:I
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayListLen:I

    if-lt v0, v2, :cond_1

    .line 2393
    :cond_0
    iput v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayListLen:I

    .line 2396
    :cond_1
    iput v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    .line 2408
    :goto_0
    return-void

    .line 2398
    .end local v0           #pos:I
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    const-string v3, "DLNA"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2400
    .restart local v1       #preferences:Landroid/content/SharedPreferences;
    const-string v2, "cur_pos"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2401
    .restart local v0       #pos:I
    const-string v2, "dms_content_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    .line 2402
    if-ltz v0, :cond_3

    iget v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayListLen:I

    if-lt v0, v2, :cond_4

    .line 2404
    :cond_3
    iput v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayListLen:I

    .line 2406
    :cond_4
    iput v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    goto :goto_0
.end method

.method private loadDMSInfo()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 2280
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    const-string v2, "DLNA"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2283
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "dms_server_id"

    invoke-static {v0, v1, v4}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mServerID:Ljava/lang/String;

    .line 2284
    const-string v1, "dms_container_id"

    invoke-static {v0, v1, v4}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContainerID:Ljava/lang/String;

    .line 2285
    const-string v1, "dms_content_id"

    invoke-static {v0, v1, v4}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    .line 2286
    const-string v1, "dms_start_index"

    invoke-static {v0, v1, v5, v6}, Lcom/htc/music/util/MusicUtils;->getLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mStartIdx:J

    .line 2287
    const-string v1, "dms_end_index"

    invoke-static {v0, v1, v5, v6}, Lcom/htc/music/util/MusicUtils;->getLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mEndIdx:J

    .line 2288
    const-string v1, "dms_direction"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDirection:I

    .line 2289
    const-string v1, "dms_file_path"

    invoke-static {v0, v1, v4}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentPath:Ljava/lang/String;

    .line 2290
    const-string v1, "[DmcMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    const-string v1, "[DmcMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContainerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    const-string v1, "[DmcMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContentID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    return-void
.end method

.method private loadMusicInfo()V
    .locals 2

    .prologue
    .line 2377
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->loadQueue()V

    .line 2378
    iget v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2379
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->loadDMSInfo()V

    .line 2382
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->loadCurrentPos()V

    .line 2383
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->loadRepeatAndShuffle()V

    .line 2384
    return-void
.end method

.method private loadQueue()V
    .locals 15

    .prologue
    const/16 v14, 0x66

    const/16 v13, 0x61

    const/16 v12, 0x39

    const/16 v11, 0x30

    .line 2297
    iget-object v8, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "push_playlist"

    const-string v10, ""

    invoke-static {v8, v9, v10}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2298
    .local v6, q:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2299
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2300
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 2301
    .local v4, len:I
    new-array v8, v4, [I

    iput-object v8, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    .line 2302
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 2303
    aget-object v7, v1, v2

    .line 2304
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2305
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 2306
    shl-int/lit8 v5, v5, 0x4

    .line 2307
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2308
    .local v0, c:C
    if-lt v0, v11, :cond_0

    if-gt v0, v12, :cond_0

    .line 2309
    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    .line 2305
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2310
    :cond_0
    if-lt v0, v13, :cond_1

    if-gt v0, v14, :cond_1

    .line 2311
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    .line 2313
    :cond_1
    const/4 v4, 0x0

    .line 2317
    .end local v0           #c:C
    :cond_2
    iget-object v8, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    aput v5, v8, v2

    .line 2302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2319
    .end local v3           #j:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    array-length v8, v8

    iput v8, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayListLen:I

    .line 2322
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_4
    iget-object v8, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "album_playlist"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2324
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2325
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2326
    .restart local v1       #entries:[Ljava/lang/String;
    array-length v4, v1

    .line 2327
    .restart local v4       #len:I
    new-array v8, v4, [I

    iput-object v8, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumList:[I

    .line 2328
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v4, :cond_8

    .line 2329
    aget-object v7, v1, v2

    .line 2330
    .restart local v7       #revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2331
    .restart local v5       #n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .restart local v3       #j:I
    :goto_4
    if-ltz v3, :cond_7

    .line 2332
    shl-int/lit8 v5, v5, 0x4

    .line 2333
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2334
    .restart local v0       #c:C
    if-lt v0, v11, :cond_5

    if-gt v0, v12, :cond_5

    .line 2335
    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    .line 2331
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 2336
    :cond_5
    if-lt v0, v13, :cond_6

    if-gt v0, v14, :cond_6

    .line 2337
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_5

    .line 2339
    :cond_6
    const/4 v4, 0x0

    .line 2343
    .end local v0           #c:C
    :cond_7
    iget-object v8, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumList:[I

    aput v5, v8, v2

    .line 2328
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2345
    .end local v3           #j:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumList:[I

    array-length v8, v8

    iput v8, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumListLen:I

    .line 2347
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_9
    return-void
.end method

.method private loadRepeatAndShuffle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2411
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    const-string v2, "DLNA"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2413
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "dlna_repeat"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mRepeatMode:I

    .line 2414
    const-string v1, "dlna_shuffle"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mShuffleMode:I

    .line 2415
    iget v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mShuffleMode:I

    invoke-virtual {p0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->setShuffleMode(I)V

    .line 2416
    iget v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mRepeatMode:I

    invoke-virtual {p0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->setRepeatMode(I)V

    .line 2417
    return-void
.end method

.method private notifyChange(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1735
    return-void
.end method

.method private notifyDlnaConnected()V
    .locals 2

    .prologue
    .line 2096
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.dlna_connected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2097
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2098
    return-void
.end method

.method private notifyRepeatChanged()V
    .locals 2

    .prologue
    .line 2086
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.repeat_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2087
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2088
    return-void
.end method

.method private notifyShuffleChanged()V
    .locals 2

    .prologue
    .line 2091
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.shuffle_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2092
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2093
    return-void
.end method

.method private pluginNotifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 1739
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 1740
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "mMediaPlayerHandler is null in pluginNotifyChange"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    :goto_0
    return-void

    .line 1743
    :cond_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1744
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1745
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "notify"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1747
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private pluginNotifyError(I)V
    .locals 4
    .parameter "nErrId"

    .prologue
    .line 1751
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 1752
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "mMediaPlayerHandler is null in pluginNotifyError"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    :goto_0
    return-void

    .line 1755
    :cond_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1756
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1757
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "error_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1758
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1759
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "afd"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x4000

    const/4 v5, 0x0

    .line 755
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    :cond_0
    move-object v1, v5

    .line 824
    :goto_0
    return-object v1

    .line 759
    :cond_1
    iget-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    if-nez v6, :cond_2

    .line 760
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    .line 762
    :cond_2
    iget-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    if-nez v6, :cond_3

    .line 763
    new-instance v6, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v7, 0x2

    invoke-direct {v6, v11, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 768
    :cond_3
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 769
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 770
    const/4 v6, 0x1

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 771
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 777
    :goto_1
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v10

    if-gez v6, :cond_4

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_5

    .line 778
    :cond_4
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 779
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 780
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 819
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 821
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "[DmcMusicPlayer]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeThumb(), thumbnail resize failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 824
    goto :goto_0

    .line 783
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    :try_start_1
    const-string v6, "[DmcMusicPlayer]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeThumb(), thumbnail 1st resize width "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 787
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 788
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 792
    .local v0, bitmapOrg:Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumSize:I

    int-to-float v7, v6

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v6, v8, :cond_6

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_2
    int-to-float v6, v6

    div-float v4, v7, v6

    .line 796
    .local v4, scale:F
    iget-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mTransCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 797
    iget-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSquareAlbum:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 798
    iget-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 800
    iget-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 801
    iget-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumSize:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumSize:I

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 805
    iget-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 806
    iget-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 807
    iget-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 812
    iget-object v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 815
    .local v1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 816
    const/4 v3, 0x0

    .line 818
    goto/16 :goto_0

    .line 792
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v4           #scale:F
    :cond_6
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 8
    .parameter "afd"
    .parameter "filepath"

    .prologue
    .line 712
    const/4 v3, 0x0

    .line 714
    .local v3, retval:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 715
    :cond_0
    const/4 v4, 0x0

    .line 742
    :goto_0
    return v4

    .line 718
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 721
    .local v2, newAlbumArt:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 722
    .local v1, fos:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_3

    .line 723
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 727
    :goto_1
    if-eqz v1, :cond_4

    .line 728
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 729
    const/4 v3, 0x1

    .line 739
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v2, :cond_2

    .line 740
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move v4, v3

    .line 742
    goto :goto_0

    .line 725
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_1
    const-string v4, "[DmcMusicPlayer]"

    const-string v5, "saveAlbumArtToSDCard(), newAlbumArt is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 733
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 734
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 731
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_2
    const-string v4, "[DmcMusicPlayer]"

    const-string v5, "saveAlbumArtToSDCard()..fos is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 735
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 736
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private saveCurrentPos()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 2357
    iget v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    if-nez v2, :cond_0

    .line 2358
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    const-string v3, "Music"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2362
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2363
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "curpos"

    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2364
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2374
    :goto_0
    return-void

    .line 2366
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    const-string v3, "DLNA"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2369
    .restart local v1       #preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2370
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cur_pos"

    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2371
    const-string v2, "dms_content_id"

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2372
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private saveDmcInfo()V
    .locals 3

    .prologue
    .line 2351
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2352
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "dmc_source"

    iget v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2353
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2354
    return-void
.end method

.method private saveQueue()V
    .locals 7

    .prologue
    .line 2239
    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    if-nez v5, :cond_0

    .line 2240
    const-string v5, "[DmcMusicPlayer]"

    const-string v6, "mPlaylist is null cannot save queue"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    :goto_0
    return-void

    .line 2244
    :cond_0
    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2245
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2246
    .local v4, q:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayListLen:I

    if-ge v2, v5, :cond_3

    .line 2247
    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    aget v3, v5, v2

    .line 2248
    .local v3, n:I
    if-nez v3, :cond_1

    .line 2249
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2251
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 2252
    and-int/lit8 v0, v3, 0xf

    .line 2253
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 2254
    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->hexdigits:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2256
    .end local v0           #digit:I
    :cond_2
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2259
    .end local v3           #n:I
    :cond_3
    const-string v5, "push_playlist"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2260
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2261
    const/4 v2, 0x0

    :goto_4
    iget v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumListLen:I

    if-ge v2, v5, :cond_6

    .line 2262
    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumList:[I

    aget v3, v5, v2

    .line 2263
    .restart local v3       #n:I
    if-nez v3, :cond_4

    .line 2264
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2266
    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 2267
    and-int/lit8 v0, v3, 0xf

    .line 2268
    .restart local v0       #digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 2269
    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->hexdigits:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2271
    .end local v0           #digit:I
    :cond_5
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2274
    .end local v3           #n:I
    :cond_6
    const-string v5, "album_playlist"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2275
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private setRenderer(Landroid/os/Bundle;)V
    .locals 5
    .parameter "playlistInfo"

    .prologue
    .line 1763
    new-instance v1, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v1}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 1764
    .local v1, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    const/4 v2, 0x1

    iput v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 1765
    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 1766
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 1767
    const-string v2, "HtcMusic"

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 1770
    const/4 v0, 0x0

    .line 1771
    .local v0, newDmrId:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1772
    const-string v2, "com.htc.music.dmc_dmr"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1773
    if-nez v0, :cond_0

    .line 1774
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "renderer is null in Intent. Try to get renderer from dlnamanager"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v2, :cond_2

    .line 1776
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v0

    .line 1777
    const-string v2, "[DmcMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1791
    :cond_1
    iput-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRID:Ljava/lang/String;

    .line 1792
    const-string v2, "[DmcMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRenderer currentDMRId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1794
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v2, :cond_5

    .line 1795
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 1805
    :goto_1
    return-void

    .line 1779
    :cond_2
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "mDLNAManager is null in setRenderer"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1783
    :cond_3
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "intent is nul. get dmr from dlna manager"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v2, :cond_4

    .line 1785
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1787
    :cond_4
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "DLNAManager is null when getRenderer() in setRenderer"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1797
    :cond_5
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "mDLNAManager is null in setRenderer"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1799
    :cond_6
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "mCurrentDMRID is null close dmc service"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const/16 v2, -0x2715

    invoke-direct {p0, v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyError(I)V

    goto :goto_1

    .line 1803
    :cond_7
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "DMR id is the same don\'t set DMR"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startToPlay(Landroid/os/Bundle;)V
    .locals 9
    .parameter "playlistInfo"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1808
    if-eqz p1, :cond_8

    .line 1809
    iput-boolean v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSetRemoveDataSourceReady:Z

    .line 1810
    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1811
    .local v0, cmd:Ljava/lang/String;
    const-string v3, "forcePlay"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mForcePlay:Z

    .line 1812
    const-string v3, "com.htc.music.refreshplaylist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1813
    const-string v3, "[DmcMusicPlayer]"

    const-string v4, "startToPlay CMDREFRESH_PLAYLIST"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const-string v3, "com.htc.music.dmc_setsrc"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    .line 1816
    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    if-nez v3, :cond_6

    .line 1817
    const-string v3, "com.htc.music.dmc_playlist"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    .line 1818
    const-string v3, "com.htc.music.dmc_albumlist"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumList:[I

    .line 1819
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumList:[I

    array-length v3, v3

    iput v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumListLen:I

    .line 1820
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    array-length v3, v3

    iput v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayListLen:I

    .line 1821
    const-string v3, "com.htc.music.dmc_currentindex"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1822
    .local v2, nCurIndex:I
    iput v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    .line 1823
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    if-eqz v3, :cond_5

    .line 1824
    const-string v3, "[DmcMusicPlayer]"

    const-string v4, "startToPlay CMDREFRESH_PLAYLIST:playlist ok, setDataSource..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const-string v3, "[DmcMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startToPlay CMDREFRESH_PLAYLIST:nCurIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v3, :cond_4

    .line 1827
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    invoke-virtual {v3, v4, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource([II)V

    .line 1865
    .end local v2           #nCurIndex:I
    :cond_0
    :goto_0
    const-string v3, "dlna_shuffle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mShuffleMode:I

    .line 1866
    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mShuffleMode:I

    invoke-virtual {p0, v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->setShuffleMode(I)V

    .line 1867
    const-string v3, "[DmcMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Soar mShuffleMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mShuffleMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    const-string v3, "dlna_repeat"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mRepeatMode:I

    .line 1869
    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mRepeatMode:I

    invoke-virtual {p0, v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->setRepeatMode(I)V

    .line 1870
    const-string v3, "[DmcMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Soar mRepeatMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mRepeatMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->saveDmcInfo()V

    .line 1872
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->saveQueue()V

    .line 1873
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mArtMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 1874
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mArtMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1875
    :cond_1
    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    if-nez v3, :cond_2

    .line 1876
    invoke-virtual {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->play()V

    .line 1880
    :cond_2
    const-string v3, "com.htc.music.plugin.queuechanged"

    invoke-direct {p0, v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    .line 1881
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaylistInfo:Landroid/os/Bundle;

    .line 1886
    .end local v0           #cmd:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 1829
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #nCurIndex:I
    :cond_4
    const-string v3, "[DmcMusicPlayer]"

    const-string v4, "DLNA service manager is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1831
    :cond_5
    const-string v3, "[DmcMusicPlayer]"

    const-string v4, "startToPlay CMDREFRESH_PLAYLIST:playlist null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1833
    .end local v2           #nCurIndex:I
    :cond_6
    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    if-ne v3, v6, :cond_0

    .line 1834
    const-string v3, "dms_container_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContainerID:Ljava/lang/String;

    .line 1835
    const-string v3, "dms_server_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mServerID:Ljava/lang/String;

    .line 1836
    const-string v3, "dms_content_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    .line 1837
    const-string v3, "dms_start_index"

    invoke-virtual {p1, v3, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mStartIdx:J

    .line 1838
    const-string v3, "dms_end_index"

    invoke-virtual {p1, v3, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mEndIdx:J

    .line 1839
    const-string v3, "dms_file_path"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentPath:Ljava/lang/String;

    .line 1840
    const-string v3, "dms_direction"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDirection:I

    .line 1842
    new-instance v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v1}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 1843
    .local v1, dlnaRemotePlayListInfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContainerID:Ljava/lang/String;

    iput-object v3, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 1844
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    iput-object v3, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 1845
    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDirection:I

    iput v3, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 1846
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 1847
    iget-wide v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mStartIdx:J

    iput-wide v3, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 1848
    iget-wide v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mEndIdx:J

    iput-wide v3, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 1849
    iput v6, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 1850
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mServerID:Ljava/lang/String;

    iput-object v3, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 1852
    const-string v3, "[DmcMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContentPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    const-string v3, "[DmcMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startToPlay mServerID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    const-string v3, "[DmcMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startToPlay contentID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v3, :cond_7

    .line 1856
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 1857
    iput-boolean v6, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mSetRemoveDataSourceReady:Z

    .line 1858
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V

    .line 1859
    const-string v3, "com.htc.music.plugin.albumartchanged"

    invoke-direct {p0, v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1861
    :cond_7
    const-string v3, "[DmcMusicPlayer]"

    const-string v4, "mDLNAManager is null in setDataSource remote"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1884
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #dlnaRemotePlayListInfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :cond_8
    const-string v3, "[DmcMusicPlayer]"

    const-string v4, "playlist is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public clearAlbumArtRequests()V
    .locals 2

    .prologue
    .line 1471
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "clearAlbumArtRequests()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    .line 1473
    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 0

    .prologue
    .line 1485
    return-void
.end method

.method public close(Z)V
    .locals 6
    .parameter "isPowerOff"

    .prologue
    const/4 v3, 0x0

    .line 1599
    const-string v2, "[DmcMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Goto Music, passing ContentID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v2, :cond_2

    .line 1602
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1603
    if-eqz p1, :cond_0

    .line 1604
    const-string v2, "[DmcMusicPlayer]"

    const-string v4, "powerOffDMR()"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->powerOff()V

    .line 1607
    :cond_0
    const-string v2, "[DmcMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDLNAManager render = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1616
    .local v1, rtt:Landroid/content/Intent;
    const-string v2, "com.htc.music.dmcservice.released"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    iget v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1625
    const-string v2, "dms_server_id"

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1626
    const-string v2, "dms_container_id"

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContainerID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1627
    const-string v2, "dms_content_id"

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1629
    const-string v2, "dms_start_index"

    iget-wide v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mStartIdx:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1630
    const-string v2, "dms_end_index"

    iget-wide v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mEndIdx:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1631
    const-string v2, "dms_direction"

    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDirection:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1632
    const-string v2, "dms_file_path"

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1649
    :goto_1
    const-string v2, "forcePlay"

    invoke-virtual {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->isPlaying()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1650
    invoke-direct {p0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->notifyChange(Landroid/content/Intent;)V

    .line 1652
    return-void

    .line 1609
    .end local v1           #rtt:Landroid/content/Intent;
    :cond_1
    const-string v2, "[DmcMusicPlayer]"

    const-string v4, "renderer is null donot close"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1612
    :cond_2
    const-string v2, "[DmcMusicPlayer]"

    const-string v4, "mDLNAManager is null in close"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1636
    .restart local v1       #rtt:Landroid/content/Intent;
    :cond_3
    const-string v4, "dms_server_id"

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1638
    const-string v2, "dms_container_id"

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1639
    const/4 v0, 0x0

    .line 1640
    .local v0, playPos:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v2, :cond_4

    .line 1641
    invoke-virtual {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->getQueuePosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1642
    const-string v2, "[DmcMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :goto_2
    const-string v2, "dms_content_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1644
    :cond_4
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "mControllerInfo is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public duration()J
    .locals 6

    .prologue
    .line 950
    const-wide/16 v0, 0x0

    .line 951
    .local v0, duration:J
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v2, :cond_0

    .line 952
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDuration:J

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 954
    :cond_0
    const-string v2, "[DmcMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    return-wide v0
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    .line 1260
    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    if-nez v3, :cond_1

    .line 1261
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->getAlbumArtPath(I)Ljava/lang/String;

    move-result-object v2

    .line 1280
    :cond_0
    :goto_0
    return-object v2

    .line 1262
    :cond_1
    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1263
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1264
    .local v1, key:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mArtMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1265
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1266
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1267
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1270
    :cond_2
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mArtMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    .end local v0           #file:Ljava/io/File;
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->getAlbumArtPath(I)Ljava/lang/String;

    move-result-object v2

    .line 1275
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1276
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mArtMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1280
    .end local v1           #key:Ljava/lang/Integer;
    .end local v2           #path:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 1466
    invoke-virtual {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 1543
    iget v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    if-ne v0, v5, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return v6

    .line 1546
    :cond_1
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1548
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayPos = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    aget v0, v0, v1

    int-to-long v7, v0

    .line 1550
    .local v7, audioId:J
    new-array v2, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 1553
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1557
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 1558
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1559
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1561
    const-string v0, "album_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1563
    .local v6, albumId:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1564
    const/4 v9, 0x0

    .line 1565
    goto :goto_0

    .line 1567
    .end local v6           #albumId:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1568
    const/4 v9, 0x0

    .line 1569
    goto :goto_0

    .line 1575
    .end local v2           #cols:[Ljava/lang/String;
    .end local v7           #audioId:J
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_3
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlbumId() mControllerInfo "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlbumId() mPlayList "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1003
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "getAlbumName()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1007
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown>"

    goto :goto_0
.end method

.method public getAlbumQueue()[I
    .locals 3

    .prologue
    .line 1717
    const/4 v1, 0x1

    .line 1718
    .local v1, len:I
    new-array v2, v1, [I

    .line 1719
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1720
    aput v0, v2, v0

    .line 1719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1722
    :cond_0
    return-object v2
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1012
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "getArtistName()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1016
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown>"

    goto :goto_0
.end method

.method public getAudioId()I
    .locals 2

    .prologue
    .line 1583
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    if-eqz v1, :cond_0

    .line 1584
    iget v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    .line 1585
    .local v0, currentPos:I
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayListLen:I

    if-ge v0, v1, :cond_0

    .line 1586
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayList:[I

    aget v1, v1, v0

    .line 1589
    .end local v0           #currentPos:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1513
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 1211
    const/4 v0, 0x0

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1184
    const/4 v0, 0x0

    .line 1185
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 1188
    :cond_0
    return-object v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 1726
    iget v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    if-nez v0, :cond_0

    .line 1727
    const/4 v0, 0x3

    .line 1729
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1166
    const/4 v0, 0x0

    .line 1167
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 1170
    :cond_0
    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1175
    const/4 v0, 0x0

    .line 1176
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 1179
    :cond_0
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1193
    const/4 v0, 0x0

    .line 1194
    .local v0, location:Ljava/lang/String;
    iget v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContentPath:Ljava/lang/String;

    .line 1206
    :goto_0
    return-object v1

    .line 1197
    :cond_0
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_1

    .line 1198
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 1199
    const-string v1, "[DmcMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v1, v0

    .line 1206
    goto :goto_0

    .line 1201
    :cond_1
    const-string v1, "[DmcMusicPlayer]"

    const-string v2, "mDLNAContentItemDetails is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getNowplayingQueue(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1479
    return-void
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1508
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->getDLNAErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 0
    .parameter "shufflePosition"

    .prologue
    .line 1233
    return p1
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    return v0
.end method

.method public getQueueSize()I
    .locals 4

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v1, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v1

    long-to-int v0, v1

    .line 1130
    .local v0, queueSize:I
    const-string v1, "[DmcMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQueueSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    .end local v0           #queueSize:I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRepeatMode()I
    .locals 5

    .prologue
    .line 1105
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v2, :cond_0

    .line 1106
    const/4 v1, 0x0

    .line 1123
    :goto_0
    return v1

    .line 1107
    :cond_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRepeatState()I

    move-result v0

    .line 1108
    .local v0, nDlnaRepeatmode:I
    const-string v2, "[DmcMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRepeatMode()...DLNA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const/4 v1, 0x0

    .line 1112
    .local v1, nRepeatmode:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1114
    :pswitch_0
    const/4 v1, 0x0

    .line 1115
    goto :goto_0

    .line 1117
    :pswitch_1
    const/4 v1, 0x1

    .line 1118
    goto :goto_0

    .line 1120
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 1112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getShuffleMode()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1060
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v1, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return v0

    .line 1063
    :cond_1
    const-string v1, "[DmcMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShuffleMode()..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1238
    monitor-enter p0

    .line 1254
    :try_start_0
    monitor-exit p0

    return p1

    .line 1255
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTrackDetails(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1489
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackDetails()... position => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayListLen:I

    if-lt p1, v0, :cond_1

    .line 1492
    :cond_0
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackDetails()...position is illegal, position => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    :goto_0
    return-void

    .line 1495
    :cond_1
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_2

    .line 1496
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    goto :goto_0

    .line 1498
    :cond_2
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "getTrackDetails mDLNAManager is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 993
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_0

    .line 994
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackName() =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 997
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown>"

    goto :goto_0
.end method

.method public getVolume()I
    .locals 2

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getVolume()I

    move-result v0

    .line 1522
    :goto_0
    return v0

    .line 1521
    :cond_0
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "getVolume mDLNAManager is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDmcOrPushMode()Z
    .locals 1

    .prologue
    .line 1594
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, isPlaying:Z
    iget v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I

    if-nez v1, :cond_0

    .line 877
    const/4 v0, 0x1

    .line 881
    :goto_0
    return v0

    .line 879
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluginReady()Z
    .locals 1

    .prologue
    .line 1503
    const/4 v0, 0x1

    return v0
.end method

.method public next(Z)V
    .locals 3
    .parameter "changeSong"

    .prologue
    const/4 v2, 0x0

    .line 937
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "=== next()...Begin"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iput v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mTransitionCount:I

    .line 939
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->disablePlaybakControl()V

    .line 940
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 942
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 944
    :cond_0
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "=== next()...END "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 892
    const-string v1, "[DmcMusicPlayer]"

    const-string v2, "pause()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    monitor-enter p0

    .line 895
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mTransitionCount:I

    .line 898
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->disablePlaybakControl()V

    .line 899
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 901
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 907
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 909
    return-void

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, ex:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 907
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 913
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "call play........"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iput v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mTransitionCount:I

    .line 915
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->disablePlaybakControl()V

    .line 916
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 918
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 920
    :cond_0
    return-void
.end method

.method public position()J
    .locals 6

    .prologue
    .line 961
    const-wide/16 v0, 0x0

    .line 962
    .local v0, position:J
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v2, :cond_0

    .line 963
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 968
    :goto_0
    return-wide v0

    .line 965
    :cond_0
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "mDLNAManager is null in position"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prev(Z)V
    .locals 3
    .parameter "changeSong"

    .prologue
    const/4 v2, 0x0

    .line 924
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "=== prev()...Begin"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iput v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mTransitionCount:I

    .line 926
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->disablePlaybakControl()V

    .line 927
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 929
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 931
    :cond_0
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "=== prev()...End"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public registerCallback(Lcom/htc/music/IPluginIPCNotify;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 1145
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback()...cb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    if-eqz p1, :cond_0

    .line 1148
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 1150
    :cond_0
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1657
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "release() start"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-virtual {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1661
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1665
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1668
    :cond_1
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1669
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1672
    :cond_2
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_7

    .line 1673
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 1674
    iput-boolean v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsDLNAManagerConnected:Z

    .line 1678
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsRelease:Z

    .line 1681
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 1682
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1683
    iput-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mCursor:Landroid/database/Cursor;

    .line 1686
    :cond_3
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mArtMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 1687
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mArtMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1692
    :cond_4
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    invoke-virtual {v0, v3}, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1693
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1696
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_5

    .line 1697
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1699
    :cond_5
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1700
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1702
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->enablePlaybakControl()V

    .line 1703
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "release finished."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    return-void

    .line 1676
    :cond_7
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "mDLNAManager is null in disconnect"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seek(J)J
    .locals 3
    .parameter "pos"

    .prologue
    .line 973
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek()...pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 976
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "Cannot seek in pauseing state"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-wide/16 p1, 0x0

    .line 987
    .end local p1
    :goto_0
    return-wide p1

    .line 979
    .restart local p1
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->disablePlaybakControl()V

    .line 980
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    goto :goto_0

    .line 982
    :cond_1
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "mDLNAManager is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPlaylistInfo(Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 860
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaylistInfo data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaylistInfo:Landroid/os/Bundle;

    .line 862
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mIsDLNAManagerConnected:Z

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaylistInfo:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->setRenderer(Landroid/os/Bundle;)V

    .line 864
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaylistInfo:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->startToPlay(Landroid/os/Bundle;)V

    .line 866
    :cond_0
    return-void
.end method

.method public setQueuePosition(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 1021
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQueuePosition()...pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    if-gez p1, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1025
    :cond_0
    monitor-enter p0

    .line 1026
    :try_start_0
    iput p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I

    .line 1027
    const-string v0, "com.htc.music.plugin.dmcmetachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    .line 1028
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 6
    .parameter "repeatmode"

    .prologue
    .line 1073
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v3, :cond_0

    .line 1101
    :goto_0
    return-void

    .line 1075
    :cond_0
    const-string v3, "[DmcMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRepeatMode()...repeatmode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iput p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mRepeatMode:I

    .line 1078
    const/4 v0, 0x0

    .line 1080
    .local v0, dlnaRepeatmode:I
    packed-switch p1, :pswitch_data_0

    .line 1091
    :goto_1
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRepeat(I)V

    .line 1093
    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    const-string v4, "DLNA"

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1096
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1097
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "dlna_repeat"

    iget v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mRepeatMode:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1098
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1099
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->notifyRepeatChanged()V

    goto :goto_0

    .line 1082
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :pswitch_0
    const/4 v0, 0x0

    .line 1083
    goto :goto_1

    .line 1085
    :pswitch_1
    const/4 v0, 0x2

    .line 1086
    goto :goto_1

    .line 1088
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setShuffleMode(I)V
    .locals 5
    .parameter "shufflemode"

    .prologue
    .line 1034
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v2, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1037
    :cond_0
    const-string v2, "[DmcMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShuffleMode()...shufflemode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iput p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mShuffleMode:I

    .line 1039
    if-nez p1, :cond_2

    .line 1040
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1041
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setShuffle()V

    .line 1047
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;

    const-string v3, "DLNA"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1050
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1051
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dlna_shuffle"

    iget v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mShuffleMode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1052
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1054
    invoke-direct {p0}, Lcom/htc/music/dlna/DmcMusicPlayer;->notifyShuffleChanged()V

    goto :goto_0

    .line 1043
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1044
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setShuffle()V

    goto :goto_1
.end method

.method public setVolume(I)V
    .locals 3
    .parameter "nVol"

    .prologue
    .line 1529
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setVolume(I)V

    .line 1534
    :goto_0
    return-void

    .line 1533
    :cond_0
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "setVolume is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPluginActivity()V
    .locals 0

    .prologue
    .line 1162
    return-void
.end method

.method public stop(Z)V
    .locals 0
    .parameter "stateChanged"

    .prologue
    .line 888
    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    .prologue
    .line 1154
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "unregisterCallback()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 1157
    return-void
.end method
