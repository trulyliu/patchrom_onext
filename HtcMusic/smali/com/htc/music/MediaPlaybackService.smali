.class public Lcom/htc/music/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MediaPlaybackService$PublicServiceStub;,
        Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;,
        Lcom/htc/music/MediaPlaybackService$LocalPlayer;,
        Lcom/htc/music/MediaPlaybackService$MultiPlayer;,
        Lcom/htc/music/MediaPlaybackService$Shuffler;,
        Lcom/htc/music/MediaPlaybackService$DockEventListener;,
        Lcom/htc/music/MediaPlaybackService$QueryHandler;,
        Lcom/htc/music/MediaPlaybackService$NonUiHandler;,
        Lcom/htc/music/MediaPlaybackService$ORIENTATION;
    }
.end annotation


# static fields
.field public static final ALBUMID:I = 0x0

.field public static final AND_NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field public static final AND_PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final AND_PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field public static final AND_TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field public static final ANIMATION_CHANGE_ART:Ljava/lang/String; = "com.htc.music.changeart"

.field public static final ANIMATION_MOVE_NEXT:Ljava/lang/String; = "com.htc.music.rotateright"

.field public static final ANIMATION_MOVE_PREV:Ljava/lang/String; = "com.htc.music.rotateleft"

.field public static final ANIMATION_QUICKLY:Ljava/lang/String; = "com.htc.music.rotatequickly"

.field public static final ANIMATION_REFRESH:Ljava/lang/String; = "com.htc.music.refresh"

.field public static final ARTISTID:I = 0x1

.field public static final ASYNC_OPEN_COMPLETE:Ljava/lang/String; = "com.htc.music.asyncopencomplete"

.field public static final BLUETOOTH_AVRCP_NOTIFY:Ljava/lang/String; = "com.broadcom.bluetooth.avrcp.notify"

.field public static final CMDFFSTART:Ljava/lang/String; = "ffstart"

.field public static final CMDFFSTOP:Ljava/lang/String; = "ffstop"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPLAY:Ljava/lang/String; = "play"

.field public static final CMDPLAYALBUM:Ljava/lang/String; = "play_album"

.field public static final CMDPLAYARTIST:Ljava/lang/String; = "play_artist"

.field public static final CMDPLAYPLAYLIST:Ljava/lang/String; = "play_playlist"

.field public static final CMDPLAYTRACK:Ljava/lang/String; = "play_track"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDRESUME:Ljava/lang/String; = "resume"

.field public static final CMDRWSTART:Ljava/lang/String; = "rwstart"

.field public static final CMDRWSTOP:Ljava/lang/String; = "rwstop"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field private static final CMD_QUERY_ALBUM_ART:I = 0x17

.field public static final DLNAMODE:Ljava/lang/String; = "dlnamode"

.field public static final EXTRA_COOKIE:Ljava/lang/String; = "cookie"

.field public static final EXTRA_CURRENT_PLAYING_POS:Ljava/lang/String; = "current_playing_pos"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_PLAYLIST_LEN:Ljava/lang/String; = "playlist_len"

.field private static final FADEIN:I = 0x4

.field private static final FFRW_REPEAT_FF:I = 0x1

.field private static final FFRW_REPEAT_NONE:I = 0x0

.field private static final FFRW_REPEAT_RW:I = 0x2

.field private static final FF_RW:I = 0x5

.field public static final FOLDERID:I = 0x5

.field public static final GENREID:I = 0x2

.field public static final HTC_RCC_ALBUMART_PREFIX:Ljava/lang/String; = "htc_rcc_albumart_prefix_"

.field private static final IDLE_DELAY:I = 0xea60

.field public static final LAST:I = 0x3

.field private static final MAX_HISTORY_SIZE:I = 0xa

.field private static final MEDIA_ERROR_STATE:I = -0x26

.field public static final META_CHANGED:Ljava/lang/String; = "com.htc.music.metachanged"

.field public static final META_GENRE:Ljava/lang/String; = "genre"

.field public static final META_NUM_OF_TRACKS:Ljava/lang/String; = "numberoftracks"

.field public static final META_POSITION:Ljava/lang/String; = "position"

.field public static final META_TITLE:Ljava/lang/String; = "title"

.field public static final META_TRACK_NUM:Ljava/lang/String; = "tracknum"

.field public static final MODE_CAR:Ljava/lang/String; = "car"

.field private static final MSG_ARG_STATE_CHANGED:I = 0x7bd

.field private static final MUSIC_NOTIFICATION_PRIORITY:I = 0x6

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.next"

.field public static final NOTIFY_GET_ALBUM:Ljava/lang/String; = "album"

.field public static final NOTIFY_GET_ALBUM_ID:Ljava/lang/String; = "albumid"

.field public static final NOTIFY_GET_ARTIST:Ljava/lang/String; = "artist"

.field public static final NOTIFY_GET_AUDIO_ID:Ljava/lang/String; = "id"

.field public static final NOTIFY_GET_AUDIO_PATH:Ljava/lang/String; = "path"

.field public static final NOTIFY_GET_DURATION:Ljava/lang/String; = "duration"

.field public static final NOTIFY_GET_QUEUE_POOSITION:Ljava/lang/String; = "queueposition"

.field public static final NOTIFY_GET_QUEUE_SIZE:Ljava/lang/String; = "queuesize"

.field public static final NOTIFY_GET_TRACK:Ljava/lang/String; = "track"

.field public static final NOW:I = 0x1

.field private static final NO_ANIMATION:I = 0x0

.field public static final OS_ART_PATH_SHUFFLE_UPDATED:Ljava/lang/String; = "com.htc.music.artpathshuffleupdated"

.field public static final OS_ART_PATH_UPDATED:Ljava/lang/String; = "com.htc.music.artpathupdated"

.field public static final OS_BUFFERING:Ljava/lang/String; = "buffering"

.field public static final OS_EXTRASTATE:Ljava/lang/String; = "extrastate"

.field public static final OS_NOWPLAYING_QUEUE_UPDATED:Ljava/lang/String; = "com.htc.music.nowplayingqueueupdated"

.field public static final OS_ON_ERROR:Ljava/lang/String; = "com.htc.music.onerror"

.field public static final OS_TRACK_DETAILS_UPDATED:Ljava/lang/String; = "com.htc.music.trackdetailsupdated"

.field public static final OS_WAITING:Ljava/lang/String; = "waiting"

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.playbackcomplete"

.field public static final PLAYBACK_RINGTONE:Ljava/lang/String; = "android.htc.intent.action.PLAYBACK_RINGTONE"

.field public static final PLAYLISTID:I = 0x3

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.playstatechanged"

.field public static final PLAYSTATE_FORWARDING:Ljava/lang/String; = "forwarding"

.field public static final PLAYSTATE_PAUSED:Ljava/lang/String; = "paused"

.field public static final PLAYSTATE_PLAYING:Ljava/lang/String; = "playing"

.field public static final PLAYSTATE_REQUEST:Ljava/lang/String; = "com.android.music.playstaterequest"

.field public static final PLAYSTATE_REWINDING:Ljava/lang/String; = "rewinding"

.field public static final PLAYSTATE_STOPPED:Ljava/lang/String; = "stopped"

.field private static final PLAY_NEXT_ANIMATION:I = 0x2

.field private static final PLAY_PREV_ANIMATION:I = 0x1

.field public static final PLAY_STARTED:Ljava/lang/String; = "com.htc.music.playstarted"

.field public static final PLAY_STATE:Ljava/lang/String; = "playstate"

.field private static final PLUGIN_NOTIFY_CHANGE:I = 0x3

.field private static final PLUGIN_UPDATE_NOTIFICATION:I = 0x2

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.previous"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.queuechanged"

.field public static final RECENTLY_PLAYED_ALBUM_CHANGED:Ljava/lang/String; = "com.htc.music.recentlyplayedalbumchanged"

.field public static final RECENT_PLAYED_CHANGED:Ljava/lang/String; = "com.htc.music.recentplayedchanged"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field public static final SETTING_CHANGED:Ljava/lang/String; = "com.android.music.settingchanged"

.field public static final SETTING_EQUALIZER:Ljava/lang/String; = "equalizer"

.field public static final SETTING_REPEAT:Ljava/lang/String; = "repeat"

.field public static final SETTING_REQUEST:Ljava/lang/String; = "com.android.music.settingrequest"

.field public static final SETTING_SCAN:Ljava/lang/String; = "scan"

.field public static final SETTING_SHUFFLE:Ljava/lang/String; = "shuffle"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field public static final SKIP_PREV:Ljava/lang/String; = "skip_prev"

.field public static final SWITCH_DLNA_MODE:Ljava/lang/String; = "com.htc.music.switchdlnamode"

.field private static final TAG:Ljava/lang/String; = "[MediaPlaybackService]"

.field private static final TOAST_WARNING:I = 0x4

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.togglepause"

.field public static final TRACKID:I = 0x4

.field private static final TRACK_ENDED:I = 0x1

.field public static final UPDATE_ALBUM_POSITION:Ljava/lang/String; = "com.htc.music.update_glider_position"

.field private static final UPDATE_NOTIFICATION_ALBUMART:I = 0x5

.field private static final mDoAnimationViaHeadset:Z

.field private static mMaxNotifyAlbumArtSideLen:I


# instance fields
.field private final CMD_NONUI_BASE:I

.field private final CMD_NONUI_DECODE_NOTIFICATION_ALBUMART:I

.field private final CMD_NONUI_NEXT:I

.field private final CMD_NONUI_NOTIFY_CHANGE_FOR_RELOAD_QUEUE:I

.field private final CMD_NONUI_OPEN:I

.field private final CMD_NONUI_PAUSE:I

.field private final CMD_NONUI_PLAY:I

.field private final CMD_NONUI_PLAY_ALBUM:I

.field private final CMD_NONUI_PLAY_ALL:I

.field private final CMD_NONUI_PREV:I

.field private final CMD_NONUI_PSTOP:I

.field private final CMD_NONUI_QUERY_ALBUM_ART:I

.field private final CMD_NONUI_REFRESH_PLAYLIST:I

.field private final CMD_NONUI_RELOAD_QUEUE:I

.field private final CMD_NONUI_SWITCH_MODE:I

.field private final CMD_NONUI_TRACK_WENT_TO_NEXT:I

.field private final CMD_NONUI_ULOG_MUSIC_COUNT:I

.field private final CMD_NONUI_ULOG_PLAYBACK_TIME:I

.field private final EXTRA_ALBUM_LIST:Ljava/lang/String;

.field private final EXTRA_FORCE:Ljava/lang/String;

.field private final EXTRA_FORCE_SHUFFLE:Ljava/lang/String;

.field private final EXTRA_IGNORE_ANIMATION:Ljava/lang/String;

.field private final EXTRA_LIST:Ljava/lang/String;

.field private final EXTRA_PLAY_ANIMATION:Ljava/lang/String;

.field private final EXTRA_POSITION:Ljava/lang/String;

.field private final MAX_RECENT_TRACK_LIST_SIZE:I

.field private final RECENT_ALBUM_LIST_COUNT:I

.field private final hexdigits:[C

.field private mA2DPReceiver:Landroid/content/BroadcastReceiver;

.field private mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtPath:Ljava/lang/String;

.field private mAlbumId:I

.field private mAlbumKey:Ljava/lang/String;

.field private mAlbumList:[I

.field private mAlbumListLen:I

.field private mArtist:Ljava/lang/String;

.field private mArtistId:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[I

.field private final mBinder:Landroid/os/IBinder;

.field private mBookmark:J

.field private mCachePreferences:Landroid/content/SharedPreferences;

.field private mCardId:I

.field private mComposer:Ljava/lang/String;

.field private mCurrentPlaybackState:Ljava/lang/String;

.field mCursorCols:[Ljava/lang/String;

.field private mData:Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDisplayName:Ljava/lang/String;

.field private mDockEventListener:Landroid/content/BroadcastReceiver;

.field private mDrmConsumed:Z

.field private mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

.field private mFFRWRepeat:I

.field private mFFToEndIsPlaying:Z

.field private mFileToPlay:Ljava/lang/String;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mId:J

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFileExist:Z

.field mIsInMirror:Z

.field private mIsPodcast:I

.field private volatile mIsReloadingQueue:Z

.field private mIsSupposedToBePlaying:Z

.field private mIsSystemReady:Z

.field private mLastAlbumArtPath:Ljava/lang/String;

.field private mLastAlbumId:I

.field private mLastAlbumKey:Ljava/lang/String;

.field private mLastRepeatTime:J

.field private mLastSeekEventTime:J

.field private volatile mLaunchedBefore:Z

.field private mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

.field private mLocalRecentAlbumId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mMimeType:Ljava/lang/String;

.field private mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

.field private mMuteByTransientLossOfFocusCanDuck:Z

.field private mNextFileToPlay:Ljava/lang/String;

.field private mNextIntent:Landroid/content/Intent;

.field private mNextPlayPos:I

.field private mNonShuffleAlbumList:[I

.field private mNonShufflePlayList:[I

.field private mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationLock:Ljava/lang/Object;

.field private mNotificationPrimaryTextColor:I

.field private mNotificationSecondaryTextColor:I

.field private mOpenFailedCounter:I

.field private mOpts:Landroid/graphics/BitmapFactory$Options;

.field private mOrientation:I

.field private mPauseIntent:Landroid/content/Intent;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[I

.field private mPlayListLen:I

.field private mPlayOnNextPrev:Z

.field private mPlayPos:I

.field private mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

.field private mPluginNotification:Landroid/app/Notification;

.field private mPosOverride:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPrevIntent:Landroid/content/Intent;

.field private final mPublicBinder:Landroid/os/IBinder;

.field mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

.field private mQuietMode:Z

.field private final mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

.field private mRecentPlayTrackId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPlayList:Z

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mRepcnt:I

.field private mRepeatMode:I

.field private mSeeking:Z

.field private mServiceInUse:I

.field private mServiceStartId:I

.field private mShuffleAlbumList:[I

.field private mShuffleMode:I

.field private mShufflePlayList:[I

.field mShuffleSeq:[I

.field private mShuffleSeqLen:I

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mStartPlayMusicTimeStamp:J

.field private mStartSeekPos:J

.field private mTitle:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field private mUiHandler:Landroid/os/Handler;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mWakeLockAcquired:Z

.field private noisy_action_time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    sput v0, Lcom/htc/music/MediaPlaybackService;->mMaxNotifyAlbumArtSideLen:I

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1614
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 207
    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_BASE:I

    .line 208
    const/16 v0, 0x2711

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_PSTOP:I

    .line 209
    const/16 v0, 0x2712

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_RELOAD_QUEUE:I

    .line 210
    const/16 v0, 0x2713

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_NOTIFY_CHANGE_FOR_RELOAD_QUEUE:I

    .line 211
    const/16 v0, 0x2714

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_DECODE_NOTIFICATION_ALBUMART:I

    .line 212
    const/16 v0, 0x2715

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_REFRESH_PLAYLIST:I

    .line 213
    const/16 v0, 0x2716

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_PLAY_ALL:I

    .line 214
    const/16 v0, 0x2717

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_ULOG_MUSIC_COUNT:I

    .line 215
    const/16 v0, 0x2718

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_ULOG_PLAYBACK_TIME:I

    .line 216
    const/16 v0, 0x2719

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_NEXT:I

    .line 217
    const/16 v0, 0x271a

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_PREV:I

    .line 218
    const/16 v0, 0x271b

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_PLAY:I

    .line 219
    const/16 v0, 0x271c

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_PAUSE:I

    .line 220
    const/16 v0, 0x271d

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_OPEN:I

    .line 221
    const/16 v0, 0x271e

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_PLAY_ALBUM:I

    .line 222
    const/16 v0, 0x271f

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_SWITCH_MODE:I

    .line 223
    const/16 v0, 0x2720

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_QUERY_ALBUM_ART:I

    .line 224
    const/16 v0, 0x2721

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->CMD_NONUI_TRACK_WENT_TO_NEXT:I

    .line 232
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPauseIntent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPrevIntent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNextIntent:Landroid/content/Intent;

    .line 233
    iput v8, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    .line 234
    const-string v0, "ignore_anim"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->EXTRA_IGNORE_ANIMATION:Ljava/lang/String;

    .line 238
    const-string v0, "play_anim"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->EXTRA_PLAY_ANIMATION:Ljava/lang/String;

    .line 239
    const-string v0, "force"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->EXTRA_FORCE:Ljava/lang/String;

    .line 240
    const-string v0, "list"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->EXTRA_LIST:Ljava/lang/String;

    .line 241
    const-string v0, "album_list"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->EXTRA_ALBUM_LIST:Ljava/lang/String;

    .line 242
    const-string v0, "position"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->EXTRA_POSITION:Ljava/lang/String;

    .line 243
    const-string v0, "force_shuffle"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->EXTRA_FORCE_SHUFFLE:Ljava/lang/String;

    .line 291
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 292
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 293
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 294
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    .line 295
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    .line 299
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 300
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 303
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 304
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 305
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 306
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 307
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mNextPlayPos:I

    .line 310
    new-instance v0, Lcom/htc/music/MediaPlaybackService$Shuffler;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/MediaPlaybackService$Shuffler;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    .line 311
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 329
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    .line 332
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 334
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    .line 337
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\"<unknown>\" as album_art"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 354
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 357
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    .line 359
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 362
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 363
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 364
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 367
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 368
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    .line 370
    iput-boolean v8, p0, Lcom/htc/music/MediaPlaybackService;->mLaunchedBefore:Z

    .line 391
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 392
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 393
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    .line 395
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 396
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    .line 397
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 402
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    .line 405
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 408
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    .line 411
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 415
    new-instance v0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 417
    new-instance v0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    .line 421
    new-instance v0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    .line 423
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 425
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 427
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    .line 428
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    .line 429
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    .line 430
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    .line 435
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->RECENT_ALBUM_LIST_COUNT:I

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    .line 438
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->MAX_RECENT_TRACK_LIST_SIZE:I

    .line 440
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 441
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    .line 443
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 445
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    .line 447
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 449
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 453
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    .line 454
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    .line 455
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    .line 456
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    .line 457
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    .line 458
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 459
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    .line 460
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 461
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    .line 462
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    .line 463
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    .line 464
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    .line 465
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    .line 466
    const-string v0, "<unknown>"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 467
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    .line 469
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 470
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    .line 471
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 473
    const-string v0, "paused"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCurrentPlaybackState:Ljava/lang/String;

    .line 854
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    .line 947
    new-instance v0, Lcom/htc/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$1;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 1050
    new-instance v0, Lcom/htc/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$2;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    .line 1105
    new-instance v0, Lcom/htc/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$3;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1373
    new-instance v0, Lcom/htc/music/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$4;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 1442
    new-instance v0, Lcom/htc/music/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$5;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    .line 1497
    new-instance v0, Lcom/htc/music/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$6;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1563
    new-instance v0, Lcom/htc/music/MediaPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$7;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1580
    new-instance v0, Lcom/htc/music/MediaPlaybackService$8;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$8;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    .line 1833
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    .line 2780
    new-instance v0, Lcom/htc/music/MediaPlaybackService$9;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$9;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 7402
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPluginNotification:Landroid/app/Notification;

    .line 7403
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    .line 7405
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationPrimaryTextColor:I

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationSecondaryTextColor:I

    .line 1615
    return-void

    .line 1833
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

.method public static Search([III)I
    .locals 3
    .parameter "array"
    .parameter "value"
    .parameter "len"

    .prologue
    .line 3509
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3510
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 3515
    .end local v0           #i:I
    :goto_1
    return v0

    .line 3509
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3514
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Bad thing ! I don\'t want to see this"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$10000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    return-void
.end method

.method static synthetic access$10100(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/htc/music/MediaPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext(I)V

    return-void
.end method

.method static synthetic access$10300(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V

    return-void
.end method

.method static synthetic access$10400(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V

    return-void
.end method

.method static synthetic access$10700(Lcom/htc/music/MediaPlaybackService;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10802(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return p1
.end method

.method static synthetic access$10808(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$10900(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getDefaultTracks()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11000(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    return v0
.end method

.method static synthetic access$11100(Lcom/htc/music/MediaPlaybackService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$11200(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11300(Lcom/htc/music/MediaPlaybackService;[II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->open([II)V

    return-void
.end method

.method static synthetic access$11400(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->prev()V

    return-void
.end method

.method static synthetic access$11500(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$11600(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11700(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlugin()V

    return-void
.end method

.method static synthetic access$11800(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11900(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12100(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12300(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12400(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumId()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12500(Lcom/htc/music/MediaPlaybackService;)[Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getShortcutInfoList()[Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12600(Lcom/htc/music/MediaPlaybackService;[I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumartPath([I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12700(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getNowplaying()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12800(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12900(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->addToQueue(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    return-void
.end method

.method static synthetic access$13000(Lcom/htc/music/MediaPlaybackService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueByDbTable(III)V

    return-void
.end method

.method static synthetic access$13100(Lcom/htc/music/MediaPlaybackService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditions(III)V

    return-void
.end method

.method static synthetic access$13200(Lcom/htc/music/MediaPlaybackService;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditionsByDbTable(IIII)V

    return-void
.end method

.method static synthetic access$13300(Lcom/htc/music/MediaPlaybackService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setPlaylistInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/htc/music/MediaPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->switchMode(I)V

    return-void
.end method

.method static synthetic access$13500(Lcom/htc/music/MediaPlaybackService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->saveDmsInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$13600(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->playAsync()V

    return-void
.end method

.method static synthetic access$13700(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseAsync()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->clearDmsServer()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$1808(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$1810(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/music/MediaPlaybackService;I)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPlaylistInfo(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveCurrentPluginClass()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/MediaPlaybackService;Landroid/os/Bundle;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->handleAlbumArtQueryComplete(Landroid/os/Bundle;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mNextPlayPos:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNextFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mNextFileToPlay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/MediaPlaybackService;I)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getCursorForId(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/MediaPlaybackService;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setAudioMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/MediaPlaybackService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->nextImpl(ZZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveCurrentPlayPos()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->playNextArtAnimation(II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->handleRecentPlayedSong()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updateNotification()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->setNextTrack()V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/music/MediaPlaybackService;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->prevImpl(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/htc/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$4802(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return p1
.end method

.method static synthetic access$4808(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$4900(Lcom/htc/music/MediaPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide v0
.end method

.method static synthetic access$4902(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseImpl()V

    return-void
.end method

.method static synthetic access$5000(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return v0
.end method

.method static synthetic access$5002(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return p1
.end method

.method static synthetic access$5100(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/music/MediaPlaybackService;Landroid/app/Notification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->pluginUpdateNotification(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/htc/music/MediaPlaybackService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->nextAsync(ZZ)V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->prevAsync(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/MediaPlaybackService;[IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->openImpl([IIZ)V

    return-void
.end method

.method static synthetic access$6000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->reloadAndPlayMusicInWorker()V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$6202(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    return-wide p1
.end method

.method static synthetic access$6300(Lcom/htc/music/MediaPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->handleDMCError(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCurrentPlaybackState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->resetPlayerForWirelessConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    return v0
.end method

.method static synthetic access$6802(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    return p1
.end method

.method static synthetic access$6902(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7002(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/htc/music/MediaPlaybackService;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/htc/music/MediaPlaybackService;Landroid/widget/RemoteViews;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V

    return-void
.end method

.method static synthetic access$7400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->decodeNotificationAlbumartAsync()V

    return-void
.end method

.method static synthetic access$7900(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updatePlayerSettings()V

    return-void
.end method

.method static synthetic access$8000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->savePlayingPos()V

    return-void
.end method

.method static synthetic access$8100(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$8208(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$8300(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    return v0
.end method

.method static synthetic access$8302(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic access$8400(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->clearCache()V

    return-void
.end method

.method static synthetic access$8500(Lcom/htc/music/MediaPlaybackService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->sendMusicCountULogMsg(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object p1
.end method

.method static synthetic access$9600(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    return-void
.end method

.method static synthetic access$9700(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    return-void
.end method

.method static synthetic access$9800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V

    return-void
.end method

.method static synthetic access$9902(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    return p1
.end method

.method private addRecentAlbumList()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 7843
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7875
    :goto_0
    return-void

    .line 7845
    :cond_0
    monitor-enter p0

    .line 7846
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 7847
    .local v0, currAlbumId:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 7848
    .local v2, indexOfAlbumId:I
    if-nez v2, :cond_1

    .line 7849
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "current album is recently album"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7850
    monitor-exit p0

    goto :goto_0

    .line 7874
    .end local v0           #currAlbumId:I
    .end local v2           #indexOfAlbumId:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 7852
    .restart local v0       #currAlbumId:I
    .restart local v2       #indexOfAlbumId:I
    :cond_1
    :try_start_1
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "addRecentPlayList"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7854
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 7855
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7858
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 7860
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_3

    .line 7861
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7864
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_4

    .line 7865
    const-string v3, "Music"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 7867
    :cond_4
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 7868
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_5

    .line 7869
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;)V

    .line 7873
    :goto_1
    const-string v3, "com.htc.music.recentlyplayedalbumchanged"

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 7874
    monitor-exit p0

    goto :goto_0

    .line 7871
    :cond_5
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "Save preference editor is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private addRecentPlayedPlaylist()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 8266
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8288
    :goto_0
    return-void

    .line 8268
    :cond_0
    monitor-enter p0

    .line 8269
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    .line 8270
    .local v0, currAudioId:I
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 8271
    .local v1, indexOfAudioId:I
    if-nez v1, :cond_1

    .line 8272
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Current track is the most recent track."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8273
    monitor-exit p0

    goto :goto_0

    .line 8287
    .end local v0           #currAudioId:I
    .end local v1           #indexOfAudioId:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 8275
    .restart local v0       #currAudioId:I
    .restart local v1       #indexOfAudioId:I
    :cond_1
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "addRecentPlayedPlaylist"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8277
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 8278
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8281
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8283
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 8284
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8286
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveRecentPlayedPlaylist()V

    .line 8287
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private addToAlbumList([II)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 3168
    if-nez p1, :cond_0

    .line 3169
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "addToAlbumList with null list!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3199
    :goto_0
    return-void

    .line 3173
    :cond_0
    array-length v0, p1

    .line 3174
    .local v0, addlen:I
    if-gez p2, :cond_1

    .line 3175
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3176
    const/4 p2, 0x0

    .line 3179
    :cond_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3180
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-le p2, v3, :cond_2

    .line 3181
    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3184
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    if-nez v3, :cond_3

    .line 3185
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "mAlbumList is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3189
    :cond_3
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    sub-int v2, v3, p2

    .line 3190
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_4

    .line 3191
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3190
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3195
    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    .line 3196
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    aget v5, p1, v1

    aput v5, v3, v4

    .line 3195
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3198
    :cond_5
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    goto :goto_0
.end method

.method private addToPlayList([II)V
    .locals 8
    .parameter "list"
    .parameter "position"

    .prologue
    .line 3101
    array-length v0, p1

    .line 3102
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 3103
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToPlayList, position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reset PlayList Length."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3104
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3105
    const/4 p2, 0x0

    .line 3107
    :cond_0
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3108
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v4, :cond_1

    .line 3109
    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3113
    :cond_1
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v3, v4, p2

    .line 3114
    .local v3, tailsize:I
    move v1, v3

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 3115
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v7, p2, v1

    sub-int/2addr v7, v0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 3114
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3119
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 3120
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    aget v6, p1, v1

    aput v6, v4, v5

    .line 3119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3122
    :cond_3
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3123
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToPlayList, mPlayListLen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3126
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v2

    .line 3127
    .local v2, shufflePlayList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 3128
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 3132
    .end local v2           #shufflePlayList:[I
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveQueue()V

    .line 3133
    return-void

    .line 3130
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    goto :goto_2
.end method

.method private addToQueue(II)V
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 8483
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->addToQueueByDbTable(III)V

    .line 8484
    return-void
.end method

.method private addToQueue([I)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 8487
    if-nez p1, :cond_0

    .line 8488
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "addToQueue, id is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8512
    :goto_0
    return-void

    .line 8492
    :cond_0
    array-length v2, p1

    if-gtz v2, :cond_1

    .line 8493
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToQueue size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8497
    :cond_1
    const/4 v0, 0x0

    .line 8499
    .local v0, combineId:[I
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    array-length v3, v3

    if-gt v2, v3, :cond_2

    .line 8500
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v0, v2, [I

    .line 8501
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v7, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8502
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    invoke-static {p1, v7, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8503
    invoke-virtual {p0, v0, v5}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    .line 8509
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveQueue()V

    .line 8510
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0004

    array-length v4, p1

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8511
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/htc/music/MediaPlaybackService;->showPluginToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 8506
    .end local v1           #message:Ljava/lang/String;
    :cond_2
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToQueue, mNonShufflePlayList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPlayListLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8507
    invoke-virtual {p0, p1, v5}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    goto :goto_1
.end method

.method private addToQueueByDbTable(III)V
    .locals 5
    .parameter "table"
    .parameter "type"
    .parameter "id"

    .prologue
    .line 8406
    const/4 v1, 0x0

    .line 8407
    .local v1, audioId:[I
    const/4 v0, 0x0

    .line 8409
    .local v0, albumList:[I
    monitor-enter p0

    .line 8410
    packed-switch p2, :pswitch_data_0

    .line 8471
    :goto_0
    :try_start_0
    monitor-exit p0

    .line 8472
    return-void

    .line 8413
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    .line 8414
    if-eqz v1, :cond_0

    .line 8415
    array-length v2, v1

    new-array v0, v2, [I

    .line 8416
    invoke-static {v0, p3}, Ljava/util/Arrays;->fill([II)V

    .line 8417
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8418
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8471
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 8421
    :cond_0
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Cannot get audio id array from album list"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8427
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p3}, Lcom/htc/music/util/MusicUtils;->getAlbumListForArtist(Landroid/content/Context;II)[I

    move-result-object v0

    .line 8428
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8431
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbums(Landroid/content/Context;I[I)[I

    move-result-object v1

    .line 8432
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8436
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/htc/music/util/MusicUtils;->getAlbumListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    .line 8437
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8439
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v1

    .line 8440
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8444
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, p3

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getAlbumListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 8445
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8447
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, p3

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v1

    .line 8448
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8452
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/htc/music/util/MusicUtils;->getAlbumListForSong(Landroid/content/Context;I)[I

    move-result-object v0

    .line 8453
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8455
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 8456
    const/4 v2, 0x0

    aput p3, v1, v2

    .line 8457
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 8461
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getAlbumListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 8462
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8464
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 8465
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 8410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private addToQueueForMultiConditions(III)V
    .locals 1
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 8402
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditionsByDbTable(IIII)V

    .line 8403
    return-void
.end method

.method private addToQueueForMultiConditionsByDbTable(IIII)V
    .locals 5
    .parameter "table"
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    const/4 v2, 0x0

    .line 8375
    const/4 v1, 0x0

    .line 8376
    .local v1, audioId:[I
    const/4 v0, 0x0

    .line 8379
    .local v0, albumList:[I
    monitor-enter p0

    .line 8380
    const/4 v4, 0x5

    if-ne p2, v4, :cond_2

    .line 8381
    if-nez p3, :cond_0

    move-object v3, v2

    .line 8382
    .local v3, fileFolderId:Ljava/lang/String;
    :goto_0
    if-nez p4, :cond_1

    .line 8384
    .local v2, drmFolderId:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/htc/music/util/MusicUtils;->getAlbumListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 8385
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8387
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 8388
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    .line 8398
    .end local v2           #drmFolderId:Ljava/lang/String;
    .end local v3           #fileFolderId:Ljava/lang/String;
    :goto_2
    monitor-exit p0

    .line 8399
    return-void

    .line 8381
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 8382
    .restart local v3       #fileFolderId:Ljava/lang/String;
    :cond_1
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 8391
    .end local v3           #fileFolderId:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2, p3, p4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v1

    .line 8393
    array-length v4, v1

    new-array v0, v4, [I

    .line 8394
    invoke-static {v0, p4}, Ljava/util/Arrays;->fill([II)V

    .line 8395
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8396
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_2

    .line 8398
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private applyShuffleSeq([II)[I
    .locals 3
    .parameter "list"
    .parameter "length"

    .prologue
    .line 4842
    if-nez p1, :cond_1

    .line 4843
    const/4 p1, 0x0

    .line 4864
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 4845
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    .line 4852
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    if-eq p2, v2, :cond_2

    .line 4853
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 4856
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    .line 4860
    new-array v1, p2, [I

    .line 4861
    .local v1, rList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 4862
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v2, v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    .line 4861
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 4864
    goto :goto_0
.end method

.method private checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 5465
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 5466
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "getDrmStatus Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5475
    :goto_0
    return v0

    .line 5470
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->consumeRights(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5471
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Consume Rights Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5475
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkIfStopFFRWRepeat()V
    .locals 1

    .prologue
    .line 5329
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    if-nez v0, :cond_0

    .line 5330
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopFFRWRepeat()V

    .line 5331
    :cond_0
    return-void
.end method

.method private clearCache()V
    .locals 2

    .prologue
    .line 8784
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[clearCache] ."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8785
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCachePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "curtitle"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "curartist"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "curalbumid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "curalbumkey"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "curalbumartpath"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8792
    return-void
.end method

.method private clearDmsServer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8882
    const-string v2, "DLNA"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8884
    .local v0, dmsPreference:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8885
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dms_server_id"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8886
    const-string v2, "dms_content_id"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8887
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8888
    return-void
.end method

.method private clearRecentAlbumList()V
    .locals 1

    .prologue
    .line 8036
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 8037
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8038
    :cond_0
    return-void
.end method

.method private clearRecentPlayedPlaylist()V
    .locals 1

    .prologue
    .line 8360
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 8361
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8362
    :cond_0
    return-void
.end method

.method private consumeRights(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5483
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 5484
    .local v0, drmCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 5485
    const-string v3, "[MediaPlaybackService]"

    const-string v5, "consumeRights: drmCursor is null"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5495
    :goto_0
    return v4

    .line 5490
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5491
    const-string v5, "_data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5493
    .local v2, filepath:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {p0, p1, v2, v5}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .line 5494
    .local v1, error:I
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "consumeRights(uri) error code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5495
    if-nez v1, :cond_1

    .line 5497
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5498
    const/4 v0, 0x0

    move v4, v3

    .line 5495
    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 5497
    .end local v1           #error:I
    .end local v2           #filepath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5498
    const/4 v0, 0x0

    .line 5497
    throw v3
.end method

.method private decodeNotificationAlbumartAsync()V
    .locals 4

    .prologue
    const/16 v3, 0x2714

    .line 7533
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1

    .line 7534
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 7535
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 7536
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7537
    .local v0, msg:Landroid/os/Message;
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7538
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7543
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 7541
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "decodeNotificationAlbumart, mNonUiHandler is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doAutoShuffleUpdate()V
    .locals 8

    .prologue
    .line 4417
    const/4 v2, 0x0

    .line 4419
    .local v2, notify:Z
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    .line 4420
    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v6, v6, -0x9

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/MediaPlaybackService;->removeTracks(II)I

    .line 4421
    const/4 v2, 0x1

    .line 4424
    :cond_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v5, :cond_1

    const/4 v5, -0x1

    :goto_0
    sub-int v5, v6, v5

    rsub-int/lit8 v3, v5, 0x7

    .line 4425
    .local v3, to_add:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 4427
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    .line 4428
    .local v1, idx:I
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4429
    .local v4, which:Ljava/lang/Integer;
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 4430
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 4431
    const/4 v2, 0x1

    .line 4425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4424
    .end local v0           #i:I
    .end local v1           #idx:I
    .end local v3           #to_add:I
    .end local v4           #which:Ljava/lang/Integer;
    :cond_1
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 4433
    .restart local v0       #i:I
    .restart local v3       #to_add:I
    :cond_2
    if-eqz v2, :cond_3

    .line 4434
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4436
    :cond_3
    return-void
.end method

.method private ensureAlbumListCapacity(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 3136
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    .line 3140
    :cond_0
    shl-int/lit8 v4, p1, 0x1

    new-array v2, v4, [I

    .line 3141
    .local v2, nonShuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3142
    .local v1, len:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_1

    .line 3143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3144
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 3143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3147
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    .line 3149
    shl-int/lit8 v4, p1, 0x1

    new-array v3, v4, [I

    .line 3150
    .local v3, shuffleNewList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_2

    .line 3151
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3152
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 3151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3155
    .end local v0           #i:I
    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    .line 3157
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3158
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3165
    .end local v1           #len:I
    .end local v2           #nonShuffleNewList:[I
    .end local v3           #shuffleNewList:[I
    :cond_3
    :goto_2
    return-void

    .line 3160
    .restart local v1       #len:I
    .restart local v2       #nonShuffleNewList:[I
    .restart local v3       #shuffleNewList:[I
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_2
.end method

.method private ensurePlayListCapacity(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 3068
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    .line 3072
    :cond_0
    mul-int/lit8 v4, p1, 0x2

    new-array v2, v4, [I

    .line 3073
    .local v2, nonShuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3074
    .local v1, len:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_1

    .line 3075
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3076
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 3075
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3079
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    .line 3081
    mul-int/lit8 v4, p1, 0x2

    new-array v3, v4, [I

    .line 3082
    .local v3, shuffleNewList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_2

    .line 3083
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3084
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 3083
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3087
    .end local v0           #i:I
    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    .line 3089
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3090
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 3097
    .end local v1           #len:I
    .end local v2           #nonShuffleNewList:[I
    .end local v3           #shuffleNewList:[I
    :cond_3
    :goto_2
    return-void

    .line 3092
    .restart local v1       #len:I
    .restart local v2       #nonShuffleNewList:[I
    .restart local v3       #shuffleNewList:[I
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    goto :goto_2
.end method

.method private ensureRecentlyPlayedAlbumList()V
    .locals 20

    .prologue
    .line 7937
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getStorageState()Ljava/lang/String;

    move-result-object v16

    .line 7938
    .local v16, status:Ljava/lang/String;
    const-string v1, "mounted"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7940
    const-string v1, "[MediaPlaybackService]"

    const-string v4, "[ensureRecentlyPlayedAlbumList] Storage not mounted!"

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8026
    :cond_0
    :goto_0
    return-void

    .line 7944
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7947
    .local v17, tempRecentAlbumList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 7948
    .local v15, size:I
    if-lez v15, :cond_6

    .line 7949
    const-string v1, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "actuall recent album size = "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7950
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    .line 7953
    .local v3, cols:[Ljava/lang/String;
    new-array v14, v15, [I

    .line 7954
    .local v14, intAryLocalRecentAlbumId:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v15, :cond_2

    .line 7955
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v14, v12

    .line 7954
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 7957
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v1, v14}, Lcom/htc/music/util/ContentUtils;->getAlbums(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)Landroid/database/Cursor;

    move-result-object v10

    .line 7959
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 7960
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 7961
    .local v13, ididx:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 7962
    .local v8, count:I
    const-string v1, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cursor.getCount() = "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7963
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_5

    .line 7964
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 7965
    .local v9, curAlbumId:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7966
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7967
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v9, v1, :cond_4

    .line 7968
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7963
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 7971
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 7975
    .end local v8           #count:I
    .end local v9           #curAlbumId:I
    .end local v13           #ididx:I
    :cond_5
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7979
    .end local v3           #cols:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #i:I
    .end local v14           #intAryLocalRecentAlbumId:[I
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    const/16 v4, 0x8

    if-ge v1, v4, :cond_b

    .line 7980
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v11, v1, 0x8

    .line 7981
    .local v11, diff:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album COLLATE NOCASE ASC LIMIT 0,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7983
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 7984
    .local v18, where:Ljava/lang/StringBuilder;
    const-string v1, "album != \'\'"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7985
    const-string v1, " AND album != \'<unknown>\'"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7986
    const/4 v5, 0x0

    .line 7987
    .local v5, whereArgument:[Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 7988
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 7990
    const-string v1, " AND _id not in ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7991
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_8

    .line 7992
    const-string v1, "?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7993
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v12

    .line 7994
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-eq v12, v1, :cond_7

    .line 7995
    const-string v1, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7991
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 7997
    :cond_8
    const-string v1, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7999
    .end local v12           #i:I
    :cond_9
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 8000
    .local v2, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    .line 8004
    .restart local v3       #cols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 8007
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 8008
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8009
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 8010
    .restart local v8       #count:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_5
    if-ge v12, v8, :cond_a

    .line 8011
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 8013
    .local v7, albumId:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8014
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 8010
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 8017
    .end local v7           #albumId:I
    .end local v8           #count:I
    .end local v12           #i:I
    :cond_a
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 8021
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #cols:[Ljava/lang/String;
    .end local v5           #whereArgument:[Ljava/lang/String;
    .end local v6           #sortOrder:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #diff:I
    .end local v18           #where:Ljava/lang/StringBuilder;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8022
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8024
    const-string v1, "com.htc.music.recentlyplayedalbumchanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private genJasonString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 8795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8796
    .local v0, comp:Ljava/lang/StringBuilder;
    const-string v5, "[htc_lockscreen_music_control]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8797
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8798
    .local v1, data:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 8799
    .local v4, jasonStr:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8800
    .local v2, dropIntent:Landroid/content/Intent;
    const/high16 v5, 0x1400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8805
    const-string v5, "from-lockscreen"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8808
    :try_start_0
    const-string v5, "drop_intent"

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8809
    const-string v5, "albumart"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8810
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 8816
    :goto_0
    if-eqz v4, :cond_0

    .line 8817
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8820
    :cond_0
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "genJasonString() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8822
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 8811
    :catch_0
    move-exception v3

    .line 8812
    .local v3, e:Lorg/json/JSONException;
    const/4 v4, 0x0

    .line 8813
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "Failed to generate JSON string."

    invoke-static {v5, v6, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getBigNotifcationLayoutId()I
    .locals 2

    .prologue
    .line 9136
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 9137
    const v0, 0x7f030004

    .line 9140
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030003

    goto :goto_0
.end method

.method private getBookmark()J
    .locals 2

    .prologue
    .line 5088
    monitor-enter p0

    .line 5089
    :try_start_0
    iget-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    monitor-exit p0

    return-wide v0

    .line 5090
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCursorForId(I)Landroid/database/Cursor;
    .locals 8
    .parameter "lid"

    .prologue
    const/4 v4, 0x0

    .line 3534
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 3536
    .local v7, id:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3539
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3540
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3542
    :cond_0
    return-object v6
.end method

.method private getDefaultTracks()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 5456
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5461
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private getNextPosition(Z)I
    .locals 3
    .parameter "force"

    .prologue
    const/4 v0, 0x0

    .line 3657
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3658
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v1, :cond_1

    .line 3674
    :cond_0
    :goto_0
    return v0

    .line 3659
    :cond_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 3662
    :cond_2
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_4

    .line 3664
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    if-nez v1, :cond_3

    if-nez p1, :cond_3

    .line 3666
    const/4 v0, -0x1

    goto :goto_0

    .line 3667
    :cond_3
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-nez p1, :cond_0

    .line 3671
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 3674
    :cond_4
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getNotificiationArtSideLen()I
    .locals 3

    .prologue
    .line 9151
    sget v0, Lcom/htc/music/MediaPlaybackService;->mMaxNotifyAlbumArtSideLen:I

    if-gtz v0, :cond_0

    .line 9152
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/htc/music/MediaPlaybackService;->mMaxNotifyAlbumArtSideLen:I

    .line 9153
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificiationArtSideLen, mMaxNotifyAlbumArtSideLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/music/MediaPlaybackService;->mMaxNotifyAlbumArtSideLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9155
    :cond_0
    sget v0, Lcom/htc/music/MediaPlaybackService;->mMaxNotifyAlbumArtSideLen:I

    return v0
.end method

.method private getNowplaying()[I
    .locals 4

    .prologue
    .line 5839
    monitor-enter p0

    .line 5840
    :try_start_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v3, :cond_0

    .line 5841
    const/4 v2, 0x0

    monitor-exit p0

    .line 5848
    :goto_0
    return-object v2

    .line 5843
    :cond_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 5844
    .local v1, len:I
    new-array v2, v1, [I

    .line 5845
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 5846
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 5845
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5848
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 5849
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getPlaylistInfo(I)Landroid/os/Bundle;
    .locals 14
    .parameter "mode"

    .prologue
    const-wide/16 v12, -0x1

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 8903
    const-string v6, "DLNA"

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 8906
    .local v5, preferences:Landroid/content/SharedPreferences;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 8907
    .local v3, playlistInfo:Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 8985
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPlaylistInfo default mode is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8989
    :goto_0
    return-object v3

    .line 8909
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueue()[I

    move-result-object v2

    .line 8910
    .local v2, playlist:[I
    const-string v6, "com.htc.music.dmc_setsrc"

    invoke-virtual {v3, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8912
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getCurDmr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 8913
    .local v1, dmr:Ljava/lang/String;
    const-string v6, "com.htc.music.dmc_dmr"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8914
    if-eqz v2, :cond_0

    .line 8915
    const-string v6, "com.htc.music.dmc_playlist"

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8916
    :cond_0
    const/4 v0, 0x0

    .line 8917
    .local v0, albumList:[I
    monitor-enter p0

    .line 8918
    :try_start_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    new-array v0, v6, [I

    .line 8919
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v6, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8920
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8921
    if-eqz v0, :cond_1

    .line 8922
    const-string v6, "com.htc.music.dmc_albumlist"

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8923
    :cond_1
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "curpos"

    invoke-static {v6, v7, v10}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v4

    .line 8924
    .local v4, position:I
    if-gez v4, :cond_2

    .line 8925
    const/4 v4, 0x0

    .line 8926
    :cond_2
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Switch to push current position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8927
    const-string v6, "dlna_repeat"

    const-string v7, "dlna_repeat"

    invoke-static {v5, v7, v10}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8929
    const-string v6, "dlna_shuffle"

    const-string v7, "dlna_shuffle"

    invoke-static {v5, v7, v10}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8931
    const-string v6, "com.htc.music.dmc_currentindex"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8932
    const-string v6, "command"

    const-string v7, "com.htc.music.refreshplaylist"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8934
    const-string v6, "forcePlay"

    invoke-virtual {v3, v6, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 8920
    .end local v4           #position:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 8939
    .end local v0           #albumList:[I
    .end local v1           #dmr:Ljava/lang/String;
    .end local v2           #playlist:[I
    :pswitch_1
    const-string v6, "com.htc.music.dmc_setsrc"

    invoke-virtual {v3, v6, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8941
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getCurDmr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 8942
    .restart local v1       #dmr:Ljava/lang/String;
    const-string v6, "com.htc.music.dmc_dmr"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8943
    const-string v6, "dms_content_id"

    const-string v7, "dms_content_id"

    invoke-static {v5, v7, v9}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8945
    const-string v6, "dms_container_id"

    const-string v7, "dms_container_id"

    invoke-static {v5, v7, v9}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8947
    const-string v6, "dms_server_id"

    const-string v7, "dms_server_id"

    invoke-static {v5, v7, v9}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8949
    const-string v6, "dms_start_index"

    const-string v7, "dms_start_index"

    invoke-static {v5, v7, v12, v13}, Lcom/htc/music/util/MusicUtils;->getLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8951
    const-string v6, "dms_end_index"

    const-string v7, "dms_end_index"

    invoke-static {v5, v7, v12, v13}, Lcom/htc/music/util/MusicUtils;->getLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8953
    const-string v6, "dms_file_path"

    const-string v7, "dms_file_path"

    invoke-static {v5, v7, v9}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8955
    const-string v6, "dlna_repeat"

    const-string v7, "dlna_repeat"

    invoke-static {v5, v7, v10}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8957
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRepeatMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dlna_repeat"

    invoke-static {v5, v8, v10}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8958
    const-string v6, "dlna_shuffle"

    const-string v7, "dlna_shuffle"

    invoke-static {v5, v7, v10}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8960
    const-string v6, "command"

    const-string v7, "com.htc.music.refreshplaylist"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8961
    const-string v6, "com.htc.music.dmc_setsrc"

    invoke-virtual {v3, v6, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8962
    const-string v6, "forcePlay"

    invoke-virtual {v3, v6, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 8967
    .end local v1           #dmr:Ljava/lang/String;
    :pswitch_2
    const-string v6, "dms_content_id"

    const-string v7, "dms_content_id"

    invoke-static {v5, v7, v9}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8969
    const-string v6, "dms_container_id"

    const-string v7, "dms_container_id"

    invoke-static {v5, v7, v9}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8971
    const-string v6, "dms_server_id"

    const-string v7, "dms_server_id"

    invoke-static {v5, v7, v9}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8973
    const-string v6, "dms_start_index"

    const-string v7, "dms_start_index"

    invoke-static {v5, v7, v12, v13}, Lcom/htc/music/util/MusicUtils;->getLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8975
    const-string v6, "dms_end_index"

    const-string v7, "dms_end_index"

    invoke-static {v5, v7, v12, v13}, Lcom/htc/music/util/MusicUtils;->getLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8977
    const-string v6, "dlna_shuffle"

    const-string v7, "dlna_shuffle"

    invoke-static {v5, v7, v10}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8979
    const-string v6, "dms_file_path"

    const-string v7, "dms_file_path"

    invoke-static {v5, v7, v9}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8907
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPluginClass(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5761
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5762
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 5764
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginCount()I
    .locals 1

    .prologue
    .line 5769
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5770
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginCount()I

    move-result v0

    .line 5772
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5799
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5800
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 5802
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5791
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5792
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5794
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5777
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5778
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    .line 5780
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5825
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5826
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    .line 5828
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginUpdateNotification()Landroid/app/Notification;
    .locals 17

    .prologue
    .line 7620
    const/4 v8, 0x0

    .line 7622
    .local v8, status:Landroid/app/Notification;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 7623
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->initNotificationTextColor()V

    .line 7624
    new-instance v11, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f030045

    invoke-direct {v11, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 7625
    .local v11, views:Landroid/widget/RemoteViews;
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getBigNotifcationLayoutId()I

    move-result v13

    invoke-direct {v3, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 7627
    .local v3, bigView:Landroid/widget/RemoteViews;
    const v12, 0x7f070016

    const-string v13, "music_notification_pause_btn"

    const v14, 0x7f020061

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7628
    const v12, 0x7f070016

    const-string v13, "setBackgroundResource"

    const-string v14, "music_notification_b_transport_middle"

    const v15, 0x7f020069

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7631
    const v12, 0x7f070016

    const-string v13, "music_big_notification_pause_btn"

    const v14, 0x7f020044

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v3, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7632
    const v12, 0x7f070016

    const-string v13, "setBackgroundResource"

    const-string v14, "music_notification_b_transport"

    const v15, 0x7f020068

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v3, v12, v13, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7633
    const v12, 0x7f070015

    const-string v13, "music_big_notification_prev_btn"

    const v14, 0x7f020045

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v3, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7634
    const v12, 0x7f070015

    const-string v13, "setBackgroundResource"

    const-string v14, "music_notification_b_transport_middle"

    const v15, 0x7f020069

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v3, v12, v13, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7635
    const v12, 0x7f070017

    const-string v13, "music_big_notification_next_btn"

    const v14, 0x7f020043

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v3, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7636
    const v12, 0x7f070017

    const-string v13, "setBackgroundResource"

    const-string v14, "music_notification_b_transport_middle"

    const v15, 0x7f020069

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v3, v12, v13, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7638
    const/4 v2, 0x0

    .local v2, artist:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, album:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, track:Ljava/lang/String;
    const/4 v7, 0x0

    .line 7640
    .local v7, salbumartpath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v7

    .line 7641
    if-nez v7, :cond_7

    .line 7642
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V

    .line 7643
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V

    .line 7673
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v10

    .line 7674
    const v12, 0x7f070013

    invoke-virtual {v11, v12, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7675
    const v12, 0x7f070013

    invoke-virtual {v3, v12, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7677
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 7678
    if-eqz v2, :cond_0

    const-string v12, "<unknown>"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 7679
    :cond_0
    const v12, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7681
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 7682
    if-eqz v1, :cond_2

    const-string v12, "<unknown>"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 7683
    :cond_2
    const v12, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7686
    :cond_3
    const v12, 0x7f070014

    const v13, 0x7f0601b0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7687
    const v12, 0x7f070014

    const v13, 0x7f0601b0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7690
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationPrimaryTextColor:I

    if-eqz v12, :cond_4

    .line 7691
    const v12, 0x7f070013

    const-string v13, "setTextColor"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationPrimaryTextColor:I

    invoke-virtual {v11, v12, v13, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7692
    const v12, 0x7f070013

    const-string v13, "setTextColor"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationPrimaryTextColor:I

    invoke-virtual {v3, v12, v13, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7694
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationSecondaryTextColor:I

    if-eqz v12, :cond_5

    .line 7695
    const v12, 0x7f070014

    const-string v13, "setTextColor"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationSecondaryTextColor:I

    invoke-virtual {v11, v12, v13, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7696
    const v12, 0x7f070014

    const-string v13, "setTextColor"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationSecondaryTextColor:I

    invoke-virtual {v3, v12, v13, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7699
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->initNotificationIntents()V

    .line 7701
    const v12, 0x7f070016

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mPauseIntent:Landroid/content/Intent;

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7704
    const v12, 0x7f070016

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mPauseIntent:Landroid/content/Intent;

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7705
    const v12, 0x7f070015

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mPrevIntent:Landroid/content/Intent;

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7706
    const v12, 0x7f070017

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mNextIntent:Landroid/content/Intent;

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7709
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/MediaPlaybackService;->mPluginNotification:Landroid/app/Notification;

    if-nez v12, :cond_6

    .line 7710
    new-instance v12, Landroid/app/Notification$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/MediaPlaybackService;->mPluginNotification:Landroid/app/Notification;

    .line 7712
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/MediaPlaybackService;->mPluginNotification:Landroid/app/Notification;

    iput-object v11, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7713
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/MediaPlaybackService;->mPluginNotification:Landroid/app/Notification;

    iput-object v3, v12, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7714
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/MediaPlaybackService;->mPluginNotification:Landroid/app/Notification;

    iget v13, v12, Landroid/app/Notification;->flags:I

    const/high16 v14, -0x8000

    or-int/2addr v13, v14

    iput v13, v12, Landroid/app/Notification;->flags:I

    .line 7715
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/MediaPlaybackService;->mPluginNotification:Landroid/app/Notification;

    const v13, 0x7f02006e

    iput v13, v12, Landroid/app/Notification;->icon:I

    .line 7717
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7718
    .local v9, statusintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/MediaPlaybackService;->mPluginNotification:Landroid/app/Notification;

    const/4 v13, 0x0

    const/high16 v14, 0x800

    move-object/from16 v0, p0

    invoke-static {v0, v13, v9, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    iput-object v13, v12, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 7720
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/MediaPlaybackService;->mPluginNotification:Landroid/app/Notification;

    .line 7726
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #artist:Ljava/lang/String;
    .end local v3           #bigView:Landroid/widget/RemoteViews;
    .end local v7           #salbumartpath:Ljava/lang/String;
    .end local v9           #statusintent:Landroid/content/Intent;
    .end local v10           #track:Ljava/lang/String;
    .end local v11           #views:Landroid/widget/RemoteViews;
    :goto_1
    return-object v8

    .line 7646
    .restart local v1       #album:Ljava/lang/String;
    .restart local v2       #artist:Ljava/lang/String;
    .restart local v3       #bigView:Landroid/widget/RemoteViews;
    .restart local v7       #salbumartpath:Ljava/lang/String;
    .restart local v10       #track:Ljava/lang/String;
    .restart local v11       #views:Landroid/widget/RemoteViews;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getNotificiationArtSideLen()I

    move-result v5

    .line 7648
    .local v5, maxSideLen:I
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 7650
    .local v4, bitmap:Landroid/graphics/Bitmap;
    if-nez v4, :cond_8

    .line 7652
    const-string v12, "[MediaPlaybackService]"

    const-string v13, " bitmap is null..."

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7653
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V

    .line 7654
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V

    .line 7669
    :goto_2
    const-string v12, "[MediaPlaybackService]"

    invoke-static {v12, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7656
    :cond_8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-gt v12, v5, :cond_9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-le v12, v5, :cond_a

    .line 7658
    :cond_9
    const/4 v12, 0x0

    invoke-static {v4, v5, v5, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 7659
    .local v6, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 7660
    const/4 v4, 0x0

    .line 7661
    const v12, 0x7f070012

    invoke-virtual {v11, v12, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 7662
    const v12, 0x7f070012

    invoke-virtual {v3, v12, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    .line 7665
    .end local v6           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_a
    const v12, 0x7f070012

    invoke-virtual {v11, v12, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 7666
    const v12, 0x7f070012

    invoke-virtual {v3, v12, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    .line 7723
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #artist:Ljava/lang/String;
    .end local v3           #bigView:Landroid/widget/RemoteViews;
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #maxSideLen:I
    .end local v7           #salbumartpath:Ljava/lang/String;
    .end local v10           #track:Ljava/lang/String;
    .end local v11           #views:Landroid/widget/RemoteViews;
    :cond_b
    new-instance v8, Landroid/app/Notification;

    .end local v8           #status:Landroid/app/Notification;
    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .restart local v8       #status:Landroid/app/Notification;
    goto :goto_1
.end method

.method private getPositionFromId(J)I
    .locals 3
    .parameter "curId"

    .prologue
    .line 9029
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_1

    .line 9030
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v0

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 9035
    .end local v0           #i:I
    :goto_1
    return v0

    .line 9029
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9035
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getRecentAlbumId()[I
    .locals 7

    .prologue
    .line 8041
    monitor-enter p0

    .line 8043
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getStorageState()Ljava/lang/String;

    move-result-object v3

    .line 8044
    .local v3, status:Ljava/lang/String;
    const/4 v1, 0x0

    .line 8045
    .local v1, isMounted:Z
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mounted_ro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8047
    :cond_0
    const/4 v1, 0x1

    .line 8050
    :cond_1
    if-eqz v1, :cond_3

    .line 8051
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "actuall recent album size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8053
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->ensureRecentlyPlayedAlbumList()V

    .line 8056
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 8057
    .local v2, localRecentAlbumId:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 8058
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0

    .line 8057
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8060
    :cond_2
    monitor-exit p0

    .line 8062
    .end local v0           #i:I
    .end local v2           #localRecentAlbumId:[I
    :goto_1
    return-object v2

    :cond_3
    const/4 v4, 0x0

    new-array v2, v4, [I

    monitor-exit p0

    goto :goto_1

    .line 8166
    .end local v1           #isMounted:Z
    .end local v3           #status:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getRecentAlbumartPath([I)[Ljava/lang/String;
    .locals 17
    .parameter "albumIds"

    .prologue
    .line 8171
    if-nez p1, :cond_1

    .line 8172
    const/4 v15, 0x0

    .line 8260
    :cond_0
    :goto_0
    return-object v15

    .line 8173
    :cond_1
    const/16 v1, 0x8

    new-array v15, v1, [Ljava/lang/String;

    .line 8174
    .local v15, recentAlbumartpath:[Ljava/lang/String;
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "getRecentAlbumartPath"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8175
    move-object/from16 v0, p1

    array-length v1, v0

    array-length v2, v15

    if-le v1, v2, :cond_2

    .line 8176
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "albumIds.length > recentAlbumartpath.length!! let it crash..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8179
    :cond_2
    const/4 v8, 0x0

    .line 8181
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 8182
    .local v16, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    .line 8183
    .local v5, recentAlbumId:[Ljava/lang/String;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8184
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    :try_start_1
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v10, v1, :cond_4

    .line 8185
    const-string v1, "_id = ?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8186
    aget v1, p1, v10

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v10

    .line 8187
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-eq v10, v1, :cond_3

    .line 8188
    const-string v1, " OR "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8184
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 8190
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8192
    :try_start_2
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8193
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 8197
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_6

    .line 8198
    :cond_5
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Cursor is null or count <= 0"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8199
    const/4 v15, 0x0

    .line 8254
    .end local v15           #recentAlbumartpath:[Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 8255
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 8256
    .end local v5           #recentAlbumId:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v16           #where:Ljava/lang/StringBuilder;
    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 8190
    .restart local v5       #recentAlbumId:[Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v15       #recentAlbumartpath:[Ljava/lang/String;
    .restart local v16       #where:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 8251
    .end local v5           #recentAlbumId:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v16           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 8252
    .local v9, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "getRecentAlbumartPath error"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 8254
    if-eqz v8, :cond_0

    .line 8255
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 8202
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v5       #recentAlbumId:[Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v16       #where:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_6
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 8203
    .local v12, indexId:I
    const-string v1, "album_art"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 8205
    .local v11, indexAlbumArt:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8206
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 8207
    const/4 v7, 0x0

    .line 8208
    .local v7, currentAlbumId:I
    const/4 v10, 0x0

    :goto_3
    :try_start_7
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v10, v1, :cond_b

    array-length v1, v15

    if-ge v10, v1, :cond_b

    .line 8209
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8210
    const/4 v13, 0x0

    .local v13, j:I
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v13, v1, :cond_7

    .line 8211
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 8212
    aget v1, p1, v10

    if-ne v7, v1, :cond_a

    .line 8213
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v14

    .line 8214
    .local v14, path:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8215
    aput-object v14, v15, v10

    .line 8220
    :goto_5
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recentAlbumartpath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v15, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8208
    .end local v14           #path:Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 8217
    .restart local v14       #path:Ljava/lang/String;
    :cond_8
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v10

    goto :goto_5

    .line 8226
    .end local v13           #j:I
    .end local v14           #path:Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 8254
    .end local v5           #recentAlbumId:[Ljava/lang/String;
    .end local v7           #currentAlbumId:I
    .end local v10           #i:I
    .end local v11           #indexAlbumArt:I
    .end local v12           #indexId:I
    .end local v16           #where:Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v1

    if-eqz v8, :cond_9

    .line 8255
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 8256
    const/4 v8, 0x0

    .line 8254
    :cond_9
    throw v1

    .line 8223
    .restart local v5       #recentAlbumId:[Ljava/lang/String;
    .restart local v7       #currentAlbumId:I
    .restart local v10       #i:I
    .restart local v11       #indexAlbumArt:I
    .restart local v12       #indexId:I
    .restart local v13       #j:I
    .restart local v16       #where:Ljava/lang/StringBuilder;
    :cond_a
    :try_start_9
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 8210
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 8226
    .end local v13           #j:I
    :cond_b
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 8227
    if-eqz v15, :cond_c

    :try_start_a
    array-length v1, v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-lez v1, :cond_c

    .line 8254
    if-eqz v8, :cond_0

    .line 8255
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 8232
    .end local v7           #currentAlbumId:I
    :cond_c
    :try_start_b
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 8233
    const/4 v7, 0x0

    .line 8234
    .restart local v7       #currentAlbumId:I
    const/4 v10, 0x0

    :goto_6
    :try_start_c
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v10, v1, :cond_11

    array-length v1, v15

    if-ge v10, v1, :cond_11

    .line 8235
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8236
    const/4 v13, 0x0

    .restart local v13       #j:I
    :goto_7
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v13, v1, :cond_f

    .line 8237
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 8238
    aget v1, p1, v10

    if-ne v7, v1, :cond_10

    .line 8239
    if-nez v15, :cond_e

    .line 8240
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "getgetRecentAlbumartPath, recentAlbumartpath is null?!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8241
    const/4 v1, 0x0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 8254
    if-eqz v8, :cond_d

    .line 8255
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 8256
    const/4 v8, 0x0

    :cond_d
    move-object v15, v1

    .line 8241
    goto/16 :goto_0

    .line 8243
    :cond_e
    :try_start_d
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v10

    .line 8244
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recentAlbumartpath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v15, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8234
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 8247
    :cond_10
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 8236
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 8250
    .end local v13           #j:I
    :cond_11
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 8254
    if-eqz v8, :cond_0

    .line 8255
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 8250
    :catchall_3
    move-exception v1

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
.end method

.method private getRecentPlayedPlaylist()[I
    .locals 3

    .prologue
    .line 8365
    monitor-enter p0

    .line 8366
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 8367
    .local v1, recentAlbumId:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 8368
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 8367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8370
    :cond_0
    monitor-exit p0

    return-object v1

    .line 8371
    .end local v0           #i:I
    .end local v1           #recentAlbumId:[I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getShortcutInfoList()[Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 8867
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getShortcutInfoList"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8868
    invoke-static {p0}, Lcom/htc/music/util/LandingUtils;->getShortcutInfoListByContentValues(Landroid/content/Context;)[Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private gotoIdleState()V
    .locals 5

    .prologue
    .line 4205
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 4206
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotoIdleState: mPlayOnNextPrev: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4210
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4211
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4214
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 4215
    .local v1, status:Landroid/app/Notification;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 4216
    return-void
.end method

.method private handleAlbumArtQueryComplete(Landroid/os/Bundle;Landroid/database/Cursor;)V
    .locals 9
    .parameter "data"
    .parameter "cursor"

    .prologue
    .line 8606
    if-nez p2, :cond_1

    .line 8667
    :cond_0
    :goto_0
    return-void

    .line 8607
    :cond_1
    if-nez p1, :cond_2

    .line 8608
    if-eqz p2, :cond_0

    .line 8609
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 8614
    :cond_2
    const-string v6, "curalbumid"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 8615
    .local v4, queryAlbumId:I
    const-string v6, "curalbumkey"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8618
    .local v5, queryAlbumKey:Ljava/lang/String;
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8619
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8620
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 8621
    .local v3, path:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8622
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8623
    :try_start_1
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    if-ne v6, v4, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8627
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "query albumart path but DL exist now!! write to preference success"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8628
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 8629
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/music/MediaPlaybackService;->writeCache(ILjava/lang/String;Ljava/lang/String;)V

    .line 8630
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8663
    if-eqz p2, :cond_0

    .line 8664
    .end local v3           #path:Ljava/lang/String;
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 8632
    .restart local v3       #path:Ljava/lang/String;
    :cond_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8636
    .end local v3           #path:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v6, "album_art"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 8637
    .local v1, artColumnIndex:I
    if-gez v1, :cond_5

    .line 8638
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "Cannot find art column index"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 8663
    if-eqz p2, :cond_0

    goto :goto_1

    .line 8632
    .end local v1           #artColumnIndex:I
    .restart local v3       #path:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 8659
    .end local v3           #path:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 8660
    .local v2, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception when handleAlbumArtQueryComplete, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8661
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 8663
    if-eqz p2, :cond_0

    goto :goto_1

    .line 8642
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #artColumnIndex:I
    :cond_5
    :try_start_7
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 8643
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8645
    .local v0, albumArtPath:Ljava/lang/String;
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 8646
    :try_start_8
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    if-ne v6, v4, :cond_6

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 8650
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "query albumart path and write to preference success"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8651
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 8652
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/music/MediaPlaybackService;->writeCache(ILjava/lang/String;Ljava/lang/String;)V

    .line 8653
    monitor-exit p0

    .line 8663
    if-eqz p2, :cond_0

    goto :goto_1

    .line 8655
    :cond_6
    monitor-exit p0

    .line 8663
    if-eqz p2, :cond_0

    goto :goto_1

    .line 8655
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 8663
    .end local v0           #albumArtPath:Ljava/lang/String;
    .end local v1           #artColumnIndex:I
    :catchall_2
    move-exception v6

    if-eqz p2, :cond_7

    .line 8664
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 8663
    :cond_7
    throw v6

    .restart local v1       #artColumnIndex:I
    :cond_8
    if-eqz p2, :cond_0

    goto :goto_1
.end method

.method private handleDMCError(I)V
    .locals 3
    .parameter "errorId"

    .prologue
    .line 8829
    packed-switch p1, :pswitch_data_0

    .line 8847
    :goto_0
    return-void

    .line 8831
    :pswitch_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "ERROR_DMR_DISCONNECT"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8832
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->powerOffDmc()V

    goto :goto_0

    .line 8835
    :pswitch_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "ERROR_DMS_DISCONNECT"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8836
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 8837
    const/4 v0, 0x1

    .line 8838
    .local v0, isPowerOff:Z
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    .line 8839
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->setQueuePosition(I)V

    goto :goto_0

    .line 8829
    :pswitch_data_0
    .packed-switch -0x2716
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRecentPlayedSong()V
    .locals 1

    .prologue
    .line 9145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentAlbumList()V

    .line 9146
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentPlayedPlaylist()V

    .line 9147
    const-string v0, "com.htc.music.recentplayedchanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 9148
    return-void
.end method

.method private initNotificationIntents()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 9090
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPauseIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 9091
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPauseIntent:Landroid/content/Intent;

    .line 9092
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPauseIntent:Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9093
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPauseIntent:Landroid/content/Intent;

    const-string v1, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9096
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPrevIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 9097
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPrevIntent:Landroid/content/Intent;

    .line 9098
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPrevIntent:Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "previous"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9099
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPrevIntent:Landroid/content/Intent;

    const-string v1, "ignore_anim"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9100
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPrevIntent:Landroid/content/Intent;

    const-string v1, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9103
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNextIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 9104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNextIntent:Landroid/content/Intent;

    .line 9105
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNextIntent:Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNextIntent:Landroid/content/Intent;

    const-string v1, "ignore_anim"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9107
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNextIntent:Landroid/content/Intent;

    const-string v1, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9109
    :cond_2
    return-void
.end method

.method private initNotificationTextColor()V
    .locals 5

    .prologue
    .line 9159
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationPrimaryTextColor:I

    if-nez v2, :cond_0

    .line 9160
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 9161
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x2030052

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9162
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 9163
    .local v0, colorList:Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationPrimaryTextColor:I

    .line 9164
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNotificationPrimaryTextColor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationPrimaryTextColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9167
    .end local v0           #colorList:Landroid/content/res/ColorStateList;
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationSecondaryTextColor:I

    if-nez v2, :cond_1

    .line 9168
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 9169
    .restart local v1       #textView:Landroid/widget/TextView;
    const v2, 0x2030057

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9170
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 9171
    .restart local v0       #colorList:Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationSecondaryTextColor:I

    .line 9172
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNotificationSecondaryTextColor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationSecondaryTextColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9174
    .end local v0           #colorList:Landroid/content/res/ColorStateList;
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private isDmcOrPushMode()Z
    .locals 1

    .prologue
    .line 5807
    monitor-enter p0

    .line 5808
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5809
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isDmcOrPushMode()Z

    move-result v0

    monitor-exit p0

    .line 5811
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 5813
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isPluginMode()Z
    .locals 1

    .prologue
    .line 5579
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5580
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5581
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginMode()Z

    move-result v0

    .line 5584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluginReady()Z
    .locals 1

    .prologue
    .line 5817
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5818
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginReady()Z

    move-result v0

    .line 5820
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPodcast()Z
    .locals 1

    .prologue
    .line 5082
    monitor-enter p0

    .line 5083
    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5084
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isServiceConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5588
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5589
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5595
    :cond_0
    :goto_0
    return v0

    .line 5592
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isServiceReady(Ljava/lang/ref/WeakReference;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/MediaPlaybackService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, mService:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/music/MediaPlaybackService;>;"
    const/4 v0, 0x0

    .line 7734
    if-eqz p0, :cond_1

    .line 7735
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7736
    const/4 v0, 0x1

    .line 7743
    :goto_0
    return v0

    .line 7738
    :cond_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "mService.get() is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7742
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadRecentAlbumList(Landroid/content/SharedPreferences;)Z
    .locals 11
    .parameter "preferences"

    .prologue
    const/4 v8, 0x1

    .line 7907
    const-string v9, "localrecentalbumid"

    const-string v10, ""

    invoke-static {p1, v9, v10}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7908
    .local v6, q:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v8, :cond_3

    .line 7909
    const-string v9, ";"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7910
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 7911
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 7912
    aget-object v7, v1, v2

    .line 7913
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 7914
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 7915
    shl-int/lit8 v5, v5, 0x4

    .line 7916
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 7917
    .local v0, c:C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_0

    const/16 v9, 0x39

    if-gt v0, v9, :cond_0

    .line 7918
    add-int/lit8 v9, v0, -0x30

    add-int/2addr v5, v9

    .line 7914
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 7919
    :cond_0
    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    const/16 v9, 0x66

    if-gt v0, v9, :cond_1

    .line 7920
    add-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, -0x61

    add-int/2addr v5, v9

    goto :goto_2

    .line 7923
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentAlbumList()V

    .line 7924
    const/4 v8, 0x0

    .line 7932
    .end local v0           #c:C
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :goto_3
    return v8

    .line 7927
    .restart local v1       #entries:[Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v4       #len:I
    .restart local v5       #n:I
    .restart local v7       #revhex:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->restoreRecentAlbumList(I)V

    .line 7911
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7931
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->ensureRecentlyPlayedAlbumList()V

    goto :goto_3
.end method

.method private loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;)Z
    .locals 11
    .parameter "preferences"

    .prologue
    const/4 v8, 0x1

    .line 8325
    const-string v9, "recentplayedplaylist"

    const-string v10, ""

    invoke-static {p1, v9, v10}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8326
    .local v6, q:Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v8, :cond_2

    .line 8327
    const-string v9, ";"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8328
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 8329
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 8330
    aget-object v7, v1, v2

    .line 8331
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 8332
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_3

    .line 8333
    shl-int/lit8 v5, v5, 0x4

    .line 8334
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 8335
    .local v0, c:C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_0

    const/16 v9, 0x39

    if-gt v0, v9, :cond_0

    .line 8336
    add-int/lit8 v9, v0, -0x30

    add-int/2addr v5, v9

    .line 8332
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 8337
    :cond_0
    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    const/16 v9, 0x66

    if-gt v0, v9, :cond_1

    .line 8338
    add-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, -0x61

    add-int/2addr v5, v9

    goto :goto_2

    .line 8341
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentPlayedPlaylist()V

    .line 8342
    const/4 v8, 0x0

    .line 8349
    .end local v0           #c:C
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :cond_2
    return v8

    .line 8345
    .restart local v1       #entries:[Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v4       #len:I
    .restart local v5       #n:I
    .restart local v7       #revhex:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->restoreRecentPlayedPlaylist(I)V

    .line 8329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private makeAutoShuffleList()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 4455
    const/4 v6, 0x0

    .line 4457
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4460
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 4474
    :cond_0
    if-eqz v6, :cond_1

    .line 4475
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4476
    const/4 v6, 0x0

    :cond_1
    move v0, v12

    .line 4479
    :goto_0
    return v0

    .line 4463
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 4464
    .local v9, len:I
    new-array v10, v9, [I

    .line 4465
    .local v10, list:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 4466
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 4467
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 4465
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4469
    :cond_3
    iput-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4474
    if-eqz v6, :cond_4

    .line 4475
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4476
    const/4 v6, 0x0

    :cond_4
    move v0, v11

    .line 4470
    goto :goto_0

    .line 4471
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catch_0
    move-exception v7

    .line 4472
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception in makeAutoShuffleList. Ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4474
    if-eqz v6, :cond_5

    .line 4475
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4476
    const/4 v6, 0x0

    :cond_5
    move v0, v12

    .line 4479
    goto :goto_0

    .line 4474
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 4475
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4476
    const/4 v6, 0x0

    .line 4474
    :cond_6
    throw v0
.end method

.method private nextAsync(ZZ)V
    .locals 4
    .parameter "force"
    .parameter "playAnim"

    .prologue
    .line 4129
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 4130
    .local v1, handler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    if-eqz v1, :cond_0

    .line 4131
    const/16 v3, 0x2719

    invoke-virtual {v1, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4132
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4133
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "play_anim"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4134
    const-string v3, "force"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4135
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4136
    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4138
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private nextImpl(ZZ)V
    .locals 1
    .parameter "force"
    .parameter "playAnim"

    .prologue
    .line 4117
    const/4 v0, -0x1

    .line 4118
    .local v0, cookie:I
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/music/MediaPlaybackService;->nextImpl(ZZI)V

    .line 4119
    return-void
.end method

.method private nextImpl(ZZI)V
    .locals 1
    .parameter "force"
    .parameter "playAnim"
    .parameter "cookie"

    .prologue
    .line 4107
    monitor-enter p0

    .line 4108
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4109
    invoke-direct {p0, p2}, Lcom/htc/music/MediaPlaybackService;->pluginNextImpl(Z)V

    .line 4113
    :goto_0
    monitor-exit p0

    .line 4114
    return-void

    .line 4111
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->nextImpl(ZZI)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$8900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;ZZI)V

    goto :goto_0

    .line 4113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyChange(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 3064
    invoke-virtual {p0, p1}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3065
    return-void
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 1
    .parameter "what"

    .prologue
    .line 2957
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2958
    return-void
.end method

.method private notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 15
    .parameter "what"
    .parameter "bundle"

    .prologue
    .line 2977
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2979
    .local v3, i:Landroid/content/Intent;
    const-string v11, "id"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2980
    const-string v11, "artist"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2981
    const-string v11, "album"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2982
    const-string v11, "track"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2983
    const-string v11, "albumid"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2984
    const-string v11, "isplaying"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2986
    const-string v11, "com.htc.music.metachanged"

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2987
    const-string v11, "current_playing_pos"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueuePosition()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2990
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v4

    .line 2991
    .local v4, isPluginMode:Z
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mCachePreferences:Landroid/content/SharedPreferences;

    const-string v12, "plugin-mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/htc/music/util/MusicUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v11

    if-eq v11, v4, :cond_0

    .line 2992
    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->writeCache(Z)V

    .line 2994
    :cond_0
    if-nez v4, :cond_1

    .line 2995
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2996
    .local v1, audioPath:Ljava/lang/String;
    const-string v11, "path"

    invoke-virtual {v3, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2997
    const-string v11, "queuesize"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueueSize()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2998
    const-string v11, "queueposition"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3000
    .end local v1           #audioPath:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_4

    .line 3001
    const-string v11, "animationtype"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 3002
    .local v9, type:I
    if-ltz v9, :cond_2

    const/4 v11, 0x2

    if-le v9, v11, :cond_3

    .line 3003
    :cond_2
    const/4 v9, 0x0

    .line 3005
    :cond_3
    const-string v11, "animationtype"

    invoke-virtual {v3, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3006
    const-string v11, "updatewidget"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 3007
    .local v10, updateWidget:Z
    const-string v11, "updatewidget"

    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3010
    .end local v9           #type:I
    .end local v10           #updateWidget:Z
    :cond_4
    const-string v11, "title"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3013
    const-string v11, "tracknum"

    iget v12, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3014
    const-string v11, "numberoftracks"

    iget v12, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3015
    const-string v11, "duration"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v12

    invoke-virtual {v3, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3016
    const-string v11, "position"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v12

    invoke-virtual {v3, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3055
    .end local v4           #isPluginMode:Z
    :cond_5
    :goto_0
    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3057
    invoke-direct/range {p0 .. p1}, Lcom/htc/music/MediaPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V

    .line 3059
    const-string v11, "[MediaPlaybackService]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!!!=== notifyChange: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    return-void

    .line 3017
    :cond_6
    const-string v11, "com.htc.music.playstatechanged"

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 3018
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 3019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    .line 3038
    :cond_7
    :goto_1
    const-string v8, "paused"

    .line 3040
    .local v8, stopState:Ljava/lang/String;
    if-eqz p2, :cond_8

    .line 3041
    const-string v11, "extrastate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3042
    .local v2, extraState:Ljava/lang/String;
    const-string v11, "extrastate"

    invoke-virtual {v3, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3044
    const-string v11, "stopcommand"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 3045
    const-string v8, "stopped"

    .line 3049
    .end local v2           #extraState:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v7, "playing"

    .line 3050
    .local v7, playbackState:Ljava/lang/String;
    :goto_2
    const-string v11, "[MediaPlaybackService]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTC AVRCP_1.3] notifyChange,  playback state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mCurrentPlaybackState:Ljava/lang/String;

    .line 3052
    const-string v11, "playstate"

    invoke-virtual {v3, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3053
    const-string v11, "position"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v12

    invoke-virtual {v3, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_0

    .line 3022
    .end local v7           #playbackState:Ljava/lang/String;
    .end local v8           #stopState:Ljava/lang/String;
    :cond_9
    iget-wide v11, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_7

    .line 3023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    sub-long v5, v11, v13

    .line 3025
    .local v5, playbackDuration:J
    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-lez v11, :cond_a

    .line 3027
    const-wide/16 v11, 0x3e8

    div-long/2addr v5, v11

    .line 3028
    invoke-direct {p0, v5, v6}, Lcom/htc/music/MediaPlaybackService;->sendPlaybackTimeULogMsg(J)V

    .line 3034
    :goto_3
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    goto :goto_1

    .line 3031
    :cond_a
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "playbackDuration should not <= 0."

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v5           #playbackDuration:J
    .restart local v8       #stopState:Ljava/lang/String;
    :cond_b
    move-object v7, v8

    .line 3049
    goto :goto_2
.end method

.method private open([II)V
    .locals 1
    .parameter "list"
    .parameter "position"

    .prologue
    .line 5833
    monitor-enter p0

    .line 5834
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->openImpl([II)V

    .line 5835
    monitor-exit p0

    .line 5836
    return-void

    .line 5835
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private openCurrentAndNext()V
    .locals 1

    .prologue
    .line 3546
    const/4 v0, -0x1

    .line 3547
    .local v0, cookie:I
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext(I)V

    .line 3548
    return-void
.end method

.method private openCurrentAndNext(I)V
    .locals 14
    .parameter "cookie"

    .prologue
    const/4 v13, 0x1

    .line 3551
    monitor-enter p0

    .line 3552
    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_0

    .line 3553
    monitor-exit p0

    .line 3654
    :goto_0
    return-void

    .line 3555
    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_2

    .line 3556
    :cond_1
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad! we can\'t open mPlayPos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlayListLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    monitor-exit p0

    goto :goto_0

    .line 3653
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3559
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3561
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 3563
    .local v10, id:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V

    .line 3564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    .line 3566
    const/4 v9, 0x0

    .line 3570
    .local v9, cursor:Landroid/database/Cursor;
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mLaunchedBefore:Z

    if-eqz v0, :cond_5

    .line 3571
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3589
    :goto_1
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 3590
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3593
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 3594
    .local v8, colCount:I
    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    .line 3595
    .local v12, position:I
    if-lez v8, :cond_3

    if-gez v12, :cond_6

    .line 3597
    :cond_3
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrentAndNext: cols count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3598
    if-eqz v9, :cond_4

    .line 3599
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3600
    const/4 v9, 0x0

    .line 3602
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    .line 3577
    .end local v8           #colCount:I
    .end local v12           #position:I
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mLaunchedBefore:Z

    .line 3578
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "first launch after installed ROM!! use combine sql..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3579
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id < 0) UNION SELECT audio._id AS _id, audio.artist, audio.album, audio.album_key, audio.title, audio._data, audio.mime_type, audio.album_id, audio.artist_id, audio.is_podcast, audio.bookmark, audio.composer, audio._display_name, album_info.album_art FROM audio2 as audio left outer join album2_info as album_info on album_info._id = audio.album_id where (audio._id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_1

    .line 3606
    .restart local v8       #colCount:I
    .restart local v12       #position:I
    :cond_6
    invoke-direct {p0, v9}, Lcom/htc/music/MediaPlaybackService;->setAudioMetaData(Landroid/database/Cursor;)V

    .line 3608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/music/MediaPlaybackService;->open(Ljava/lang/String;ZI)V

    .line 3609
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveCurrentPlayPos()V

    .line 3611
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3612
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v6

    .line 3615
    .local v6, bookmark:J
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v1, 0x1388

    sub-long v1, v6, v1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    .line 3647
    .end local v6           #bookmark:J
    .end local v8           #colCount:I
    .end local v12           #position:I
    :cond_7
    :goto_2
    if-eqz v9, :cond_8

    .line 3648
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3649
    const/4 v9, 0x0

    .line 3652
    :cond_8
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->setNextTrack()V

    .line 3653
    monitor-exit p0

    goto/16 :goto_0

    .line 3618
    :cond_9
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Current track did not exist"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    const v0, 0x7f060054

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    .line 3620
    const/16 v11, 0xa

    .line 3621
    .local v11, min:I
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v13, :cond_a

    .line 3622
    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3624
    :cond_a
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-lt v0, v11, :cond_d

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v13, :cond_d

    .line 3625
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v0, :cond_b

    .line 3626
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3634
    :cond_b
    :goto_3
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-ge v0, v11, :cond_c

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v13, :cond_c

    .line 3637
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrentAndNext cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3638
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/MediaPlaybackService;->next(ZI)V

    .line 3641
    :cond_c
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-le v0, v11, :cond_7

    .line 3642
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    goto :goto_2

    .line 3629
    :cond_d
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v0, :cond_b

    .line 3630
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private openImpl([II)V
    .locals 1
    .parameter "list"
    .parameter "position"

    .prologue
    .line 3261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/music/MediaPlaybackService;->openImpl([IIZ)V

    .line 3262
    return-void
.end method

.method private openImpl([IIZ)V
    .locals 8
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 3274
    monitor-enter p0

    .line 3275
    :try_start_0
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v5, v6, :cond_0

    .line 3276
    const/4 v5, 0x1

    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 3279
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v3

    .line 3280
    .local v3, oldId:I
    array-length v1, p1

    .line 3282
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 3283
    .local v2, newlist:Z
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v5, v1, :cond_1

    .line 3285
    const/4 v2, 0x0

    .line 3286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3287
    aget v5, p1, v0

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v6, v6, v0

    if-eq v5, v6, :cond_9

    .line 3288
    const/4 v2, 0x1

    .line 3294
    .end local v0           #i:I
    :cond_1
    const/4 v4, 0x0

    .line 3295
    .local v4, shuffleModified:Z
    if-eqz p3, :cond_2

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-nez v5, :cond_2

    .line 3296
    const/4 v5, 0x1

    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 3297
    const/4 v4, 0x1

    .line 3300
    :cond_2
    if-nez v2, :cond_3

    if-eqz v4, :cond_5

    .line 3301
    :cond_3
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v5, v7, :cond_a

    .line 3302
    if-gez p2, :cond_4

    .line 3303
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    invoke-virtual {v5, v1}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result p2

    .line 3307
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 3308
    const/4 p2, 0x0

    .line 3310
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v5, v6}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    .line 3312
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3317
    :goto_1
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3318
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3321
    :cond_5
    if-ltz p2, :cond_b

    .line 3322
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3327
    :goto_2
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 3329
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 3330
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 3331
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v5

    if-eq v3, v5, :cond_6

    .line 3332
    const-string v5, "com.htc.music.metachanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3335
    :cond_6
    if-eqz v4, :cond_8

    .line 3336
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveShuffleMode()V

    .line 3338
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    if-ne v5, v7, :cond_7

    .line 3339
    const/4 v5, 0x2

    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 3340
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveRepeatMode()V

    .line 3344
    :cond_7
    const-string v5, "com.broadcom.bluetooth.avrcp.notify"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3346
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updatePlayerSettings()V

    .line 3348
    :cond_8
    monitor-exit p0

    .line 3349
    return-void

    .line 3286
    .end local v4           #shuffleModified:Z
    .restart local v0       #i:I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3314
    .end local v0           #i:I
    .restart local v4       #shuffleModified:Z
    :cond_a
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_1

    .line 3348
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:I
    .end local v4           #shuffleModified:Z
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3324
    .restart local v1       #listlength:I
    .restart local v2       #newlist:Z
    .restart local v3       #oldId:I
    .restart local v4       #shuffleModified:Z
    :cond_b
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private pauseAsync()V
    .locals 4

    .prologue
    const/16 v3, 0x271c

    .line 4017
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "pauseAsync"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4018
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 4019
    .local v0, handler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    if-eqz v0, :cond_0

    .line 4020
    invoke-virtual {v0, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 4021
    invoke-virtual {v0, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4023
    :cond_0
    return-void
.end method

.method private pauseImpl()V
    .locals 1

    .prologue
    .line 3999
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->pauseImpl(Z)V

    .line 4000
    return-void
.end method

.method private pauseImpl(Z)V
    .locals 4
    .parameter "notUpdateUi"

    .prologue
    .line 4003
    monitor-enter p0

    .line 4004
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    .line 4005
    .local v0, isPluginMode:Z
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause, isPluginMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4006
    if-eqz v0, :cond_0

    .line 4007
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pluginPauseImpl()V

    .line 4013
    :goto_0
    monitor-exit p0

    .line 4014
    return-void

    .line 4009
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pauseImpl(Z)V
    invoke-static {v1, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$8700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 4010
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->printATSPauseMusictoStopLog()V

    goto :goto_0

    .line 4013
    .end local v0           #isPluginMode:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private pauseOtherPlayer()V
    .locals 3

    .prologue
    .line 5511
    new-instance v0, Landroid/content/Intent;

    const-string v2, "kkbox.media.action.pause"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5512
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5514
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/music/MediaPlaybackService$11;

    invoke-direct {v2, p0}, Lcom/htc/music/MediaPlaybackService$11;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5524
    .local v1, setHeadsetOwnerThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5525
    return-void
.end method

.method private playAsync()V
    .locals 4

    .prologue
    const/16 v3, 0x271b

    .line 3958
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "playAsync"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3959
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 3960
    .local v0, handler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    if-eqz v0, :cond_0

    .line 3961
    invoke-virtual {v0, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3962
    invoke-virtual {v0, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3964
    :cond_0
    return-void
.end method

.method private playNextArtAnimation(II)V
    .locals 2
    .parameter "pos"
    .parameter "cookie"

    .prologue
    .line 9083
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.rotateright"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9084
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "current_playing_pos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9085
    const-string v1, "cookie"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9086
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Landroid/content/Intent;)V

    .line 9087
    return-void
.end method

.method private pluginNextImpl(Z)V
    .locals 6
    .parameter "playAnim"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 4178
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4179
    const/4 p1, 0x0

    .line 4182
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v1

    .line 4183
    .local v1, playlistLen:I
    if-gtz v1, :cond_2

    .line 4184
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "pluginNext, No play queue"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4202
    :cond_1
    :goto_0
    return-void

    .line 4188
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, v4}, Lcom/htc/music/MusicPluginManager;->stop(Z)V

    .line 4189
    if-eqz p1, :cond_3

    .line 4190
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, v4}, Lcom/htc/music/MusicPluginManager;->next(Z)V

    .line 4191
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->playNextArtAnimation(II)V

    .line 4192
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    goto :goto_0

    .line 4194
    :cond_3
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, v5}, Lcom/htc/music/MusicPluginManager;->next(Z)V

    .line 4196
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getCurrentMode()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 4197
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.update_glider_position"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4198
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "current_playing_pos"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4199
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private pluginPauseImpl()V
    .locals 1

    .prologue
    .line 4026
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->pause()V

    .line 4027
    return-void
.end method

.method private pluginPlayImpl()V
    .locals 1

    .prologue
    .line 3967
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V

    .line 3968
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->play()V

    .line 3969
    return-void
.end method

.method private pluginPrevImpl(Z)V
    .locals 12
    .parameter "playAnim"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4141
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    .line 4142
    .local v1, isDmcOrPushMode:Z
    if-eqz v1, :cond_0

    .line 4143
    const/4 p1, 0x0

    .line 4146
    :cond_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 4147
    invoke-virtual {p0, v10, v11}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    move-result-wide v2

    .line 4148
    .local v2, seekValue:J
    cmp-long v4, v2, v10

    if-ltz v4, :cond_2

    .line 4149
    const-string v4, "skip_prev"

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4175
    .end local v2           #seekValue:J
    :cond_1
    :goto_0
    return-void

    .line 4152
    .restart local v2       #seekValue:J
    :cond_2
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "pluginPrev, unable to do seek."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4156
    .end local v2           #seekValue:J
    :cond_3
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4, v8}, Lcom/htc/music/MusicPluginManager;->stop(Z)V

    .line 4158
    if-eqz p1, :cond_4

    .line 4159
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4, v8}, Lcom/htc/music/MusicPluginManager;->prev(Z)V

    .line 4160
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.music.rotateleft"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4161
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "current_playing_pos"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4162
    const-string v4, "playlist_len"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueueSize()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4163
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Landroid/content/Intent;)V

    .line 4164
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    goto :goto_0

    .line 4166
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4, v9}, Lcom/htc/music/MusicPluginManager;->prev(Z)V

    .line 4168
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getCurrentMode()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 4169
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.music.update_glider_position"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4170
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "current_playing_pos"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4171
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private pluginUpdateNotification(Landroid/app/Notification;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 7730
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 7731
    return-void
.end method

.method private powerOffDmc()V
    .locals 3

    .prologue
    .line 8850
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getDmsServer()Ljava/lang/String;

    move-result-object v0

    .line 8851
    .local v0, dms:Ljava/lang/String;
    const/4 v1, 0x1

    .line 8852
    .local v1, isPowerOff:Z
    if-eqz v0, :cond_0

    .line 8853
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    .line 8859
    :goto_0
    return-void

    .line 8855
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 8856
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    .line 8857
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackService;->setQueuePosition(I)V

    goto :goto_0
.end method

.method private prev()V
    .locals 1

    .prologue
    .line 4067
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->prevImpl(Z)V

    .line 4068
    return-void
.end method

.method private prevAsync()V
    .locals 1

    .prologue
    .line 4081
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->prevAsync(Z)V

    .line 4082
    return-void
.end method

.method private prevAsync(Z)V
    .locals 4
    .parameter "playAnim"

    .prologue
    .line 4085
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 4086
    .local v1, handler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    if-eqz v1, :cond_0

    .line 4087
    const/16 v3, 0x271a

    invoke-virtual {v1, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4088
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4089
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "play_anim"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4090
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4091
    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4093
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private prevImpl(Z)V
    .locals 1
    .parameter "playAnim"

    .prologue
    .line 4071
    monitor-enter p0

    .line 4072
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4073
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->pluginPrevImpl(Z)V

    .line 4077
    :goto_0
    monitor-exit p0

    .line 4078
    return-void

    .line 4075
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->prevImpl(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$8800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto :goto_0

    .line 4077
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readAlbumArtCache(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "albumId"
    .parameter "albumKey"

    .prologue
    .line 8688
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8692
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "read albumart path from last cache success"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8693
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 8705
    :goto_0
    return-object v0

    .line 8696
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->reloadAlbumArtCache()V

    .line 8697
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8701
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "read albumart path from preference cache success"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8702
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    goto :goto_0

    .line 8705
    :cond_1
    const-string v0, "<unknown>"

    goto :goto_0
.end method

.method private refreshPlaylist()V
    .locals 18

    .prologue
    .line 2459
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_5

    .line 2460
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 2461
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v1, "title != \'\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2462
    const-string v1, " AND _id IN ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2463
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v11, v1, :cond_1

    .line 2464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_0

    .line 2466
    const-string v1, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2463
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2469
    :cond_1
    const-string v1, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    const-string v1, " AND is_music>=1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2472
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "title_key"

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2477
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2478
    .local v7, audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 2480
    :cond_2
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlaylist, cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reset PlayList Length."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2487
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v12

    .line 2488
    .local v12, isPlaying:Z
    monitor-enter p0

    .line 2489
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v1, :cond_3

    .line 2490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v2, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 2491
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2492
    const-string v1, "com.htc.music.metachanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2493
    if-eqz v12, :cond_4

    .line 2494
    const-string v1, "com.htc.music.playstatechanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2498
    .end local v12           #isPlaying:Z
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2499
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2503
    const-string v1, "com.htc.music.queuechanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2504
    if-eqz v10, :cond_5

    .line 2505
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2506
    const/4 v10, 0x0

    .line 2563
    .end local v7           #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #i:I
    .end local v17           #where:Ljava/lang/StringBuilder;
    :cond_5
    :goto_1
    return-void

    .line 2491
    .restart local v7       #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #i:I
    .restart local v12       #isPlaying:Z
    .restart local v17       #where:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2511
    .end local v12           #isPlaying:Z
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 2512
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ne v9, v1, :cond_7

    .line 2515
    if-eqz v10, :cond_5

    .line 2516
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2517
    const/4 v10, 0x0

    goto :goto_1

    .line 2522
    :cond_7
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v14

    .line 2523
    .local v14, list:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 2525
    .local v16, removePosition:[I
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2526
    .restart local v7       #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    :goto_2
    array-length v1, v14

    if-ge v11, v1, :cond_8

    .line 2527
    aget v1, v14, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, v14, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2530
    :cond_8
    const/4 v13, 0x0

    .line 2531
    .local v13, j:I
    const/4 v8, 0x0

    .line 2532
    .local v8, bRemoved:Z
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v11, v1, :cond_9

    .line 2533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    if-lt v13, v1, :cond_b

    .line 2535
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "CMD_REFRESH_PLAYLIST, list length is wrong!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    :cond_9
    if-eqz v8, :cond_a

    .line 2550
    new-array v15, v13, [I

    .line 2551
    .local v15, removeArray:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v1, v15, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2553
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 2554
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MediaPlaybackService;->removeQueueTracks([I)I

    .line 2557
    .end local v15           #removeArray:[I
    :cond_a
    if-eqz v10, :cond_5

    .line 2558
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 2538
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 2539
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    aput v1, v16, v13

    .line 2543
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 2544
    const/4 v8, 0x1

    .line 2532
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2541
    :cond_d
    aput v11, v16, v13

    goto :goto_4
.end method

.method private refreshPlugin()V
    .locals 1

    .prologue
    .line 5785
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5786
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 5788
    :cond_0
    return-void
.end method

.method private reloadAlbumArtCache()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 8670
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCachePreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 8671
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 8672
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    .line 8673
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 8685
    :cond_0
    :goto_0
    return-void

    .line 8676
    :cond_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    if-ne v3, v0, :cond_0

    .line 8682
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCachePreferences:Landroid/content/SharedPreferences;

    const-string v1, "curalbumid"

    invoke-static {v0, v1, v3}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 8683
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCachePreferences:Landroid/content/SharedPreferences;

    const-string v1, "curalbumkey"

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    .line 8684
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCachePreferences:Landroid/content/SharedPreferences;

    const-string v1, "curalbumartpath"

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private reloadAndPlayMusicInWorker()V
    .locals 3

    .prologue
    const/16 v2, 0x271b

    const/16 v1, 0x2712

    .line 2725
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v0, :cond_1

    .line 2726
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2727
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2728
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2730
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2731
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2733
    :cond_1
    return-void
.end method

.method private reloadQueueImpl()Z
    .locals 30

    .prologue
    .line 2073
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl +"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    const/16 v20, 0x0

    .line 2075
    .local v20, q:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentAlbumList()V

    .line 2076
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentPlayedPlaylist()V

    .line 2077
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    .line 2078
    .local v12, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "cardid"

    invoke-interface/range {v26 .. v27}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "cardid"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    move/from16 v28, v0

    xor-int/lit8 v28, v28, -0x1

    invoke-static/range {v26 .. v28}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v12

    .line 2081
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v12, v0, :cond_2

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "queue"

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2085
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl: card id is the same."

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->loadRecentAlbumList(Landroid/content/SharedPreferences;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 2087
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl -. Failed to reload recent album list!"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    const/16 v26, 0x0

    .line 2454
    :goto_0
    return v26

    .line 2090
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 2091
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl -. Failed to reload recent played playlist!"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const/16 v26, 0x0

    goto :goto_0

    .line 2096
    :cond_2
    const-string v26, "[MediaPlaybackService]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "reloadQueueImpl, card id didn\u02bct match. mCardId: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    :cond_3
    if-eqz v20, :cond_2b

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2b

    .line 2100
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl: q != null && q.length() > 1"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 2104
    const-string v26, ";"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2105
    .local v10, entries:[Ljava/lang/String;
    array-length v15, v10

    .line 2106
    .local v15, len:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 2107
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v15, :cond_7

    .line 2108
    aget-object v22, v10, v11

    .line 2109
    .local v22, revhex:Ljava/lang/String;
    const/16 v16, 0x0

    .line 2110
    .local v16, n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v13, v26, -0x1

    .local v13, j:I
    :goto_2
    if-ltz v13, :cond_6

    .line 2111
    shl-int/lit8 v16, v16, 0x4

    .line 2112
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2113
    .local v5, c:C
    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v5, v0, :cond_4

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v5, v0, :cond_4

    .line 2114
    add-int/lit8 v26, v5, -0x30

    add-int v16, v16, v26

    .line 2110
    :goto_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 2115
    :cond_4
    const/16 v26, 0x61

    move/from16 v0, v26

    if-lt v5, v0, :cond_5

    const/16 v26, 0x66

    move/from16 v0, v26

    if-gt v5, v0, :cond_5

    .line 2116
    add-int/lit8 v26, v5, 0xa

    add-int/lit8 v26, v26, -0x61

    add-int v16, v16, v26

    goto :goto_3

    .line 2119
    :cond_5
    const-string v26, "[MediaPlaybackService]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "reloadQueueImpl -. Bogus data in queue:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2123
    .end local v5           #c:C
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    move-object/from16 v26, v0

    aput v16, v26, v11

    .line 2107
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2125
    .end local v13           #j:I
    .end local v16           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .line 2127
    .local v4, bRecoverQueue:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v26, v0

    if-lez v26, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v15, v0, :cond_8

    .line 2129
    const/4 v4, 0x1

    .line 2130
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "bRecoverQueue = true"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    :cond_8
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "queuealbum"

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2136
    if-eqz v20, :cond_e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_e

    .line 2137
    const-string v26, ";"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2138
    array-length v15, v10

    .line 2139
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 2140
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v15, :cond_c

    .line 2141
    aget-object v22, v10, v11

    .line 2142
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v16, 0x0

    .line 2143
    .restart local v16       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v13, v26, -0x1

    .restart local v13       #j:I
    :goto_5
    if-ltz v13, :cond_b

    .line 2144
    shl-int/lit8 v16, v16, 0x4

    .line 2145
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2146
    .restart local v5       #c:C
    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v5, v0, :cond_9

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v5, v0, :cond_9

    .line 2147
    add-int/lit8 v26, v5, -0x30

    add-int v16, v16, v26

    .line 2143
    :goto_6
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 2148
    :cond_9
    const/16 v26, 0x61

    move/from16 v0, v26

    if-lt v5, v0, :cond_a

    const/16 v26, 0x66

    move/from16 v0, v26

    if-gt v5, v0, :cond_a

    .line 2149
    add-int/lit8 v26, v5, 0xa

    add-int/lit8 v26, v26, -0x61

    add-int v16, v16, v26

    goto :goto_6

    .line 2152
    :cond_a
    const-string v26, "[MediaPlaybackService]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "reloadQueueImpl -. Bogus data in queuealbum:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2156
    .end local v5           #c:C
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    move-object/from16 v26, v0

    aput v16, v26, v11

    .line 2140
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 2158
    .end local v13           #j:I
    .end local v16           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v0, v15, :cond_d

    .line 2159
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 2171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "repeatmode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v21

    .line 2172
    .local v21, repmode:I
    if-eqz v21, :cond_f

    const/16 v26, 0x2

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_f

    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_f

    .line 2173
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2162
    .end local v21           #repmode:I
    :cond_d
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl -. Length of mAlbumList not equals to mPlayListLen"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2167
    :cond_e
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl -. queuealbum not exists."

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2175
    .restart local v21       #repmode:I
    :cond_f
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 2177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "shufflemode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v25

    .line 2178
    .local v25, shufmode:I
    if-eqz v25, :cond_10

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    .line 2179
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2181
    :cond_10
    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 2182
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v26

    if-nez v26, :cond_11

    .line 2183
    const/16 v25, 0x0

    .line 2186
    :cond_11
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 2187
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "shufflequeue"

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2189
    if-eqz v20, :cond_17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_17

    .line 2190
    const-string v26, ";"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2191
    array-length v15, v10

    .line 2192
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 2193
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v15, :cond_15

    .line 2194
    aget-object v22, v10, v11

    .line 2195
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v16, 0x0

    .line 2196
    .restart local v16       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v13, v26, -0x1

    .restart local v13       #j:I
    :goto_8
    if-ltz v13, :cond_14

    .line 2197
    shl-int/lit8 v16, v16, 0x4

    .line 2198
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2199
    .restart local v5       #c:C
    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v5, v0, :cond_12

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v5, v0, :cond_12

    .line 2200
    add-int/lit8 v26, v5, -0x30

    add-int v16, v16, v26

    .line 2196
    :goto_9
    add-int/lit8 v13, v13, -0x1

    goto :goto_8

    .line 2201
    :cond_12
    const/16 v26, 0x61

    move/from16 v0, v26

    if-lt v5, v0, :cond_13

    const/16 v26, 0x66

    move/from16 v0, v26

    if-gt v5, v0, :cond_13

    .line 2202
    add-int/lit8 v26, v5, 0xa

    add-int/lit8 v26, v26, -0x61

    add-int v16, v16, v26

    goto :goto_9

    .line 2205
    :cond_13
    const-string v26, "[MediaPlaybackService]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "reloadQueueImpl -. Bogus data in shufflequeue:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2209
    .end local v5           #c:C
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    move-object/from16 v26, v0

    aput v16, v26, v11

    .line 2193
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 2211
    .end local v13           #j:I
    .end local v16           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v0, v15, :cond_16

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "shufflequeuealbum"

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2223
    if-eqz v20, :cond_22

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_22

    .line 2224
    const-string v26, ";"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2225
    array-length v15, v10

    .line 2226
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 2227
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v15, :cond_1b

    .line 2228
    aget-object v22, v10, v11

    .line 2229
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v16, 0x0

    .line 2230
    .restart local v16       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v13, v26, -0x1

    .restart local v13       #j:I
    :goto_b
    if-ltz v13, :cond_1a

    .line 2231
    shl-int/lit8 v16, v16, 0x4

    .line 2232
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2233
    .restart local v5       #c:C
    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v5, v0, :cond_18

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v5, v0, :cond_18

    .line 2234
    add-int/lit8 v26, v5, -0x30

    add-int v16, v16, v26

    .line 2230
    :goto_c
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 2214
    .end local v5           #c:C
    .end local v13           #j:I
    .end local v16           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :cond_16
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl -. Length of mShufflePlayList not equals to mPlayListLen"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2218
    :cond_17
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl -. shufflequeue not exists."

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2235
    .restart local v5       #c:C
    .restart local v13       #j:I
    .restart local v16       #n:I
    .restart local v22       #revhex:Ljava/lang/String;
    :cond_18
    const/16 v26, 0x61

    move/from16 v0, v26

    if-lt v5, v0, :cond_19

    const/16 v26, 0x66

    move/from16 v0, v26

    if-gt v5, v0, :cond_19

    .line 2236
    add-int/lit8 v26, v5, 0xa

    add-int/lit8 v26, v26, -0x61

    add-int v16, v16, v26

    goto :goto_c

    .line 2239
    :cond_19
    const-string v26, "[MediaPlaybackService]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "reloadQueueImpl -. Bogus data in shufflequeuealbum:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2243
    .end local v5           #c:C
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    move-object/from16 v26, v0

    aput v16, v26, v11

    .line 2227
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 2245
    .end local v13           #j:I
    .end local v16           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v0, v15, :cond_21

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 2291
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "curid"

    const-wide/16 v28, 0x0

    invoke-static/range {v26 .. v29}, Lcom/htc/music/util/MusicUtils;->getLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v7

    .line 2292
    .local v7, curId:J
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/htc/music/MediaPlaybackService;->getPositionFromId(J)I

    move-result v19

    .line 2293
    .local v19, pos:I
    if-ltz v19, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-lt v0, v1, :cond_1e

    .line 2295
    :cond_1d
    if-gez v19, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v26, v0

    if-ltz v26, :cond_23

    .line 2299
    const/16 v19, 0x0

    .line 2310
    :cond_1e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 2311
    const-string v26, "[MediaPlaybackService]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "reloadqueue mPlayPos = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "_id"

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    move/from16 v28, v0

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/ContentUtils;->getTrack(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v5

    .line 2348
    .local v5, c:Landroid/database/Cursor;
    if-eqz v5, :cond_1f

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v26

    if-nez v26, :cond_24

    .line 2349
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    .line 2351
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl: failed to get data from database."

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    if-eqz v5, :cond_20

    .line 2357
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2358
    const/4 v5, 0x0

    .line 2360
    :cond_20
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl -"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 2248
    .end local v5           #c:Landroid/database/Cursor;
    .end local v7           #curId:J
    .end local v19           #pos:I
    :cond_21
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl -. Length of mShuffleAlbumList not equals to mPlayListLen"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2253
    :cond_22
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl -. shufflequeue not exists."

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2302
    .restart local v7       #curId:J
    .restart local v19       #pos:I
    :cond_23
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2304
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2305
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 2306
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueue -"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 2363
    .restart local v5       #c:Landroid/database/Cursor;
    :cond_24
    if-eqz v5, :cond_25

    .line 2364
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2365
    const/4 v5, 0x0

    .line 2372
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v17

    .line 2373
    .local v17, newAudioId:I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/MediaPlaybackService;->mId:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-nez v26, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v26

    if-eqz v26, :cond_26

    .line 2374
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl -, song is playing now, don\'t do openCurrentAndNext.!!! return."

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 2388
    :cond_26
    const/16 v26, 0x14

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 2389
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 2390
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 2391
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 2394
    if-eqz v4, :cond_29

    .line 2395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static/range {v26 .. v28}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    .line 2402
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v26

    if-eqz v26, :cond_27

    .line 2403
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->playImpl()V

    .line 2448
    .end local v4           #bRecoverQueue:Z
    .end local v5           #c:Landroid/database/Cursor;
    .end local v7           #curId:J
    .end local v10           #entries:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v15           #len:I
    .end local v17           #newAudioId:I
    .end local v19           #pos:I
    .end local v21           #repmode:I
    .end local v25           #shufmode:I
    :cond_27
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    move/from16 v26, v0

    if-nez v26, :cond_28

    .line 2449
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2451
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2453
    :cond_28
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl -"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 2398
    .restart local v4       #bRecoverQueue:Z
    .restart local v5       #c:Landroid/database/Cursor;
    .restart local v7       #curId:J
    .restart local v10       #entries:[Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v15       #len:I
    .restart local v17       #newAudioId:I
    .restart local v19       #pos:I
    .restart local v21       #repmode:I
    .restart local v25       #shufmode:I
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "seekpos"

    const-wide/16 v28, 0x0

    invoke-static/range {v26 .. v29}, Lcom/htc/music/util/MusicUtils;->getLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v23

    .line 2399
    .local v23, seekpos:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    cmp-long v27, v23, v27

    if-ltz v27, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-object/from16 v27, v0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J
    invoke-static/range {v27 .. v27}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v27

    cmp-long v27, v23, v27

    if-gez v27, :cond_2a

    .end local v23           #seekpos:J
    :goto_f
    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    goto :goto_d

    .restart local v23       #seekpos:J
    :cond_2a
    const-wide/16 v23, 0x0

    goto :goto_f

    .line 2417
    .end local v4           #bRecoverQueue:Z
    .end local v5           #c:Landroid/database/Cursor;
    .end local v7           #curId:J
    .end local v10           #entries:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v15           #len:I
    .end local v17           #newAudioId:I
    .end local v19           #pos:I
    .end local v21           #repmode:I
    .end local v23           #seekpos:J
    .end local v25           #shufmode:I
    :cond_2b
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl: q == null || q.length() <= 1"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2420
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2421
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 2424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "LaunchedBefore"

    invoke-interface/range {v26 .. v27}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v14

    .line 2425
    .local v14, launchBefore:Z
    if-nez v14, :cond_27

    .line 2426
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MediaPlaybackService;->mLaunchedBefore:Z

    .line 2427
    const-string v26, "[MediaPlaybackService]"

    const-string v27, "reloadQueueImpl: !launchBefore"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    const-string v27, "LaunchedBefore"

    const/16 v28, 0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2430
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v6, v0, [Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "_id"

    aput-object v27, v6, v26

    const/16 v26, 0x1

    const-string v27, "album_id"

    aput-object v27, v6, v26

    .line 2433
    .local v6, ccols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const-string v27, "title COLLATE NOCASE ASC"

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v6, v1, v2}, Lcom/htc/music/util/ContentUtils;->getTracks(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)Landroid/database/Cursor;

    move-result-object v9

    .line 2435
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2c

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v26

    if-lez v26, :cond_2c

    .line 2436
    invoke-static {v9}, Lcom/htc/music/util/MusicUtils;->getListForCursor(Landroid/database/Cursor;)Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    move-result-object v18

    .line 2437
    .local v18, palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 2438
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->openImpl([II)V

    .line 2440
    .end local v18           #palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    :cond_2c
    if-eqz v9, :cond_27

    .line 2441
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e
.end method

.method private removeTracksInternal(II)I
    .locals 13
    .parameter "first"
    .parameter "last"

    .prologue
    .line 4500
    monitor-enter p0

    .line 4501
    :try_start_0
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeTracksInternal, first: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", last: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mPlayListLen: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4502
    if-ge p2, p1, :cond_0

    .line 4503
    const/4 v9, 0x0

    monitor-exit p0

    .line 4589
    :goto_0
    return v9

    .line 4504
    :cond_0
    if-gez p1, :cond_1

    .line 4505
    const/4 p1, 0x0

    .line 4506
    :cond_1
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v9, :cond_2

    .line 4507
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v9, -0x1

    .line 4509
    :cond_2
    const/4 v0, 0x0

    .line 4510
    .local v0, gotonext:Z
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 4511
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v9}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v5

    .line 4512
    .local v5, pos:I
    if-gt p1, v5, :cond_6

    if-gt v5, p2, :cond_6

    .line 4513
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeTracksInternal shuffle normal gotonext = true mPlayPos = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4514
    const/4 v0, 0x1

    .line 4527
    .end local v5           #pos:I
    :cond_3
    :goto_1
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v9, p2

    add-int/lit8 v4, v9, -0x1

    .line 4529
    .local v4, num:I
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 4530
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4531
    .local v6, shufflePlayListLen:I
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4532
    .local v2, nonShufflePlayListLen:I
    move v1, p1

    .local v1, i:I
    :goto_2
    if-gt v1, p2, :cond_a

    .line 4533
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v7

    .line 4534
    .local v7, shufflePos:I
    move v3, v1

    .line 4535
    .local v3, nonShufflePos:I
    if-ltz v7, :cond_4

    if-ge v7, v6, :cond_4

    .line 4536
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    invoke-static {v9, v6, v7}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4537
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    invoke-static {v9, v6, v7}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4538
    add-int/lit8 v6, v6, -0x1

    .line 4541
    :cond_4
    if-ltz v3, :cond_5

    if-ge v3, v2, :cond_5

    .line 4542
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    invoke-static {v9, v2, v3}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4544
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    invoke-static {v9, v2, v3}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4546
    add-int/lit8 v2, v2, -0x1

    .line 4532
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4515
    .end local v1           #i:I
    .end local v2           #nonShufflePlayListLen:I
    .end local v3           #nonShufflePos:I
    .end local v4           #num:I
    .end local v6           #shufflePlayListLen:I
    .end local v7           #shufflePos:I
    .restart local v5       #pos:I
    :cond_6
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v9, p2, :cond_3

    .line 4516
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v10, p2, p1

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 4590
    .end local v0           #gotonext:Z
    .end local v5           #pos:I
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 4519
    .restart local v0       #gotonext:Z
    :cond_7
    :try_start_1
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v9, :cond_8

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v9, p2, :cond_8

    .line 4520
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4521
    const/4 v0, 0x1

    goto :goto_1

    .line 4522
    :cond_8
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v9, p2, :cond_3

    .line 4523
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v10, p2, p1

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 4552
    .restart local v4       #num:I
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v4, :cond_a

    .line 4553
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v10, p1, v1

    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int/lit8 v12, p2, 0x1

    add-int/2addr v12, v1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 4554
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v10, p1, v1

    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int/lit8 v12, p2, 0x1

    add-int/2addr v12, v1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 4552
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4557
    :cond_a
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v10, p2, p1

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4558
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v9}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 4559
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 4572
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v9, :cond_c

    .line 4573
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 4574
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4575
    const-string v9, "com.htc.music.metachanged"

    invoke-direct {p0, v9}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4589
    :cond_b
    :goto_4
    sub-int v9, p2, p1

    add-int/lit8 v9, v9, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 4576
    :cond_c
    if-eqz v0, :cond_b

    .line 4578
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v9, v10, :cond_d

    .line 4579
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4581
    :cond_d
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v8

    .line 4582
    .local v8, wasPlaying:Z
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 4583
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 4584
    const-string v9, "com.htc.music.metachanged"

    invoke-direct {p0, v9}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4585
    if-eqz v8, :cond_b

    .line 4586
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->playImpl()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method private resetAudioMetaData()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 8766
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    .line 8767
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    .line 8768
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    .line 8769
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    .line 8770
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 8771
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    .line 8772
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    .line 8773
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    .line 8774
    const-string v0, "<unknown>"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 8776
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 8777
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    .line 8778
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    .line 8779
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    .line 8780
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    .line 8781
    return-void
.end method

.method private resetPlayerForWirelessConnect(Ljava/lang/String;)V
    .locals 7
    .parameter "tag"

    .prologue
    const/4 v6, 0x1

    .line 1416
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1417
    monitor-enter p0

    .line 1418
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v2

    .line 1419
    .local v2, isPlaying:Z
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 1420
    .local v0, currentPlaybackPosition:J
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTVOn: mPlayer.isPlaying() == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    if-eqz v2, :cond_0

    .line 1422
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1423
    :cond_0
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mPlayer.stop()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1425
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1426
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eq v3, v6, :cond_3

    .line 1427
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mPlayer.isReInitialized() == false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->setNextTrack()V

    .line 1438
    monitor-exit p0

    .line 1440
    .end local v0           #currentPlaybackPosition:J
    .end local v2           #isPlaying:Z
    :cond_2
    return-void

    .line 1429
    .restart local v0       #currentPlaybackPosition:J
    .restart local v2       #isPlaying:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3, v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    .line 1430
    if-ne v2, v6, :cond_1

    .line 1431
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mPlayer.start()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->start()V

    goto :goto_0

    .line 1438
    .end local v0           #currentPlaybackPosition:J
    .end local v2           #isPlaying:Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private resetQueueAlbumList([I)V
    .locals 4
    .parameter "albumList"

    .prologue
    const/4 v3, 0x0

    .line 8515
    if-nez p1, :cond_0

    .line 8528
    :goto_0
    return-void

    .line 8516
    :cond_0
    const/4 v0, 0x0

    .line 8518
    .local v0, combineId:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 8519
    array-length v1, p1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 8520
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8521
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8526
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    goto :goto_0

    .line 8524
    :cond_1
    move-object v0, p1

    goto :goto_1
.end method

.method private restoreRecentAlbumList(I)V
    .locals 2
    .parameter "albumId"

    .prologue
    .line 8029
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 8033
    :goto_0
    return-void

    .line 8032
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreRecentPlayedPlaylist(I)V
    .locals 2
    .parameter "audioId"

    .prologue
    .line 8354
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 8357
    :goto_0
    return-void

    .line 8356
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private saveBookmarkIfNeeded()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    .line 4220
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4221
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    .line 4222
    .local v4, pos:J
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 4223
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    .line 4224
    .local v2, duration:J
    cmp-long v8, v4, v0

    if-gez v8, :cond_0

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_1

    :cond_0
    cmp-long v8, v4, v0

    if-lez v8, :cond_2

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_2

    .line 4244
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_1
    :goto_0
    return-void

    .line 4230
    .restart local v0       #bookmark:J
    .restart local v2       #duration:J
    .restart local v4       #pos:J
    :cond_2
    const-wide/16 v8, 0x3a98

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    add-long v8, v4, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_4

    .line 4232
    :cond_3
    const-wide/16 v4, 0x0

    .line 4236
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 4237
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4238
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 4240
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4242
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private saveCurrentPlayPos()V
    .locals 5

    .prologue
    .line 1994
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1995
    const-string v1, "Music"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1997
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1998
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save current id  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    const-string v1, "curpos"

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2000
    const-string v1, "curid"

    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2001
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2002
    return-void
.end method

.method private saveCurrentPluginClass()V
    .locals 5

    .prologue
    .line 2017
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 2018
    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 2020
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2021
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .line 2023
    .local v0, className:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->getCurrentPluginClass()Ljava/lang/String;

    move-result-object v0

    .line 2024
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2025
    const-string v2, "plugin"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    :cond_1
    if-nez v0, :cond_2

    .line 2030
    const-string v2, "plugin"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2033
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2035
    return-void

    .line 2029
    :catchall_0
    move-exception v2

    if-nez v0, :cond_3

    .line 2030
    const-string v3, "plugin"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2029
    :cond_3
    throw v2
.end method

.method private saveDmsInfo(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 8993
    const-string v2, "DLNA"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8995
    .local v0, dmsPreference:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8996
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dms_server_id"

    const-string v3, "dms_server_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8997
    const-string v2, "dms_container_id"

    const-string v3, "dms_container_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8998
    const-string v2, "dms_content_id"

    const-string v3, "dms_content_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8999
    const-string v2, "dms_start_index"

    const-string v3, "dms_start_index"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 9000
    const-string v2, "dms_end_index"

    const-string v3, "dms_end_index"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 9001
    const-string v2, "dms_direction"

    const-string v3, "dms_direction"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9002
    const-string v2, "dlna_shuffle"

    const-string v3, "dlna_shuffle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9003
    const-string v2, "dms_file_path"

    const-string v3, "dms_file_path"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9004
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9006
    return-void
.end method

.method private savePlayingPos()V
    .locals 4

    .prologue
    .line 2005
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2006
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 2007
    const-string v1, "Music"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 2009
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2010
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "seekpos"

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2011
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2014
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private saveQueue()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1841
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "save Queue +"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const-string v9, "Music"

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1844
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "version"

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v8

    .line 1846
    .local v8, version:I
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1856
    .local v2, ed:Landroid/content/SharedPreferences$Editor;
    const-string v9, "version"

    const/4 v10, 0x5

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1859
    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 1860
    const-string v9, "carmode-last-browser"

    invoke-interface {v2, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1863
    :cond_0
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-nez v9, :cond_2

    .line 1864
    :cond_1
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BadQueue mPlayListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1867
    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1871
    :cond_2
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1872
    .local v4, l:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 1873
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v6, v9, v3

    .line 1874
    .local v6, n:I
    if-gtz v6, :cond_3

    .line 1875
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " BadQueue mAlbumList["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    .end local v6           #n:I
    :goto_1
    return-void

    .line 1872
    .restart local v6       #n:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1880
    .end local v6           #n:I
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1888
    .local v7, q:Ljava/lang/StringBuilder;
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1889
    .local v5, len:I
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mPlayListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_7

    .line 1891
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v6, v9, v3

    .line 1892
    .restart local v6       #n:I
    if-nez v6, :cond_5

    .line 1893
    const-string v9, "0;"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1895
    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    .line 1896
    and-int/lit8 v0, v6, 0xf

    .line 1897
    .local v0, digit:I
    shr-int/lit8 v6, v6, 0x4

    .line 1898
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1900
    .end local v0           #digit:I
    :cond_6
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1904
    .end local v6           #n:I
    :cond_7
    const-string v9, "queue"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1905
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1908
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1909
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_a

    .line 1911
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v6, v9, v3

    .line 1912
    .restart local v6       #n:I
    if-nez v6, :cond_8

    .line 1913
    const-string v9, "0;"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1915
    :cond_8
    :goto_7
    if-eqz v6, :cond_9

    .line 1916
    and-int/lit8 v0, v6, 0xf

    .line 1917
    .restart local v0       #digit:I
    shr-int/lit8 v6, v6, 0x4

    .line 1918
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1920
    .end local v0           #digit:I
    :cond_9
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1923
    .end local v6           #n:I
    :cond_a
    const-string v9, "queuealbum"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1924
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1926
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    .line 1927
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1928
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v5, :cond_d

    .line 1929
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v6, v9, v3

    .line 1930
    .restart local v6       #n:I
    if-nez v6, :cond_b

    .line 1931
    const-string v9, "0;"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1933
    :cond_b
    :goto_a
    if-eqz v6, :cond_c

    .line 1934
    and-int/lit8 v0, v6, 0xf

    .line 1935
    .restart local v0       #digit:I
    shr-int/lit8 v6, v6, 0x4

    .line 1936
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1938
    .end local v0           #digit:I
    :cond_c
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1941
    .end local v6           #n:I
    :cond_d
    const-string v9, "shufflequeue"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1942
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1944
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1945
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v5, :cond_10

    .line 1946
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v6, v9, v3

    .line 1947
    .restart local v6       #n:I
    if-nez v6, :cond_e

    .line 1948
    const-string v9, "0;"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1950
    :cond_e
    :goto_d
    if-eqz v6, :cond_f

    .line 1951
    and-int/lit8 v0, v6, 0xf

    .line 1952
    .restart local v0       #digit:I
    shr-int/lit8 v6, v6, 0x4

    .line 1953
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1955
    .end local v0           #digit:I
    :cond_f
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1958
    .end local v6           #n:I
    :cond_10
    const-string v9, "shufflequeuealbum"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1959
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1963
    :cond_11
    const-string v9, "cardid"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1967
    :try_start_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    :goto_e
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "save Queue -"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1968
    :catch_0
    move-exception v1

    .line 1969
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "Exception in ed.apply: "

    invoke-static {v9, v10, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method private saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;)V
    .locals 8
    .parameter "ed"

    .prologue
    .line 7878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7880
    .local v4, queue:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 7881
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7882
    .local v2, len:I
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveRecentAlbumList mLocalRecentAlbumId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7883
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 7884
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7885
    .local v3, n:I
    if-nez v3, :cond_1

    .line 7886
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7883
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7887
    :cond_1
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 7891
    :goto_2
    if-eqz v3, :cond_2

    .line 7892
    and-int/lit8 v0, v3, 0xf

    .line 7893
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 7894
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7896
    .end local v0           #digit:I
    :cond_2
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7900
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #n:I
    :cond_3
    const-string v5, "localrecentalbumid"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7901
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveRecentAlbumList "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7902
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7903
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7904
    return-void
.end method

.method private saveRecentPlayedPlaylist()V
    .locals 9

    .prologue
    .line 8291
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v6, :cond_0

    .line 8292
    const-string v6, "Music"

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 8296
    :cond_0
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8297
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 8299
    .local v5, queue:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 8300
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8301
    .local v3, len:I
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveQueue mRecentPlayTrackId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8302
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 8303
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 8304
    .local v4, n:I
    if-nez v4, :cond_2

    .line 8305
    const-string v6, "0;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8302
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8306
    :cond_2
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 8310
    :goto_2
    if-eqz v4, :cond_3

    .line 8311
    and-int/lit8 v0, v4, 0xf

    .line 8312
    .local v0, digit:I
    shr-int/lit8 v4, v4, 0x4

    .line 8313
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8315
    .end local v0           #digit:I
    :cond_3
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8319
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #n:I
    :cond_4
    const-string v6, "recentplayedplaylist"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8320
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveRecentPlayedPlaylist "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8321
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8322
    return-void
.end method

.method private saveRepeatMode()V
    .locals 3

    .prologue
    .line 1985
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1986
    const-string v1, "Music"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1988
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1989
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "repeatmode"

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1990
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1991
    return-void
.end method

.method private saveShuffleMode()V
    .locals 3

    .prologue
    .line 1976
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1977
    const-string v1, "Music"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1979
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1980
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "shufflemode"

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1981
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1982
    return-void
.end method

.method private scanBackward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v4, 0x1388

    const-wide/16 v8, 0x0

    .line 5381
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5383
    if-nez p1, :cond_0

    .line 5384
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 5385
    iput-wide v8, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5414
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5415
    return-void

    .line 5387
    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_5

    .line 5389
    const-wide/16 v2, 0xa

    mul-long/2addr p2, v2

    .line 5394
    :goto_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    sub-long v0, v2, p2

    .line 5395
    .local v0, newpos:J
    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    .line 5397
    const-wide/16 v0, 0x0

    .line 5399
    :cond_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    if-gez p1, :cond_4

    .line 5400
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 5402
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCurrentPlaybackState:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCurrentPlaybackState:Ljava/lang/String;

    const-string v3, "rewinding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5403
    const-string v2, "rewinding"

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackService;->updatePlaybackStatus(Ljava/lang/String;)V

    .line 5406
    :cond_3
    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5408
    :cond_4
    if-ltz p1, :cond_6

    .line 5409
    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    .line 5392
    .end local v0           #newpos:J
    :cond_5
    const-wide/32 v2, 0xc350

    sub-long v4, p2, v4

    const-wide/16 v6, 0x28

    mul-long/2addr v4, v6

    add-long p2, v2, v4

    goto :goto_1

    .line 5411
    .restart local v0       #newpos:J
    :cond_6
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0
.end method

.method private scanForward(IJ)V
    .locals 11
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v10, 0x1

    .line 5334
    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5335
    if-nez p1, :cond_0

    .line 5336
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 5337
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5377
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5378
    return-void

    .line 5339
    :cond_0
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 5341
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 5346
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 5347
    .local v2, newpos:J
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 5353
    .local v0, duration:J
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    .line 5355
    move-wide v2, v0

    .line 5357
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v4, :cond_1

    .line 5358
    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 5359
    invoke-direct {p0, v10}, Lcom/htc/music/MediaPlaybackService;->pauseImpl(Z)V

    .line 5362
    :cond_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    if-gez p1, :cond_4

    .line 5363
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 5365
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mCurrentPlaybackState:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mCurrentPlaybackState:Ljava/lang/String;

    const-string v5, "forwarding"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5366
    const-string v4, "forwarding"

    invoke-virtual {p0, v4}, Lcom/htc/music/MediaPlaybackService;->updatePlaybackStatus(Ljava/lang/String;)V

    .line 5369
    :cond_3
    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5371
    :cond_4
    if-ltz p1, :cond_6

    .line 5372
    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    .line 5344
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 5374
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0
.end method

.method private sendMusicCountULogMsg(J)V
    .locals 2
    .parameter "delayTime"

    .prologue
    const/16 v1, 0x2717

    .line 7817
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v0, :cond_0

    .line 7818
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 7819
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 7824
    :goto_0
    return-void

    .line 7822
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "send Music Count ULog, mNonUiHandler is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPlaybackTimeULogMsg(J)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 7827
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v2, :cond_0

    .line 7828
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v3, 0x2718

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 7829
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7830
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "duration"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 7831
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7832
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v2, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7837
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 7835
    :cond_0
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "send Playback Time ULog, mNonUiHandler is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAudioMetaData(Landroid/database/Cursor;)V
    .locals 11
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 8531
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 8532
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioMetaData, cursor: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    .line 8602
    :cond_1
    :goto_0
    return-void

    .line 8537
    :cond_2
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    .line 8538
    const-string v0, "album_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    .line 8539
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    .line 8540
    const-string v0, "composer"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    .line 8541
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 8542
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    .line 8543
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    .line 8544
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    .line 8546
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 8547
    const-string v0, "artist_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    .line 8548
    const-string v0, "bookmark"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    .line 8549
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    .line 8550
    const-string v0, "is_podcast"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    .line 8551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    .line 8552
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "<unknown>"

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8553
    :cond_3
    iput-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 8572
    :goto_1
    const-string v0, "<unknown>"

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8573
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->readAlbumArtCache(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 8576
    const-string v0, "<unknown>"

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8577
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->writeCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 8584
    :goto_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    if-eqz v0, :cond_1

    .line 8585
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8586
    .local v2, data:Landroid/os/Bundle;
    const-string v0, "curalbumid"

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8587
    const-string v0, "curalbumkey"

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8588
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    const/16 v1, 0x17

    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    move-object v5, v8

    move-object v6, v8

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/MediaPlaybackService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8556
    .end local v2           #data:Landroid/os/Bundle;
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8557
    .local v10, path:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8558
    iput-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 8560
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "get albumart path from DL file"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8566
    .end local v10           #path:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 8567
    .local v9, ex:Ljava/lang/Exception;
    const-string v0, "<unknown>"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    goto :goto_1

    .line 8562
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v10       #path:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 8564
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "try to get albumart path from combine query"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 8579
    .end local v10           #path:Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/MediaPlaybackService;->writeCache(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 8599
    :cond_7
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/music/MediaPlaybackService;->writeCache(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V
    .locals 3
    .parameter "views"
    .parameter "bigNotification"

    .prologue
    const v1, 0x7f070012

    .line 7391
    if-eqz p1, :cond_1

    .line 7392
    if-eqz p2, :cond_0

    .line 7393
    const v0, 0x7f020040

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7400
    :goto_0
    return-void

    .line 7395
    :cond_0
    const v0, 0x7f02005f

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 7398
    :cond_1
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteViews is null, bigNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNextTrack()V
    .locals 7

    .prologue
    .line 3680
    monitor-enter p0

    .line 3681
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNextFileToPlay:Ljava/lang/String;

    .line 3683
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3684
    :cond_0
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNextTrack, mPlayer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", or mPlayer.isInitialized() is false."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3685
    monitor-exit p0

    .line 3720
    :goto_0
    return-void

    .line 3688
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->getNextPosition(Z)I

    move-result v4

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mNextPlayPos:I

    .line 3689
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mNextPlayPos:I

    if-ltz v4, :cond_6

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mNextPlayPos:I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    if-eqz v4, :cond_6

    .line 3690
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mNextPlayPos:I

    aget v2, v4, v5

    .line 3692
    .local v2, id:I
    const/4 v3, 0x0

    .line 3693
    .local v3, isDrmFile:Z
    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->getCursorForId(I)Landroid/database/Cursor;

    move-result-object v0

    .line 3694
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 3695
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 3696
    const-string v4, "_data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3697
    .local v1, data:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v3

    .line 3699
    .end local v1           #data:Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3700
    const/4 v0, 0x0

    .line 3703
    :cond_3
    if-nez v3, :cond_4

    .line 3705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNextFileToPlay:Ljava/lang/String;

    .line 3706
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v4, :cond_5

    .line 3707
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNextFileToPlay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 3719
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #id:I
    .end local v3           #isDrmFile:Z
    :cond_4
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3709
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #id:I
    .restart local v3       #isDrmFile:Z
    :cond_5
    :try_start_1
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "setNextTrack +, mPlayer is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3713
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #id:I
    .end local v3           #isDrmFile:Z
    :cond_6
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNextTrack, mNextPlayPos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mNextPlayPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPlayListLen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPlayList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3714
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v4, :cond_7

    .line 3715
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    goto :goto_1

    .line 3717
    :cond_7
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "setNextTrack -, mPlayer is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private setPlaylistInfo(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 8879
    return-void
.end method

.method private setShuffleAlbumList([II)V
    .locals 3
    .parameter "list"
    .parameter "length"

    .prologue
    .line 3352
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v0

    .line 3353
    .local v0, shuffleAlbumList:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 3354
    return-void
.end method

.method private setShuffleSeq(II)V
    .locals 7
    .parameter "len"
    .parameter "nFirst"

    .prologue
    .line 4805
    if-gtz p1, :cond_0

    .line 4806
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 4836
    :goto_0
    return-void

    .line 4810
    :cond_0
    if-ge p2, p1, :cond_1

    if-gez p2, :cond_2

    .line 4811
    :cond_1
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setShuffleSeq(), nFirst should be less than len, len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nFirst: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4812
    const/4 p2, 0x0

    .line 4815
    :cond_2
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 4816
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 4817
    .local v2, rnd:Ljava/util/Random;
    move v1, p2

    .line 4819
    .local v1, r:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 4820
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v0, v4, v0

    .line 4819
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4822
    :cond_3
    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_4

    .line 4824
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v3, v4, v0

    .line 4825
    .local v3, temp:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 4826
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v3, v4, v1

    .line 4827
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x1

    sub-int v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int v1, v4, v5

    .line 4822
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4834
    .end local v3           #temp:I
    :cond_4
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    goto :goto_0
.end method

.method private showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "albumArt"
    .parameter "key"

    .prologue
    const/4 v2, 0x5

    .line 5570
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5571
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5572
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5573
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 5574
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5575
    return-void
.end method

.method private showToast(II)V
    .locals 2
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 5534
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 5535
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 5537
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 5538
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 5539
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5540
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 2
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 5543
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 5544
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 5546
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 5547
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 5548
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5549
    return-void
.end method

.method private showToastInUiThread(II)V
    .locals 4
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 5561
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5562
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5563
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "resId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5564
    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5565
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5566
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5567
    return-void
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 477
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stop(Z)V
    .locals 3
    .parameter "remove_status_icon"

    .prologue
    const/16 v2, 0x2711

    .line 3972
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3973
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v1, :cond_0

    .line 3974
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3976
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3977
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_1

    const/16 v1, 0x7bd

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3978
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3985
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 3977
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3981
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    monitor-enter p0

    .line 3982
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v1, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3983
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopActivePlugin(Z)V
    .locals 3
    .parameter "isPowerOff"

    .prologue
    .line 5600
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-nez v1, :cond_1

    .line 5611
    :cond_0
    :goto_0
    return-void

    .line 5603
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5605
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 5606
    .local v0, status:Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 5607
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 5608
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    .line 5609
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveCurrentPluginClass()V

    goto :goto_0
.end method

.method private stopFFRWRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5321
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 5322
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5323
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 5325
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "playing"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->updatePlaybackStatus(Ljava/lang/String;)V

    .line 5326
    return-void

    .line 5325
    :cond_0
    const-string v0, "paused"

    goto :goto_0
.end method

.method private switchMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/16 v3, 0x271f

    .line 8891
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v2, :cond_1

    .line 8892
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8893
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 8894
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 8895
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8896
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8897
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8898
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v2, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8900
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private switchToLocal()V
    .locals 1

    .prologue
    .line 8863
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->switchMode(I)V

    .line 8864
    return-void
.end method

.method private updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V
    .locals 9
    .parameter "albumArt"
    .parameter "key"

    .prologue
    .line 7546
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAlbumArtInNotification, albumArt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7548
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7549
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "updateAlbumArtInNotification, not playing. return."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7617
    :goto_0
    return-void

    .line 7558
    :cond_0
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v6

    .line 7559
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-eq v5, p2, :cond_2

    .line 7560
    :cond_1
    const-string v5, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlbumArtInNotification, mNotification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mPlayPos: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", return."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7561
    monitor-exit v6

    goto :goto_0

    .line 7616
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 7564
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_3

    .line 7565
    const-string v5, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, mNotification.contentIntent is null."

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7566
    monitor-exit v6

    goto :goto_0

    .line 7569
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getNotificiationArtSideLen()I

    move-result v2

    .line 7571
    .local v2, maxSideLen:I
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7572
    .local v4, views:Landroid/widget/RemoteViews;
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7574
    .local v0, bigView:Landroid/widget/RemoteViews;
    if-nez v4, :cond_4

    .line 7575
    const-string v5, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, (views == null) return."

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7576
    monitor-exit v6

    goto :goto_0

    .line 7579
    :cond_4
    if-nez v0, :cond_5

    .line 7580
    const-string v5, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, bigView == null"

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7584
    :cond_5
    if-nez p1, :cond_7

    .line 7585
    const/4 v5, 0x0

    :try_start_2
    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V

    .line 7586
    if-eqz v0, :cond_6

    .line 7587
    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V

    .line 7611
    :cond_6
    :goto_1
    const/4 v5, 0x1

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v5, v7}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 7616
    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 7590
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gt v5, v2, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v5, v2, :cond_9

    .line 7592
    :cond_8
    const/4 v5, 0x0

    invoke-static {p1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7593
    .local v3, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 7594
    const/4 p1, 0x0

    .line 7596
    const v5, 0x7f070012

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 7598
    if-eqz v0, :cond_6

    .line 7599
    const v5, 0x7f070012

    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 7613
    .end local v3           #resizeBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 7614
    .local v1, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlbumArtInNotification. Exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 7603
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_9
    const v5, 0x7f070012

    :try_start_6
    invoke-virtual {v4, v5, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 7605
    if-eqz v0, :cond_6

    .line 7606
    const v5, 0x7f070012

    invoke-virtual {v0, v5, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method private updateNotification()V
    .locals 20

    .prologue
    .line 7408
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->initNotificationTextColor()V

    .line 7409
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f030045

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 7410
    .local v14, views:Landroid/widget/RemoteViews;
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getBigNotifcationLayoutId()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v7, v15, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 7413
    .local v7, bigView:Landroid/widget/RemoteViews;
    const v15, 0x7f070016

    const-string v16, "music_notification_pause_btn"

    const v17, 0x7f020061

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7414
    const v15, 0x7f070016

    const-string v16, "setBackgroundResource"

    const-string v17, "music_notification_b_transport_middle"

    const v18, 0x7f020069

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v14 .. v17}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7417
    const v15, 0x7f070016

    const-string v16, "music_big_notification_pause_btn"

    const v17, 0x7f020044

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7418
    const v15, 0x7f070016

    const-string v16, "setBackgroundResource"

    const-string v17, "music_notification_b_transport"

    const v18, 0x7f020068

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v15, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7419
    const v15, 0x7f070015

    const-string v16, "music_big_notification_prev_btn"

    const v17, 0x7f020045

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7420
    const v15, 0x7f070015

    const-string v16, "setBackgroundResource"

    const-string v17, "music_notification_b_transport_middle"

    const v18, 0x7f020069

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v15, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7421
    const v15, 0x7f070017

    const-string v16, "music_big_notification_next_btn"

    const v17, 0x7f020043

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7422
    const v15, 0x7f070017

    const-string v16, "setBackgroundResource"

    const-string v17, "music_notification_b_transport_middle"

    const v18, 0x7f020069

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v15, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7424
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v6

    .line 7426
    .local v6, audioID:I
    if-gez v6, :cond_3

    .line 7429
    const v15, 0x7f070013

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7430
    const v15, 0x7f070014

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7431
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V

    .line 7434
    const v15, 0x7f070013

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7435
    const v15, 0x7f070014

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7436
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V

    .line 7498
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationPrimaryTextColor:I

    if-eqz v15, :cond_0

    .line 7499
    const v15, 0x7f070013

    const-string v16, "setTextColor"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationPrimaryTextColor:I

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7500
    const v15, 0x7f070013

    const-string v16, "setTextColor"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationPrimaryTextColor:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v15, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7502
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationSecondaryTextColor:I

    if-eqz v15, :cond_1

    .line 7503
    const v15, 0x7f070014

    const-string v16, "setTextColor"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationSecondaryTextColor:I

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7504
    const v15, 0x7f070014

    const-string v16, "setTextColor"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationSecondaryTextColor:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v15, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7507
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->initNotificationIntents()V

    .line 7509
    const v15, 0x7f070016

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPauseIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v19}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7512
    const v15, 0x7f070016

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPauseIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v19}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7513
    const v15, 0x7f070015

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPrevIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v19}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7514
    const v15, 0x7f070017

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNextIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v19}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 7517
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    if-nez v15, :cond_2

    .line 7518
    new-instance v15, Landroid/app/Notification$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    .line 7520
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v14, v15, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7521
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v7, v15, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7522
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget v0, v15, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    const/high16 v18, -0x8000

    or-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v15, Landroid/app/Notification;->flags:I

    .line 7523
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const v17, 0x7f02006e

    move/from16 v0, v17

    iput v0, v15, Landroid/app/Notification;->icon:I

    .line 7524
    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7525
    .local v12, statusintent:Landroid/content/Intent;
    const/high16 v15, 0x400

    invoke-virtual {v12, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7526
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const/16 v17, 0x0

    const/high16 v18, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 7528
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 7529
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7530
    return-void

    .line 7440
    .end local v12           #statusintent:Landroid/content/Intent;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v13

    .line 7441
    .local v13, track:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 7442
    .local v5, artist:Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v15, "<unknown>"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 7443
    :cond_4
    const v15, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 7445
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 7446
    .local v3, album:Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string v15, "<unknown>"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 7447
    :cond_6
    const v15, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7452
    :cond_7
    const v15, 0x7f070013

    invoke-virtual {v14, v15, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7453
    const v15, 0x7f070014

    const v16, 0x7f0601b0

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    const/16 v18, 0x1

    aput-object v3, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7456
    const v15, 0x7f070013

    invoke-virtual {v7, v15, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7457
    const v15, 0x7f070014

    const v16, 0x7f0601b0

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    const/16 v18, 0x1

    aput-object v3, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7461
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v11

    .line 7462
    .local v11, salbumartpath:Ljava/lang/String;
    const-string v15, "[MediaPlaybackService]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateNotification salbumartpath: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7464
    const/4 v4, 0x0

    .line 7465
    .local v4, albumArt:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_8

    .line 7466
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 7470
    :cond_8
    if-nez v4, :cond_9

    .line 7471
    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V

    .line 7472
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 7492
    :catch_0
    move-exception v8

    .line 7493
    .local v8, ex:Ljava/lang/Exception;
    const-string v15, "[MediaPlaybackService]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateNotification. Exception :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7475
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_9
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getNotificiationArtSideLen()I

    move-result v9

    .line 7477
    .local v9, maxSideLen:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-gt v15, v9, :cond_a

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-le v15, v9, :cond_b

    .line 7479
    :cond_a
    const/4 v15, 0x0

    invoke-static {v4, v9, v9, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 7480
    .local v10, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 7481
    const/4 v4, 0x0

    .line 7483
    const v15, 0x7f070012

    invoke-virtual {v14, v15, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 7484
    const v15, 0x7f070012

    invoke-virtual {v7, v15, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 7487
    .end local v10           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_b
    const v15, 0x7f070012

    invoke-virtual {v14, v15, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 7488
    const v15, 0x7f070012

    invoke-virtual {v7, v15, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 7529
    .end local v3           #album:Ljava/lang/String;
    .end local v4           #albumArt:Landroid/graphics/Bitmap;
    .end local v5           #artist:Ljava/lang/String;
    .end local v9           #maxSideLen:I
    .end local v11           #salbumartpath:Ljava/lang/String;
    .end local v13           #track:Ljava/lang/String;
    :catchall_0
    move-exception v15

    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v15
.end method

.method private updatePlayerSettings()V
    .locals 6

    .prologue
    .line 9040
    const/4 v2, 0x0

    .local v2, shufflemode:I
    const/4 v1, 0x0

    .line 9041
    .local v1, repeatmode:I
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.music.settingchanged"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9042
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 9051
    const/4 v2, 0x0

    .line 9055
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getRepeatMode()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 9064
    const/4 v1, 0x0

    .line 9068
    :goto_1
    const-string v3, "shuffle"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9069
    const-string v3, "repeat"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9071
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTC AVRCP_1.3] updatePlayerSettings, shufflemode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeatmode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9073
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 9074
    return-void

    .line 9044
    :pswitch_0
    const/4 v2, 0x2

    .line 9045
    goto :goto_0

    .line 9057
    :pswitch_1
    const/4 v1, 0x1

    .line 9058
    goto :goto_1

    .line 9060
    :pswitch_2
    const/4 v1, 0x3

    .line 9061
    goto :goto_1

    .line 9042
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 9055
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updatePluginNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 7335
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7337
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7340
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginUpdateNotification()Landroid/app/Notification;

    move-result-object v1

    .line 7341
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7342
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7343
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7345
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #notification:Landroid/app/Notification;
    :cond_0
    return-void
.end method

.method private updateRemoteControlClient(Ljava/lang/String;)V
    .locals 6
    .parameter "what"

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 2899
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRemoteControlClient - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2902
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "isDmcOrPushMode() - return"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    :cond_0
    :goto_0
    return-void

    .line 2906
    :cond_1
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2907
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x3

    :cond_3
    invoke-virtual {v2, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0

    .line 2909
    :cond_4
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "action_complete_one_download"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2910
    :cond_5
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v2, v5}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 2911
    .local v0, ed:Landroid/media/RemoteControlClient$MetadataEditor;
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2912
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2913
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2914
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2916
    const/16 v1, 0xf

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->genJasonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2933
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto :goto_0
.end method

.method private writeCache(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "albumId"
    .parameter "albumKey"
    .parameter "albumArtPath"

    .prologue
    const/4 v1, 0x0

    .line 8713
    move-object v0, p0

    move-object v2, v1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/MediaPlaybackService;->writeCache(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 8714
    return-void
.end method

.method private writeCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v4, 0x0

    .line 8709
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/MediaPlaybackService;->writeCache(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 8710
    return-void
.end method

.method private writeCache(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "title"
    .parameter "artist"
    .parameter "albumId"
    .parameter "albumKey"
    .parameter "albumArtPath"

    .prologue
    const/4 v4, -0x1

    .line 8717
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 8718
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[writeCache] + title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";artist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";albumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";albumKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "albumArtPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8723
    :goto_0
    if-eq p3, v4, :cond_0

    .line 8724
    iput p3, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 8725
    iput-object p4, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    .line 8726
    iput-object p5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 8729
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCachePreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 8758
    :goto_1
    return-void

    .line 8720
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "[writeCache] +"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8730
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCachePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8731
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_3

    .line 8732
    const-string v1, "curtitle"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8734
    :cond_3
    if-eqz p2, :cond_5

    .line 8735
    const-string v1, "<unknown>"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8736
    const v1, 0x7f06003d

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 8738
    :cond_4
    const-string v1, "curartist"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8740
    :cond_5
    if-eq p3, v4, :cond_6

    .line 8741
    const-string v1, "curalbumid"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8745
    :goto_2
    if-eqz p4, :cond_7

    .line 8746
    const-string v1, "curalbumkey"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8750
    :goto_3
    if-eqz p5, :cond_8

    .line 8751
    const-string v1, "curalbumartpath"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8755
    :goto_4
    const-string v1, "data-cached"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8756
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8757
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "[writeCache] -"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8743
    :cond_6
    const-string v1, "curalbumid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 8748
    :cond_7
    const-string v1, "curalbumkey"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 8753
    :cond_8
    const-string v1, "curalbumartpath"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4
.end method

.method private writeCache(Z)V
    .locals 3
    .parameter "isPluginMode"

    .prologue
    .line 8761
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[writeCache] isPluginMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8762
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCachePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "plugin-mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8763
    return-void
.end method


# virtual methods
.method public addToQueue([I[I)V
    .locals 2
    .parameter "track"
    .parameter "album"

    .prologue
    .line 8475
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 8477
    invoke-direct {p0, p2}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 8478
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    .line 8480
    :cond_0
    return-void
.end method

.method public clearAlbumArtRequests()V
    .locals 1

    .prologue
    .line 5690
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5691
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->clearAlbumArtRequests()V

    .line 5693
    :cond_0
    return-void
.end method

.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 4
    .parameter "storagePath"

    .prologue
    .line 2808
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 2809
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2811
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2814
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 2816
    .local v0, isPlaying:Z
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 2821
    const-string v2, "com.htc.music.metachanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2822
    if-eqz v0, :cond_0

    .line 2823
    const-string v2, "com.htc.music.playstatechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2832
    .end local v0           #isPlaying:Z
    :cond_0
    :goto_0
    return-void

    .line 2827
    :cond_1
    monitor-enter p0

    .line 2828
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 2829
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 5281
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5282
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    .line 5284
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public enqueue([II)V
    .locals 2
    .parameter "list"
    .parameter "action"

    .prologue
    .line 3211
    monitor-enter p0

    .line 3212
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_2

    .line 3213
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3214
    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3228
    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_1

    .line 3229
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3230
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 3231
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3232
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    .line 3233
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->playImpl()V

    .line 3235
    :cond_1
    monitor-exit p0

    .line 3236
    :goto_0
    return-void

    .line 3217
    :cond_2
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3218
    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3219
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3220
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3221
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 3222
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3223
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_3

    .line 3224
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->playImpl()V

    .line 3225
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 3235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumArtPath()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 5095
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5096
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v6

    .line 5097
    .local v6, position:I
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v7

    if-nez v7, :cond_1

    .line 5098
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v7, v6}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v5

    .line 5190
    .end local v6           #position:I
    :cond_0
    :goto_0
    return-object v5

    .line 5100
    .restart local v6       #position:I
    :cond_1
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v7, v6}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 5109
    .end local v6           #position:I
    :cond_2
    monitor-enter p0

    .line 5110
    :try_start_0
    const-string v7, "<unknown>"

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 5111
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 5112
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    .line 5113
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 5114
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5116
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5119
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 5120
    .local v4, id:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_4

    move-object v5, v0

    .line 5121
    goto :goto_0

    .line 5124
    :cond_4
    monitor-enter p0

    .line 5126
    :try_start_2
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    if-ne v7, v4, :cond_5

    .line 5127
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 5128
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5130
    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    :cond_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5132
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 5133
    .local v1, albumName:Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v7, "<unknown>"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5134
    :cond_6
    monitor-enter p0

    .line 5135
    :try_start_4
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 5136
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    .line 5137
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 5138
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 5139
    monitor-exit p0

    move-object v5, v0

    .line 5140
    goto :goto_0

    .line 5139
    :catchall_2
    move-exception v7

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    .line 5145
    :cond_7
    const/4 v3, 0x0

    .line 5147
    .local v3, cursor:Landroid/database/Cursor;
    :try_start_5
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    int-to-long v8, v4

    invoke-static {p0, v7, v8, v9}, Lcom/htc/music/util/ContentUtils;->getAlbum(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v3

    .line 5149
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_a

    .line 5150
    :cond_8
    const-string v7, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find album with id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 5193
    if-eqz v3, :cond_9

    .line 5194
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5195
    const/4 v3, 0x0

    :cond_9
    move-object v5, v0

    .line 5151
    goto/16 :goto_0

    .line 5154
    :cond_a
    :try_start_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 5155
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5156
    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 5157
    .local v5, path:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 5158
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 5159
    :try_start_7
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "read albumart path from getAlbumArtPath DL success"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5160
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 5161
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    .line 5162
    iput-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 5163
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 5164
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 5193
    if-eqz v3, :cond_0

    .line 5194
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5195
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 5164
    :catchall_3
    move-exception v7

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 5193
    .end local v5           #path:Ljava/lang/String;
    :catchall_4
    move-exception v7

    if-eqz v3, :cond_b

    .line 5194
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5195
    const/4 v3, 0x0

    .line 5193
    :cond_b
    throw v7

    .line 5169
    :cond_c
    :try_start_a
    const-string v7, "album_art"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 5170
    .local v2, artColumnIndex:I
    if-gez v2, :cond_e

    .line 5171
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "Cannot find art column index"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 5193
    if-eqz v3, :cond_d

    .line 5194
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5195
    const/4 v3, 0x0

    :cond_d
    move-object v5, v0

    .line 5172
    goto/16 :goto_0

    .line 5175
    :cond_e
    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 5176
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5177
    .local v0, albumArtPath:Ljava/lang/String;
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 5180
    :try_start_c
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "read albumart path from getAlbumArtPath success"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5181
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 5182
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumKey:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumKey:Ljava/lang/String;

    .line 5183
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 5184
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumArtPath:Ljava/lang/String;

    .line 5186
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 5193
    if-eqz v3, :cond_f

    .line 5194
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5195
    const/4 v3, 0x0

    :cond_f
    move-object v5, v0

    .line 5187
    goto/16 :goto_0

    .line 5186
    :catchall_5
    move-exception v7

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    throw v7

    .line 5189
    .end local v0           #albumArtPath:Ljava/lang/String;
    :cond_10
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "Cannot move to first position"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 5193
    if-eqz v3, :cond_11

    .line 5194
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5195
    const/4 v3, 0x0

    :cond_11
    move-object v5, v0

    .line 5190
    goto/16 :goto_0
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 5736
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5738
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 5739
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 5747
    :goto_0
    return-object v0

    .line 5741
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5747
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "shufflePosition"

    .prologue
    .line 5752
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5753
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    .line 5756
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 5059
    monitor-enter p0

    .line 5060
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5061
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAlbumId()I

    move-result v0

    monitor-exit p0

    .line 5063
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    monitor-exit p0

    goto :goto_0

    .line 5065
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5046
    monitor-enter p0

    .line 5047
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5048
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5053
    :goto_0
    return-object v0

    .line 5050
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5051
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getAlbumName: mAlbum == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5053
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5055
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumQueue()[I
    .locals 4

    .prologue
    .line 4876
    monitor-enter p0

    .line 4877
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4878
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->getAlbumQueue()[I

    move-result-object v2

    monitor-exit p0

    .line 4886
    :goto_0
    return-object v2

    .line 4881
    :cond_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 4882
    .local v1, len:I
    new-array v2, v1, [I

    .line 4883
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 4884
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 4883
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4886
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 4888
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAlbumQueuePosition()I
    .locals 1

    .prologue
    .line 4893
    monitor-enter p0

    .line 4894
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4897
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4898
    const/4 v0, 0x0

    monitor-exit p0

    .line 4904
    :goto_0
    return v0

    .line 4901
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueuePosition()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 4909
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4904
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAlbumQueueSize()I
    .locals 1

    .prologue
    .line 4924
    monitor-enter p0

    .line 4925
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4932
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    monitor-exit p0

    .line 4935
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    monitor-exit p0

    goto :goto_0

    .line 4937
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistId()I
    .locals 1

    .prologue
    .line 5036
    monitor-enter p0

    .line 5037
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5038
    const/4 v0, -0x1

    monitor-exit p0

    .line 5040
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    monitor-exit p0

    goto :goto_0

    .line 5042
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5023
    monitor-enter p0

    .line 5024
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5025
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getArtistName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5030
    :goto_0
    return-object v0

    .line 5027
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5028
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getArtistName: mArtist == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5030
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5032
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioId()I
    .locals 2

    .prologue
    .line 4957
    monitor-enter p0

    .line 4958
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4959
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAudioId()I

    move-result v0

    monitor-exit p0

    .line 4966
    :goto_0
    return v0

    .line 4961
    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4962
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    monitor-exit p0

    goto :goto_0

    .line 4965
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4966
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 4973
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4974
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAudioSessionId()I

    move-result v0

    .line 4976
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->getAudioSessionId()I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$9000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)I

    move-result v0

    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 5677
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5678
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getBufferingPercent()I

    move-result v0

    .line 5681
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5614
    monitor-enter p0

    .line 5615
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5616
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getComposer()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5618
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5620
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 9021
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9022
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getCurrentMode()I

    move-result v0

    .line 9024
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDmsServer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9010
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "getDmsServer"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9012
    const-string v2, "DLNA"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 9016
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "dms_server_id"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9017
    .local v0, dmsServer:Ljava/lang/String;
    return-object v0
.end method

.method public getDrmConstraint(Landroid/net/Uri;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 2
    .parameter "uri"

    .prologue
    .line 5479
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "drmuri"

    .prologue
    .line 5418
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "content_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "content_boundary_offset"

    aput-object v1, v2, v0

    .line 5424
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 5425
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 5427
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5428
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5429
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 5430
    const-string v0, "_data"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5431
    .local v9, data:Ljava/lang/String;
    const-string v0, "content_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 5433
    .local v7, contentOffset:I
    const-string v0, "content_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5435
    .local v8, contentid:Ljava/lang/String;
    const-string v0, "content_boundary_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5438
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_header_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_trailor_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sd_content_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 5442
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 5443
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5444
    const/4 v11, 0x0

    .line 5448
    :cond_1
    return-object v10

    .line 5442
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    .line 5443
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5444
    const/4 v11, 0x0

    .line 5442
    :cond_2
    throw v0
.end method

.method public getExternalPluginCount()I
    .locals 1

    .prologue
    .line 5686
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5624
    monitor-enter p0

    .line 5625
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5626
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getFileName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5628
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5630
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 9

    .prologue
    .line 5634
    monitor-enter p0

    .line 5635
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5636
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getGenre()Ljava/lang/String;

    move-result-object v8

    monitor-exit p0

    .line 5661
    :goto_0
    return-object v8

    .line 5638
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v6

    .line 5639
    .local v6, audioId:I
    const/4 v8, 0x0

    .line 5640
    .local v8, genre:Ljava/lang/String;
    if-ltz v6, :cond_2

    .line 5641
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 5645
    .local v2, CursorCols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in (select genre_id from audio_genres_map where audio_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5648
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5651
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 5652
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5653
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5656
    :cond_1
    if-eqz v7, :cond_2

    .line 5657
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5661
    .end local v2           #CursorCols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 5663
    .end local v6           #audioId:I
    .end local v8           #genre:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5667
    monitor-enter p0

    .line 5668
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5669
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getLocation()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5671
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5673
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 4799
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4946
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4947
    const-string v0, "plugin_file_path"

    .line 4949
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4794
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPlayerName()Ljava/lang/String;

    move-result-object v0

    .line 4795
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 4
    .parameter "shufflePosition"

    .prologue
    const/4 v2, -0x1

    .line 5696
    monitor-enter p0

    .line 5697
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5698
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getPositionByShufflePosition(I)I

    move-result v1

    monitor-exit p0

    .line 5711
    :goto_0
    return v1

    .line 5700
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 5702
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 5704
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v0, v3, p1

    .line 5706
    .local v0, audioId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    .line 5707
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    .line 5708
    monitor-exit p0

    goto :goto_0

    .line 5713
    .end local v0           #audioId:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5706
    .restart local v0       #audioId:I
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5711
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getQueue()[I
    .locals 4

    .prologue
    .line 3523
    monitor-enter p0

    .line 3524
    :try_start_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3525
    .local v1, len:I
    new-array v2, v1, [I

    .line 3526
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3527
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 3526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3529
    :cond_0
    monitor-exit p0

    return-object v2

    .line 3530
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 4985
    monitor-enter p0

    .line 4987
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4988
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueuePosition()I

    move-result v0

    monitor-exit p0

    .line 4991
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    goto :goto_0

    .line 4992
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueuePositionImmediately()I
    .locals 1

    .prologue
    .line 4996
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4997
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueuePositionImmediately()I

    move-result v0

    .line 4999
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 4913
    monitor-enter p0

    .line 4915
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4916
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    monitor-exit p0

    .line 4919
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    monitor-exit p0

    goto :goto_0

    .line 4920
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 4774
    monitor-enter p0

    .line 4775
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4776
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getRepeatMode()I

    move-result v0

    monitor-exit p0

    .line 4778
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    monitor-exit p0

    goto :goto_0

    .line 4780
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 4749
    monitor-enter p0

    .line 4750
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4751
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getShuffleMode()I

    move-result v0

    monitor-exit p0

    .line 4753
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    monitor-exit p0

    goto :goto_0

    .line 4755
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 5717
    monitor-enter p0

    .line 5718
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5719
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getShufflePositionByPosition(I)I

    move-result v1

    monitor-exit p0

    .line 5730
    :goto_0
    return v1

    .line 5721
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 5723
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 5725
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v0, v3, p1

    .line 5727
    .local v0, audioId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    .line 5728
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 5732
    .end local v0           #audioId:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5727
    .restart local v0       #audioId:I
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5730
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5069
    monitor-enter p0

    .line 5070
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5071
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getTrackName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5076
    :goto_0
    return-object v0

    .line 5073
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5074
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getTrackName: mTitle == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5076
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5078
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 4789
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getVolume()I

    move-result v0

    .line 4790
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 4035
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4036
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPlaying()Z

    move-result v0

    .line 4038
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$3500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSystemReady()Z
    .locals 3

    .prologue
    .line 4407
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemReady= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4408
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 5
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 3450
    monitor-enter p0

    .line 3451
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v2, :cond_0

    .line 3452
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p1, v2, -0x1

    .line 3454
    :cond_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v2, :cond_1

    .line 3455
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v2, -0x1

    .line 3457
    :cond_1
    if-ge p1, p2, :cond_5

    .line 3458
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 3459
    .local v1, tmp:I
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 3460
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 3459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3462
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 3463
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_4

    .line 3464
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3480
    .end local v0           #i:I
    .end local v1           #tmp:I
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveQueue()V

    .line 3481
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3482
    monitor-exit p0

    .line 3483
    return-void

    .line 3465
    .restart local v0       #i:I
    .restart local v1       #tmp:I
    :cond_4
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p1, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p2, :cond_3

    .line 3466
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3482
    .end local v0           #i:I
    .end local v1           #tmp:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3468
    :cond_5
    if-ge p2, p1, :cond_3

    .line 3469
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 3470
    .restart local v1       #tmp:I
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-le v0, p2, :cond_6

    .line 3471
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 3470
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3473
    :cond_6
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 3474
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_7

    .line 3475
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3476
    :cond_7
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p2, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p1, :cond_3

    .line 3477
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public next(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 4103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->nextImpl(ZZ)V

    .line 4104
    return-void
.end method

.method public next(ZI)V
    .locals 1
    .parameter "force"
    .parameter "cookie"

    .prologue
    .line 4096
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/music/MediaPlaybackService;->nextImpl(ZZI)V

    .line 4097
    return-void
.end method

.method public nextAlbum(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 4404
    return-void
.end method

.method public nextAsync(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 4125
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->nextAsync(ZZ)V

    .line 4126
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 2568
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2569
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2571
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2573
    .local v0, action:Ljava/lang/String;
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    const-class v1, Lcom/htc/music/IHtcMediaPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2577
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "onBind IHtcMediaPlaybackService"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    .line 2583
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 9113
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 9114
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9133
    :goto_0
    return-void

    .line 9118
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    .line 9120
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9121
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9122
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPluginNotification:Landroid/app/Notification;

    .line 9123
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updatePluginNotification()V

    .line 9131
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 9126
    :cond_2
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    .line 9127
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updateNotification()V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 20

    .prologue
    .line 1619
    const-string v16, "[MediaPlaybackService]"

    const-string v17, "onCreate"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 1621
    const-string v16, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 1622
    new-instance v13, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const-class v17, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    .local v13, rec:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1625
    new-instance v8, Landroid/content/Intent;

    const-string v16, "android.intent.action.MEDIA_BUTTON"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1626
    .local v8, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1627
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1630
    .local v9, mediaPendingIntent:Landroid/app/PendingIntent;
    new-instance v16, Landroid/media/RemoteControlClient;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1633
    const/16 v6, 0xbd

    .line 1639
    .local v6, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 1641
    new-instance v15, Landroid/app/Notification;

    invoke-direct {v15}, Landroid/app/Notification;-><init>()V

    .line 1642
    .local v15, status:Landroid/app/Notification;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1643
    const-string v16, "Music"

    const/16 v17, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1644
    const-string v16, "cache"

    const/16 v17, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mCachePreferences:Landroid/content/SharedPreferences;

    .line 1645
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "plugin"

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1648
    .local v7, lastPluginClass:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1649
    if-eqz v7, :cond_0

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1650
    :cond_0
    new-instance v16, Lcom/htc/music/MusicPluginManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 1655
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 1657
    new-instance v16, Landroid/os/HandlerThread;

    const-string v17, "MediaPlaybackServiceWorker"

    invoke-direct/range {v16 .. v17}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/HandlerThread;->start()V

    .line 1659
    new-instance v16, Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/os/Looper;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 1661
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->registerExternalStorageListener()V

    .line 1664
    new-instance v16, Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x2712

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x2713

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 1679
    .local v10, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1681
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1682
    .local v3, commandFilter:Landroid/content/IntentFilter;
    const-string v16, "com.htc.music.musicservicecommand"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1683
    const-string v16, "com.htc.music.musicservicecommand.togglepause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1684
    const-string v16, "com.htc.music.musicservicecommand.pause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1685
    const-string v16, "com.htc.music.musicservicecommand.next"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1686
    const-string v16, "com.htc.music.musicservicecommand.previous"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1687
    const-string v16, "com.android.music.musicservicecommand.togglepause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1688
    const-string v16, "com.android.music.musicservicecommand.pause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1689
    const-string v16, "com.android.music.musicservicecommand.next"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1690
    const-string v16, "com.android.music.musicservicecommand.previous"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1692
    const-string v16, "android.media.AUDIO_BECOMING_NOISY"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1693
    const-string v16, "com.android.music.musicservicecommand"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1694
    const-string v16, "com.htc.music.onerror"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1695
    const-string v16, "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1696
    const-string v16, "com.android.music.settingrequest"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1697
    const-string v16, "com.android.music.playstaterequest"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/IntentFilter;

    const-string v18, "com.htc.intent.action.ACTION_A2DP_PLUG"

    invoke-direct/range {v17 .. v18}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1710
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 1711
    .local v14, shutdownReceiver:Landroid/content/IntentFilter;
    const-string v16, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1712
    const-string v16, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/IntentFilter;

    const-string v18, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-direct/range {v17 .. v18}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1718
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MediaPlaybackService;->mIsInMirror:Z

    .line 1720
    new-instance v16, Lcom/htc/music/MediaPlaybackService$DockEventListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService$DockEventListener;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 1721
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1722
    .local v5, dockEventReceiver:Landroid/content/IntentFilter;
    const-string v16, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1725
    new-instance v16, Lcom/htc/music/MediaPlaybackService$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$QueryHandler;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/ContentResolver;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    .line 1729
    const-string v16, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 1730
    .local v12, pm:Landroid/os/PowerManager;
    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 1736
    .local v11, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const-wide/32 v17, 0xea60

    move-object/from16 v0, v16

    move-wide/from16 v1, v17

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1739
    const-wide/16 v16, 0x2710

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->sendMusicCountULogMsg(J)V

    .line 1741
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1742
    .local v4, dlArtFilter:Landroid/content/IntentFilter;
    const-string v16, "action_complete_one_download"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1743
    const-string v16, "action_revert_current_album"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1746
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    .line 1748
    const-string v16, "[MediaPlaybackService]"

    const-string v17, "onCreate finished"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    return-void

    .line 1652
    .end local v3           #commandFilter:Landroid/content/IntentFilter;
    .end local v4           #dlArtFilter:Landroid/content/IntentFilter;
    .end local v5           #dockEventReceiver:Landroid/content/IntentFilter;
    .end local v10           #message:Landroid/os/Message;
    .end local v11           #msg:Landroid/os/Message;
    .end local v12           #pm:Landroid/os/PowerManager;
    .end local v14           #shutdownReceiver:Landroid/content/IntentFilter;
    :cond_2
    new-instance v16, Lcom/htc/music/MusicPluginManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1754
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy Begin]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1763
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1765
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1766
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1767
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1769
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1770
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1771
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 1774
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1775
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1776
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1779
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1780
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 1781
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1782
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1783
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 1786
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1787
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1789
    :cond_4
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    .line 1790
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPluginNotification:Landroid/app/Notification;

    .line 1791
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_5

    .line 1792
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 1794
    :cond_5
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPauseIntent:Landroid/content/Intent;

    .line 1795
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPrevIntent:Landroid/content/Intent;

    .line 1796
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNextIntent:Landroid/content/Intent;

    .line 1798
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 1799
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1800
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 1803
    :cond_6
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 1804
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1805
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1808
    :cond_7
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_8

    .line 1809
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1810
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    .line 1814
    :cond_8
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->release()V

    .line 1815
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    .line 1817
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1818
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1820
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1821
    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    .line 1824
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_9

    .line 1825
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->resetMusicPluginManager()V

    .line 1826
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->stopHandlerThread()V

    .line 1829
    :cond_9
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1830
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy End]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    return-void
.end method

.method public onPluginSelected(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 7282
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7283
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 7305
    :cond_0
    :goto_0
    return-void

    .line 7287
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7288
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseImpl()V

    .line 7291
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0

    .line 7294
    :cond_3
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 7295
    const/4 v0, 0x1

    .line 7296
    .local v0, isPowerOff:Z
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, v0}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    .line 7297
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 7298
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 7300
    .end local v0           #isPowerOff:Z
    :cond_4
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 7301
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2589
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2590
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2592
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2593
    .local v0, action:Ljava/lang/String;
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onRebind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 15
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 2598
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    .line 2600
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2602
    if-nez p1, :cond_0

    .line 2603
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2604
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand intent NULL"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    const/4 v11, 0x1

    .line 2721
    :goto_0
    return v11

    .line 2608
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2609
    .local v1, action:Ljava/lang/String;
    const-string v11, "command"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2610
    .local v3, cmd:Ljava/lang/String;
    const-string v11, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2611
    .local v8, mode:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "car"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2612
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->switchToLocal()V

    .line 2616
    :cond_1
    const-string v11, "forcePlay"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 2617
    .local v5, forcePlay:Z
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 2618
    .local v10, tm:Landroid/telephony/TelephonyManager;
    if-nez v10, :cond_2

    .line 2619
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2620
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand TelephonyManager NULL"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    const/4 v11, 0x1

    goto :goto_0

    .line 2623
    :cond_2
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v11

    if-nez v11, :cond_3

    const/4 v7, 0x1

    .line 2624
    .local v7, isPhoneIdle:Z
    :goto_1
    if-nez v7, :cond_4

    .line 2625
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2626
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand call state is not idle"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    const/4 v11, 0x1

    goto :goto_0

    .line 2623
    .end local v7           #isPhoneIdle:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 2630
    .restart local v7       #isPhoneIdle:Z
    :cond_4
    const-string v11, "next"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "com.android.music.musicservicecommand.next"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2631
    :cond_5
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDNEXT"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    if-eqz v5, :cond_6

    .line 2633
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 2635
    :cond_6
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/htc/music/MediaPlaybackService;->nextAsync(ZZ)V

    .line 2718
    :cond_7
    :goto_2
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2719
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 2720
    .local v9, msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v12, 0xea60

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2721
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2636
    .end local v9           #msg:Landroid/os/Message;
    :cond_8
    const-string v11, "previous"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2637
    :cond_9
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDPREVIOUS"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    if-eqz v5, :cond_a

    .line 2639
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 2641
    :cond_a
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/htc/music/MediaPlaybackService;->prevAsync(Z)V

    goto :goto_2

    .line 2642
    :cond_b
    const-string v11, "togglepause"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2643
    :cond_c
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDTOGGLEPAUSE"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    cmp-long v11, v11, v13

    if-ltz v11, :cond_7

    .line 2649
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2650
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseImpl()V

    .line 2651
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_2

    .line 2653
    :cond_d
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->reloadAndPlayMusicInWorker()V

    goto :goto_2

    .line 2655
    :cond_e
    const-string v11, "pause"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2656
    :cond_f
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseImpl()V

    .line 2657
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_2

    .line 2658
    :cond_10
    const-string v11, "play"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2659
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->reloadAndPlayMusicInWorker()V

    goto/16 :goto_2

    .line 2660
    :cond_11
    const-string v11, "stop"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 2661
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseImpl()V

    .line 2662
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 2663
    const-wide/16 v11, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 2664
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2665
    .local v2, bundle:Landroid/os/Bundle;
    const-string v11, "stopcommand"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2666
    const-string v11, "com.htc.music.playstatechanged"

    invoke-direct {p0, v11, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 2667
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_12
    const-string v11, "ffstart"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2668
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDFFSTART"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 2670
    const/4 v11, 0x1

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2671
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2672
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x104

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2673
    .end local v9           #msg:Landroid/os/Message;
    :cond_13
    const-string v11, "rwstart"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 2674
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDRWSTART"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 2676
    const/4 v11, 0x2

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2677
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2678
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x104

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2679
    .end local v9           #msg:Landroid/os/Message;
    :cond_14
    const-string v11, "ffstop"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    const-string v11, "rwstop"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 2680
    :cond_15
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDFF/RWSTOP"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2683
    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-eqz v11, :cond_7

    .line 2684
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->playImpl()V

    goto/16 :goto_2

    .line 2687
    :cond_16
    const-string v11, "resume"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 2688
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDRESUME"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v11, :cond_7

    .line 2692
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    .line 2693
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_2

    .line 2695
    :cond_17
    const-string v11, "play_artist"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    const-string v11, "play_album"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    const-string v11, "play_playlist"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    const-string v11, "play_track"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2699
    :cond_18
    const-string v11, "id"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2700
    .local v6, iID:I
    const-string v11, "[MediaPlaybackService]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onStartCommand, cmd = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", iID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v11, :cond_1a

    .line 2702
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x2716

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 2703
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x2716

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2705
    :cond_19
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x2716

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2706
    .restart local v9       #msg:Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2707
    .local v4, data:Landroid/os/Bundle;
    const-string v11, "command"

    invoke-virtual {v4, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    const-string v11, "id"

    invoke-virtual {v4, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2709
    invoke-virtual {v9, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2710
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v11, v9}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 2713
    .end local v4           #data:Landroid/os/Bundle;
    .end local v9           #msg:Landroid/os/Message;
    :cond_1a
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand, mNonUiHandler = null!"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 2737
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2740
    .local v0, action:Ljava/lang/String;
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_1

    .line 2741
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "incorrect service refer count, try to recover it"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    :cond_0
    :goto_0
    return v5

    .line 2745
    :cond_1
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2746
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayback is onUnbind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ref count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_0

    .line 2755
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v2, :cond_3

    .line 2758
    :cond_2
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind isPlaying() || mResumeAfterCall"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2765
    :cond_3
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2766
    :cond_4
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2767
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2768
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind mPlayListLen > 0"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2773
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    .line 2774
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stopSelf(I)V

    .line 2776
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Z)V
    .locals 1
    .parameter "path"
    .parameter "oneshot"

    .prologue
    .line 3741
    const/4 v0, -0x1

    .line 3742
    .local v0, cookie:I
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/MediaPlaybackService;->open(Ljava/lang/String;ZI)V

    .line 3743
    return-void
.end method

.method public open(Ljava/lang/String;ZI)V
    .locals 17
    .parameter "path"
    .parameter "oneshot"
    .parameter "cookie"

    .prologue
    .line 3752
    monitor-enter p0

    .line 3753
    if-nez p1, :cond_0

    .line 3754
    :try_start_0
    monitor-exit p0

    .line 3929
    :goto_0
    return-void

    .line 3757
    :cond_0
    const/4 v11, 0x0

    .line 3758
    .local v11, drmFileToPlay:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 3759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_1

    .line 3760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3762
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 3763
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3764
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3765
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3766
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v4, 0x0

    const/4 v7, -0x1

    aput v7, v2, v4

    .line 3769
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3773
    :cond_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/music/MediaPlaybackService;->mId:J

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-gtz v2, :cond_4

    .line 3778
    const-string v2, "content://media/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3779
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3780
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 3781
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3809
    .local v6, selectionArgs:[Ljava/lang/String;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3810
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 3811
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_f

    .line 3812
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3813
    const/4 v9, 0x0

    .line 3835
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/music/MediaPlaybackService;->setAudioMetaData(Landroid/database/Cursor;)V

    .line 3836
    if-eqz v9, :cond_4

    .line 3837
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3844
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_4
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/music/MediaPlaybackService;->mId:J

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-lez v2, :cond_11

    .line 3845
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 3846
    .local v10, data:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3847
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 3848
    move-object/from16 p1, v10

    .line 3859
    .end local v10           #data:Ljava/lang/String;
    :cond_5
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 3860
    if-eqz v11, :cond_13

    .line 3861
    const-string v2, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drmFileToPlay= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_12

    .line 3866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2, v11}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 3868
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    .line 3881
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_17

    .line 3882
    const/16 v12, 0xa

    .line 3883
    .local v12, min:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/16 v4, 0xa

    if-ge v2, v4, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_6

    .line 3884
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3887
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-lt v2, v12, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_15

    .line 3888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_7

    .line 3889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3897
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 3899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-eqz v2, :cond_9

    .line 3904
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v2, :cond_9

    .line 3905
    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->hasValidRights()Z

    move-result v2

    if-nez v2, :cond_16

    .line 3906
    :cond_8
    const v2, 0x7f060080

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    .line 3914
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-gt v2, v12, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_a

    .line 3916
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->next(ZI)V

    .line 3921
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-le v2, v12, :cond_b

    .line 3922
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 3928
    .end local v12           #min:I
    :cond_b
    :goto_8
    monitor-exit p0

    goto/16 :goto_0

    .end local v11           #drmFileToPlay:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3782
    .restart local v11       #drmFileToPlay:Ljava/lang/String;
    :cond_c
    :try_start_3
    const-string v2, "/sdcard/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3790
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3791
    .restart local v3       #uri:Landroid/net/Uri;
    const-string v5, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    .line 3794
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "/sdcard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 3798
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3800
    .restart local v3       #uri:Landroid/net/Uri;
    :goto_9
    const-string v5, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    .line 3803
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 3798
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_9

    .line 3815
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_f
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 3816
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3817
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v2, v4

    .line 3819
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3820
    const/4 v8, -0x1

    .line 3821
    .local v8, albumID:I
    if-eqz v9, :cond_10

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_10

    .line 3822
    const-string v2, "album_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3825
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3826
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v4, 0x0

    aput v8, v2, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 3840
    .end local v8           #albumID:I
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 3851
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_11
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3852
    const-string v2, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "open, wasDrmContent, path: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", reset playlist length"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 3854
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3855
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto/16 :goto_4

    .line 3870
    :cond_12
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "drm setDataSource fail, because mPlayer = null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3873
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_14

    .line 3874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3876
    :cond_14
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "setDataSource fail, because mPlayer = null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3892
    .restart local v12       #min:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_7

    .line 3893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto/16 :goto_6

    .line 3908
    :cond_16
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "show toast in ui"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    const v2, 0x7f060054

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    goto/16 :goto_7

    .line 3925
    .end local v12           #min:I
    :cond_17
    if-nez v11, :cond_b

    .line 3926
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_8
.end method

.method public openAsync(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 3723
    monitor-enter p0

    .line 3724
    if-nez p1, :cond_0

    .line 3725
    :try_start_0
    monitor-exit p0

    .line 3739
    :goto_0
    return-void

    .line 3728
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3729
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3730
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3732
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3733
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3735
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 3736
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V

    .line 3737
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    .line 3738
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openAsync([I[IIZ)V
    .locals 4
    .parameter "list"
    .parameter "albumList"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    const/16 v3, 0x271d

    .line 3239
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 3240
    .local v1, handler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    if-eqz v1, :cond_0

    .line 3241
    invoke-virtual {v1, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3242
    invoke-virtual {v1, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3243
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3244
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "list"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3245
    const-string v3, "album_list"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3246
    const-string v3, "position"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3247
    const-string v3, "force_shuffle"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3248
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3249
    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3251
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public playAlbumAsync(II)V
    .locals 7
    .parameter "index"
    .parameter "cookie"

    .prologue
    const/16 v6, 0x271e

    .line 5201
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "play album async"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5202
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playalbumAysnc cookie = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5203
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 5204
    .local v1, handler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    if-eqz v1, :cond_0

    .line 5205
    invoke-virtual {v1, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 5206
    invoke-virtual {v1, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5207
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5208
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "position"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5209
    const-string v3, "cookie"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5210
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5211
    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5213
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public playAlbumImpl(II)I
    .locals 7
    .parameter "index"
    .parameter "cookie"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 5216
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PLAY_ALBUM impl index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5217
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playalbum cookie = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5218
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueuePosition()I

    move-result v1

    .line 5219
    .local v1, position:I
    if-ne p1, v1, :cond_0

    .line 5220
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "current position is the same as previous position"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5271
    .end local p1
    :goto_0
    return p1

    .line 5224
    .restart local p1
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5225
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    .line 5226
    .local v0, len:I
    if-eqz v0, :cond_1

    if-lt p1, v0, :cond_2

    .line 5227
    :cond_1
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "playAlbum, Plugin mode, Something bad happened"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    .line 5228
    goto :goto_0

    .line 5231
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    goto :goto_0

    .line 5236
    .end local v0           #len:I
    :cond_3
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-lt p1, v4, :cond_5

    .line 5237
    :cond_4
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "Something bad happened"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    .line 5238
    goto :goto_0

    .line 5240
    :cond_5
    monitor-enter p0

    .line 5242
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 5244
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 5245
    invoke-direct {p0, p2}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext(I)V

    .line 5246
    const-string v2, "com.htc.music.metachanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 5247
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v2, :cond_6

    .line 5248
    invoke-virtual {p0, p2}, Lcom/htc/music/MediaPlaybackService;->playImpl(I)V

    .line 5249
    :cond_6
    monitor-exit p0

    move p1, v3

    goto :goto_0

    .line 5265
    :cond_7
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 5266
    invoke-direct {p0, p2}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext(I)V

    .line 5267
    const-string v2, "com.htc.music.metachanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 5268
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v2, :cond_8

    .line 5269
    invoke-virtual {p0, p2}, Lcom/htc/music/MediaPlaybackService;->playImpl(I)V

    .line 5271
    :cond_8
    monitor-exit p0

    goto :goto_0

    .line 5272
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public playImpl()V
    .locals 2

    .prologue
    .line 3933
    const/4 v0, -0x1

    .line 3934
    .local v0, cookie:I
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->playImpl(I)V

    .line 3935
    return-void
.end method

.method public playImpl(I)V
    .locals 4
    .parameter "cookie"

    .prologue
    .line 3940
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "play() +++++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3941
    monitor-enter p0

    .line 3943
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 3945
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3948
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3949
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pluginPlayImpl()V

    .line 3953
    :goto_0
    monitor-exit p0

    .line 3954
    return-void

    .line 3951
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->playImpl(I)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$8600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;I)V

    goto :goto_0

    .line 3953
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pluginAlbumArtPathByShuffleUpdated(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 7360
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 7369
    :cond_0
    :goto_0
    return-void

    .line 7362
    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7363
    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7365
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathshuffleupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7366
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7367
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7368
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginAlbumArtPathUpdated(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 7348
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 7357
    :cond_0
    :goto_0
    return-void

    .line 7350
    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7351
    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7354
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7355
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7356
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "action"
    .parameter "extra"

    .prologue
    .line 7308
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v2, :cond_4

    .line 7310
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7311
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updatePluginNotification()V

    .line 7312
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7313
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V

    .line 7317
    :cond_0
    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7318
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updatePluginNotification()V

    .line 7322
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7323
    .local v1, msg:Landroid/os/Message;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7324
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pluginNotifyChange: extra "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7326
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "extrastate"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7327
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7329
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 7331
    .end local v1           #msg:Landroid/os/Message;
    :cond_4
    return-void
.end method

.method public pluginNowplayingQueueUpdated([Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 7372
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, p2, :cond_1

    .line 7379
    :cond_0
    :goto_0
    return-void

    .line 7374
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.nowplayingqueueupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7375
    .local v0, i:Landroid/content/Intent;
    const-string v1, "start"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7376
    const-string v1, "end"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7377
    const-string v1, "values"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7378
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginTrackDetailsUpdated(ILandroid/content/ContentValues;)V
    .locals 2
    .parameter "position"
    .parameter "values"

    .prologue
    .line 7382
    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    .line 7388
    :cond_0
    :goto_0
    return-void

    .line 7384
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.trackdetailsupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7385
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7386
    const-string v1, "values"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7387
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 5292
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5293
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->position()J

    move-result-wide v0

    .line 5295
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$9100(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public prevAlbum()V
    .locals 0

    .prologue
    .line 4295
    return-void
.end method

.method printATSPauseMusictoStopLog()V
    .locals 5

    .prologue
    .line 7775
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_1

    .line 7795
    :cond_0
    :goto_0
    return-void

    .line 7779
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7780
    const-string v1, "stop_"

    .line 7781
    .local v1, playingType:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 7783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7788
    :goto_1
    const-string v2, "MASD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ATS][com.htc.music]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][successful]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7789
    const-string v2, "MASD"

    const-string v3, "[ATS][com.htc.music][stop_play_music][successful]"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7792
    .end local v1           #playingType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 7793
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Exception in printATSPauseMusictoStopLog. no influence ignore"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7786
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #playingType:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "printATSPauseMusictoStopLog mCursor is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method printATSPlayMusicLog()V
    .locals 6

    .prologue
    .line 7751
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_1

    .line 7772
    :cond_0
    :goto_0
    return-void

    .line 7755
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7756
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    .line 7757
    .local v0, audioId:I
    const-string v2, "play_"

    .line 7758
    .local v2, playingType:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 7760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7765
    :goto_1
    const-string v3, "MASD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ATS][com.htc.music]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][successful]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7766
    const-string v3, "MASD"

    const-string v4, "[ATS][com.htc.music][play_music][successful]"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7769
    .end local v0           #audioId:I
    .end local v2           #playingType:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 7770
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "Exception in printATSPlayMusicLog. no influence ignore"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7763
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #audioId:I
    .restart local v2       #playingType:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "printATSPlayMusicLog mMimeType is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method printATSStopMusicByPhoneCallLog()V
    .locals 5

    .prologue
    .line 7798
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_1

    .line 7814
    :cond_0
    :goto_0
    return-void

    .line 7802
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$3500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7803
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 7804
    .local v2, tm:Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 7805
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 7806
    .local v1, isPhoneIdle:Z
    :goto_1
    if-nez v1, :cond_0

    .line 7807
    const-string v3, "MASD"

    const-string v4, "[ATS][com.htc.music][play_music][stop]"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7811
    .end local v1           #isPhoneIdle:Z
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 7812
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "ATS Log exception, no influence ignore."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7805
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 2840
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 2841
    new-instance v1, Lcom/htc/music/MediaPlaybackService$10;

    invoke-direct {v1, p0}, Lcom/htc/music/MediaPlaybackService$10;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 2888
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2889
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2890
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2891
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2892
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2893
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2894
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2896
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public reloadQueue()V
    .locals 2

    .prologue
    .line 2038
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue +"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    if-eqz v0, :cond_0

    .line 2040
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue: mIsReloadingQueue = true"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    monitor-enter p0

    .line 2046
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2060
    :goto_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue -"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    return-void

    .line 2046
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2048
    :cond_0
    monitor-enter p0

    .line 2049
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 2050
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->reloadQueueImpl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2051
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[reloadQueue] Reload queue failed. Clear all preferences and re-reload queue."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2053
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->reloadQueueImpl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2054
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[reloadQueue] Reload queue still failed after preferences reset."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 2058
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public removeQueueTracks([I)I
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 4626
    const/4 v1, 0x0

    .line 4627
    .local v1, numremoved:I
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 4629
    monitor-enter p0

    .line 4630
    :try_start_0
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 4631
    aget v2, p1, v0

    aget v3, p1, v0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 4630
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4633
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4635
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_1

    .line 4636
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->clearCache()V

    .line 4637
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 4638
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 4640
    :cond_1
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeQueueTracks numremoved = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4641
    if-lez v1, :cond_3

    .line 4642
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    if-nez v2, :cond_2

    .line 4643
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "removeQueueTracks mQueueModified = true"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4644
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveQueue()V

    .line 4646
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->setNextTrack()V

    .line 4647
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4649
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 4652
    :cond_3
    return v1

    .line 4633
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTrack(I)I
    .locals 5
    .parameter "id"

    .prologue
    .line 4600
    const/4 v1, 0x0

    .line 4601
    .local v1, numremoved:I
    monitor-enter p0

    .line 4602
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 4603
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 4604
    invoke-direct {p0, v0, v0}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 4605
    add-int/lit8 v0, v0, -0x1

    .line 4602
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4608
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4610
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTracks id numremoved = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4611
    if-lez v1, :cond_2

    .line 4612
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveQueue()V

    .line 4613
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->setNextTrack()V

    .line 4614
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4616
    :cond_2
    return v1

    .line 4608
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTracks(II)I
    .locals 2
    .parameter "first"
    .parameter "last"

    .prologue
    .line 4491
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 4492
    .local v0, numremoved:I
    if-lez v0, :cond_0

    .line 4493
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveQueue()V

    .line 4494
    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4496
    :cond_0
    return v0
.end method

.method public removeTracksReduceBroadcast([I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 4662
    const/4 v3, 0x0

    .line 4663
    .local v3, numRemoved:I
    const/4 v0, 0x0

    .line 4664
    .local v0, countToBroadcast:I
    array-length v4, p1

    .line 4665
    .local v4, removeTrackCount:I
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 4667
    monitor-enter p0

    .line 4668
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_5

    .line 4670
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    :try_start_0
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v2, v5, :cond_1

    .line 4671
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v5, v5, v2

    aget v6, p1, v1

    if-ne v5, v6, :cond_0

    .line 4672
    invoke-direct {p0, v2, v2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 4670
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4675
    :cond_1
    if-lez v3, :cond_2

    .line 4676
    add-int/lit8 v0, v0, 0x1

    .line 4678
    :cond_2
    const/16 v5, 0x32

    if-ne v0, v5, :cond_3

    .line 4679
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "removeTracksReduceBroadcast 50"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4680
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveQueue()V

    .line 4681
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4682
    const/4 v0, 0x0

    .line 4684
    :cond_3
    if-nez v1, :cond_4

    .line 4685
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "removeTracksReduceBroadcast removeTrackCount - "

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4686
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveQueue()V

    .line 4687
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4668
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4690
    .end local v2           #j:I
    :cond_5
    monitor-exit p0

    .line 4691
    return v3

    .line 4690
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public seek(J)J
    .locals 4
    .parameter "pos"

    .prologue
    .line 5306
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    .line 5308
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5310
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    .local v0, mDuration:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 5311
    move-wide p1, v0

    .line 5313
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/music/MusicPluginManager;->seek(J)J

    move-result-wide v2

    .line 5316
    .end local v0           #mDuration:J
    :goto_0
    return-wide v2

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setAlbumQueue([I)V
    .locals 1
    .parameter "list"

    .prologue
    .line 4868
    monitor-enter p0

    .line 4869
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToAlbumList([II)V

    .line 4871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 4872
    monitor-exit p0

    .line 4873
    return-void

    .line 4872
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPlaylist([IZ)V
    .locals 9
    .parameter "list"
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    .line 3367
    monitor-enter p0

    .line 3368
    :try_start_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 3369
    const/4 v6, 0x1

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 3371
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    .line 3372
    .local v4, oldId:I
    array-length v2, p1

    .line 3374
    .local v2, listlength:I
    const/4 v3, 0x1

    .line 3378
    .local v3, newlist:Z
    if-nez p2, :cond_1

    .line 3379
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v6, v2, :cond_1

    .line 3380
    const/4 v3, 0x0

    .line 3381
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3382
    aget v6, p1, v0

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v7, v7, v0

    if-eq v6, v7, :cond_7

    .line 3383
    const/4 v3, 0x1

    .line 3389
    .end local v0           #i:I
    :cond_1
    if-eqz v3, :cond_2

    .line 3390
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v6, v8, :cond_8

    .line 3392
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v2, v6}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 3394
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    .line 3397
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3405
    :goto_1
    const/4 v6, -0x1

    invoke-direct {p0, p1, v6}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3406
    const-string v6, "com.htc.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3409
    :cond_2
    const/4 v5, 0x0

    .line 3410
    .local v5, playPosFound:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v6, :cond_3

    .line 3411
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v6, v6, v0

    if-ne v6, v4, :cond_9

    .line 3412
    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3413
    const/4 v5, 0x1

    .line 3417
    :cond_3
    if-nez v5, :cond_5

    .line 3418
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "setPlaylist: cannot find the same audio id. Some thing must be wrong."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3420
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 3421
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    .line 3422
    .local v1, isPlaying:Z
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 3423
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3424
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->playImpl()V

    .line 3426
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 3431
    .end local v1           #isPlaying:Z
    :cond_5
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 3433
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 3435
    if-nez v5, :cond_6

    .line 3436
    const-string v6, "com.htc.music.metachanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3439
    :cond_6
    const-string v6, "com.htc.music.refresh"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3441
    monitor-exit p0

    .line 3442
    return-void

    .line 3381
    .end local v5           #playPosFound:Z
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3401
    .end local v0           #i:I
    :cond_8
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_1

    .line 3441
    .end local v2           #listlength:I
    .end local v3           #newlist:Z
    .end local v4           #oldId:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3410
    .restart local v0       #i:I
    .restart local v2       #listlength:I
    .restart local v3       #newlist:Z
    .restart local v4       #oldId:I
    .restart local v5       #playPosFound:Z
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 5008
    monitor-enter p0

    .line 5009
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5010
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    .line 5019
    :cond_0
    :goto_0
    monitor-exit p0

    .line 5020
    return-void

    .line 5012
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 5013
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 5014
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 5015
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 5016
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_0

    .line 5017
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->playImpl()V

    goto :goto_0

    .line 5019
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 4759
    monitor-enter p0

    .line 4760
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4761
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setRepeatMode(I)V

    .line 4768
    :goto_0
    const-string v0, "com.broadcom.bluetooth.avrcp.notify"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4770
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updatePlayerSettings()V

    .line 4771
    monitor-exit p0

    .line 4772
    return-void

    .line 4763
    :cond_0
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 4764
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->setNextTrack()V

    .line 4765
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveRepeatMode()V

    goto :goto_0

    .line 4771
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 4
    .parameter "shufflemode"

    .prologue
    const/4 v3, 0x1

    .line 4695
    monitor-enter p0

    .line 4696
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4697
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->setShuffleMode(I)V

    .line 4742
    :goto_0
    const-string v1, "com.broadcom.bluetooth.avrcp.notify"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4744
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updatePlayerSettings()V

    .line 4745
    monitor-exit p0

    .line 4746
    :goto_1
    return-void

    .line 4699
    :cond_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, p1, :cond_1

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_1

    .line 4700
    monitor-exit p0

    goto :goto_1

    .line 4745
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4702
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 4703
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 4704
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4705
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode, shufflemode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", makeAutoShuffleList, reset playlist lenght."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4706
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4707
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 4708
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4709
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 4710
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4711
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_2

    .line 4712
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->playImpl()V

    .line 4713
    :cond_2
    monitor-exit p0

    goto :goto_1

    .line 4716
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 4719
    :cond_4
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, v3, :cond_6

    .line 4721
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    new-array v0, v1, [I

    .line 4722
    .local v0, nonShufflePlayList:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v1, v0, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 4723
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    .line 4738
    .end local v0           #nonShufflePlayList:[I
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->setNextTrack()V

    .line 4739
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveShuffleMode()V

    goto :goto_0

    .line 4724
    :cond_6
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-nez v1, :cond_5

    .line 4725
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 4726
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 4729
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4731
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveQueue()V

    .line 4732
    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4733
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v1, :cond_5

    .line 4734
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4735
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public setVolume(I)V
    .locals 1
    .parameter "nVol"

    .prologue
    .line 4785
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setVolume(I)V

    .line 4786
    :cond_0
    return-void
.end method

.method public showPluginToast(Ljava/lang/String;I)V
    .locals 4
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 5552
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5553
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5554
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5555
    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5556
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5557
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5558
    return-void
.end method

.method shutdownServcieDelay()V
    .locals 4

    .prologue
    .line 5528
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5529
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5530
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5531
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 3991
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "!!!! @@@@ stop()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3992
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 3993
    return-void
.end method

.method public syncNowPlayingQueue([I)V
    .locals 5
    .parameter "list"

    .prologue
    .line 3486
    monitor-enter p0

    .line 3487
    :try_start_0
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncNowPlayingQueue :: mPlayPos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPlayListLen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    if-nez p1, :cond_0

    .line 3490
    monitor-exit p0

    .line 3506
    :goto_0
    return-void

    .line 3492
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v1, v2, v3

    .line 3493
    .local v1, tmp:I
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tmp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3497
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 3498
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 3497
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3500
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v1, v3}, Lcom/htc/music/MediaPlaybackService;->Search([III)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3502
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveQueue()V

    .line 3503
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->setNextTrack()V

    .line 3504
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3505
    monitor-exit p0

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #tmp:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updatePlaybackStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 9078
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mCurrentPlaybackState:Ljava/lang/String;

    .line 9079
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/htc/music/util/MusicUtils;->broadcastPlaybackStatus(Landroid/content/Context;Ljava/lang/String;J)V

    .line 9080
    return-void
.end method

.method wasDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 5452
    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
