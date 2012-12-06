.class public Lcom/htc/music/dlna/DmpMusicPlayer;
.super Ljava/lang/Object;
.source "DmpMusicPlayer.java"

# interfaces
.implements Lcom/htc/music/MusicPluginPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;,
        Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;,
        Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;,
        Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.htc.music.dlna.DmpMusicPlayer"

.field public static final CMDFORCEPLAY:Ljava/lang/String; = "forcePlay"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDREFRESH_PLAYLIST:Ljava/lang/String; = "com.htc.music.refreshplaylist"

.field private static final DLNA_ERROR_HANDLE:I = 0x4

.field private static final ERROR_ALREADY_CONNECTED:I = -0x3e8

.field private static final ERROR_BUFFER_TOO_SMALL:I = -0x3f1

.field private static final ERROR_CANNOT_CONNECT:I = -0x3eb

.field private static final ERROR_CONNECTION_LOST:I = -0x3ed

.field private static final ERROR_END_OF_STREAM:I = -0x3f3

.field private static final ERROR_IO:I = -0x3ec

.field private static final ERROR_MALFORMED:I = -0x3ef

.field private static final ERROR_NOT_CONNECTED:I = -0x3e9

.field private static final ERROR_OUT_OF_RANGE:I = -0x3f0

.field private static final ERROR_UNKNOWN_HOST:I = -0x3ea

.field private static final ERROR_UNSUPPORTED:I = -0x3f2

.field public static final EXTRA_KEY_CONTAINER:Ljava/lang/String; = "container"

.field public static final EXTRA_KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final EXTRA_KEY_DIRECTION:Ljava/lang/String; = "direction"

.field public static final EXTRA_KEY_DMSFILEPATH:Ljava/lang/String; = "dmsFilePath"

.field public static final EXTRA_KEY_ENDIDX:Ljava/lang/String; = "endIdx"

.field public static final EXTRA_KEY_SERVER:Ljava/lang/String; = "server"

.field public static final EXTRA_KEY_STARTIDX:Ljava/lang/String; = "startIdx"

.field private static MAX_ALBUM_ART_SIDE_LENGTH:I = 0x0

.field private static final MEDIA_ERROR_BASE:I = -0x3e8

.field private static final MEDIA_ERROR_STATE:I = -0x26

.field private static final MSG_ARG_NEXT_PREV_FORCE_CHANGE_SONG:I = 0x1f8b1

.field private static final NOTIFY_UPPER:I = 0x5

.field public static final PLAYBACKSERVICE_STATUS:I = 0x2

.field private static final PLUGIN_META_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.metachanged"

.field private static final PLUGIN_PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.plugin.playbackcomplete"

.field private static final PLUGIN_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.statechanged"

.field private static final PLUGIN_PLAY_NEXT:Ljava/lang/String; = "com.htc.music.plugin.playnext"

.field private static final PLUGIN_QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.queuechanged"

.field private static final PREFIX_STRING_HTTP:Ljava/lang/String; = "http"

.field private static final PREFIX_STRING_IGNORE_PAUSE_SEEK:Ljava/lang/String; = "htc-dlna"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[DmpMusicPlayer]"

.field private static final TRACK_ENDED:I = 0x1


# instance fields
.field private final CV_CONTENT:Ljava/lang/String;

.field private final CV_POSITION:Ljava/lang/String;

.field private final CV_SERVER:Ljava/lang/String;

.field private final CV_SHUFFLE_MODE:Ljava/lang/String;

.field private final DLNA_CALLER_MUSIC:I

.field private final MAX_ERROR_RETRY_TIMES:I

.field private final MAX_SONGS_IN_PLAYLIST:I

.field private final MSG_CLEAR_ALBUMART_REQ_QUEUE:I

.field private final MSG_GET_NOW_PLAYING_QUEUE:I

.field private final MSG_HANDLE_ALBUMART:I

.field private final MSG_INIT_ERROR_RETRY:I

.field private final MSG_NEXT:I

.field private final MSG_PLAYER_ERROR_HANDLE:I

.field private final MSG_PREV:I

.field private final MSG_RELEASE_PLAYER_AND_QUIT:I

.field private final MSG_REQUEST_ALBUMART:I

.field private final MSG_SET_DATA_SOURCE:I

.field private final UPDATE_QUEUE_INTERVAL:I

.field private final hexdigits:[C

.field private mA2DPReceiver:Landroid/content/BroadcastReceiver;

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

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContainerID:Ljava/lang/String;

.field private mContentID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCols:[Ljava/lang/String;

.field private mDLNAConnection:Landroid/content/ServiceConnection;

.field private mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

.field private mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

.field private mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mDirection:I

.field private mDmsFilePath:Ljava/lang/String;

.field private mEndIdx:J

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

.field private mIsPlayPressed:Z

.field private mIsSupposedToBePlaying:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

.field private mMuteByTransientLossOfFocusCanDuck:Z

.field private volatile mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

.field private volatile mNonUILooper:Landroid/os/Looper;

.field private mNotify:Lcom/htc/music/IPluginIPCNotify;

.field private mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[I

.field private mPlayListBak:[I

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

.field private mPlayerErrorCount:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQueryContentID:Ljava/lang/String;

.field private mQueryPosition:I

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

.field private mRemovedServerID:Ljava/lang/String;

.field private mRepeatMode:I

.field private mServerID:Ljava/lang/String;

.field private mShuffleMode:I

.field private mShuffleSeq:[I

.field private final mSortOrder:Ljava/lang/String;

.field private mStartIdx:J

.field private mTimePointToNextOrPre:J

.field private mTimePointToUpdateQueue:J

.field private mUriPath:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2630
    const/16 v0, 0x200

    sput v0, Lcom/htc/music/dlna/DmpMusicPlayer;->MAX_ALBUM_ART_SIDE_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x1

    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    .line 77
    const/16 v2, 0x2710

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->UPDATE_QUEUE_INTERVAL:I

    .line 79
    const/16 v2, 0xc7

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MAX_SONGS_IN_PLAYLIST:I

    .line 103
    iput v9, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->DLNA_CALLER_MUSIC:I

    .line 111
    const-string v2, "server"

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->CV_SERVER:Ljava/lang/String;

    .line 112
    const-string v2, "content"

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->CV_CONTENT:Ljava/lang/String;

    .line 113
    const-string v2, "position"

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->CV_POSITION:Ljava/lang/String;

    .line 114
    const-string v2, "shuffle"

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->CV_SHUFFLE_MODE:Ljava/lang/String;

    .line 116
    const-string v2, "index_id COLLATE NOCASE ASC"

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mSortOrder:Ljava/lang/String;

    .line 145
    const/16 v2, 0xa

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MAX_ERROR_RETRY_TIMES:I

    .line 146
    iput v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayerErrorCount:I

    .line 161
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 163
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    .line 164
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    .line 165
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    .line 167
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    .line 168
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIdToContentIdTable:Ljava/util/Hashtable;

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    .line 171
    iput-boolean v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsAlbumArtGetting:Z

    .line 173
    iput v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    .line 174
    iput v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    .line 175
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    .line 177
    iput v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    .line 178
    iput v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRepeatMode:I

    .line 182
    iput-boolean v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsSupposedToBePlaying:Z

    .line 183
    iput-boolean v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsPlayPressed:Z

    .line 187
    iput-wide v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J

    .line 188
    iput-wide v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    .line 189
    iput v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDirection:I

    .line 190
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    .line 191
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    .line 193
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRemovedServerID:Ljava/lang/String;

    .line 196
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    .line 198
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDmsFilePath:Ljava/lang/String;

    .line 200
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mUriPath:Ljava/lang/String;

    .line 203
    iput v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryPosition:I

    .line 204
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;

    .line 208
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    .line 210
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "content_id"

    aput-object v3, v2, v9

    const/4 v3, 0x2

    const-string v4, "content_name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "container"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "uri_path"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "artist_name"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "albumart_uri"

    aput-object v4, v2, v3

    const-string v3, "serve_id"

    aput-object v3, v2, v10

    const/16 v3, 0x8

    const-string v4, "index_id"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursorCols:[Ljava/lang/String;

    .line 222
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 227
    new-instance v2, Lcom/htc/music/dlna/DmpMusicPlayer$1;

    invoke-direct {v2, p0}, Lcom/htc/music/dlna/DmpMusicPlayer$1;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAConnection:Landroid/content/ServiceConnection;

    .line 273
    new-instance v2, Lcom/htc/music/dlna/DmpMusicPlayer$2;

    invoke-direct {v2, p0}, Lcom/htc/music/dlna/DmpMusicPlayer$2;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    .line 595
    new-instance v2, Lcom/htc/music/DMPContentItemDetails;

    invoke-direct {v2}, Lcom/htc/music/DMPContentItemDetails;-><init>()V

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    .line 599
    iput-boolean v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z

    .line 600
    iput-boolean v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMuteByTransientLossOfFocusCanDuck:Z

    .line 602
    new-instance v2, Lcom/htc/music/dlna/DmpMusicPlayer$3;

    invoke-direct {v2, p0}, Lcom/htc/music/dlna/DmpMusicPlayer$3;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2631
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    .line 2632
    iput-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 2771
    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->hexdigits:[C

    .line 3179
    const/16 v2, 0x2af9

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MSG_PREV:I

    .line 3180
    const/16 v2, 0x2afa

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MSG_NEXT:I

    .line 3181
    const/16 v2, 0x2afb

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MSG_SET_DATA_SOURCE:I

    .line 3182
    const/16 v2, 0x2afc

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MSG_REQUEST_ALBUMART:I

    .line 3183
    const/16 v2, 0x2afd

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MSG_HANDLE_ALBUMART:I

    .line 3184
    const/16 v2, 0x2afe

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MSG_CLEAR_ALBUMART_REQ_QUEUE:I

    .line 3185
    const/16 v2, 0x2aff

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MSG_GET_NOW_PLAYING_QUEUE:I

    .line 3186
    const/16 v2, 0x2b00

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MSG_PLAYER_ERROR_HANDLE:I

    .line 3187
    const/16 v2, 0x2b01

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MSG_RELEASE_PLAYER_AND_QUIT:I

    .line 3188
    const/16 v2, 0x2b02

    iput v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->MSG_INIT_ERROR_RETRY:I

    .line 3190
    iput-wide v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToNextOrPre:J

    .line 3191
    iput-wide v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToUpdateQueue:J

    .line 3492
    new-instance v2, Lcom/htc/music/dlna/DmpMusicPlayer$4;

    invoke-direct {v2, p0}, Lcom/htc/music/dlna/DmpMusicPlayer$4;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    .line 659
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    .line 661
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 663
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    const-string v3, "DLNA"

    invoke-virtual {v2, v3, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    .line 666
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->loadRepeatAndShuffle()V

    .line 668
    new-instance v2, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    .line 669
    new-instance v2, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-direct {v2, p0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    .line 670
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    invoke-virtual {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 672
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 673
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 674
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 677
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->bindDLNAService()Z

    .line 680
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "[DmpMusicPlayer]"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 681
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 682
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUILooper:Landroid/os/Looper;

    .line 683
    new-instance v2, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;-><init>(Lcom/htc/music/dlna/DmpMusicPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    .line 686
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    sget-object v2, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    .line 693
    :goto_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.intent.action.ACTION_A2DP_PLUG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 694
    invoke-direct {p0, v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->reloadQueue(Z)V

    .line 695
    return-void

    .line 690
    :cond_0
    sget-object v2, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    goto :goto_0

    .line 2771
    nop

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

.method static synthetic access$000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/dlna/DmpMusicPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/htc/music/dlna/DmpMusicPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDirection:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/dlna/DmpMusicPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToUpdateQueue:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/htc/music/dlna/DmpMusicPlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToUpdateQueue:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/dlna/DmpMusicPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->reloadQueue(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/htc/music/dlna/DmpMusicPlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/dlna/DmpMusicPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryPosition:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/dlna/DmpMusicPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/music/dlna/DmpMusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMuteByTransientLossOfFocusCanDuck:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMuteByTransientLossOfFocusCanDuck:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/music/dlna/DmpMusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/dlna/DmpMusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->initErrorRetryHandle()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/dlna/DmpMusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsPlayPressed:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/music/dlna/DmpMusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/htc/music/dlna/DmpMusicPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/DMPContentItemDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/dlna/DmpMusicPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayerErrorCount:I

    return v0
.end method

.method static synthetic access$4008(Lcom/htc/music/dlna/DmpMusicPlayer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayerErrorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayerErrorCount:I

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/music/dlna/DmpMusicPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->requestUpperDoNext(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/dlna/DmpMusicPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->getDLNAErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/music/dlna/DmpMusicPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->prevImpl(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/music/dlna/DmpMusicPlayer;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/htc/music/dlna/DmpMusicPlayer;->next(ZZ)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/music/dlna/DmpMusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsAlbumArtGetting:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsAlbumArtGetting:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/dlna/DmpMusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->unBindDLNAService()V

    return-void
.end method

.method static synthetic access$5000(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->ensurePathExists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->eraseAllFilesIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/music/dlna/DmpMusicPlayer;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/htc/music/dlna/DmpMusicPlayer;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/htc/music/dlna/DmpMusicPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->doGetNowplayingQueue(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mUriPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->resetPlayerForWirelessConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRemovedServerID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/music/dlna/DmpMusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->openCurrent()V

    return-void
.end method

.method private addToPlayList([II)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 2301
    array-length v0, p1

    .line 2302
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 2303
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    .line 2304
    const/4 p2, 0x0

    .line 2306
    :cond_0
    iget v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->ensurePlayListCapacity(I)V

    .line 2307
    iget v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-le p2, v3, :cond_1

    .line 2308
    iget p2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    .line 2312
    :cond_1
    iget v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    sub-int v2, v3, p2

    .line 2313
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 2314
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 2313
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2318
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2319
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    add-int v4, p2, v1

    aget v5, p1, v1

    aput v5, v3, v4

    .line 2318
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2321
    :cond_3
    iget v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    .line 2323
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addToPlayList()...mPlayListLen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    return-void
.end method

.method private applyShuffleSeq([I)[I
    .locals 5
    .parameter "list"

    .prologue
    .line 3144
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    if-nez v2, :cond_2

    .line 3145
    :cond_0
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, "applyShuffleSeq(), (list == null || mShuffleSeq == null)."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3170
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 3151
    .restart local p1
    :cond_2
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyShuffleSeq()...list.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mShuffleSeq.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3154
    array-length v2, p1

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 3155
    array-length v2, p1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->setShuffleSeq(II)V

    .line 3158
    :cond_3
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    if-eqz v2, :cond_1

    .line 3161
    array-length v2, p1

    new-array v1, v2, [I

    .line 3162
    .local v1, rList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 3164
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    aget v2, v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    .line 3162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p1, v1

    .line 3170
    goto :goto_0
.end method

.method private bindDLNAService()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2734
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "bindDLNAService() ...."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2737
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2738
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindDLNAService succeed. IDLNAPluginService.class.getName() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    :goto_0
    return v1

    .line 2741
    :cond_0
    const-string v1, "[DmpMusicPlayer]"

    const-string v3, "bindDLNAService failed."

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 2742
    goto :goto_0

    .line 2744
    :catch_0
    move-exception v0

    .line 2745
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 2746
    const-string v1, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindDLNAService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2747
    goto :goto_0

    .line 2748
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 2749
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2750
    const-string v1, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindDLNAService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2751
    goto :goto_0
.end method

.method private checkBeforeNextOrPre()Z
    .locals 7

    .prologue
    .line 2712
    const/4 v2, 0x0

    .line 2713
    .local v2, retval:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2714
    .local v0, currentTime:J
    iget-wide v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToNextOrPre:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 2715
    const/4 v2, 0x1

    .line 2720
    :cond_0
    :goto_0
    return v2

    .line 2716
    :cond_1
    iget-wide v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToNextOrPre:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 2717
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkFileExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 2544
    const/4 v1, 0x0

    .line 2546
    .local v1, retval:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2548
    .local v0, albumArtFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2549
    const/4 v1, 0x1

    .line 2552
    :cond_0
    return v1
.end method

.method private doGetNowplayingQueue(I)V
    .locals 17
    .parameter "interval"

    .prologue
    .line 1503
    const-string v1, "[DmpMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNowplayingQueue()... interval => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const/4 v12, 0x0

    .line 1506
    .local v12, queueLen:I
    const/4 v15, 0x0

    .line 1507
    .local v15, tmpCursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1509
    .local v10, nowPlayingQueue:[Landroid/content/ContentValues;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1510
    .local v16, where:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serve_id= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    const-string v1, " AND _id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-ge v9, v1, :cond_1

    .line 1515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v1, v1, v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1516
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-ge v9, v1, :cond_0

    .line 1517
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1520
    :cond_1
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "content_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "artist_name"

    aput-object v5, v3, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "index_id COLLATE NOCASE ASC"

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1528
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_7

    .line 1529
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1531
    const/4 v13, 0x0

    .line 1532
    .local v13, sentTime:I
    if-nez p1, :cond_2

    .line 1533
    move/from16 p1, v12

    .line 1536
    :cond_2
    move/from16 v0, p1

    if-le v12, v0, :cond_5

    .line 1537
    move/from16 v0, p1

    new-array v10, v0, [Landroid/content/ContentValues;

    .line 1541
    :goto_1
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v12, :cond_6

    .line 1542
    rem-int v11, v9, p1

    .line 1544
    .local v11, queueIdx:I
    const-string v1, "content_name"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1545
    .local v14, title:Ljava/lang/String;
    const-string v1, "artist_name"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1547
    .local v7, artist:Ljava/lang/String;
    move/from16 v0, p1

    if-lt v9, v0, :cond_3

    if-nez v11, :cond_3

    .line 1548
    add-int/lit8 v13, v13, 0x1

    .line 1549
    if-eqz v10, :cond_3

    array-length v1, v10

    if-lez v1, :cond_3

    .line 1551
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    add-int/lit8 v2, v13, -0x1

    mul-int v2, v2, p1

    mul-int v3, p1, v13

    add-int/lit8 v3, v3, -0x1

    const-string v4, "com.htc.music.dlna.DmpMusicPlayer"

    invoke-interface {v1, v10, v2, v3, v4}, Lcom/htc/music/IPluginIPCNotify;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1557
    :cond_3
    :goto_3
    aget-object v1, v10, v11

    if-nez v1, :cond_4

    .line 1558
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    aput-object v1, v10, v11

    .line 1560
    :cond_4
    aget-object v1, v10, v11

    const-string v2, "title"

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    aget-object v1, v10, v11

    const-string v2, "artist"

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 1541
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1539
    .end local v7           #artist:Ljava/lang/String;
    .end local v11           #queueIdx:I
    .end local v14           #title:Ljava/lang/String;
    :cond_5
    new-array v10, v12, [Landroid/content/ContentValues;

    goto :goto_1

    .line 1552
    .restart local v7       #artist:Ljava/lang/String;
    .restart local v11       #queueIdx:I
    .restart local v14       #title:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1553
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "[DmpMusicPlayer]"

    const-string v2, "RemoteException in getNowplayingQueue onNowplayingQueueUpdated"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1566
    .end local v7           #artist:Ljava/lang/String;
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v11           #queueIdx:I
    .end local v14           #title:Ljava/lang/String;
    :cond_6
    if-eqz v10, :cond_7

    if-lez v12, :cond_7

    .line 1568
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    mul-int v2, p1, v13

    add-int/lit8 v3, v12, -0x1

    const-string v4, "com.htc.music.dlna.DmpMusicPlayer"

    invoke-interface {v1, v10, v2, v3, v4}, Lcom/htc/music/IPluginIPCNotify;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1575
    .end local v13           #sentTime:I
    :cond_7
    :goto_4
    if-eqz v15, :cond_8

    .line 1577
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1578
    const/4 v15, 0x0

    .line 1581
    :cond_8
    return-void

    .line 1569
    .restart local v13       #sentTime:I
    :catch_1
    move-exception v8

    .line 1570
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v1, "[DmpMusicPlayer]"

    const-string v2, "RemoteException in getNowplayingQueue 2"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private ensurePathExists(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 2569
    if-nez p1, :cond_1

    .line 2570
    const-string v1, "[DmpMusicPlayer]"

    const-string v2, "ensure Path Exists, path should not null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    :cond_0
    :goto_0
    return-void

    .line 2573
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2575
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2576
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private ensurePlayListBakCapacity(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 2262
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    array-length v1, v1

    if-le p1, v1, :cond_1

    .line 2263
    :cond_0
    new-array v0, p1, [I

    .line 2264
    .local v0, newlist:[I
    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    .line 2268
    .end local v0           #newlist:[I
    :cond_1
    return-void
.end method

.method private ensurePlayListCapacity(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 2243
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    .line 2248
    :cond_0
    new-array v2, p1, [I

    .line 2249
    .local v2, newlist:[I
    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    .line 2250
    .local v1, len:I
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    if-eqz v3, :cond_1

    .line 2251
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2252
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 2251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2255
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    .line 2259
    .end local v1           #len:I
    .end local v2           #newlist:[I
    :cond_2
    return-void
.end method

.method private eraseAllFilesIfNeeded(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 2582
    if-nez p1, :cond_1

    .line 2583
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "erase File, path should not null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    :cond_0
    return-void

    .line 2586
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2587
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2588
    .local v1, fileArray:[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_0

    .line 2589
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 2590
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2591
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2590
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 2510
    const/4 v1, 0x0

    .line 2513
    .local v1, cpClient:Landroid/content/ContentProviderClient;
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

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

    .line 2516
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "$$ albumArtDownloadedNotify: No provider client: cpClient..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    const/4 v0, 0x0

    .line 2540
    :goto_0
    return-object v0

    .line 2520
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

    .line 2522
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 2524
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v4, "r"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2525
    const-string v4, "[DmpMusicPlayer]"

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

    .line 2537
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 2538
    const/4 v1, 0x0

    .line 2540
    goto :goto_0

    .line 2527
    :cond_1
    :try_start_1
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "getAssetFileDescriptorFromPath: afDescriptor is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2528
    :catch_0
    move-exception v2

    .line 2529
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "[DmpMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2531
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2533
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v4, "[DmpMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private getContentIDFromID(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 1730
    const/4 v0, 0x0

    .line 1732
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #retval:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1736
    .restart local v0       #retval:Ljava/lang/String;
    return-object v0
.end method

.method private getDLNAErrorString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2485
    const/4 v0, 0x0

    .line 2487
    .local v0, errorCause:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    sget-object v2, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    if-ne v1, v2, :cond_0

    .line 2488
    const/4 v1, 0x0

    .line 2506
    :goto_0
    return-object v1

    .line 2490
    :cond_0
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2491
    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    iput-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    .line 2495
    :goto_1
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    sget-object v2, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    if-ne v1, v2, :cond_3

    .line 2496
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2504
    :cond_1
    :goto_2
    const-string v1, "[DmpMusicPlayer]"

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

    move-object v1, v0

    .line 2506
    goto :goto_0

    .line 2493
    :cond_2
    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    iput-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    goto :goto_1

    .line 2499
    :cond_3
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    sget-object v2, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    if-ne v1, v2, :cond_1

    .line 2500
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private getDmpAlbumArtDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2556
    const/4 v0, 0x0

    .line 2557
    .local v0, retval:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2559
    .local v1, vSDcard:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 2560
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

    .line 2564
    :goto_0
    return-object v0

    .line 2562
    :cond_0
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, "getDmpAlbumArtDirPath()...vSDcard is null and return path as null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initErrorRetryHandle()V
    .locals 2

    .prologue
    .line 2724
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayerErrorCount:I

    .line 2726
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->removeMessages(I)V

    .line 2727
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->removeMessages(I)V

    .line 2729
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v1, 0x2b00

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->removeMessages(I)V

    .line 2730
    return-void
.end method

.method private loadRepeatAndShuffle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3547
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "dlna_repeat"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRepeatMode:I

    .line 3548
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "dlna_shuffle"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    .line 3549
    return-void
.end method

.method private next(ZZ)V
    .locals 3
    .parameter "force"
    .parameter "changeSong"

    .prologue
    .line 880
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^next()...force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    monitor-enter p0

    .line 883
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToNextOrPre:J

    .line 885
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 886
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    monitor-exit p0

    .line 920
    :goto_0
    return-void

    .line 890
    :cond_0
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_7

    .line 892
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRepeatMode:I

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 894
    const-string v0, "com.htc.music.plugin.playbackcomplete"

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    .line 895
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_1

    .line 896
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "Track end. Set mPausedByTransientLossOfFocus = false;"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z

    .line 899
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsSupposedToBePlaying:Z

    .line 900
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    .line 901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsPlayPressed:Z

    .line 911
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 912
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->openCurrent()V

    .line 914
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    if-eqz p2, :cond_4

    .line 916
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    .line 919
    :cond_4
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "^^next()...END "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 903
    :cond_5
    :try_start_1
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRepeatMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    if-eqz p1, :cond_2

    .line 904
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    goto :goto_1

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 908
    :cond_7
    :try_start_2
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private openCurrent()V
    .locals 12

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    if-eq v0, v1, :cond_0

    .line 2165
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent, return, mCurrentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    :goto_0
    return-void

    .line 2169
    :cond_0
    monitor-enter p0

    .line 2171
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 2172
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    .line 2176
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    .line 2177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    .line 2178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    .line 2180
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-nez v0, :cond_2

    .line 2181
    monitor-exit p0

    goto :goto_0

    .line 2239
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2184
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-lt v0, v1, :cond_4

    .line 2185
    :cond_3
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad! we can\'t open mPlayPos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlayListLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    monitor-exit p0

    goto :goto_0

    .line 2191
    :cond_4
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent()...mPlayPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 2195
    .local v8, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "index_id COLLATE NOCASE ASC"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    .line 2198
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2199
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2200
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    const-string v1, "uri_path"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2203
    .local v9, index:I
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2204
    .local v11, uriPath:Ljava/lang/String;
    iput-object v11, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mUriPath:Ljava/lang/String;

    .line 2205
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v1, 0x2afb

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->removeMessages(I)V

    .line 2206
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v1, 0x2afb

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 2207
    .local v10, msg:Landroid/os/Message;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2208
    .local v6, data:Landroid/os/Bundle;
    const-string v0, "uriPath"

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    invoke-virtual {v10, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2210
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    invoke-virtual {v0, v10}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2212
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    const-string v1, "content_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2213
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    .line 2215
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    const-string v1, "serve_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2216
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    .line 2218
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    const-string v1, "container"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2219
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    .line 2222
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent()...mServerID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mContentID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDLNAService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 2229
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    invoke-virtual {v0}, Lcom/htc/music/DMPContentItemDetails;->reset()V

    .line 2230
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

    .line 2232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->saveQueue(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2239
    .end local v6           #data:Landroid/os/Bundle;
    .end local v9           #index:I
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #uriPath:Ljava/lang/String;
    :cond_5
    :goto_1
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    .line 2234
    .restart local v6       #data:Landroid/os/Bundle;
    .restart local v9       #index:I
    .restart local v10       #msg:Landroid/os/Message;
    .restart local v11       #uriPath:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2235
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private pluginNotifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 2272
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2273
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2274
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "notify"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2276
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    invoke-virtual {v2, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2277
    return-void
.end method

.method private prevImpl(Z)V
    .locals 2
    .parameter "changeSong"

    .prologue
    .line 831
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "%%prev()...Begin"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    monitor-enter p0

    .line 834
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mTimePointToNextOrPre:J

    .line 842
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    if-lez v0, :cond_2

    .line 843
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    .line 848
    :goto_0
    if-eqz p1, :cond_0

    .line 849
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->openCurrent()V

    .line 851
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    if-eqz p1, :cond_1

    .line 854
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    .line 857
    :cond_1
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "%%prev()...End"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return-void

    .line 845
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    goto :goto_0

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private reloadQueue(Z)V
    .locals 31
    .parameter "fromDmsOrIntent"

    .prologue
    .line 2856
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### reloadQueue...Begin, fromDmsOrIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->initErrorRetryHandle()V

    .line 2860
    if-nez p1, :cond_16

    .line 2862
    const/16 v22, 0x0

    .line 2863
    .local v22, q:Ljava/lang/String;
    const-string v13, ""

    .line 2865
    .local v13, emptyStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "dms_content_id"

    invoke-static {v2, v3, v13}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    .line 2866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "dms_server_id"

    invoke-static {v2, v3, v13}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    .line 2867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "dms_container_id"

    invoke-static {v2, v3, v13}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    .line 2869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "dms_start_index"

    const-wide/16 v4, -0x1

    invoke-static {v2, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->getLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J

    .line 2870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "dms_end_index"

    const-wide/16 v4, -0x1

    invoke-static {v2, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->getLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    .line 2871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "dms_direction"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDirection:I

    .line 2873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "dms_file_path"

    invoke-static {v2, v3, v13}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDmsFilePath:Ljava/lang/String;

    .line 2875
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mServerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContainerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContentID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    .line 2882
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 2883
    .local v11, done:Z
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From Preference, query done? => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2889
    .end local v11           #done:Z
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queue"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2891
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    .line 2892
    .local v23, qlen:I
    :goto_1
    if-eqz v22, :cond_15

    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_15

    .line 2893
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMP reload queue, loaded queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    const-string v2, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2895
    .local v14, entries:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v19, v0

    .line 2896
    .local v19, len:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->ensurePlayListCapacity(I)V

    .line 2897
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_5

    .line 2898
    aget-object v25, v14, v15

    .line 2899
    .local v25, revhex:Ljava/lang/String;
    const/16 v20, 0x0

    .line 2900
    .local v20, n:I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    .local v18, j:I
    :goto_3
    if-ltz v18, :cond_4

    .line 2901
    shl-int/lit8 v20, v20, 0x4

    .line 2902
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2903
    .local v8, c:C
    const/16 v2, 0x30

    if-lt v8, v2, :cond_2

    const/16 v2, 0x39

    if-gt v8, v2, :cond_2

    .line 2904
    add-int/lit8 v2, v8, -0x30

    add-int v20, v20, v2

    .line 2900
    :goto_4
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 2884
    .end local v8           #c:C
    .end local v14           #entries:[Ljava/lang/String;
    .end local v15           #i:I
    .end local v18           #j:I
    .end local v19           #len:I
    .end local v20           #n:I
    .end local v23           #qlen:I
    .end local v25           #revhex:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 2885
    .local v12, e:Landroid/os/RemoteException;
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From Preference, RemoteException, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2891
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_1
    const/16 v23, 0x0

    goto :goto_1

    .line 2905
    .restart local v8       #c:C
    .restart local v14       #entries:[Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v18       #j:I
    .restart local v19       #len:I
    .restart local v20       #n:I
    .restart local v23       #qlen:I
    .restart local v25       #revhex:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x61

    if-lt v8, v2, :cond_3

    const/16 v2, 0x66

    if-gt v8, v2, :cond_3

    .line 2906
    add-int/lit8 v2, v8, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v20, v20, v2

    goto :goto_4

    .line 2909
    :cond_3
    const/16 v19, 0x0

    .line 2913
    .end local v8           #c:C
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aput v20, v2, v15

    .line 2897
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2915
    .end local v18           #j:I
    .end local v20           #n:I
    .end local v25           #revhex:Ljava/lang/String;
    :cond_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    .line 2916
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMP reload queue, len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queue_bak"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2919
    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    .line 2920
    const-string v2, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2921
    array-length v0, v14

    move/from16 v19, v0

    .line 2922
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->ensurePlayListBakCapacity(I)V

    .line 2923
    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v15, v0, :cond_9

    .line 2924
    aget-object v25, v14, v15

    .line 2925
    .restart local v25       #revhex:Ljava/lang/String;
    const/16 v20, 0x0

    .line 2926
    .restart local v20       #n:I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    .restart local v18       #j:I
    :goto_6
    if-ltz v18, :cond_8

    .line 2927
    shl-int/lit8 v20, v20, 0x4

    .line 2928
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2929
    .restart local v8       #c:C
    const/16 v2, 0x30

    if-lt v8, v2, :cond_6

    const/16 v2, 0x39

    if-gt v8, v2, :cond_6

    .line 2930
    add-int/lit8 v2, v8, -0x30

    add-int v20, v20, v2

    .line 2926
    :goto_7
    add-int/lit8 v18, v18, -0x1

    goto :goto_6

    .line 2931
    :cond_6
    const/16 v2, 0x61

    if-lt v8, v2, :cond_7

    const/16 v2, 0x66

    if-gt v8, v2, :cond_7

    .line 2932
    add-int/lit8 v2, v8, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v20, v20, v2

    goto :goto_7

    .line 2935
    :cond_7
    const/16 v19, 0x0

    .line 2939
    .end local v8           #c:C
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    aput v20, v2, v15

    .line 2923
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 2944
    .end local v18           #j:I
    .end local v20           #n:I
    .end local v25           #revhex:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cur_pos"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v21

    .line 2945
    .local v21, pos:I
    if-ltz v21, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    move/from16 v0, v21

    if-lt v0, v2, :cond_c

    .line 2947
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    .line 3113
    .end local v13           #emptyStr:Ljava/lang/String;
    .end local v14           #entries:[Ljava/lang/String;
    .end local v15           #i:I
    .end local v19           #len:I
    .end local v21           #pos:I
    .end local v22           #q:Ljava/lang/String;
    .end local v23           #qlen:I
    :cond_b
    :goto_8
    return-void

    .line 2950
    .restart local v13       #emptyStr:Ljava/lang/String;
    .restart local v14       #entries:[Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v19       #len:I
    .restart local v21       #pos:I
    .restart local v22       #q:Ljava/lang/String;
    .restart local v23       #qlen:I
    :cond_c
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    .line 2952
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMP reload queue, mPlayPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 2955
    .local v30, where:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serve_id= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    const-string v2, " AND _id IN ("

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-ge v15, v2, :cond_e

    .line 2959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v2, v2, v15

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2960
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_d

    .line 2961
    const-string v2, ","

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 2964
    :cond_e
    const-string v2, ")"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "content_id"

    aput-object v6, v4, v5

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "index_id COLLATE NOCASE ASC"

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 2969
    .local v29, tmpCursor:Landroid/database/Cursor;
    if-eqz v29, :cond_f

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_10

    .line 2970
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    .line 2971
    if-eqz v29, :cond_b

    .line 2972
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 2973
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 2978
    :cond_10
    if-eqz v29, :cond_12

    .line 2980
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## ReloadQueue from preference...tmpCursor.getCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPlayListLen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    const-string v2, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 2982
    .local v16, idIdx:I
    const-string v2, "content_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2984
    .local v9, contentIDIdx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 2985
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2986
    const/4 v15, 0x0

    :goto_a
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v15, v2, :cond_11

    .line 2987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIdToContentIdTable:Ljava/util/Hashtable;

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2988
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    .line 2986
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 2991
    :cond_11
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 2992
    const/16 v29, 0x0

    .line 2995
    .end local v9           #contentIDIdx:I
    .end local v16           #idIdx:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "dlna_repeat"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v24

    .line 2996
    .local v24, repmode:I
    const/4 v2, 0x2

    move/from16 v0, v24

    if-eq v0, v2, :cond_13

    const/4 v2, 0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_13

    .line 2997
    const/16 v24, 0x0

    .line 2999
    :cond_13
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/dlna/DmpMusicPlayer;->mRepeatMode:I

    .line 3001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "dlna_shuffle"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v26

    .line 3002
    .local v26, shufmode:I
    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_14

    .line 3003
    const/16 v26, 0x0

    .line 3005
    :cond_14
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    .line 3112
    .end local v13           #emptyStr:Ljava/lang/String;
    .end local v14           #entries:[Ljava/lang/String;
    .end local v15           #i:I
    .end local v19           #len:I
    .end local v21           #pos:I
    .end local v22           #q:Ljava/lang/String;
    .end local v23           #qlen:I
    .end local v24           #repmode:I
    .end local v26           #shufmode:I
    .end local v29           #tmpCursor:Landroid/database/Cursor;
    .end local v30           #where:Ljava/lang/StringBuilder;
    :goto_b
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### reloadQueue...End, mPlayListLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3008
    .restart local v13       #emptyStr:Ljava/lang/String;
    .restart local v22       #q:Ljava/lang/String;
    .restart local v23       #qlen:I
    :cond_15
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "q: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", qlen => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 3014
    .end local v13           #emptyStr:Ljava/lang/String;
    .end local v22           #q:Ljava/lang/String;
    .end local v23           #qlen:I
    :cond_16
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mServerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContainerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContentID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_17

    .line 3021
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 3022
    .restart local v11       #done:Z
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From DMS, query done? => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3028
    .end local v11           #done:Z
    :cond_17
    :goto_c
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 3029
    .restart local v30       #where:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serve_id= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 3032
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_18

    .line 3034
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3042
    :cond_18
    :goto_d
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "index_id COLLATE NOCASE ASC"

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 3048
    .restart local v29       #tmpCursor:Landroid/database/Cursor;
    if-eqz v29, :cond_21

    .line 3050
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3052
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    .line 3053
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    .line 3055
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/16 v3, 0xc7

    if-le v2, v3, :cond_1b

    const/16 v2, 0xc7

    :goto_e
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    .line 3057
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue... mPlayListLen => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tmpCursor.getCount() => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3059
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->ensurePlayListCapacity(I)V

    .line 3061
    const-string v2, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 3062
    .local v17, idIndex:I
    const-string v2, "content_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 3063
    .local v10, contentIDIndex:I
    const/16 v27, 0x0

    .line 3064
    .local v27, tempContentID:Ljava/lang/String;
    const/16 v28, -0x1

    .line 3066
    .local v28, tempID:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 3068
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-ge v15, v2, :cond_1c

    .line 3070
    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 3071
    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 3073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aput v28, v2, v15

    .line 3074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3076
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    .line 3078
    :cond_19
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    .line 3068
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 3023
    .end local v10           #contentIDIndex:I
    .end local v15           #i:I
    .end local v17           #idIndex:I
    .end local v27           #tempContentID:Ljava/lang/String;
    .end local v28           #tempID:I
    .end local v29           #tmpCursor:Landroid/database/Cursor;
    .end local v30           #where:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v12

    .line 3024
    .restart local v12       #e:Landroid/os/RemoteException;
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From DMS, RemoteException, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3037
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v30       #where:Ljava/lang/StringBuilder;
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3038
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_18

    .line 3039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 3055
    .restart local v29       #tmpCursor:Landroid/database/Cursor;
    :cond_1b
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto/16 :goto_e

    .line 3080
    .restart local v10       #contentIDIndex:I
    .restart local v15       #i:I
    .restart local v17       #idIndex:I
    .restart local v27       #tempContentID:Ljava/lang/String;
    .restart local v28       #tempID:I
    :cond_1c
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initialization...mPlayPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 3083
    const/16 v29, 0x0

    .line 3085
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    if-nez v2, :cond_1e

    .line 3086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "dlna_shuffle"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v26

    .line 3087
    .restart local v26       #shufmode:I
    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_1d

    .line 3088
    const/16 v26, 0x0

    .line 3090
    :cond_1d
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    .line 3094
    .end local v26           #shufmode:I
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 3095
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->ensurePlayListBakCapacity(I)V

    .line 3096
    const/4 v15, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-ge v15, v2, :cond_1f

    .line 3097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v3, v3, v15

    aput v3, v2, v15

    .line 3096
    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    .line 3099
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->setShuffleSeq(II)V

    .line 3100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->applyShuffleSeq([I)[I

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->setPlaylist([I)V

    .line 3103
    :cond_20
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->saveQueue(Z)V

    .line 3110
    .end local v10           #contentIDIndex:I
    .end local v15           #i:I
    .end local v17           #idIndex:I
    .end local v27           #tempContentID:Ljava/lang/String;
    .end local v28           #tempID:I
    :goto_11
    const-string v2, "com.htc.music.plugin.queuechanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 3107
    :cond_21
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, "cursor is null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private requestUpperDoNext(Z)V
    .locals 3
    .parameter "force"

    .prologue
    .line 2280
    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    .line 2282
    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRepeatMode:I

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 2284
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->next(ZZ)V

    .line 2285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.update_glider_position"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2286
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "current_playing_pos"

    invoke-virtual {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->getQueuePosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2288
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2289
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2297
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2291
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "[DmpMusicPlayer]"

    const-string v2, "mContext is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2296
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "com.htc.music.plugin.playnext"

    invoke-direct {p0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetPlayerForWirelessConnect(Ljava/lang/String;)V
    .locals 9
    .parameter "tag"

    .prologue
    const/4 v8, 0x1

    .line 3522
    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3523
    monitor-enter p0

    .line 3524
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isPlaying()Z

    move-result v3

    .line 3525
    .local v3, isPlaying:Z
    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->position()J

    move-result-wide v0

    .line 3526
    .local v0, currentPlaybackPosition:J
    const-string v5, "[DmpMusicPlayer]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset WirelessConnect: mPlayer.isPlaying() == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    if-eqz v3, :cond_0

    .line 3528
    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->pause()V

    .line 3529
    :cond_0
    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v5}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->stop()V

    .line 3531
    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v6, 0x2afb

    invoke-virtual {v5, v6}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->removeMessages(I)V

    .line 3532
    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v6, 0x2afb

    invoke-virtual {v5, v6}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3533
    .local v4, msg:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3534
    .local v2, data:Landroid/os/Bundle;
    const-string v5, "uriPath"

    iget-object v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mUriPath:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3535
    const-string v5, "defaultPos"

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3536
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3537
    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    invoke-virtual {v5, v4}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3539
    if-ne v3, v8, :cond_1

    .line 3540
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsPlayPressed:Z

    .line 3542
    :cond_1
    monitor-exit p0

    .line 3544
    .end local v0           #currentPlaybackPosition:J
    .end local v2           #data:Landroid/os/Bundle;
    .end local v3           #isPlaying:Z
    .end local v4           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 3542
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "afd"

    .prologue
    .line 2636
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 2637
    :cond_0
    const/4 v3, 0x0

    .line 2708
    :cond_1
    :goto_0
    return-object v3

    .line 2640
    :cond_2
    iget-object v9, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    if-nez v9, :cond_3

    .line 2641
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    .line 2643
    :cond_3
    iget-object v9, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    if-nez v9, :cond_4

    .line 2644
    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v9, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 2648
    :cond_4
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2649
    .local v6, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2650
    const/4 v9, 0x1

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2651
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2656
    :goto_1
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    sget v10, Lcom/htc/music/dlna/DmpMusicPlayer;->MAX_ALBUM_ART_SIDE_LENGTH:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x4000

    cmpl-float v9, v9, v10

    if-gez v9, :cond_5

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    sget v10, Lcom/htc/music/dlna/DmpMusicPlayer;->MAX_ALBUM_ART_SIDE_LENGTH:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x4000

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_6

    .line 2657
    :cond_5
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2658
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2659
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2703
    .end local v6           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v5

    .line 2705
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "[DmpMusicPlayer]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeThumb(), thumbnail resize failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    const/4 v3, 0x0

    goto :goto_0

    .line 2662
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v6       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_6
    :try_start_1
    const-string v9, "[DmpMusicPlayer]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeThumb(), thumbnail 1st resize width "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", height "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    const/4 v9, 0x0

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2666
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2667
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2669
    .local v2, bitmapOrg:Landroid/graphics/Bitmap;
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v9, v10, :cond_7

    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2670
    .local v1, biggerSizeLength:I
    :goto_2
    sget v9, Lcom/htc/music/dlna/DmpMusicPlayer;->MAX_ALBUM_ART_SIDE_LENGTH:I

    if-le v1, v9, :cond_8

    sget v0, Lcom/htc/music/dlna/DmpMusicPlayer;->MAX_ALBUM_ART_SIDE_LENGTH:I

    .line 2672
    .local v0, albumArtSize:I
    :goto_3
    int-to-float v9, v0

    int-to-float v10, v1

    div-float v7, v9, v10

    .line 2674
    .local v7, scale:F
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2675
    .local v8, squareAlbum:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2677
    .local v4, canvas:Landroid/graphics/Canvas;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2678
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2679
    iget-object v9, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 2681
    iget-object v9, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2682
    iget-object v9, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v10, v0

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v7

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    int-to-float v11, v0

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    sub-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2686
    iget-object v9, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 2687
    iget-object v9, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMatrix:Landroid/graphics/Matrix;

    const/4 v10, 0x0

    invoke-virtual {v4, v2, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2688
    invoke-virtual {v4, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2692
    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2695
    .local v3, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2696
    const/4 v6, 0x0

    .line 2698
    if-eqz v8, :cond_1

    .line 2699
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 2700
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2669
    .end local v0           #albumArtSize:I
    .end local v1           #biggerSizeLength:I
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v7           #scale:F
    .end local v8           #squareAlbum:Landroid/graphics/Bitmap;
    :cond_7
    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .restart local v1       #biggerSizeLength:I
    :cond_8
    move v0, v1

    .line 2670
    goto :goto_3
.end method

.method private saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 8
    .parameter "afd"
    .parameter "filepath"

    .prologue
    .line 2596
    const/4 v3, 0x0

    .line 2598
    .local v3, retval:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 2599
    :cond_0
    const/4 v4, 0x0

    .line 2626
    :goto_0
    return v4

    .line 2602
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2605
    .local v2, newAlbumArt:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2606
    .local v1, fos:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_3

    .line 2607
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2611
    :goto_1
    if-eqz v1, :cond_4

    .line 2612
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2613
    const/4 v3, 0x1

    .line 2623
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v2, :cond_2

    .line 2624
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move v4, v3

    .line 2626
    goto :goto_0

    .line 2609
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_1
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "saveAlbumArtToSDCard(), newAlbumArt is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2617
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 2618
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 2616
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_2
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "saveAlbumArtToSDCard()..fos is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2619
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 2620
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private saveQueue(Z)V
    .locals 12
    .parameter "full"

    .prologue
    const-wide/16 v10, 0x0

    .line 2779
    const-string v7, "[DmpMusicPlayer]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveQueue, full = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    iget-object v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2781
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_7

    .line 2782
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2783
    .local v6, q:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2785
    .local v3, len:I
    iget-object v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    if-eqz v7, :cond_3

    .line 2792
    iget v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    .line 2793
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 2794
    iget-object v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v7, v7, v2

    int-to-long v4, v7

    .line 2795
    .local v4, n:J
    cmp-long v7, v4, v10

    if-nez v7, :cond_0

    .line 2796
    const-string v7, "0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2798
    :cond_0
    :goto_2
    cmp-long v7, v4, v10

    if-eqz v7, :cond_1

    .line 2799
    const-wide/16 v7, 0xf

    and-long/2addr v7, v4

    long-to-int v0, v7

    .line 2800
    .local v0, digit:I
    const/4 v7, 0x4

    shr-long/2addr v4, v7

    .line 2801
    iget-object v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2803
    .end local v0           #digit:I
    :cond_1
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2807
    .end local v4           #n:J
    :cond_2
    const-string v7, "queue"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2815
    .end local v2           #i:I
    :goto_3
    iget-object v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    if-eqz v7, :cond_8

    .line 2816
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2818
    iget-object v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    array-length v3, v7

    .line 2819
    const-string v7, "[DmpMusicPlayer]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveQueue mPlayListBak.length : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v3, :cond_6

    .line 2821
    iget-object v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    aget v4, v7, v2

    .line 2822
    .local v4, n:I
    if-nez v4, :cond_4

    .line 2823
    const-string v7, "0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2811
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_3
    const-string v7, "queue"

    const-string v8, ""

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 2825
    .restart local v2       #i:I
    .restart local v4       #n:I
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 2826
    and-int/lit8 v0, v4, 0xf

    .line 2827
    .restart local v0       #digit:I
    shr-int/lit8 v4, v4, 0x4

    .line 2828
    iget-object v7, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2830
    .end local v0           #digit:I
    :cond_5
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2833
    .end local v4           #n:I
    :cond_6
    const-string v7, "queue_bak"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2839
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v6           #q:Ljava/lang/StringBuilder;
    :cond_7
    :goto_7
    const-string v7, "cur_pos"

    iget v8, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2841
    const-string v7, "dms_server_id"

    iget-object v8, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2842
    const-string v7, "dms_container_id"

    iget-object v8, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2843
    const-string v7, "dms_content_id"

    iget-object v8, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2844
    const-string v7, "dlna_repeat"

    iget v8, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRepeatMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2845
    const-string v7, "dlna_shuffle"

    iget v8, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2846
    const-string v7, "dms_start_index"

    iget-wide v8, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2847
    const-string v7, "dms_end_index"

    iget-wide v8, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2848
    const-string v7, "dms_direction"

    iget v8, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDirection:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2849
    const-string v7, "dms_file_path"

    iget-object v8, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDmsFilePath:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2851
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2853
    return-void

    .line 2836
    .restart local v3       #len:I
    .restart local v6       #q:Ljava/lang/StringBuilder;
    :cond_8
    const-string v7, "queue_bak"

    const-string v8, ""

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_7
.end method

.method private setShuffleSeq(II)V
    .locals 7
    .parameter "len"
    .parameter "nFirst"

    .prologue
    .line 3118
    const-string v4, "[DmpMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setShuffleSeq()... len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nFirst = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    if-nez p1, :cond_1

    .line 3121
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    .line 3139
    :cond_0
    return-void

    .line 3124
    :cond_1
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    .line 3125
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 3126
    .local v2, rnd:Ljava/util/Random;
    move v1, p2

    .line 3128
    .local v1, r:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 3129
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    aput v0, v4, v0

    .line 3128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3131
    :cond_2
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_0

    .line 3133
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    aget v3, v4, v0

    .line 3134
    .local v3, temp:I
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 3135
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleSeq:[I

    aput v3, v4, v1

    .line 3136
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x1

    sub-int v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int v1, v4, v5

    .line 3131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private unBindDLNAService()V
    .locals 4

    .prologue
    .line 2757
    const-string v1, "[DmpMusicPlayer]"

    const-string v2, "unBindDLNAService() ...."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 2761
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2765
    :goto_0
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2767
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 2769
    :cond_0
    return-void

    .line 2762
    :catch_0
    move-exception v0

    .line 2763
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clearAlbumArtRequests()V
    .locals 2

    .prologue
    .line 1489
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "clearAlbumArtRequests()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v1, 0x2afe

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    .line 1491
    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 2

    .prologue
    .line 1586
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "clearNowplayingQueueRequests()...do nothing..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    return-void
.end method

.method public close(Z)V
    .locals 0
    .parameter "isPowerOff"

    .prologue
    .line 1674
    return-void
.end method

.method public duration()J
    .locals 6

    .prologue
    .line 925
    const-wide/16 v0, -0x1

    .line 927
    .local v0, durationVal:J
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-wide v2, v2, Lcom/htc/music/DMPContentItemDetails;->contentDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 928
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-wide v2, v2, Lcom/htc/music/DMPContentItemDetails;->contentDuration:J

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 937
    :goto_0
    return-wide v0

    .line 931
    :cond_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 932
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->duration()J

    move-result-wide v0

    .line 934
    :cond_1
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duration()...durationVal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 16
    .parameter "position"

    .prologue
    .line 1264
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()... position => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const/4 v11, 0x0

    .line 1266
    .local v11, retval:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1269
    .local v1, contentID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 1270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    if-nez v13, :cond_0

    .line 1271
    const-string v13, "[DmpMusicPlayer]"

    const-string v14, "getAlbumArtPathByPosition()...mPlayListBak is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const/4 v13, 0x0

    .line 1379
    :goto_0
    return-object v13

    .line 1275
    :cond_0
    if-ltz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    array-length v13, v13

    move/from16 v0, p1

    if-ge v0, v13, :cond_1

    .line 1276
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    aget v13, v13, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/dlna/DmpMusicPlayer;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v1

    .line 1297
    :goto_1
    if-nez v1, :cond_5

    .line 1298
    const-string v13, "[DmpMusicPlayer]"

    const-string v14, "getAlbumArtPathByPosition()...contentID is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const/4 v13, 0x0

    goto :goto_0

    .line 1279
    :cond_1
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...index out of boundary => position = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPlayListBak.length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const/4 v13, 0x0

    goto :goto_0

    .line 1283
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    if-nez v13, :cond_3

    .line 1284
    const-string v13, "[DmpMusicPlayer]"

    const-string v14, "getAlbumArtPathByPosition()...mPlayList is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const/4 v13, 0x0

    goto :goto_0

    .line 1288
    :cond_3
    if-ltz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    array-length v13, v13

    move/from16 v0, p1

    if-ge v0, v13, :cond_4

    .line 1289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v13, v13, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/dlna/DmpMusicPlayer;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1292
    :cond_4
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...index out of boundary => position = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPlayList.length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1303
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 1304
    .local v12, status:Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1305
    const-string v13, "[DmpMusicPlayer]"

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

    .line 1306
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1311
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v13, :cond_9

    .line 1312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1313
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1324
    :cond_7
    :goto_2
    if-eqz v11, :cond_9

    move-object v13, v11

    .line 1325
    goto/16 :goto_0

    .line 1315
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1316
    .local v7, fileName:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1318
    .local v8, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/dlna/DmpMusicPlayer;->checkFileExist(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1319
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    move-object v11, v8

    goto :goto_2

    .line 1329
    .end local v7           #fileName:Ljava/lang/String;
    .end local v8           #filePath:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    .line 1330
    .local v6, duplicatedRequest:Z
    const/4 v2, 0x0

    .line 1331
    .local v2, curCV:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 1332
    .local v3, curCV_contentId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1334
    .local v4, curCV_shuffleMode:Ljava/lang/Integer;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_a

    .line 1335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curCV:Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 1336
    .restart local v2       #curCV:Landroid/content/ContentValues;
    if-nez v2, :cond_b

    .line 1337
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    :cond_a
    :goto_4
    const/4 v13, 0x1

    if-ne v6, v13, :cond_11

    .line 1362
    const-string v13, "[DmpMusicPlayer]"

    const-string v14, "getAlbumArtPathByPosition()..Duplated Album art request. Ignore this request and break it."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1341
    :cond_b
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 1342
    :cond_c
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...There is no content id or shuffle information in curCV when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1346
    :cond_d
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1347
    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1349
    if-eqz v3, :cond_e

    if-nez v4, :cond_f

    .line 1350
    :cond_e
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV_contentId or curCV_shuffleMode is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1354
    :cond_f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_10

    .line 1355
    const/4 v6, 0x1

    .line 1356
    goto :goto_4

    .line 1334
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1367
    :cond_11
    if-nez v11, :cond_12

    .line 1369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v14, 0x2afc

    invoke-virtual {v13, v14}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1370
    .local v10, msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1371
    .local v5, data:Landroid/os/Bundle;
    const-string v13, "shuffle"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1372
    const-string v13, "position"

    move/from16 v0, p1

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1373
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v13, "content"

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v10, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    invoke-virtual {v13, v10}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v5           #data:Landroid/os/Bundle;
    .end local v10           #msg:Landroid/os/Message;
    :cond_12
    move-object v13, v11

    .line 1379
    goto/16 :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 16
    .parameter "position"

    .prologue
    .line 1384
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()... position => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const/4 v11, 0x0

    .line 1387
    .local v11, retval:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1389
    .local v1, contentID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    if-nez v13, :cond_0

    .line 1390
    const-string v13, "[DmpMusicPlayer]"

    const-string v14, "getAlbumArtPathByShufflePosition()...mPlayList is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const/4 v13, 0x0

    .line 1484
    :goto_0
    return-object v13

    .line 1394
    :cond_0
    if-ltz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    array-length v13, v13

    move/from16 v0, p1

    if-ge v0, v13, :cond_1

    .line 1395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v13, v13, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/dlna/DmpMusicPlayer;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v1

    .line 1402
    if-nez v1, :cond_2

    .line 1403
    const-string v13, "[DmpMusicPlayer]"

    const-string v14, "getAlbumArtPathByShufflePosition()...contentID is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const/4 v13, 0x0

    goto :goto_0

    .line 1398
    :cond_1
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()...index out of boundary => position = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPlayList.length"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const/4 v13, 0x0

    goto :goto_0

    .line 1408
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 1409
    .local v12, status:Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1410
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()...SD card is not ready...status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const/4 v13, 0x0

    goto :goto_0

    .line 1416
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v13, :cond_6

    .line 1417
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1418
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1429
    :cond_4
    :goto_1
    if-eqz v11, :cond_6

    move-object v13, v11

    .line 1430
    goto/16 :goto_0

    .line 1420
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1421
    .local v7, fileName:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1423
    .local v8, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/dlna/DmpMusicPlayer;->checkFileExist(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    move-object v11, v8

    goto :goto_1

    .line 1434
    .end local v7           #fileName:Ljava/lang/String;
    .end local v8           #filePath:Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    .line 1435
    .local v6, duplicatedRequest:Z
    const/4 v2, 0x0

    .line 1436
    .local v2, curCV:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 1437
    .local v3, curCV_contentId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1439
    .local v4, curCV_shuffleMode:Ljava/lang/Integer;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_7

    .line 1440
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curCV:Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 1441
    .restart local v2       #curCV:Landroid/content/ContentValues;
    if-nez v2, :cond_8

    .line 1442
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()...curCV is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :cond_7
    :goto_3
    const/4 v13, 0x1

    if-ne v6, v13, :cond_e

    .line 1467
    const-string v13, "[DmpMusicPlayer]"

    const-string v14, "getAlbumArtPathByShufflePosition()..Duplated Album art request. Ignore this request and break it."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1446
    :cond_8
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1447
    :cond_9
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()...There is no content id or shuffle information in curCV when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1451
    :cond_a
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1452
    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1454
    if-eqz v3, :cond_b

    if-nez v4, :cond_c

    .line 1455
    :cond_b
    const-string v13, "[DmpMusicPlayer]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()...curCV_contentId or curCV_shuffleMode is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1459
    :cond_c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 1460
    const/4 v6, 0x1

    .line 1461
    goto :goto_3

    .line 1439
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1472
    :cond_e
    if-nez v11, :cond_f

    .line 1474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v14, 0x2afc

    invoke-virtual {v13, v14}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1475
    .local v10, msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1476
    .local v5, data:Landroid/os/Bundle;
    const-string v13, "shuffle"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1477
    const-string v13, "position"

    move/from16 v0, p1

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1478
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const-string v13, "content"

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-virtual {v10, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    invoke-virtual {v13, v10}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v5           #data:Landroid/os/Bundle;
    .end local v10           #msg:Landroid/os/Message;
    :cond_f
    move-object v13, v11

    .line 1484
    goto/16 :goto_0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 1662
    const/4 v0, -0x1

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1016
    const/4 v0, 0x0

    .line 1018
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v1, v1, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v1, v1, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1019
    :cond_0
    const-string v0, "<unknown>"

    .line 1024
    :goto_0
    return-object v0

    .line 1022
    :cond_1
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAlbumQueue()[I
    .locals 4

    .prologue
    .line 1716
    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    .line 1717
    .local v1, len:I
    new-array v2, v1, [I

    .line 1718
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1719
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 1718
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1721
    :cond_0
    return-object v2
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1029
    monitor-enter p0

    .line 1030
    const/4 v9, 0x0

    .line 1031
    .local v9, retval:Ljava/lang/String;
    const/4 v8, 0x1

    .line 1033
    .local v8, isNeedToQuery:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    const-string v1, "artist_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1035
    .local v7, index:I
    if-ltz v7, :cond_4

    .line 1036
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1037
    const/4 v8, 0x0

    .line 1044
    .end local v7           #index:I
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1047
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1049
    .local v6, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "index_id COLLATE NOCASE ASC"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    .line 1052
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1054
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    const-string v1, "artist_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1055
    .restart local v7       #index:I
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1063
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #index:I
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1064
    :cond_2
    const-string v9, "<unknown>"

    .line 1066
    :cond_3
    monitor-exit p0

    return-object v9

    .line 1040
    .restart local v7       #index:I
    :cond_4
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getArtistName()...index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1067
    .end local v7           #index:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1059
    :cond_5
    :try_start_1
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "getArtistName()...Fail to get artist name...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getAudioId()I
    .locals 2

    .prologue
    .line 2331
    monitor-enter p0

    .line 2332
    :try_start_0
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    aget v0, v0, v1

    monitor-exit p0

    .line 2336
    :goto_0
    return v0

    .line 2335
    :cond_0
    monitor-exit p0

    .line 2336
    const/4 v0, -0x1

    goto :goto_0

    .line 2335
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->getAudioSessionId()I

    move-result v0

    .line 1643
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 3

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->getPercentage()F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1215
    .local v0, retval:I
    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1193
    const/4 v0, 0x0

    .line 1194
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 1197
    :cond_0
    return-object v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 1725
    const/4 v0, 0x1

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1175
    const/4 v0, 0x0

    .line 1176
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->fileName:Ljava/lang/String;

    .line 1179
    :cond_0
    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1184
    const/4 v0, 0x0

    .line 1185
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 1188
    :cond_0
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1202
    const/4 v0, 0x0

    .line 1203
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "dms_file_path"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1209
    :cond_0
    return-object v0
.end method

.method public getNowplayingQueue(I)V
    .locals 4
    .parameter "interval"

    .prologue
    .line 1495
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v3, 0x2aff

    invoke-virtual {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1496
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1497
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "interval"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1498
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1499
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    invoke-virtual {v2, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1500
    return-void
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1657
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1635
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->getDLNAErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 5
    .parameter "shufflePosition"

    .prologue
    .line 1220
    monitor-enter p0

    .line 1221
    const/4 v1, 0x0

    .line 1223
    .local v1, retval:I
    :try_start_0
    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-ge v0, v2, :cond_0

    .line 1225
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_1

    .line 1227
    move v1, v0

    .line 1235
    .end local v0           #i:I
    :cond_0
    :goto_1
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< getPositionByShufflePosition( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )...retval => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    monitor-exit p0

    return v1

    .line 1224
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    .end local v0           #i:I
    :cond_2
    move v1, p1

    goto :goto_1

    .line 1237
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 727
    monitor-enter p0

    .line 728
    :try_start_0
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 1144
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 1139
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 1125
    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    return v0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 1242
    monitor-enter p0

    .line 1243
    const/4 v1, 0x0

    .line 1245
    .local v1, retval:I
    :try_start_0
    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1246
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-ge v0, v2, :cond_0

    .line 1247
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    .line 1249
    move v1, v0

    .line 1257
    .end local v0           #i:I
    :cond_0
    :goto_1
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> getShufflePositionByPosition( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )...retval => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    monitor-exit p0

    return v1

    .line 1246
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1255
    .end local v0           #i:I
    :cond_2
    move v1, p1

    goto :goto_1

    .line 1259
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTrackDetails(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 1592
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTrackDetails()... position => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-lt p1, v2, :cond_2

    .line 1595
    :cond_0
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTrackDetails()...position is illegal, position => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    :cond_1
    :goto_0
    return-void

    .line 1599
    :cond_2
    iput p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryPosition:I

    .line 1603
    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    if-ne v2, v5, :cond_3

    .line 1604
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    .line 1610
    .local v1, tempQueue:[I
    :goto_1
    aget v2, v1, p1

    invoke-direct {p0, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;

    .line 1612
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_1

    .line 1614
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### getTrackDetails()... getContentItemDetails...mServerID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mQueryContentID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueryContentID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, "Remove exception in mDLNAService.getDMPContentItemDetails"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1607
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #tempQueue:[I
    :cond_3
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    .restart local v1       #tempQueue:[I
    goto :goto_1
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 977
    monitor-enter p0

    .line 978
    const/4 v9, 0x0

    .line 979
    .local v9, retval:Ljava/lang/String;
    const/4 v8, 0x1

    .line 981
    .local v8, isNeedToQuery:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    const-string v1, "content_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 983
    .local v7, index:I
    if-ltz v7, :cond_2

    .line 984
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 985
    const/4 v8, 0x0

    .line 992
    .end local v7           #index:I
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 993
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 995
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 997
    .local v6, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "index_id COLLATE NOCASE ASC"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    .line 1000
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1002
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    const-string v1, "content_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1003
    .restart local v7       #index:I
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1010
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #index:I
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v9

    .line 988
    .restart local v7       #index:I
    :cond_2
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackName()...index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1011
    .end local v7           #index:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1007
    :cond_3
    :try_start_1
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "getTrackName()...Fail to get track name...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 1648
    const/4 v0, 0x0

    return v0
.end method

.method public isDmcOrPushMode()Z
    .locals 1

    .prologue
    .line 1667
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public isPluginReady()Z
    .locals 3

    .prologue
    .line 1625
    const/4 v0, 0x0

    .line 1627
    .local v0, retval:Z
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    sget-object v2, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    if-ne v1, v2, :cond_0

    .line 1628
    const/4 v0, 0x1

    .line 1630
    :cond_0
    return v0
.end method

.method public next(Z)V
    .locals 3
    .parameter "changeSong"

    .prologue
    const/4 v2, 0x1

    .line 862
    if-nez p1, :cond_0

    .line 863
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->next(ZZ)V

    .line 877
    :goto_0
    return-void

    .line 866
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->checkBeforeNextOrPre()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v1, 0x2b02

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    .line 871
    invoke-direct {p0, v2, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->next(ZZ)V

    goto :goto_0

    .line 875
    :cond_1
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "** Press next button too fast, ignore this time..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 756
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, "pause()..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    if-nez v2, :cond_0

    .line 762
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, "mPlayer is null in pause"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v1

    .line 773
    .local v1, isSongReady:Z
    iput-boolean v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsPlayPressed:Z

    .line 775
    monitor-enter p0

    .line 776
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 778
    if-eqz v1, :cond_1

    .line 779
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->pause()V

    .line 780
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsSupposedToBePlaying:Z

    .line 781
    const-string v2, "com.htc.music.plugin.statechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 787
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, ex:Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public play()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 792
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "play()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iput-boolean v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsPlayPressed:Z

    .line 795
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "call play() and mediaplayer is initialized"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->start()V

    .line 800
    iget-boolean v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_0

    .line 801
    iput-boolean v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsSupposedToBePlaying:Z

    .line 802
    const-string v0, "com.htc.music.plugin.statechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "play()...mediaplayer is not initialized..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->position()J

    move-result-wide v0

    .line 946
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev(Z)V
    .locals 2
    .parameter "changeSong"

    .prologue
    .line 813
    if-nez p1, :cond_0

    .line 814
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->prevImpl(Z)V

    .line 828
    :goto_0
    return-void

    .line 817
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->checkBeforeNextOrPre()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v1, 0x2b02

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    .line 819
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmpMusicPlayer;->prevImpl(Z)V

    goto :goto_0

    .line 826
    :cond_1
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "** Press prev button too fast, ignore this time..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/htc/music/IPluginIPCNotify;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 1154
    const-string v0, "[DmpMusicPlayer]"

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

    .line 1156
    if-eqz p1, :cond_0

    .line 1157
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 1159
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1679
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "onDestroy()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    invoke-virtual {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    const/16 v1, 0x2b01

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    .line 1689
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1692
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mMediaPlayerHandler:Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/dlna/DmpMusicPlayer$MediaPlayerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1694
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1696
    iput-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCursor:Landroid/database/Cursor;

    .line 1699
    :cond_1
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1701
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    invoke-virtual {v0}, Lcom/htc/music/DMPContentItemDetails;->reset()V

    .line 1703
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->unBindDLNAService()V

    .line 1705
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1706
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1707
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1708
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1711
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "onDestroy finished."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    return-void
.end method

.method public seek(J)J
    .locals 7
    .parameter "pos"

    .prologue
    const-wide/16 v2, -0x1

    .line 951
    const-string v4, "[DmpMusicPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mUriPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mUriPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mUriPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mUriPath:Ljava/lang/String;

    const-string v5, "htc-dlna"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 954
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "seek()...This song could not be allowed to be seeked. Do nothing while seeking."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :goto_0
    return-wide v2

    .line 958
    :cond_0
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v4}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 959
    invoke-virtual {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->duration()J

    move-result-wide v0

    .line 960
    .local v0, curDuration:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 961
    move-wide p1, v0

    .line 963
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    const-wide/16 p1, 0x0

    .line 965
    :cond_2
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seek(), curDuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v2, p1, p2}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->seek(J)J

    move-result-wide v2

    goto :goto_0

    .line 970
    .end local v0           #curDuration:J
    :cond_3
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "seek()...mPlayer = null or mPlayer is not initialized... "

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPlaylist([I)V
    .locals 8
    .parameter "list"

    .prologue
    .line 2340
    monitor-enter p0

    .line 2342
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->getAudioId()I

    move-result v3

    .line 2343
    .local v3, oldId:I
    array-length v1, p1

    .line 2344
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 2347
    .local v2, newlist:Z
    iget v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-ne v5, v1, :cond_0

    .line 2348
    const/4 v2, 0x0

    .line 2349
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2350
    aget v5, p1, v0

    iget-object v6, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v6, v6, v0

    if-eq v5, v6, :cond_4

    .line 2351
    const/4 v2, 0x1

    .line 2356
    .end local v0           #i:I
    :cond_0
    if-eqz v2, :cond_1

    .line 2357
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->addToPlayList([II)V

    .line 2363
    :cond_1
    const/4 v4, 0x0

    .line 2364
    .local v4, playPosFound:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 2365
    aget v5, p1, v0

    if-ne v5, v3, :cond_5

    .line 2366
    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    .line 2367
    const/4 v4, 0x1

    .line 2371
    :cond_2
    if-nez v4, :cond_3

    .line 2372
    const-string v5, "[DmpMusicPlayer]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPlaylist: cannot find the same audio id. Some thing must be wrong. oldId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    .line 2375
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->openCurrent()V

    .line 2378
    :cond_3
    monitor-exit p0

    .line 2379
    return-void

    .line 2349
    .end local v4           #playPosFound:Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2364
    .restart local v4       #playPosFound:Z
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2378
    .end local v0           #i:I
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:I
    .end local v4           #playPosFound:Z
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setPlaylistInfo(Landroid/os/Bundle;)V
    .locals 5
    .parameter "playlistInfo"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 699
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->cleanUp()V

    .line 701
    const-string v0, "dms_content_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;

    .line 702
    const-string v0, "dms_server_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    .line 703
    const-string v0, "dms_container_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContainerID:Ljava/lang/String;

    .line 704
    const-string v0, "dms_start_index"

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mStartIdx:J

    .line 705
    const-string v0, "dms_end_index"

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mEndIdx:J

    .line 706
    const-string v0, "dms_direction"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDirection:I

    .line 707
    const-string v0, "dlna_shuffle"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    .line 708
    const-string v0, "dms_file_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mDmsFilePath:Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRemovedServerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRemovedServerID:Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    sget-object v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    .line 719
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->reloadQueue(Z)V

    .line 720
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->openCurrent()V

    .line 723
    return-void

    .line 715
    :cond_1
    sget-object v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mCurrentState:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    goto :goto_0
.end method

.method public setQueuePosition(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 1072
    const-string v0, "[DmpMusicPlayer]"

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

    .line 1073
    monitor-enter p0

    .line 1074
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->initErrorRetryHandle()V

    .line 1076
    if-ltz p1, :cond_0

    .line 1077
    iput p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    .line 1079
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/dlna/DmpMusicPlayer;->openCurrent()V

    .line 1081
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    .line 1082
    monitor-exit p0

    .line 1083
    return-void

    .line 1082
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 3
    .parameter "repeatmode"

    .prologue
    .line 1130
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatMode()...repeatmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    monitor-enter p0

    .line 1132
    :try_start_0
    iput p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mRepeatMode:I

    .line 1133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->saveQueue(Z)V

    .line 1134
    monitor-exit p0

    .line 1135
    return-void

    .line 1134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 5
    .parameter "shufflemode"

    .prologue
    const/4 v4, 0x1

    .line 1087
    const-string v1, "[DmpMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode()...shufflemode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    monitor-enter p0

    .line 1089
    :try_start_0
    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-lez v1, :cond_0

    .line 1090
    monitor-exit p0

    .line 1121
    :goto_0
    return-void

    .line 1092
    :cond_0
    iput p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    .line 1094
    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mShuffleMode:I

    if-ne v1, v4, :cond_2

    .line 1095
    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    invoke-direct {p0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->ensurePlayListBakCapacity(I)V

    .line 1096
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    if-ge v0, v1, :cond_1

    .line 1097
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 1096
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1099
    :cond_1
    iget v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I

    iget v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayPos:I

    invoke-direct {p0, v1, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->setShuffleSeq(II)V

    .line 1100
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayList:[I

    invoke-direct {p0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->applyShuffleSeq([I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->setPlaylist([I)V

    .line 1115
    .end local v0           #i:I
    :goto_2
    const-string v1, "com.htc.music.plugin.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    .line 1116
    const-string v1, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    .line 1119
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->saveQueue(Z)V

    .line 1120
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1103
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    if-eqz v1, :cond_4

    .line 1104
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1105
    const-string v1, "[DmpMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode mPlayListBak:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1106
    :cond_3
    iget-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    invoke-virtual {p0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->setPlaylist([I)V

    .line 1107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListBak:[I

    goto :goto_2

    .line 1111
    .end local v0           #i:I
    :cond_4
    const-string v1, "[DmpMusicPlayer]"

    const-string v2, "setShuffleMode()....mPlayListBak = null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public setVolume(I)V
    .locals 0
    .parameter "nVol"

    .prologue
    .line 1653
    return-void
.end method

.method public startPluginActivity()V
    .locals 0

    .prologue
    .line 1171
    return-void
.end method

.method public stop(Z)V
    .locals 3
    .parameter "stateChanged"

    .prologue
    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "stop()...call mPlayer.stop();..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->stop()V

    .line 746
    :cond_0
    if-eqz p1, :cond_1

    .line 747
    iput-boolean v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsSupposedToBePlaying:Z

    .line 748
    iput-boolean v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mIsPlayPressed:Z

    .line 749
    const-string v0, "com.htc.music.plugin.statechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V

    .line 752
    :cond_1
    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    .prologue
    .line 1163
    const-string v0, "[DmpMusicPlayer]"

    const-string v1, "unregisterCallback()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 1165
    return-void
.end method
