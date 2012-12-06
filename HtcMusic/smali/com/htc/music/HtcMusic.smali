.class public Lcom/htc/music/HtcMusic;
.super Landroid/app/Activity;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;
.implements Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/HtcMusic$LyricUpdateReceiver;,
        Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;,
        Lcom/htc/music/HtcMusic$ControllerListener;,
        Lcom/htc/music/HtcMusic$EventReceiver;,
        Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;,
        Lcom/htc/music/HtcMusic$DataFeeWanringDialogClickListener;,
        Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;,
        Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;,
        Lcom/htc/music/HtcMusic$PhadeAnimationListener;,
        Lcom/htc/music/HtcMusic$NonUiHandler;,
        Lcom/htc/music/HtcMusic$EditTextWatcher;,
        Lcom/htc/music/HtcMusic$DMCServiceListener;,
        Lcom/htc/music/HtcMusic$InitialUIIdlehandler;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_CURRENT_LYRIC:Ljava/lang/String; = "action_update_current_lyric"

.field private static final ANIMATION_INIT:I = 0x5

.field private static final CHANGENOW_PLAYING_VIEW:I = 0x3a9a

.field private static final CHECK_ERROR_STATE:I = 0x6

.field private static final CHECK_PLUGIN_SERVICE_STATE:I = 0x4

.field private static final DIALOG_CONNECTION_FAILED:I = 0x18

.field private static final DIALOG_CREATE_PLAYLIST:I = 0x15

.field private static final DIALOG_DMR_DISCONNECT:I = 0x16

.field private static final DIALOG_DMS_DISCONNECT:I = 0x17

.field private static final DIALOG_DOWNLOAD_ALBUMART:I = 0xd

.field private static final DIALOG_DRM_CONFIRM:I = 0x4

.field private static final DIALOG_DRM_ERROR:I = 0x3

.field private static final DIALOG_MODE_REPEAT_ALL:I = 0x0

.field private static final DIALOG_MODE_REPEAT_CURRENT:I = 0x1

.field private static final DIALOG_MODE_REPEAT_NONE:I = 0x2

.field private static final DIALOG_SET_AS_RINGTONE:I = 0x6

.field private static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0xc

.field private static final DIALOG_SHARETEXT:I = 0x14

.field private static final DIALOG_SHARETYPE:I = 0x13

.field private static final DIALOG_SHARE_DRM_FILE:I = 0xf

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0xe

.field private static final DIALOG_TRACK_OPTIONS:I = 0x12

.field private static final DIALOG_WAITING:I = 0x19

.field private static final DMR_CHOOSER:I = 0x25

.field private static final HANDLER_HIDE_VOLUME_DIALOG:I = 0x1771

.field private static final INITIAL_UI:I = 0xc9

.field private static final KEY_IS_LYRICS_VISIBLE:Ljava/lang/String; = "islyricsvisible"

.field private static final LOCKSCREEN_START_ACTIVITY:Ljava/lang/String; = "com.htc.music.lockscreen_start"

.field private static final MENU_CLOSE_ID:I = 0x2e

.field private static final MENU_LYRIC_ID:I = 0x2f

.field private static final MENU_QUEUE_ID:I = 0x2c

.field private static final MENU_SOUNDHOUND_ID:I = 0x2d

.field private static final MENU_STATUS_HtcMusic:I = 0x1

.field private static final MENU_STATUS_NONE:I = 0x0

.field private static final MENU_STATUS_NowPlaying:I = 0x2

.field private static final MSG_ANIMATION_TIMEOUT:I = 0x3a9c

.field private static final MSG_OPEN_LYRIC:I = 0x6a

.field private static final MSG_SHOW_DMR_DISCONNECT_DIALOG:I = 0x3a9e

.field private static final MSG_SHOW_WAITING_DIALOG:I = 0x3a9d

.field private static final MSG_SWITCH_MODE:I = 0x3a9b

.field private static final PLAY_ALBUM:I = 0xa

.field private static final PROPERTIES:I = 0x20

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final REFRESH_NOW:I = 0xd

.field private static final REMOVE_DUMMY_BACKGROUND:I = 0x3a99

.field private static final REPEAT:I = 0x1b

.field private static final SETTING:I = 0x29

.field private static final SHARE:I = 0x24

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x66

.field private static final START_ENHANCER_SERVICE_ONSTART:I = 0x8

.field private static final TAG:Ljava/lang/String; = "[HtcMusic]"

.field private static final TOGGLE_SHUFFLE:I = 0x1f

.field private static final UPDATE_LYRIC_VIEW:I = 0x6c

.field private static final UPDATE_TITLE:I = 0xc

.field private static final UPDATE_TRACKINFO:I = 0x7

.field private static final UPDATE_TRACKINFO_UI:I = 0xb

.field private static final USE_AS_NOTIFY_RINGTONE:I = 0x23

.field private static final USE_AS_PHONE_RINGTONE:I = 0x22

.field private static final USE_AS_RINGTONE:I = 0x1a

.field private static final USE_AS_RINGTONE_SUB:I = 0x21

.field private static final VOLUME_DIALOG_TIMEOUT_DELAY:I = 0xbb8

.field private static logger:Lcom/htc/music/online/sinamusic/MyLogger;

.field private static mLyricStr:Ljava/lang/String;

.field private static music_tooltip_perference_key:Ljava/lang/String;


# instance fields
.field private final ANIMATION_TIME_OUT_DURATION:I

.field private final AUTO_UPDATE:I

.field private final MUSIC_ENHANCER_PACKAGE:Ljava/lang/String;

.field private final MUSIC_ENHANCER_SERVICE:Ljava/lang/String;

.field private final UPDATE_ALL:I

.field private final UPDATE_CURRENT:I

.field private activeDialog:I

.field avi:I

.field private hint_layout_land:Landroid/view/View;

.field private isTooltipLaunched:Z

.field private final keyboard:[[I

.field private lastX:I

.field private lastY:I

.field private m2DControl:Landroid/view/View;

.field private m3DLayout:Landroid/widget/RelativeLayout;

.field private mActionBar:Lcom/htc/widget/ActionBarExt;

.field protected mActivityPopup:Z

.field private mActivityStoped:Z

.field private mAlbumArtistName:Landroid/widget/TextView;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

.field private mBlockMenu:Z

.field mCircleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

.field private mCurrentAudioId:I

.field private mCurrentAudioPath:Ljava/lang/String;

.field private mCurrentAudioType:I

.field private mCurrentSongId:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field private mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

.field private mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field private mDLNAServiceStatusListener:Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

.field private mDMCServiceListener:Lcom/htc/music/HtcMusic$DMCServiceListener;

.field private mDirectMode:I

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field private mDlnaMode:I

.field private mDownloadAlbumArtDialog:Landroid/app/Dialog;

.field private mDownloadAlbumArtId:I

.field private mDuration:J

.field private mEnalbeAutoPlay:Z

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mFfwdListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

.field private mGliderAdapter:Lcom/htc/music/GliderAdapter;

.field private mGliderState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

.field private mInitAP:Z

.field private mIsAutoUpdate:Z

.field private mIsDLNAManagerConnected:Z

.field private mIsDialogActive:Z

.field private mIsEnhancerExist:Z

.field private mIsFFScanOn:Z

.field private mIsLyricPanelInit:Z

.field private mIsLyricShow:Z

.field private mIsLyricsLoading:Z

.field private mIsPlaybackControlEnabled:Z

.field private mIsRWScanOn:Z

.field private mIsRevertCurrent:Z

.field private mIsSeriveBinded:Z

.field private mJustCreate:Z

.field private mLastPluginArtPath:Ljava/lang/String;

.field private mLastSeekEventTime:J

.field private mLibraryListener:Landroid/view/View$OnClickListener;

.field private mLyric:Lcom/htc/music/lyrics/LyricGenerator;

.field private mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

.field private mLyricPath:Ljava/lang/String;

.field private mLyricReceiver:Landroid/content/BroadcastReceiver;

.field private mMenu:Landroid/view/Menu;

.field private mMenuStatus:I

.field private volatile mMetaChangeInUIAgain:Z

.field public mMsg:Ljava/lang/String;

.field private mNeedBindSerive:Z

.field private mNeedSetRendererAsDongle:Z

.field private mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

.field mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

.field protected mNowPlayingViewOn:Z

.field private mOnScrollSeekListener:Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;

.field private mOrientation:I

.field private mPauseButton:Lcom/htc/widget/HtcRimImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayAlbumCookie:I

.field private mPlaybackPaused:Z

.field private mPosOverride:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field public mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

.field private mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Lcom/htc/widget/HtcSeekBar;

.field private mProgressPopup:Landroid/widget/TextView;

.field private mProgressPos:I

.field private mQueueInfo:Ljava/lang/String;

.field private mRelaunchAfterConfigChange:Z

.field private mRepeatButton:Lcom/htc/widget/HtcImageButton;

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field private mResetDLAlbumArtCount:I

.field private mRewListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

.field mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

.field protected mScanListener:Landroid/content/BroadcastReceiver;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mSeekmethod:I

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mShareBundle:Landroid/os/Bundle;

.field private mShareDRMDialog:Landroid/app/Dialog;

.field private mShareNormaldialog:Landroid/app/Dialog;

.field mShowDialog:Z

.field private mShowEmptyQueue:Z

.field private mShowQueueCount:I

.field private mShuffleButton:Lcom/htc/widget/HtcImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mSoundHoundIntent:Landroid/content/Intent;

.field private mStartActionFinished:Z

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSupportSoundHound:Z

.field public mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

.field private mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

.field private mTextDialog:Landroid/app/Dialog;

.field private mTitle:Lcom/htc/widget/ActionBarText;

.field private mToast:Landroid/widget/Toast;

.field private mTooltipListener:Landroid/view/View$OnClickListener;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

.field private mTrackOptionListener:Landroid/view/View$OnClickListener;

.field private mTrackball:Z

.field private mUINotInit:Z

.field mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

.field mVolumeDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field mVolumeProgress:I

.field mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mWaitDialog:Landroid/app/Dialog;

.field private music_tooltip_preference:Landroid/content/SharedPreferences;

.field private osc:Landroid/content/ServiceConnection;

.field private prevScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/htc/music/HtcMusic;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    .line 169
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/HtcMusic;->mLyricStr:Ljava/lang/String;

    .line 239
    const-string v0, "music_tooltip_perference_key"

    sput-object v0, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 152
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 164
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsLyricPanelInit:Z

    .line 168
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mLyricPath:Ljava/lang/String;

    .line 170
    iput v5, p0, Lcom/htc/music/HtcMusic;->mCurrentSongId:I

    .line 172
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 184
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mActivityStoped:Z

    .line 185
    iput v3, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 186
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 187
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 188
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 192
    iput v3, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    .line 193
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 194
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 195
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    .line 197
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 201
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 202
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 203
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 204
    iput v2, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 205
    iput v3, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 209
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 210
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    .line 211
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 213
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    .line 214
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    .line 234
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    .line 235
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    .line 240
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    .line 245
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 246
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 247
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 249
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 250
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 251
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    .line 252
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    .line 254
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    .line 257
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    .line 258
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    .line 261
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mShareBundle:Landroid/os/Bundle;

    .line 265
    iput v3, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    .line 266
    iput v3, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    .line 268
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 269
    new-instance v0, Lcom/htc/music/HtcMusic$ControllerListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/HtcMusic$ControllerListener;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

    .line 270
    new-instance v0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNAServiceStatusListener:Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    .line 271
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Lcom/htc/music/HtcMusic$DMCServiceListener;

    .line 272
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    .line 273
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    .line 274
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 275
    new-instance v0, Lcom/htc/music/HtcMusic$1;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$1;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 364
    const/16 v0, 0x1770

    iput v0, p0, Lcom/htc/music/HtcMusic;->ANIMATION_TIME_OUT_DURATION:I

    .line 392
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    .line 393
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    .line 394
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    .line 395
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    .line 396
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mWaitDialog:Landroid/app/Dialog;

    .line 399
    iput v5, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 400
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsAutoUpdate:Z

    .line 401
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z

    .line 402
    iput v3, p0, Lcom/htc/music/HtcMusic;->AUTO_UPDATE:I

    .line 403
    iput v2, p0, Lcom/htc/music/HtcMusic;->UPDATE_ALL:I

    .line 404
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/HtcMusic;->UPDATE_CURRENT:I

    .line 408
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    .line 411
    const-string v0, "com.htc.musicenhancer"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_PACKAGE:Ljava/lang/String;

    .line 412
    const-string v0, "com.htc.musicenhancer.EnhancerService"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_SERVICE:Ljava/lang/String;

    .line 415
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    .line 417
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 421
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    .line 423
    iput v3, p0, Lcom/htc/music/HtcMusic;->mPlayAlbumCookie:I

    .line 425
    iput v5, p0, Lcom/htc/music/HtcMusic;->prevScrollState:I

    .line 427
    new-instance v0, Lcom/htc/music/HtcMusic$2;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$2;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 596
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    .line 597
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 598
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/HtcMusic;->mVolumeProgress:I

    .line 714
    new-instance v0, Lcom/htc/music/HtcMusic$6;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$6;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mVolumeDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1128
    new-instance v0, Lcom/htc/music/HtcMusic$7;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$7;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1231
    new-instance v0, Lcom/htc/music/HtcMusic$8;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$8;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 1241
    new-instance v0, Lcom/htc/music/HtcMusic$9;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$9;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 1247
    new-instance v0, Lcom/htc/music/HtcMusic$10;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$10;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1253
    new-instance v0, Lcom/htc/music/HtcMusic$11;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$11;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    .line 1268
    new-instance v0, Lcom/htc/music/HtcMusic$12;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$12;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    .line 1355
    new-instance v0, Lcom/htc/music/HtcMusic$13;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$13;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 1391
    new-instance v0, Lcom/htc/music/HtcMusic$14;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$14;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    .line 1431
    new-instance v0, Lcom/htc/music/HtcMusic$15;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$15;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    .line 1463
    new-instance v0, Lcom/htc/music/HtcMusic$16;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$16;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    .line 1503
    new-instance v0, Lcom/htc/music/HtcMusic$17;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$17;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    .line 1513
    iput v3, p0, Lcom/htc/music/HtcMusic;->mShowQueueCount:I

    .line 1576
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1577
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    .line 1765
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 1963
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 1964
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    .line 2173
    iput v3, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2221
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    .line 2224
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    .line 2831
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    .line 2912
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 2986
    iput v3, p0, Lcom/htc/music/HtcMusic;->avi:I

    .line 3387
    new-instance v0, Lcom/htc/music/HtcMusic$20;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$20;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    .line 3903
    new-instance v0, Lcom/htc/music/HtcMusic$21;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$21;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    .line 4181
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z

    .line 4182
    new-instance v0, Lcom/htc/music/HtcMusic$22;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$22;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 4522
    new-instance v0, Lcom/htc/music/HtcMusic$23;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$23;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 4545
    new-instance v0, Lcom/htc/music/HtcMusic$24;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$24;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCircleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4839
    new-instance v0, Lcom/htc/music/HtcMusic$25;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$25;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 5574
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    .line 5575
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    .line 6446
    iput v3, p0, Lcom/htc/music/HtcMusic;->mResetDLAlbumArtCount:I

    .line 6871
    new-instance v0, Lcom/htc/music/HtcMusic$40;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$40;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    .line 7150
    new-instance v0, Lcom/htc/music/HtcMusic$41;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$41;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mOnScrollSeekListener:Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;

    return-void

    .line 2831
    :array_0
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doPauseResume()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return p1
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/HtcMusic;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/HtcMusic;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startBrowserTabActivity()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput p1, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startAnimationTimer()V

    return-void
.end method

.method static synthetic access$2602(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->stopFFRWScan(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/widget/LyricsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/Lyrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/music/HtcMusic;Lcom/htc/music/lyrics/Lyrics;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initialUI()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/music/HtcMusic;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->changeNowPlayingMode()V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateLyricView()V

    return-void
.end method

.method static synthetic access$5000(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$5002(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput p1, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    return p1
.end method

.method static synthetic access$5102(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/music/HtcMusic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/htc/music/HtcMusic;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->updateTrackInfoP(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$5902(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getCurrentSongId()I

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateLyrics()V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/ActionBarText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/music/HtcMusic;->mPlayAlbumCookie:I

    return v0
.end method

.method static synthetic access$6900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetTimeout()V

    return-void
.end method

.method static synthetic access$7000(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->handleDMCError(I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setRepeatMode(I)V

    return-void
.end method

.method static synthetic access$7200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$7500(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->startAlbumDetail(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->addtoPlaylist()V

    return-void
.end method

.method static synthetic access$7700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doSearch()V

    return-void
.end method

.method static synthetic access$7800(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->searchRelatedWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->chooseShareType()V

    return-void
.end method

.method static synthetic access$8000(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRingtone()V

    return-void
.end method

.method static synthetic access$802(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$8100(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    return v0
.end method

.method static synthetic access$8200(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    return-void
.end method

.method static synthetic access$8400(Lcom/htc/music/HtcMusic;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    return v0
.end method

.method static synthetic access$8600(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsAutoUpdate:Z

    return v0
.end method

.method static synthetic access$8700(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z

    return v0
.end method

.method static synthetic access$8800(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startAutoDownloadAlbum()V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return v0
.end method

.method static synthetic access$9000(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->stopDownloadAlbumArtService()V

    return-void
.end method

.method static synthetic access$902(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput p1, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return p1
.end method

.method static synthetic access$9100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startUpdateAllAlbum()V

    return-void
.end method

.method static synthetic access$9200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetCurrentAlbumArt()V

    return-void
.end method

.method static synthetic access$9300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateCurrentAlbum()V

    return-void
.end method

.method static synthetic access$9400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->dismissWaitDialog()V

    return-void
.end method

.method static synthetic access$9502(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    return p1
.end method

.method static synthetic access$9600(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    return v0
.end method

.method static synthetic access$9602(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->hideLyricView()V

    return-void
.end method

.method static synthetic access$9900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateLyricMenu()V

    return-void
.end method

.method private addtoPlaylist()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2712
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 2714
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2715
    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 2726
    :goto_0
    return-void

    .line 2718
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2719
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2720
    const-string v2, "pickermode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2721
    new-array v0, v4, [I

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v3

    aput v3, v0, v2

    .line 2722
    .local v0, addToPlaylistData:[I
    const-string v2, "AddToPlaylistData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2724
    invoke-virtual {p0, v1, v4}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private animationRefresh()V
    .locals 5

    .prologue
    .line 3711
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3712
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3713
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3714
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3721
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 3717
    :catch_0
    move-exception v0

    .line 3718
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3720
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    goto :goto_0
.end method

.method private attachNowPlayingView()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 5658
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5662
    .local v2, nowPlayingLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    const v3, 0x7f070054

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5663
    .local v0, glanceContainer:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 5664
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 5665
    .local v1, nowPlaying:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5666
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 5668
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v3, :cond_0

    .line 5669
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setVisibility(Z)V

    .line 5671
    .end local v1           #nowPlaying:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private autoUpdateAlbumArt(I)V
    .locals 4
    .parameter "isChecked"

    .prologue
    .line 6319
    const-string v2, "[HtcMusic]"

    const-string v3, "autoUpdateAlbumArt"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6320
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6321
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6322
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "auto_download"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6323
    sget-object v2, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 6324
    return-void
.end method

.method private buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "szExtra"

    .prologue
    .line 4159
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    .line 4160
    .local v2, szTitleInfo:Ljava/lang/String;
    iget v1, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 4161
    .local v1, nDlnaMode:I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 4162
    :cond_0
    if-nez p1, :cond_2

    .line 4165
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getPlayerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4177
    :cond_1
    :goto_0
    return-object v2

    .line 4167
    :catch_0
    move-exception v0

    .line 4168
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4172
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4175
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method private changeNowPlayingMode()V
    .locals 1

    .prologue
    .line 1515
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-nez v0, :cond_0

    .line 1516
    iget v0, p0, Lcom/htc/music/HtcMusic;->mShowQueueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/HtcMusic;->mShowQueueCount:I

    .line 1518
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 1519
    return-void

    .line 1518
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 2750
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 2751
    return-void
.end method

.method private cleanMessage()V
    .locals 2

    .prologue
    .line 4833
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4834
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4836
    :cond_0
    return-void
.end method

.method private closeDMC()V
    .locals 3

    .prologue
    .line 1541
    const-string v1, "[HtcMusic]"

    const-string v2, "DMC power off"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 1544
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1545
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 1557
    :goto_0
    return-void

    .line 1547
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "Current mode is not dmc or push mode, cancel close dmc"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1554
    :catch_0
    move-exception v0

    .line 1555
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1550
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v1, "[HtcMusic]"

    const-string v2, "service is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private createConnectionFailDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 6685
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6686
    .local v2, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x204009d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6687
    new-instance v0, Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    .line 6688
    .local v0, clickListener:Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;
    const v3, 0x2040178

    invoke-virtual {v2, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6689
    const v3, 0x2040152

    new-instance v4, Lcom/htc/music/HtcMusic$39;

    invoke-direct {v4, p0}, Lcom/htc/music/HtcMusic$39;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6696
    const v3, 0x204009e

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6697
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 6698
    .local v1, dialog:Landroid/app/Dialog;
    return-object v1
.end method

.method private createDownloadAlbumArtDialog()Landroid/app/Dialog;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 6139
    const/4 v7, 0x0

    .line 6140
    .local v7, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6141
    .local v0, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6143
    .local v1, dialogView:Landroid/view/View;
    const v3, 0x7f0600b7

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6144
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6145
    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move v3, v2

    move v4, v2

    move v5, v2

    .line 6146
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6147
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    .line 6148
    const v3, 0x7f07004d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListView;

    .line 6150
    .local v10, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v10, v11, v2}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 6151
    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/CharSequence;

    .line 6152
    .local v9, items:[Ljava/lang/CharSequence;
    const v3, 0x7f0600bb

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    .line 6153
    new-instance v6, Lcom/htc/music/HtcMusic$38;

    const v2, 0x7f03001c

    invoke-direct {v6, p0, p0, v2, v9}, Lcom/htc/music/HtcMusic$38;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 6250
    .local v6, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v10, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6251
    new-instance v8, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;

    invoke-direct {v8, p0}, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    .line 6253
    .local v8, itemClickListener:Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;
    invoke-virtual {v10, v8}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 6255
    return-object v7
.end method

.method private createVolumeDialog()V
    .locals 13

    .prologue
    .line 601
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    if-nez v9, :cond_0

    .line 602
    new-instance v9, Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    .line 605
    :cond_0
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0600d0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setTextViewText(ILjava/lang/String;)V

    .line 608
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v9

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 609
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setSeekbarSeekListener(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 610
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setCanceledOnTouchOutside(Z)V

    .line 611
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mVolumeDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 613
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 614
    .local v8, windowSize:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 615
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v6

    .line 616
    .local v6, view:Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 617
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 620
    .local v0, config:Landroid/content/res/Configuration;
    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 621
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-double v9, v9

    const-wide v11, 0x3fc53f7ced916873L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 626
    :goto_0
    const/4 v7, 0x0

    .line 628
    .local v7, volume:I
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 632
    :goto_1
    if-nez v7, :cond_4

    .line 633
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02003b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 634
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 635
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 636
    const/4 v4, 0x1

    .line 637
    .local v4, silent:Z
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 652
    .end local v4           #silent:Z
    :goto_2
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v5

    .line 653
    .local v5, speakerIcon:Landroid/widget/ImageView;
    if-eqz v5, :cond_1

    .line 654
    new-instance v9, Lcom/htc/music/HtcMusic$4;

    invoke-direct {v9, p0}, Lcom/htc/music/HtcMusic$4;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    :cond_1
    new-instance v9, Lcom/htc/music/HtcMusic$5;

    invoke-direct {v9, p0}, Lcom/htc/music/HtcMusic$5;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 710
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->showByGravity(I)V

    .line 711
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetTimeout()V

    .line 712
    return-void

    .line 623
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #speakerIcon:Landroid/widget/ImageView;
    .end local v7           #volume:I
    :cond_2
    iget v9, v8, Landroid/graphics/Point;->y:I

    int-to-double v9, v9

    const-wide v11, 0x3fc53f7ced916873L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 629
    .restart local v7       #volume:I
    :catch_0
    move-exception v2

    .line 630
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 639
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    const-string v9, "[HtcMusic]"

    const-string v10, "zzzz_icon_launcher_profile_silent is null"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 642
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02003c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 643
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    .line 644
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 645
    const/4 v4, 0x0

    .line 646
    .restart local v4       #silent:Z
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 648
    .end local v4           #silent:Z
    :cond_5
    const-string v9, "[HtcMusic]"

    const-string v10, "zzzz_icon_launcher_sound_display is nulll"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private createWaitDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 6956
    const/4 v0, 0x0

    .line 6958
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->dismissWaitDialog()V

    .line 6960
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 6961
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x204027d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6962
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 6964
    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mWaitDialog:Landroid/app/Dialog;

    .line 6966
    return-object v0
.end method

.method private cycleRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3251
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 3274
    :goto_0
    return-void

    .line 3255
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 3256
    .local v0, mode:I
    if-nez v0, :cond_1

    .line 3257
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3258
    const v1, 0x7f060045

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3270
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    goto :goto_0

    .line 3271
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3259
    .restart local v0       #mode:I
    :cond_1
    if-ne v0, v2, :cond_3

    .line 3260
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3261
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3262
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3263
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 3265
    :cond_2
    const v1, 0x7f060044

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    .line 3267
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3268
    const v1, 0x7f060043

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private detachNowPlayingView()V
    .locals 3

    .prologue
    .line 5674
    const v2, 0x7f070054

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5675
    .local v0, glanceContainer:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 5676
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 5678
    .local v1, nowPlayingIndex:I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 5681
    .end local v1           #nowPlayingIndex:I
    :cond_0
    return-void
.end method

.method private dismissWaitDialog()V
    .locals 2

    .prologue
    .line 6970
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6971
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3a9d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6974
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 6975
    const-string v0, "[HtcMusic]"

    const-string v1, "dismissWaitDialog, dismiss waiting dialog."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6976
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6978
    :cond_1
    return-void
.end method

.method private doPauseResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 3188
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 3189
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3190
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->pauseAsync()V

    .line 3191
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z

    .line 3192
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 3211
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 3215
    :cond_0
    :goto_1
    return-void

    .line 3194
    :cond_1
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3197
    .local v0, isMirrorPlayOnTV:Z
    :goto_2
    if-eqz v0, :cond_3

    .line 3198
    const-string v3, "[HtcMusic]"

    const-string v4, "doPauseResume TV is on"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3199
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V

    goto :goto_1

    .line 3213
    .end local v0           #isMirrorPlayOnTV:Z
    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    move v0, v3

    .line 3194
    goto :goto_2

    .line 3203
    .restart local v0       #isMirrorPlayOnTV:Z
    :cond_3
    const-string v3, "[HtcMusic]"

    const-string v4, "doPauseResume TV is off"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->playAsync()V

    .line 3205
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z

    .line 3206
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v1

    .line 3207
    .local v1, next:J
    invoke-direct {p0, v1, v2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private doSearch()V
    .locals 2

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    return-void
.end method

.method private doStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1767
    const-string v4, "[HtcMusic]"

    const-string v5, "[HtcMusic][doStart Begin]"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    const/16 v4, 0x12

    iput v4, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 1770
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    if-eqz v4, :cond_0

    .line 1839
    :goto_0
    return-void

    .line 1771
    :cond_0
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 1775
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1776
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 1777
    const-string v4, "directmode"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 1778
    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get intent directmode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_2

    .line 1782
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1784
    :cond_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1785
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1786
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1788
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1789
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1794
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1795
    .local v2, f2:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1796
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1797
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1798
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1799
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1801
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1802
    .local v1, f:Landroid/content/IntentFilter;
    const-string v4, "com.htc.music.playstatechanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1803
    const-string v4, "com.htc.music.metachanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1804
    const-string v4, "com.htc.music.playbackcomplete"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1805
    const-string v4, "com.htc.music.rotateleft"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1806
    const-string v4, "skip_prev"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1807
    const-string v4, "com.htc.music.rotateright"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1808
    const-string v4, "com.htc.music.rotatequickly"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1809
    const-string v4, "com.htc.music.queuechanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1810
    const-string v4, "com.htc.music.refresh"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1811
    const-string v4, "com.htc.music.changeart"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1812
    const-string v4, "com.htc.music.onerror"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1813
    const-string v4, "com.android.music.settingchanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1814
    const-string v4, "com.htc.music.update_glider_position"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1815
    const-string v4, "com.htc.music.switchdlnamode"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1816
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v4, v5}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1820
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1821
    .local v0, dlArtFilter:Landroid/content/IntentFilter;
    const-string v4, "action_complete_one_download"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1822
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1824
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 1825
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z

    .line 1826
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1828
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1829
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_4

    .line 1830
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1834
    :cond_4
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v4, :cond_5

    .line 1835
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 1838
    :cond_5
    const-string v4, "[HtcMusic]"

    const-string v5, "[HtcMusic][doStart End]"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private genLyricsByCurrentMusicMode(Z)Lcom/htc/music/lyrics/Lyrics;
    .locals 2
    .parameter "isOnlineMode"

    .prologue
    .line 7212
    const/4 v0, 0x0

    .line 7213
    .local v0, lyrics:Lcom/htc/music/lyrics/Lyrics;
    if-eqz p1, :cond_0

    .line 7225
    :goto_0
    return-object v0

    .line 7223
    :cond_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/music/lyrics/LyricGenerator;->genLyrics(Ljava/lang/String;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentLyricPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7073
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 7074
    const/4 v2, 0x0

    .line 7090
    :cond_0
    :goto_0
    return-object v2

    .line 7076
    :cond_1
    const-string v2, ""

    .line 7077
    .local v2, lyricPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7078
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 7080
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v3

    iput v3, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 7081
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v3

    iput v3, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 7082
    iget v3, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {v0, v3}, Lcom/htc/music/lyrics/QueryLyric;->QueryFromId(Landroid/content/ContentResolver;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 7084
    :catch_0
    move-exception v1

    .line 7086
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentSongId()I
    .locals 3

    .prologue
    .line 7094
    const/4 v1, 0x0

    .line 7095
    .local v1, songId:I
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 7096
    const/4 v2, 0x0

    .line 7107
    :goto_0
    return v2

    .line 7099
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v2, v1

    .line 7107
    goto :goto_0

    .line 7102
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 7104
    :catch_0
    move-exception v0

    .line 7105
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;
    .locals 3

    .prologue
    .line 7230
    invoke-static {}, Lcom/htc/music/lyrics/LyricGenerator;->getCurrentLyrics()Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    .line 7231
    .local v0, lyrics:Lcom/htc/music/lyrics/Lyrics;
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getCurrentSongId()I

    move-result v1

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSongId:I

    .line 7232
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getCurrentLyricPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPath:Ljava/lang/String;

    .line 7234
    if-nez v0, :cond_2

    .line 7235
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->genLyricsByCurrentMusicMode(Z)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    .line 7283
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 7284
    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSongId:I

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/Lyrics;->setCurrentSongId(I)V

    .line 7286
    :cond_1
    return-object v0

    .line 7237
    :cond_2
    invoke-virtual {v0}, Lcom/htc/music/lyrics/Lyrics;->getCurrentSongId()I

    move-result v1

    iget v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSongId:I

    if-eq v1, v2, :cond_0

    .line 7238
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->genLyricsByCurrentMusicMode(Z)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    goto :goto_0
.end method

.method private getShareIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;
    .locals 6
    .parameter "bundle"
    .parameter "isUseCommonText"

    .prologue
    .line 7325
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7326
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "text/plain"

    .line 7327
    .local v2, type:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 7328
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7329
    const/4 v1, 0x0

    .line 7330
    .local v1, text:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 7331
    const-string v3, "use_common_text"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7332
    const-string v3, "music.intent.extra.track"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "music.intent.extra.album"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "music.intent.extra.artist"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7334
    if-nez v1, :cond_0

    .line 7335
    const-string v1, ""

    .line 7338
    :cond_0
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7339
    return-object v0
.end method

.method private getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSong;
    .locals 8
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 7291
    const/4 v3, 0x0

    .line 7292
    .local v3, albumid:I
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 7294
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 7299
    :cond_0
    :goto_0
    const-string v4, ""

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/online/Util;->getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v7

    .line 7300
    .local v7, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    return-object v7

    .line 7295
    .end local v7           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :catch_0
    move-exception v6

    .line 7296
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleDMCError(I)V
    .locals 3
    .parameter "errorId"

    .prologue
    const/16 v1, 0x18

    const/4 v2, 0x1

    .line 6624
    packed-switch p1, :pswitch_data_0

    .line 6674
    const-string v0, "[HtcMusic]"

    const-string v1, "handle dmc error - unknown error"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6675
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    .line 6681
    :goto_0
    return-void

    .line 6626
    :pswitch_0
    const v0, 0x7f060054

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6627
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 6632
    :pswitch_1
    const v0, 0x7f0600b2

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6633
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 6638
    :pswitch_2
    const v0, 0x7f0600b3

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6639
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 6644
    :pswitch_3
    const v0, 0x7f0600ae

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6645
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 6650
    :pswitch_4
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6651
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 6653
    :cond_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 6659
    :pswitch_5
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6660
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 6662
    :cond_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 6668
    :pswitch_6
    const v0, 0x7f0600b1

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6669
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 6624
    nop

    :pswitch_data_0
    .packed-switch -0x2717
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTVReadyToPlay()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 6892
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v5, :cond_0

    .line 6935
    :goto_0
    return-void

    .line 6896
    :cond_0
    const/4 v1, 0x0

    .line 6897
    .local v1, isDMCOrPush:Z
    const/4 v2, 0x0

    .line 6899
    .local v2, isQueueEmpty:Z
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    .line 6900
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 6901
    .local v4, queueLength:I
    if-gtz v4, :cond_1

    .line 6902
    const/4 v2, 0x1

    .line 6908
    .end local v4           #queueLength:I
    :cond_1
    :goto_1
    const-string v5, "[HtcMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTVReadyToPlay, isDMCOrPush: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6910
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 6913
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_2

    .line 6914
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3a9d

    const-wide/16 v7, 0x258

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6917
    :cond_2
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    if-nez v5, :cond_3

    .line 6918
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    .line 6919
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

    invoke-virtual {v5, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 6920
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mDLNAServiceStatusListener:Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    invoke-virtual {v5, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    goto :goto_0

    .line 6904
    :catch_0
    move-exception v0

    .line 6905
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 6922
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    new-instance v3, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v3}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 6923
    .local v3, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iput v10, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 6924
    const-string v5, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 6925
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 6926
    const-string v5, "HtcMusic"

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 6928
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v5, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 6930
    iput-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    goto :goto_0

    .line 6933
    .end local v3           #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_4
    iput-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    goto :goto_0
.end method

.method private hideLyricView()V
    .locals 2

    .prologue
    .line 7009
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    .line 7014
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    .line 7015
    return-void
.end method

.method private initConstant()V
    .locals 3

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 874
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 875
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 876
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    .line 877
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    .line 887
    return-void
.end method

.method private initGlider()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 863
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-nez v0, :cond_0

    .line 864
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 865
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 868
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 870
    :cond_0
    return-void
.end method

.method private initLyricView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7027
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-nez v1, :cond_1

    .line 7070
    :cond_0
    :goto_0
    return-void

    .line 7030
    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-nez v1, :cond_2

    .line 7031
    const-string v1, "[HtcMusic]"

    const-string v2, "mPresentation is null when initLyricView"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7035
    :cond_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-nez v1, :cond_3

    .line 7037
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_5

    .line 7038
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7046
    .local v0, lyricLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    new-instance v1, Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-direct {v1, p0, v0}, Lcom/htc/music/lyrics/widget/LyricsView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;)V

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    .line 7047
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mOnScrollSeekListener:Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;

    invoke-virtual {v1, v2}, Lcom/htc/music/lyrics/widget/LyricsView;->setOnScrollSeekListener(Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;)V

    .line 7050
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    if-eqz v1, :cond_6

    .line 7051
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    .line 7055
    :goto_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 7058
    .end local v0           #lyricLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsLyricPanelInit:Z

    if-nez v1, :cond_0

    .line 7059
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-eqz v1, :cond_4

    .line 7060
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v1}, Lcom/htc/music/lyrics/widget/LyricsView;->initEnv()V

    .line 7061
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsLyricPanelInit:Z

    .line 7064
    :cond_4
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 7065
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 7042
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0       #lyricLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 7053
    :cond_6
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    goto :goto_2
.end method

.method private initPlayerInfo()V
    .locals 7

    .prologue
    .line 936
    const v2, 0x7f070010

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    .line 937
    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    .line 939
    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    .line 940
    const v2, 0x7f07002b

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    .line 942
    const v2, 0x7f070046

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRimImageButton;

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    .line 944
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v2, :cond_0

    .line 945
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v3, "common_b_circle_outer"

    const v4, 0x2080007

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "common_b_circle_pressed"

    const v5, 0x2080008

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_b_circle_rest"

    const v6, 0x2080009

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 949
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    const v3, 0x7f020023

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 950
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    :cond_0
    const v2, 0x7f070058

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSeekBar;

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    .line 954
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030044

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 955
    .local v1, popupContent:Landroid/view/View;
    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    .line 956
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;-><init>(Landroid/content/Context;)V

    .line 957
    .local v0, mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBarPopupWindowListener;
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setContentView(Landroid/view/View;)V

    .line 958
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcSeekBar;->setHtcSeekBarPopupWindowListener(Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;)V

    .line 959
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 961
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 962
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSeekBar;->setDisplayMode(I)V

    .line 965
    const v2, 0x7f070055

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    .line 966
    return-void
.end method

.method private initPresentation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 895
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-nez v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-nez v0, :cond_1

    .line 905
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 907
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 909
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setAlpha(I)V

    .line 910
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setEdgeItemScrollRatio(F)V

    .line 911
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setOnSelectionChangeListener(Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;)V

    .line 912
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setOnStateListener(Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;)V

    .line 913
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledReflection(Z)V

    .line 914
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setShiftOneItemMode(Z)V

    .line 916
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-nez v0, :cond_2

    .line 926
    new-instance v0, Lcom/htc/music/GliderAdapter;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/GliderAdapter;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 928
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;)V

    .line 929
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setOnLayoutListener(Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;)V

    goto :goto_0

    .line 931
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->reload()V

    goto :goto_0
.end method

.method private initTaskbar()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x104

    const v8, 0x2080016

    const v7, 0x2080015

    const v6, 0x2080014

    const/4 v5, 0x0

    .line 971
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/RepeatingImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    .line 972
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-eqz v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    const v1, 0x20800c0

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setIconResource(I)V

    .line 975
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    const-string v1, "common_b_transport_outer"

    invoke-static {p0, v1, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_b_transport_pressed"

    invoke-static {p0, v2, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "common_b_transport_rest"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/widget/RepeatingImageButton;->setButtonBackgroundResource(III)V

    .line 980
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v9, v10}, Lcom/htc/music/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;J)V

    .line 988
    :cond_0
    :goto_0
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    .line 989
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_3

    .line 990
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v1, "common_b_transport_large_outer"

    const v2, 0x208011b

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_b_transport_large_pressed"

    const v3, 0x208011c

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "common_b_transport_large_rest"

    const v4, 0x208011d

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 994
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimImageButton;->requestFocus()Z

    .line 995
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1001
    :goto_1
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/RepeatingImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    .line 1002
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-eqz v0, :cond_4

    .line 1003
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1004
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    const v1, 0x20800b4

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setIconResource(I)V

    .line 1005
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    const-string v1, "common_b_transport_outer"

    invoke-static {p0, v1, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_b_transport_pressed"

    invoke-static {p0, v2, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "common_b_transport_rest"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/widget/RepeatingImageButton;->setButtonBackgroundResource(III)V

    .line 1010
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v9, v10}, Lcom/htc/music/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;J)V

    .line 1018
    :cond_1
    :goto_2
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    .line 1019
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_5

    .line 1020
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcImageButton;->setFocusable(Z)V

    .line 1022
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 1027
    :goto_3
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    .line 1028
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_6

    .line 1029
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1030
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcImageButton;->setFocusable(Z)V

    .line 1031
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 1035
    :goto_4
    return-void

    .line 985
    :cond_2
    const-string v0, "[HtcMusic]"

    const-string v1, "can\u02bct find prev button is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 998
    :cond_3
    const-string v0, "[HtcMusic]"

    const-string v1, "can\u02bct find play/pause button is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1015
    :cond_4
    const-string v0, "[HtcMusic]"

    const-string v1, "can\u02bct find next button is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1024
    :cond_5
    const-string v0, "[HtcMusic]"

    const-string v1, "initRightpanel, mShuffleButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1033
    :cond_6
    const-string v0, "[HtcMusic]"

    const-string v1, "initRightpanel, mRepeatButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private initTitleBar()V
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1045
    :cond_0
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    .line 1047
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 1048
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 1050
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 1056
    const-string v0, " "

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1061
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initialUI()V
    .locals 12

    .prologue
    const/16 v11, 0x6c

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 1966
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-nez v7, :cond_0

    .line 1967
    const-string v7, "[HtcMusic]"

    const-string v8, "mNonUiHandler is null, this means activity should be destroyed!! return directly"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    :goto_0
    return-void

    .line 1972
    :cond_0
    const v7, 0x7f070054

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1973
    .local v2, mainContainer:Landroid/view/View;
    if-nez v2, :cond_1

    .line 1974
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1975
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v7, 0x7f030023

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1976
    const v7, 0x7f070026

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1977
    .local v0, group:Landroid/view/ViewGroup;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1983
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    .line 1984
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    .line 1985
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    .line 1987
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    .line 1988
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    .line 1991
    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    :cond_1
    const/16 v7, 0x12

    iput v7, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 1993
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 1994
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z

    .line 1995
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1997
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 1998
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 1999
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 2000
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 2002
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    .line 2003
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    .line 2005
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v3

    .line 2006
    .local v3, next:J
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_2

    .line 2008
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2009
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z

    .line 2010
    invoke-direct {p0, v3, v4}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v7, :cond_3

    .line 2017
    new-instance v5, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v5}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 2018
    .local v5, phadeIn:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    new-instance v6, Lcom/htc/music/HtcMusic$PhadeAnimationListener;

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/music/HtcMusic$PhadeAnimationListener;-><init>(Lcom/htc/sunnyCore/view/SView;Landroid/os/Handler;Z)V

    .line 2019
    .local v6, phadeInAnimation:Lcom/htc/music/HtcMusic$PhadeAnimationListener;
    invoke-virtual {v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 2020
    const/16 v7, 0xff

    invoke-virtual {v5, v10, v7}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 2021
    const-wide/16 v7, 0x12c

    invoke-virtual {v5, v7, v8}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 2023
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v7, v5}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 2026
    .end local v5           #phadeIn:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .end local v6           #phadeInAnimation:Lcom/htc/music/HtcMusic$PhadeAnimationListener;
    :cond_3
    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/16 v9, 0x12c

    invoke-static {v2, v7, v8, v10, v9}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    .line 2027
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 2028
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v11, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2012
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private isOnlineMode()Z
    .locals 1

    .prologue
    .line 6993
    const/4 v0, 0x0

    return v0
.end method

.method private launchDMR(IZ)V
    .locals 4
    .parameter "directMode"
    .parameter "autoSearch"

    .prologue
    .line 1301
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1303
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 1304
    const-string v2, "com.htc.dmc.ACTION_AUTO_SEARCH_RENDERER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    const-string v2, "cookie"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1312
    :goto_0
    const-string v2, "directmode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1315
    const/16 v2, 0x25

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    :goto_1
    return-void

    .line 1308
    :cond_0
    const-string v2, "com.htc.dmc"

    const-string v3, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    const-string v2, "cookie"

    const-string v3, "HtcMusic"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    const-string v3, "launchDMR, start DMR list activity fail"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private launchProperty()V
    .locals 2

    .prologue
    .line 2799
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 2800
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2802
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2803
    const-class v1, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2804
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 2809
    :goto_0
    return-void

    .line 2806
    :cond_0
    const-class v1, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2807
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onActionMenuSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2425
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    move v5, v6

    .line 2500
    :goto_0
    return v5

    .line 2428
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->closeDMC()V

    goto :goto_0

    .line 2432
    :sswitch_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 2433
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3a9a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2435
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->changeNowPlayingMode()V

    goto :goto_0

    .line 2447
    :sswitch_2
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    if-nez v7, :cond_1

    .line 2448
    const-string v7, "[HtcMusic]"

    const-string v8, "mSoundHoundIntent is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2449
    goto :goto_0

    .line 2452
    :cond_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2453
    :catch_0
    move-exception v2

    .line 2454
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "[HtcMusic]"

    const-string v7, "can\'t find SoundHound activity!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2459
    .end local v2           #e:Ljava/lang/Exception;
    :sswitch_3
    new-array v1, v5, [Ljava/lang/String;

    .line 2460
    .local v1, dataPathArray:[Ljava/lang/String;
    iget v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v7}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 2461
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 2462
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 2463
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2464
    const-string v7, "_data"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 2465
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2466
    const/4 v0, 0x0

    .line 2473
    :cond_2
    new-instance v4, Ljava/lang/String;

    const-string v6, "com.htc.vmm.service.VMMEngineService"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2475
    .local v4, szAction:Ljava/lang/String;
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "upload"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2476
    :catch_1
    move-exception v3

    .line 2478
    .local v3, ex:Ljava/lang/SecurityException;
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "We do not have permission to start the service :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2468
    .end local v3           #ex:Ljava/lang/SecurityException;
    .end local v4           #szAction:Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2469
    const/4 v0, 0x0

    .line 2470
    goto/16 :goto_0

    .line 2484
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #dataPathArray:[Ljava/lang/String;
    :sswitch_4
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v6}, Lcom/htc/music/lyrics/widget/LyricsView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 2485
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->hideLyricView()V

    .line 2493
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateLyricMenu()V

    goto/16 :goto_0

    .line 2488
    :cond_5
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showLyricView()V

    .line 2489
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;

    move-result-object v6

    if-nez v6, :cond_4

    .line 2490
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateLyrics()V

    goto :goto_1

    .line 2425
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_3
        0x2c -> :sswitch_1
        0x2d -> :sswitch_2
        0x2e -> :sswitch_0
        0x2f -> :sswitch_4
    .end sparse-switch
.end method

.method private onCreateActionMenu(Landroid/view/Menu;)V
    .locals 12
    .parameter "menu"

    .prologue
    const/16 v11, 0x2f

    const/16 v10, 0x2c

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2252
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2253
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 2298
    :cond_0
    :goto_0
    return-void

    .line 2255
    :cond_1
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2256
    .local v1, lyric:Landroid/view/MenuItem;
    if-nez v1, :cond_0

    .line 2260
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    .line 2262
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    .line 2263
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const/high16 v5, 0x1400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2264
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v5, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v6, "htc"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2265
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v5, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2266
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-static {p0, v4}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 2267
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-nez v4, :cond_2

    .line 2268
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v5, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2269
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-static {p0, v4}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 2271
    :cond_2
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-eqz v4, :cond_3

    .line 2272
    const/16 v4, 0x2d

    const v5, 0x7f0600da

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02003e

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2277
    :cond_3
    const v4, 0x7f0600bd

    invoke-interface {p1, v7, v10, v9, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020026

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2279
    .local v3, queue:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-nez v4, :cond_4

    .line 2280
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 2284
    :cond_4
    const v4, 0x7f0600e7

    invoke-interface {p1, v7, v11, v9, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020022

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2286
    .local v2, menuItem_lyric:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-nez v4, :cond_5

    .line 2287
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 2291
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2292
    const/16 v4, 0x2e

    const v5, 0x7f0600be

    invoke-interface {p1, v7, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x20800a3

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0
.end method

.method private onPrepareActionMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2301
    const/16 v4, 0x2c

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2302
    .local v3, queue:Landroid/view/MenuItem;
    if-nez v3, :cond_1

    .line 2303
    const-string v4, "[HtcMusic]"

    const-string v5, "can\'t find queue menu item!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    :cond_0
    :goto_0
    return-void

    .line 2308
    :cond_1
    const/16 v4, 0x2f

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2309
    .local v2, lyric:Landroid/view/MenuItem;
    if-nez v2, :cond_2

    .line 2310
    const-string v4, "[HtcMusic]"

    const-string v5, "can\'t find lyric menu item!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2315
    :cond_2
    iget v1, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 2316
    .local v1, dlnaMode:I
    if-nez v1, :cond_5

    .line 2317
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_4

    .line 2318
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2326
    :goto_1
    const/16 v4, 0x2e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2327
    .local v0, close:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2328
    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    .line 2330
    :cond_3
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2320
    .end local v0           #close:Landroid/view/MenuItem;
    :cond_4
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2323
    :cond_5
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2332
    .restart local v0       #close:Landroid/view/MenuItem;
    :cond_6
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private onServiceConnectedHandle()V
    .locals 14

    .prologue
    .line 3436
    const-string v11, "[HtcMusic]"

    const-string v12, "onServiceConnectedHandle() + "

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3437
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v11, :cond_1

    .line 3599
    :cond_0
    :goto_0
    return-void

    .line 3438
    :cond_1
    iget-boolean v11, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    if-nez v11, :cond_0

    .line 3440
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-eqz v11, :cond_2

    .line 3441
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 3445
    :cond_2
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v11, :cond_3

    .line 3446
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3451
    :cond_3
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v11

    iput v11, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 3454
    iget v11, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eqz v11, :cond_4

    iget v11, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 3458
    :cond_4
    iget v11, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    if-eqz v11, :cond_b

    .line 3459
    const-string v11, "[HtcMusic]"

    const-string v12, "Enter DirectMode ..."

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3461
    iget v11, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    .line 3463
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 3464
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 3465
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_5

    .line 3466
    const-string v11, "directmode"

    iget v12, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3473
    .end local v4           #intent:Landroid/content/Intent;
    :cond_5
    :goto_1
    iget-boolean v11, p0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 3474
    iget v11, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    packed-switch v11, :pswitch_data_0

    .line 3524
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 3525
    .local v5, intent1:Landroid/content/Intent;
    const-string v3, ""

    .line 3526
    .local v3, filename:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 3527
    .local v10, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3528
    .local v6, isDRM:Z
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    .line 3529
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 3530
    .local v9, scheme:Ljava/lang/String;
    const-string v11, "file"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 3531
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 3541
    :goto_3
    :try_start_0
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3542
    .local v0, curPath:Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 3543
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 3549
    .end local v0           #curPath:Ljava/lang/String;
    :cond_7
    :goto_4
    iget-boolean v11, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    if-nez v11, :cond_8

    .line 3550
    if-eqz v3, :cond_8

    const-string v11, "content://drm/"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 3551
    const/4 v6, 0x1

    .line 3557
    .end local v9           #scheme:Ljava/lang/String;
    :cond_8
    if-eqz v6, :cond_f

    .line 3558
    iget-boolean v11, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    if-nez v11, :cond_e

    if-eqz v10, :cond_e

    .line 3559
    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->checkDrmFile(Landroid/net/Uri;)V

    .line 3574
    :cond_9
    :goto_5
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    .line 3576
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v11, :cond_a

    .line 3577
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3578
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    const-string v12, "common_app_bkg"

    const v13, 0x2080001

    invoke-static {p0, v12, v13}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setGlobalBackgroundResource(I)V

    .line 3598
    :cond_a
    :goto_6
    const-string v11, "[HtcMusic]"

    const-string v12, "onServiceConnectedHandle() - "

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3469
    .end local v3           #filename:Ljava/lang/String;
    .end local v5           #intent1:Landroid/content/Intent;
    .end local v6           #isDRM:Z
    .end local v10           #uri:Landroid/net/Uri;
    :cond_b
    const-string v11, "[HtcMusic]"

    const-string v12, "Not DirectMode, normal ..."

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3477
    :pswitch_0
    :try_start_1
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/htc/music/IMediaPlaybackService;->switchMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 3478
    :catch_0
    move-exception v1

    .line 3479
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3485
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 3486
    :cond_c
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/htc/music/IMediaPlaybackService;->switchMode(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 3488
    :catch_1
    move-exception v2

    .line 3489
    .local v2, ex:Landroid/os/RemoteException;
    const-string v11, "[HtcMusic]"

    const-string v12, "onServiceConnectedHandle remote exception switch"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3494
    .end local v2           #ex:Landroid/os/RemoteException;
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 3496
    :try_start_3
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v11

    if-nez v11, :cond_6

    .line 3497
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->switchToPush(Landroid/content/Context;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 3499
    :catch_2
    move-exception v1

    .line 3500
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v11, "[HtcMusic]"

    const-string v12, "DLNA_PUSH RemoteException in mService.isDmcOrPushMode()"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3501
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3505
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 3507
    const/4 v11, 0x0

    :try_start_4
    iput-object v11, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 3508
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v11

    if-nez v11, :cond_6

    .line 3509
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->switchToDmc(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 3511
    :catch_3
    move-exception v1

    .line 3512
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v11, "[HtcMusic]"

    const-string v12, "DLNA_DMC RemoteException in mService.isDmcOrPushMode()"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3533
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v5       #intent1:Landroid/content/Intent;
    .restart local v6       #isDRM:Z
    .restart local v9       #scheme:Ljava/lang/String;
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_d
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 3545
    :catch_4
    move-exception v1

    .line 3546
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 3561
    .end local v1           #e:Ljava/lang/Exception;
    .end local v9           #scheme:Ljava/lang/String;
    :cond_e
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    .line 3563
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v7

    .line 3565
    .local v7, next:J
    :try_start_5
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 3566
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z

    .line 3567
    invoke-direct {p0, v7, v8}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_5

    .line 3569
    :catch_5
    move-exception v2

    .line 3570
    .local v2, ex:Ljava/lang/Exception;
    const-string v11, "[HtcMusic]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isDRM... Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3582
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v7           #next:J
    :cond_f
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 3592
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v11, :cond_a

    .line 3593
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 3594
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 3474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z
    .locals 5
    .parameter "lyrics"

    .prologue
    const/4 v1, 0x0

    .line 7129
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-nez v2, :cond_0

    .line 7130
    const-string v2, "[HtcMusic]"

    const-string v3, "[openLyrics]mLyricPanel = null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7147
    :goto_0
    return v1

    .line 7133
    :cond_0
    if-nez p1, :cond_1

    .line 7135
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v1}, Lcom/htc/music/lyrics/widget/LyricsView;->showEmptyView()V

    .line 7147
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 7138
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/lyrics/Lyrics;->setCurrentPos(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7143
    :goto_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v2, p1}, Lcom/htc/music/lyrics/widget/LyricsView;->initLyricsView(Lcom/htc/music/lyrics/Lyrics;)Z

    .line 7144
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {p1}, Lcom/htc/music/lyrics/Lyrics;->getCurrentPos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->drawLyrics(JZ)J

    goto :goto_1

    .line 7139
    :catch_0
    move-exception v0

    .line 7141
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private queryUpdateAlbumArtSetting()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 6327
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "auto_download"

    aput-object v0, v2, v8

    .line 6328
    .local v2, mSettingColumns:[Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6332
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6333
    const-string v0, "auto_download"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    move v0, v7

    .line 6338
    :goto_0
    if-eqz v6, :cond_0

    .line 6339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6336
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v8

    .line 6333
    goto :goto_0

    .line 6338
    :cond_2
    if-eqz v6, :cond_3

    .line 6339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 6336
    goto :goto_1

    .line 6338
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 6339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6338
    :cond_4
    throw v0
.end method

.method private queueNextRefresh(J)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 3785
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mActivityStoped:Z

    if-nez v1, :cond_1

    .line 3786
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3787
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3788
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3789
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3794
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 3792
    :cond_1
    const-string v1, "[HtcMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not queue refresh due to mPlaybackPaused:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mActivityStoped:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mActivityStoped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshNow()J
    .locals 23

    .prologue
    .line 3797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 3798
    const-wide/16 v14, 0x1f4

    .line 3900
    :cond_0
    :goto_0
    return-wide v14

    .line 3800
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-gez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v8

    .line 3802
    .local v8, pos:J
    :goto_1
    const-wide/16 v4, -0x1

    .line 3804
    .local v4, nextLyricTime:J
    const-wide/16 v19, 0x0

    cmp-long v19, v8, v19

    if-ltz v19, :cond_b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_b

    .line 3807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getScrollY()I

    move-result v19

    if-lez v19, :cond_2

    .line 3808
    const-string v19, "[HtcMusic]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Time escpae: scrollX = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getScrollX()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", scrollY = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getScrollY()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->scrollTo(II)V

    .line 3815
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x3e8

    div-long v20, v8, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getScrollY()I

    move-result v19

    if-lez v19, :cond_3

    .line 3819
    const-string v19, "[HtcMusic]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Time left: scrollX = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getScrollX()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", scrollY = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getScrollY()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->scrollTo(II)V

    .line 3830
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    const-wide/16 v21, 0x3e8

    div-long v21, v8, v21

    sub-long v10, v19, v21

    .line 3832
    .local v10, remain:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v21, 0x0

    cmp-long v21, v10, v21

    if-lez v21, :cond_9

    .end local v10           #remain:J
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3836
    const-wide/16 v19, 0x3e8

    mul-long v6, v19, v8

    .line 3837
    .local v6, number:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    move-wide/from16 v20, v0

    cmp-long v20, v6, v20

    if-lez v20, :cond_a

    .end local v6           #number:J
    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    move-wide/from16 v20, v0

    div-long v20, v6, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 3840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 3841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/music/IMediaPlaybackService;->getBufferingPercent()I

    move-result v20

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x64

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    .line 3845
    :cond_4
    invoke-static {}, Lcom/htc/music/lyrics/LyricGenerator;->getCurrentLyrics()Lcom/htc/music/lyrics/Lyrics;

    move-result-object v3

    .line 3847
    .local v3, lyrics:Lcom/htc/music/lyrics/Lyrics;
    if-eqz v3, :cond_6

    .line 3848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 3849
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v3}, Lcom/htc/music/lyrics/Lyrics;->getLyricType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 3851
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v8, v9, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->drawLyrics(JZ)J

    move-result-wide v4

    .line 3852
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-gtz v19, :cond_6

    .line 3853
    const-wide/16 v4, -0x1

    .line 3869
    .end local v3           #lyrics:Lcom/htc/music/lyrics/Lyrics;
    :cond_6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->setProgressTimeIndicator()V

    .line 3873
    const-wide/16 v19, 0x3e8

    const-wide/16 v21, 0x3e8

    rem-long v21, v8, v21

    sub-long v12, v19, v21

    .line 3874
    .local v12, remaining:J
    const-wide/16 v14, 0x0

    .line 3879
    .local v14, remainingRet:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/HtcSeekBar;->getWidth()I

    move-result v18

    .line 3880
    .local v18, width:I
    if-nez v18, :cond_7

    const/16 v18, 0x140

    .line 3881
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    move-wide/from16 v19, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v21, v0

    div-long v16, v19, v21

    .line 3883
    .local v16, smoothrefreshtime:J
    cmp-long v19, v16, v12

    if-lez v19, :cond_d

    .line 3884
    move-wide v14, v12

    .line 3891
    :goto_5
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-lez v19, :cond_0

    .line 3892
    cmp-long v19, v14, v4

    if-ltz v19, :cond_0

    move-wide v14, v4

    goto/16 :goto_0

    .line 3800
    .end local v4           #nextLyricTime:J
    .end local v8           #pos:J
    .end local v12           #remaining:J
    .end local v14           #remainingRet:J
    .end local v16           #smoothrefreshtime:J
    .end local v18           #width:I
    :cond_8
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto/16 :goto_1

    .line 3832
    .restart local v4       #nextLyricTime:J
    .restart local v8       #pos:J
    .restart local v10       #remain:J
    :cond_9
    const-wide/16 v10, 0x0

    goto/16 :goto_2

    .line 3837
    .end local v10           #remain:J
    .restart local v6       #number:J
    :cond_a
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    goto/16 :goto_3

    .line 3859
    .end local v6           #number:J
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "--:--"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "--:--"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 3863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 3864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_4

    .line 3897
    .end local v4           #nextLyricTime:J
    .end local v8           #pos:J
    :catch_0
    move-exception v19

    .line 3900
    :goto_6
    const-wide/16 v14, 0x1f4

    goto/16 :goto_0

    .line 3866
    .restart local v4       #nextLyricTime:J
    .restart local v8       #pos:J
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    move-object/from16 v19, v0

    const/16 v20, 0x3e8

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    .line 3898
    .end local v4           #nextLyricTime:J
    .end local v8           #pos:J
    :catch_1
    move-exception v19

    goto :goto_6

    .line 3885
    .restart local v4       #nextLyricTime:J
    .restart local v8       #pos:J
    .restart local v12       #remaining:J
    .restart local v14       #remainingRet:J
    .restart local v16       #smoothrefreshtime:J
    .restart local v18       #width:I
    :cond_d
    const-wide/16 v19, 0x14

    cmp-long v19, v16, v19

    if-gez v19, :cond_e

    .line 3886
    const-wide/16 v14, 0x14

    goto :goto_5

    .line 3888
    :cond_e
    move-wide/from16 v14, v16

    goto :goto_5
.end method

.method private registerTVDisplayHelper()V
    .locals 3

    .prologue
    .line 1668
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-nez v1, :cond_0

    .line 1669
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 1675
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1676
    .local v0, fDLNA:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.triggerplayinlibrary"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1677
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1678
    return-void

    .line 1672
    .end local v0           #fDLNA:Landroid/content/IntentFilter;
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "registerTVDisplayHelper, already register it, ignore this time."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseTVDisplayHelper()V
    .locals 2

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    .line 1683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 1690
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    :goto_1
    return-void

    .line 1686
    :cond_0
    const-string v0, "[HtcMusic]"

    const-string v1, "releaseTVDisplayHelper, mTVHelper is null, no need to release."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1691
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private resetCurrentAlbumArt()V
    .locals 17

    .prologue
    .line 6448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 6449
    const-string v1, "[HtcMusic]"

    const-string v2, "mService is null while resetCurrentAlbumArt "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6495
    :cond_0
    :goto_0
    return-void

    .line 6452
    :cond_1
    const-string v1, "[HtcMusic]"

    const-string v2, "resetCurrentAlbum"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6454
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 6455
    .local v13, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v7

    .line 6456
    .local v7, currentAlbumId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6457
    .local v4, where:Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6460
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 6461
    .local v15, revert_path:Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6462
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 6463
    .local v16, values:Landroid/content/ContentValues;
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    .line 6465
    .local v12, original_path:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_R"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 6467
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6468
    .local v11, orig_file:Ljava/io/File;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6469
    .local v14, revert_file:Ljava/io/File;
    invoke-virtual {v11, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6470
    const-string v1, "dl_data"

    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6474
    :goto_1
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v1, v0, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6477
    new-instance v10, Landroid/content/Intent;

    const-string v1, "action_revert_current_album"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6478
    .local v10, intent:Landroid/content/Intent;
    const-string v1, "album_id"

    invoke-virtual {v10, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6479
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/HtcMusic;->sendBroadcast(Landroid/content/Intent;)V

    .line 6480
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/HtcMusic;->mResetDLAlbumArtCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/HtcMusic;->mResetDLAlbumArtCount:I

    .line 6482
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #orig_file:Ljava/io/File;
    .end local v14           #revert_file:Ljava/io/File;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6484
    .end local v12           #original_path:Ljava/lang/String;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v1, :cond_0

    .line 6485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Lcom/htc/music/GliderAdapter;->setDlAlbumArt(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 6487
    .end local v4           #where:Ljava/lang/String;
    .end local v7           #currentAlbumId:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v13           #resolver:Landroid/content/ContentResolver;
    .end local v15           #revert_path:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 6488
    .local v9, ex:Landroid/os/RemoteException;
    const-string v1, "[HtcMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught remote exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6472
    .end local v9           #ex:Landroid/os/RemoteException;
    .restart local v4       #where:Ljava/lang/String;
    .restart local v7       #currentAlbumId:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #orig_file:Ljava/io/File;
    .restart local v12       #original_path:Ljava/lang/String;
    .restart local v13       #resolver:Landroid/content/ContentResolver;
    .restart local v14       #revert_file:Ljava/io/File;
    .restart local v15       #revert_path:Ljava/lang/String;
    .restart local v16       #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_1
    const-string v1, "[HtcMusic]"

    const-string v2, "reName fail"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 6490
    .end local v4           #where:Ljava/lang/String;
    .end local v7           #currentAlbumId:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #orig_file:Ljava/io/File;
    .end local v12           #original_path:Ljava/lang/String;
    .end local v13           #resolver:Landroid/content/ContentResolver;
    .end local v14           #revert_file:Ljava/io/File;
    .end local v15           #revert_path:Ljava/lang/String;
    .end local v16           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    .line 6491
    .local v9, ex:Ljava/lang/Exception;
    const-string v1, "[HtcMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/16 v3, 0x1771

    .line 751
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 752
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 754
    return-void
.end method

.method private scanBackward(IJ)V
    .locals 12
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 3103
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 3144
    :cond_0
    :goto_0
    return-void

    .line 3106
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3110
    if-nez p1, :cond_2

    .line 3111
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3112
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3113
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    .line 3142
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3115
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 3116
    cmp-long v4, p2, v6

    if-gez v4, :cond_6

    .line 3118
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 3123
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 3124
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_3

    .line 3126
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->prevAsync()V

    .line 3127
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 3128
    .local v0, duration:J
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3129
    add-long/2addr v2, v0

    .line 3131
    .end local v0           #duration:J
    :cond_3
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    if-gez p1, :cond_5

    .line 3132
    :cond_4
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 3133
    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3135
    :cond_5
    if-ltz p1, :cond_7

    .line 3136
    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 3140
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    .line 3121
    .end local v2           #newpos:J
    :cond_6
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 3138
    .restart local v2       #newpos:J
    :cond_7
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private scanForward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    .line 3147
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 3184
    :goto_0
    return-void

    .line 3150
    :cond_0
    if-nez p1, :cond_1

    .line 3151
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3152
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3153
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    .line 3182
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3155
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 3156
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 3158
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 3163
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 3164
    .local v2, newpos:J
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 3165
    .local v0, duration:J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 3167
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->nextAsync()V

    .line 3168
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3169
    sub-long/2addr v2, v0

    .line 3171
    :cond_2
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 3172
    :cond_3
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 3173
    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3175
    :cond_4
    if-ltz p1, :cond_6

    .line 3176
    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 3180
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    .line 3161
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 3178
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private searchRelatedWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 7317
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v0

    .line 7319
    .local v0, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    invoke-static {p0, v0}, Lcom/htc/music/online/Util;->gotoRelatedWeibo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;)V

    .line 7321
    return-void
.end method

.method private seekMethod1(I)Z
    .locals 8
    .parameter "keyCode"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 2852
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_b

    .line 2853
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    .line 2854
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, p1, :cond_9

    .line 2855
    const/4 v0, 0x0

    .line 2857
    .local v0, dir:I
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v2, v3, :cond_1

    .line 2858
    const/4 v0, 0x0

    .line 2878
    :cond_0
    :goto_2
    iput v1, p0, Lcom/htc/music/HtcMusic;->lastX:I

    .line 2879
    iput v2, p0, Lcom/htc/music/HtcMusic;->lastY:I

    .line 2881
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x5

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2884
    :goto_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 2885
    const/4 v3, 0x1

    .line 2891
    .end local v0           #dir:I
    .end local v2           #y:I
    :goto_4
    return v3

    .line 2859
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :cond_1
    if-nez v2, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_2

    .line 2860
    const/4 v0, 0x1

    goto :goto_2

    .line 2861
    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_3

    .line 2862
    const/4 v0, -0x1

    goto :goto_2

    .line 2864
    :cond_3
    if-ne v2, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_4

    .line 2865
    const/4 v0, -0x1

    goto :goto_2

    .line 2866
    :cond_4
    if-ne v2, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_5

    .line 2867
    const/4 v0, 0x1

    goto :goto_2

    .line 2869
    :cond_5
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_6

    if-gt v1, v6, :cond_6

    .line 2870
    const/4 v0, 0x1

    goto :goto_2

    .line 2871
    :cond_6
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_7

    if-lt v1, v7, :cond_7

    .line 2872
    const/4 v0, -0x1

    goto :goto_2

    .line 2874
    :cond_7
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_8

    if-gt v1, v6, :cond_8

    .line 2875
    const/4 v0, -0x1

    goto :goto_2

    .line 2876
    :cond_8
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_0

    if-lt v1, v7, :cond_0

    .line 2877
    const/4 v0, 0x1

    goto :goto_2

    .line 2853
    .end local v0           #dir:I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2852
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2889
    .end local v2           #y:I
    :cond_b
    iput v5, p0, Lcom/htc/music/HtcMusic;->lastX:I

    .line 2890
    iput v5, p0, Lcom/htc/music/HtcMusic;->lastY:I

    .line 2891
    const/4 v3, 0x0

    goto :goto_4

    .line 2882
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private seekMethod2(I)Z
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 2895
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 2908
    :cond_0
    :goto_0
    return v2

    .line 2897
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 2898
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 2899
    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 2901
    .local v1, seekpercentage:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2904
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 2905
    const/4 v2, 0x1

    goto :goto_0

    .line 2897
    .end local v1           #seekpercentage:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2902
    .restart local v1       #seekpercentage:I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private setAllSongsTitle()V
    .locals 0

    .prologue
    .line 3695
    return-void
.end method

.method private setDLNAPreloadEnable(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1696
    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1697
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_0

    .line 1698
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    .line 1699
    :cond_0
    return-void
.end method

.method private setOnDismissListener(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 435
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 436
    return-void
.end method

.method private setPauseButtonImage()V
    .locals 2

    .prologue
    .line 3698
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    if-nez v0, :cond_0

    .line 3707
    :goto_0
    return-void

    .line 3700
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3701
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_0

    .line 3705
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3703
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setPlaybackControlEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 6608
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    .line 6609
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 6610
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 6611
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-eqz v0, :cond_1

    .line 6612
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 6613
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-eqz v0, :cond_2

    .line 6614
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 6615
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v0, :cond_3

    .line 6616
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 6617
    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_4

    .line 6618
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 6619
    :cond_4
    return-void
.end method

.method private setRepeatButtonImage()V
    .locals 2

    .prologue
    .line 3612
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 3613
    const-string v0, "[HtcMusic]"

    const-string v1, "mRepeatButton is null in setRepeatButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    :goto_0
    return-void

    .line 3617
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 3618
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 3648
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3622
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 3623
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3641
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 3642
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3643
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 3625
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 3627
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3628
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 3633
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 3635
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3636
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3623
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRepeatMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 5354
    packed-switch p1, :pswitch_data_0

    .line 5384
    :goto_0
    return-void

    .line 5357
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 5358
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5359
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 5360
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 5362
    :cond_0
    const v0, 0x7f060044

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 5363
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5364
    :catch_0
    move-exception v0

    goto :goto_0

    .line 5369
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 5370
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 5371
    const v0, 0x7f060045

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5372
    :catch_1
    move-exception v0

    goto :goto_0

    .line 5377
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 5378
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 5379
    const v0, 0x7f060043

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 5380
    :catch_2
    move-exception v0

    goto :goto_0

    .line 5354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtone()V
    .locals 2

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v0, :cond_1

    .line 2747
    :cond_0
    :goto_0
    return-void

    .line 2737
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v0, :cond_2

    .line 2738
    new-instance v0, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 2741
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_0

    .line 2742
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    .line 2743
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 2744
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    .line 2745
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->useAsRingtone(Z)V

    goto :goto_0
.end method

.method private setSecondaryTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "secondaryTitle"

    .prologue
    .line 6360
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_1

    .line 6361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 6362
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 6363
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 6379
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6380
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 6396
    :cond_1
    return-void

    .line 6375
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 6376
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method private setShuffleButtonImage()V
    .locals 2

    .prologue
    .line 3654
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 3655
    const-string v0, "[HtcMusic]"

    const-string v1, "mShuffleButton is null in setShuffleButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3682
    :goto_0
    return-void

    .line 3659
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 3660
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 3680
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3664
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 3665
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3674
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3675
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    .line 3679
    :goto_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    goto :goto_0

    .line 3668
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3669
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3665
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private shareMusicFile()V
    .locals 5

    .prologue
    .line 2754
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canShare()I

    move-result v0

    .line 2756
    .local v0, canShare:I
    packed-switch v0, :pswitch_data_0

    .line 2773
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2775
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2778
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 2758
    :pswitch_0
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normal file case, mCurrentAudioPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    goto :goto_0

    .line 2766
    :pswitch_1
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD DRM case, mCurrentAudioPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    goto :goto_0

    .line 2756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 2790
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShareBundle:Landroid/os/Bundle;

    .line 2793
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    .line 2794
    return-void
.end method

.method private shareMusicTextViaShareKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 7344
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 7345
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/htc/music/HtcMusic;->getShareIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v1

    .line 7346
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/htc/music/online/Util;->SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7347
    invoke-static {p0, v1, v0}, Lcom/htc/music/online/Util;->shareMusicInfoToSinaWeibo(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 7348
    return-void
.end method

.method private shareOnlineMusicTextViaShareKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 7305
    const-string v0, "[HtcMusic]"

    const-string v1, "Unsupported yet"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7313
    return-void
.end method

.method private showHideOneShotMode()V
    .locals 0

    .prologue
    .line 3603
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 3604
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 3606
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 3607
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 3608
    return-void
.end method

.method private showLyricView()V
    .locals 2

    .prologue
    .line 7018
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    .line 7023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    .line 7024
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2813
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2815
    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 3278
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    .line 3281
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 3282
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3283
    return-void
.end method

.method private startAlbumDetail(I)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 6517
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6518
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6519
    const-string v1, "albumid"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6520
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6521
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 6522
    return-void
.end method

.method private startAnimationTimer()V
    .locals 4

    .prologue
    const/16 v3, 0x3a9c

    .line 1340
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1346
    :cond_1
    return-void
.end method

.method private startAutoDownloadAlbum()V
    .locals 2

    .prologue
    .line 6344
    const-string v0, "[HtcMusic]"

    const-string v1, "start download albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6345
    const-string v0, "action_auto_update_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 6346
    return-void
.end method

.method private startBrowserTabActivity()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1324
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1325
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1326
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1329
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1330
    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1331
    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1332
    const-string v1, "from-lockscreen"

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from-lockscreen"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1334
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 1335
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 1336
    return-void
.end method

.method private startMusicEnhancerService(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 6525
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_0

    .line 6526
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6527
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v1, "com.htc.musicenhancer"

    const-string v2, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6529
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6531
    .end local v0           #downloadAlbumArtIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private startPlayback()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 3286
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v10, :cond_0

    .line 3385
    :goto_0
    return-void

    .line 3288
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3289
    .local v2, intent:Landroid/content/Intent;
    const-string v1, ""

    .line 3290
    .local v1, filename:Ljava/lang/String;
    const/4 v9, 0x0

    .line 3291
    .local v9, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 3292
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 3294
    :cond_1
    const/4 v6, 0x0

    .line 3295
    .local v6, oneShot:Z
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    if-nez v10, :cond_6

    .line 3298
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 3299
    .local v7, scheme:Ljava/lang/String;
    const-string v10, "file"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3300
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3304
    :goto_1
    if-eqz v1, :cond_5

    const-string v10, "content://drm/"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3305
    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 3306
    .local v8, status:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_3

    .line 3307
    const v10, 0x7f060054

    invoke-direct {p0, v10}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3308
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 3302
    .end local v8           #status:I
    :cond_2
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3310
    .restart local v8       #status:I
    :cond_3
    if-eq v8, v11, :cond_4

    const/4 v10, 0x2

    if-ne v8, v10, :cond_5

    .line 3312
    :cond_4
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3313
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3314
    const-string v10, "drmuri"

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3315
    const-string v10, "drmtargettomain"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3316
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 3317
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 3322
    .end local v8           #status:I
    :cond_5
    const/4 v6, 0x1

    .line 3323
    :try_start_0
    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    if-nez v10, :cond_9

    .line 3324
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v10

    if-nez v10, :cond_8

    .line 3325
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->pauseAsync()V

    .line 3339
    :goto_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v1}, Lcom/htc/music/IMediaPlaybackService;->openfile(Ljava/lang/String;)V

    .line 3343
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3345
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->playAsync()V

    .line 3346
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3354
    .end local v7           #scheme:Ljava/lang/String;
    :cond_6
    :goto_3
    if-nez v6, :cond_7

    .line 3356
    :try_start_1
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v3

    .line 3357
    .local v3, isSystemReady:Z
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v10

    if-nez v10, :cond_a

    if-nez v3, :cond_a

    .line 3384
    .end local v3           #isSystemReady:Z
    :cond_7
    :goto_4
    iput-boolean v13, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    goto/16 :goto_0

    .line 3336
    .restart local v7       #scheme:Ljava/lang/String;
    :cond_8
    :try_start_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 3350
    :catch_0
    move-exception v0

    .line 3351
    .local v0, ex:Ljava/lang/Exception;
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "couldn\'t start playback: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3348
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_9
    const/4 v10, 0x0

    :try_start_3
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 3365
    .end local v7           #scheme:Ljava/lang/String;
    .restart local v3       #isSystemReady:Z
    :cond_a
    :try_start_4
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v10, :cond_b

    .line 3366
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z

    .line 3367
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3369
    :cond_b
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v4

    .line 3371
    .local v4, next:J
    :try_start_5
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3372
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z

    .line 3373
    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 3375
    :catch_1
    move-exception v0

    .line 3376
    .restart local v0       #ex:Ljava/lang/Exception;
    :try_start_6
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPlayback Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 3379
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #isSystemReady:Z
    .end local v4           #next:J
    :catch_2
    move-exception v0

    .line 3380
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPlayback Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private startUpdateAllAlbum()V
    .locals 2

    .prologue
    .line 6349
    const-string v0, "[HtcMusic]"

    const-string v1, "start update all albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6350
    const-string v0, "action_update_all_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 6351
    return-void
.end method

.method private stopAnimationTimer()V
    .locals 2

    .prologue
    const/16 v1, 0x3a9c

    .line 1349
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1353
    :cond_0
    return-void
.end method

.method private stopDownloadAlbumArtService()V
    .locals 2

    .prologue
    .line 6354
    const-string v0, "[HtcMusic]"

    const-string v1, "stopDownloadAlbumArtService"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6355
    const-string v0, "action_cancel_download"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 6356
    return-void
.end method

.method private stopFFRWScan(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1497
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1498
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1499
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1501
    return-void
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 3218
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 3248
    :goto_0
    return-void

    .line 3222
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 3223
    .local v0, shuffle:I
    if-nez v0, :cond_2

    .line 3224
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3225
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3226
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3227
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 3234
    :cond_1
    const v1, 0x7f060041

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3245
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    goto :goto_0

    .line 3246
    .end local v0           #shuffle:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3235
    .restart local v0       #shuffle:I
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 3237
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3238
    const v1, 0x7f060042

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    .line 3240
    :cond_4
    const-string v1, "[HtcMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private updateCurrentAlbum()V
    .locals 5

    .prologue
    .line 6399
    const-string v2, "[HtcMusic]"

    const-string v3, "updateCurrentAlbum"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6400
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action_update_current_album"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6402
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v2, "com.htc.musicenhancer"

    const-string v3, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6405
    const-string v2, "need_update_lyric"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6408
    :try_start_0
    const-string v2, "album_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6410
    const-string v2, "audio_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6412
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6419
    :goto_0
    return-void

    .line 6413
    :catch_0
    move-exception v1

    .line 6414
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception in updateCurrentAlbum. Ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateGlider()V
    .locals 10

    .prologue
    .line 3724
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-nez v7, :cond_1

    .line 3782
    :cond_0
    :goto_0
    return-void

    .line 3728
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueue()[I

    move-result-object v0

    .line 3729
    .local v0, albumIdArray:[I
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v6

    .line 3730
    .local v6, selectedPos:I
    const/4 v4, 0x0

    .line 3731
    .local v4, nLength:I
    if-eqz v0, :cond_2

    .line 3732
    array-length v4, v0

    .line 3735
    :cond_2
    if-eqz v0, :cond_5

    if-lez v4, :cond_5

    .line 3736
    new-array v1, v4, [Lcom/htc/music/GliderAdapter$AlbumInfo;

    .line 3738
    .local v1, albumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 3739
    new-instance v7, Lcom/htc/music/GliderAdapter$AlbumInfo;

    invoke-direct {v7}, Lcom/htc/music/GliderAdapter$AlbumInfo;-><init>()V

    aput-object v7, v1, v3

    .line 3740
    aget-object v7, v1, v3

    aget v8, v0, v3

    iput v8, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    .line 3738
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3742
    :cond_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3745
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3746
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 3748
    :cond_4
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v1, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;I)V

    .line 3760
    .end local v1           #albumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    .end local v3           #i:I
    :goto_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v7, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyDataSetChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3767
    .end local v0           #albumIdArray:[I
    .end local v4           #nLength:I
    .end local v6           #selectedPos:I
    :goto_3
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v5

    .line 3768
    .local v5, nSelectPos:I
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3770
    if-ltz v5, :cond_7

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 3771
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 3772
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3779
    .end local v5           #nSelectPos:I
    :catch_0
    move-exception v2

    .line 3780
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3750
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #albumIdArray:[I
    .restart local v4       #nLength:I
    .restart local v6       #selectedPos:I
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3754
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3755
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 3757
    :cond_6
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3762
    .end local v0           #albumIdArray:[I
    .end local v4           #nLength:I
    .end local v6           #selectedPos:I
    :catch_1
    move-exception v2

    .line 3763
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 3775
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v5       #nSelectPos:I
    :cond_7
    :try_start_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 3776
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private updateLyricMenu()V
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 2227
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v1}, Lcom/htc/music/lyrics/widget/LyricsView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2229
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2230
    .local v0, menuItem_lyric:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2232
    const v1, 0x7f02001f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2233
    const v1, 0x7f06006c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2248
    :cond_0
    :goto_0
    return-void

    .line 2239
    .end local v0           #menuItem_lyric:Landroid/view/MenuItem;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2240
    .restart local v0       #menuItem_lyric:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2242
    const v1, 0x7f020022

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2243
    const v1, 0x7f0600e7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateLyricView()V
    .locals 2

    .prologue
    .line 6996
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-nez v0, :cond_0

    .line 6997
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initLyricView()V

    .line 6999
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsLyricPanelInit:Z

    if-eqz v0, :cond_1

    .line 7000
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    if-eqz v0, :cond_2

    .line 7001
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    .line 7006
    :cond_1
    :goto_0
    return-void

    .line 7003
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLyrics()V
    .locals 5

    .prologue
    .line 6423
    const-string v2, "[HtcMusic]"

    const-string v3, "updateLyrics"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6424
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action_update_current_lyric"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6426
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v2, "com.htc.musicenhancer"

    const-string v3, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6429
    const-string v2, "need_update_lyric"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6432
    :try_start_0
    const-string v2, "album_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6434
    const-string v2, "audio_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6436
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6442
    :goto_0
    return-void

    .line 6437
    :catch_0
    move-exception v1

    .line 6438
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception in updateCurrentAlbum. Ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1066
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1068
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    .line 1071
    :cond_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-nez v4, :cond_2

    .line 1126
    :cond_1
    :goto_0
    return-void

    .line 1073
    :cond_2
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x2c

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1074
    .local v3, queue:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x2e

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1077
    .local v0, close:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x2f

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1080
    .local v1, lyric:Landroid/view/MenuItem;
    iget v2, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 1082
    .local v2, nDlnaMode:I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 1084
    :cond_3
    if-eqz v3, :cond_4

    .line 1085
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1087
    :cond_4
    if-eqz v0, :cond_5

    .line 1088
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1091
    :cond_5
    if-eqz v1, :cond_1

    .line 1092
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1096
    :cond_6
    if-eqz v3, :cond_7

    .line 1097
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_9

    .line 1098
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1107
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 1108
    const-string v4, "[HtcMusic]"

    const-string v5, "invisible dmc close button"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1112
    :cond_8
    if-eqz v1, :cond_1

    .line 1113
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_b

    .line 1114
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1100
    :cond_9
    if-ne v7, v2, :cond_a

    .line 1101
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1103
    :cond_a
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1116
    :cond_b
    if-ne v7, v2, :cond_c

    .line 1117
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1119
    :cond_c
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateTrackInfoP(Landroid/os/Bundle;)V
    .locals 32
    .parameter "serviceData"

    .prologue
    .line 4564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    .line 4830
    :goto_0
    return-void

    .line 4567
    :cond_0
    const/16 v21, 0x0

    .line 4568
    .local v21, path:Ljava/lang/String;
    const/16 v25, 0x0

    .line 4569
    .local v25, service_queuesize:I
    const/4 v5, 0x0

    .line 4570
    .local v5, artistName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 4571
    .local v4, albumName:Ljava/lang/String;
    const/16 v27, 0x0

    .line 4572
    .local v27, trackName:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 4573
    .local v10, duration:J
    const/16 v19, 0x0

    .line 4575
    .local v19, ntrack:I
    const/16 v23, 0x0

    .line 4576
    .local v23, queue:[I
    const/16 v22, 0x0

    .line 4578
    .local v22, position:I
    if-eqz p1, :cond_1

    const/4 v6, 0x1

    .line 4579
    .local v6, bHasServiceData:Z
    :goto_1
    if-eqz v6, :cond_4

    .line 4580
    :try_start_0
    const-string v28, "path"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4581
    const-string v28, "queuesize"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 4582
    const-string v28, "artist"

    const-string v29, "<unknown>"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4583
    const-string v28, "album"

    const-string v29, "<unknown>"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4584
    const-string v28, "track"

    const-string v29, "<unknown>"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 4587
    const-string v28, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 4588
    const-string v28, "queue"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v23

    .line 4589
    const-string v28, "queueposition"

    const/16 v29, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 4590
    if-eqz v21, :cond_3

    .line 4591
    if-gez v22, :cond_2

    const/16 v19, 0x1

    .line 4595
    :goto_2
    move/from16 v20, v19

    .line 4626
    .local v20, ntrack_temp:I
    :goto_3
    if-nez v21, :cond_a

    if-nez v25, :cond_a

    .line 4629
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/music/HtcMusic;->mDuration:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4827
    .end local v20           #ntrack_temp:I
    :catch_0
    move-exception v13

    .line 4828
    .local v13, ex:Landroid/os/RemoteException;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    .line 4578
    .end local v6           #bHasServiceData:Z
    .end local v13           #ex:Landroid/os/RemoteException;
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 4591
    .restart local v6       #bHasServiceData:Z
    :cond_2
    add-int/lit8 v19, v22, 0x1

    goto :goto_2

    .line 4593
    :cond_3
    add-int/lit8 v19, v22, 0x1

    goto :goto_2

    .line 4598
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v28

    if-nez v28, :cond_6

    .line 4622
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 4603
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 4604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v25

    .line 4605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 4606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    .line 4607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v27

    .line 4609
    if-eqz v21, :cond_8

    .line 4610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v28

    if-gez v28, :cond_7

    const/16 v19, 0x1

    .line 4616
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v10

    .line 4617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v23

    .line 4618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v22

    .line 4619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v28

    if-gez v28, :cond_9

    const/16 v20, 0x1

    .line 4622
    .restart local v20       #ntrack_temp:I
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 4610
    .end local v20           #ntrack_temp:I
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v28

    add-int/lit8 v19, v28, 0x1

    goto :goto_4

    .line 4612
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v28

    add-int/lit8 v19, v28, 0x1

    goto :goto_4

    .line 4619
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v28

    add-int/lit8 v20, v28, 0x1

    goto :goto_5

    .line 4622
    :catchall_0
    move-exception v28

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v28

    .line 4633
    .restart local v20       #ntrack_temp:I
    :cond_a
    if-eqz v21, :cond_1d

    .line 4634
    const-string v28, "<unknown>"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 4635
    const v28, 0x7f06003d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4637
    :cond_b
    const-string v28, "<unknown>"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 4638
    const v28, 0x7f06003e

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4643
    :cond_c
    if-nez v5, :cond_16

    if-nez v4, :cond_16

    if-nez v27, :cond_16

    .line 4645
    const-string v28, "[HtcMusic]"

    const-string v29, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4647
    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 4649
    .local v15, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v15, :cond_d

    .line 4651
    :try_start_7
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4653
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 4655
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 4657
    const/16 v28, 0x7

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v27

    .line 4664
    :goto_6
    :try_start_8
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 4665
    const/4 v15, 0x0

    .line 4670
    :cond_d
    if-eqz v5, :cond_e

    .line 4671
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 4673
    :cond_e
    if-eqz v5, :cond_f

    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 4674
    :cond_f
    const v28, 0x7f06003d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4676
    :cond_10
    if-eqz v4, :cond_11

    .line 4677
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 4679
    :cond_11
    if-eqz v4, :cond_12

    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 4680
    :cond_12
    const v28, 0x7f06003e

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4682
    :cond_13
    if-eqz v27, :cond_14

    .line 4683
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 4685
    :cond_14
    if-eqz v27, :cond_15

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 4687
    :cond_15
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 4688
    const/16 v17, -0x1

    .local v17, nBegin:I
    const/16 v18, -0x1

    .line 4690
    .local v18, nEnd:I
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 4691
    const-string v28, "."

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    .line 4693
    if-ltz v17, :cond_16

    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_16

    .line 4694
    add-int/lit8 v28, v17, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 4701
    .end local v15           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v17           #nBegin:I
    .end local v18           #nEnd:I
    :cond_16
    const/4 v3, 0x0

    .line 4702
    .local v3, albumArtist_tmp:Ljava/lang/String;
    if-eqz v4, :cond_17

    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_17

    const-string v28, " "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 4705
    :cond_17
    move-object v3, v5

    .line 4711
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0xb

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 4712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0xb

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 4713
    .local v16, msg:Landroid/os/Message;
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "duration"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4714
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "AlbumArtistName"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4715
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "TrackName"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4716
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "artistName"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4717
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "albumName"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4718
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getMainLooper()Landroid/os/Looper;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v28

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 4720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4727
    :cond_18
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0xd

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4800
    .end local v3           #albumArtist_tmp:Ljava/lang/String;
    :cond_19
    :goto_9
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 4801
    .local v26, temp:Ljava/lang/StringBuilder;
    const/16 v24, 0x0

    .line 4803
    .local v24, queueInfo:Ljava/lang/String;
    :try_start_9
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4804
    const-string v28, " / "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4805
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4806
    const-string v28, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4808
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v24

    .line 4814
    :goto_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0xc

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 4815
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4816
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getMainLooper()Landroid/os/Looper;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v28

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_27

    .line 4818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4825
    :cond_1a
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    goto/16 :goto_0

    .line 4659
    .end local v16           #msg:Landroid/os/Message;
    .end local v24           #queueInfo:Ljava/lang/String;
    .end local v26           #temp:Ljava/lang/StringBuilder;
    .restart local v15       #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v13

    .line 4660
    .local v13, ex:Ljava/lang/RuntimeException;
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "updateTrackInfoP(), Uri.parse(path) = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v13}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 4707
    .end local v13           #ex:Ljava/lang/RuntimeException;
    .end local v15           #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v3       #albumArtist_tmp:Ljava/lang/String;
    :cond_1b
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 4722
    .restart local v16       #msg:Landroid/os/Message;
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z

    move/from16 v28, v0

    if-nez v28, :cond_18

    .line 4723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_8

    .line 4729
    .end local v3           #albumArtist_tmp:Ljava/lang/String;
    .end local v16           #msg:Landroid/os/Message;
    :cond_1d
    if-eqz v23, :cond_1e

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_1e

    if-ltz v22, :cond_1e

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v22

    if-gt v0, v1, :cond_1f

    .line 4731
    :cond_1e
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/music/HtcMusic;->mDuration:J

    goto/16 :goto_0

    .line 4735
    :cond_1f
    const/16 v28, 0xb

    move/from16 v0, v28

    new-array v14, v0, [Ljava/lang/String;

    const/16 v28, 0x0

    const-string v29, "audio._id AS _id"

    aput-object v29, v14, v28

    const/16 v28, 0x1

    const-string v29, "artist"

    aput-object v29, v14, v28

    const/16 v28, 0x2

    const-string v29, "album"

    aput-object v29, v14, v28

    const/16 v28, 0x3

    const-string v29, "title"

    aput-object v29, v14, v28

    const/16 v28, 0x4

    const-string v29, "_data"

    aput-object v29, v14, v28

    const/16 v28, 0x5

    const-string v29, "mime_type"

    aput-object v29, v14, v28

    const/16 v28, 0x6

    const-string v29, "album_id"

    aput-object v29, v14, v28

    const/16 v28, 0x7

    const-string v29, "artist_id"

    aput-object v29, v14, v28

    const/16 v28, 0x8

    const-string v29, "is_podcast"

    aput-object v29, v14, v28

    const/16 v28, 0x9

    const-string v29, "bookmark"

    aput-object v29, v14, v28

    const/16 v28, 0xa

    const-string v29, "composer"

    aput-object v29, v14, v28

    .line 4752
    .local v14, mCursorCols:[Ljava/lang/String;
    aget v28, v23, v22

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/ContentUtils;->getTrack(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v7

    .line 4753
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_20

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v28

    if-nez v28, :cond_21

    .line 4756
    :cond_20
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/music/HtcMusic;->mDuration:J

    goto/16 :goto_0

    .line 4759
    :cond_21
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4760
    const-string v28, "artist"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4762
    .local v9, cursor_artistName:Ljava/lang/String;
    if-eqz v9, :cond_22

    const-string v28, "<unknown>"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_23

    .line 4764
    :cond_22
    const v28, 0x7f06003d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4766
    :cond_23
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "artistName: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4768
    const-string v28, "album"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4770
    .local v8, cursor_albumName:Ljava/lang/String;
    if-eqz v8, :cond_24

    const-string v28, "<unknown>"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_25

    .line 4772
    :cond_24
    const v28, 0x7f06003e

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4774
    :cond_25
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mTrackName: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "title"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4780
    const-wide/16 v10, 0x0

    .line 4781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0xb

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 4782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0xb

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 4783
    .restart local v16       #msg:Landroid/os/Message;
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "AlbumArtistName"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4784
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "TrackName"

    const-string v30, "title"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4786
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "duration"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4787
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "artistName"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4788
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "albumName"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4789
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z

    move/from16 v28, v0

    if-nez v28, :cond_26

    .line 4790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0xd

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4794
    :cond_26
    if-eqz v7, :cond_19

    .line 4795
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    .line 4810
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #cursor_albumName:Ljava/lang/String;
    .end local v9           #cursor_artistName:Ljava/lang/String;
    .end local v14           #mCursorCols:[Ljava/lang/String;
    .restart local v24       #queueInfo:Ljava/lang/String;
    .restart local v26       #temp:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v12

    .line 4811
    .local v12, e:Ljava/lang/RuntimeException;
    const-string v28, "[HtcMusic]"

    invoke-virtual {v12}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 4820
    .end local v12           #e:Ljava/lang/RuntimeException;
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z

    move/from16 v28, v0

    if-nez v28, :cond_1a

    .line 4821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_b
.end method

.method private writeQueueCountToULog()V
    .locals 4

    .prologue
    .line 1522
    iget v1, p0, Lcom/htc/music/HtcMusic;->mShowQueueCount:I

    if-lez v1, :cond_0

    .line 1524
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 1527
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.music"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "queue_launch"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "count"

    iget v3, p0, Lcom/htc/music/HtcMusic;->mShowQueueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 1532
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 1535
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 1537
    .end local v0           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    return-void
.end method

.method private writeRevertDlAlbumArtCountToULog()V
    .locals 4

    .prologue
    .line 6498
    iget v1, p0, Lcom/htc/music/HtcMusic;->mResetDLAlbumArtCount:I

    if-lez v1, :cond_0

    .line 6500
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 6503
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.musicenhancer"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "update_album_art"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "revert"

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "count"

    iget v3, p0, Lcom/htc/music/HtcMusic;->mResetDLAlbumArtCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 6509
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 6512
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 6514
    .end local v0           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    return-void
.end method


# virtual methods
.method protected afterPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5428
    const/4 v0, 0x0

    .line 5429
    .local v0, enableBtn:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 5432
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_1

    .line 5433
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 5434
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_2

    .line 5435
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 5443
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 5444
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 5445
    const/4 v0, 0x1

    .line 5447
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_3

    .line 5448
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 5449
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_4

    .line 5450
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 5456
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5476
    :goto_0
    return-void

    .line 5459
    :catch_0
    move-exception v2

    .line 5464
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_6

    .line 5465
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 5466
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5467
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5469
    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5470
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 5473
    invoke-virtual {p0, v4, v4}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    .line 5475
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0
.end method

.method canRewind()Z
    .locals 1

    .prologue
    .line 5564
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 5565
    const/4 v0, 0x0

    .line 5567
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canShare()I
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 5483
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v9, :cond_1

    :cond_0
    move v0, v8

    .line 5560
    :goto_0
    return v0

    .line 5486
    :cond_1
    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v9}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 5487
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 5488
    goto :goto_0

    .line 5490
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 5491
    :cond_3
    if-eqz v1, :cond_4

    .line 5492
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 5493
    goto :goto_0

    .line 5496
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5497
    const/4 v0, 0x0

    .line 5502
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 5504
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5508
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 5510
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 5511
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5517
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 5519
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 5521
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 5522
    const-string v9, "[HtcMusic]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5524
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5525
    const/4 v1, 0x0

    move v0, v8

    .line 5526
    goto :goto_0

    .line 5529
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 5530
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5532
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5535
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 5537
    :cond_8
    const/4 v0, 0x2

    .line 5541
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5557
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5558
    const/4 v1, 0x0

    .line 5560
    goto/16 :goto_0

    .line 5545
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 5547
    const-string v8, "[HtcMusic]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5548
    const/4 v0, 0x0

    goto :goto_1

    .line 5552
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public checkDrmFile(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    .line 5387
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5389
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 5390
    .local v5, status:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 5391
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 5422
    :goto_0
    return-void

    .line 5392
    :cond_0
    if-nez v5, :cond_3

    .line 5393
    invoke-static {v3, p1, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 5395
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 5396
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 5397
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    .line 5399
    :cond_1
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    .line 5400
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 5401
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 5403
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 5404
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    .line 5408
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 5410
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5411
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 5415
    .local v1, filename:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5416
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5417
    const-string v6, "drmuri"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5418
    const-string v6, "drmtargettomain"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5419
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 5420
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 5413
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #filename:Ljava/lang/String;
    goto :goto_1
.end method

.method public dismissActiveDialog()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 6791
    iget v1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    if-ne v1, v3, :cond_0

    .line 6802
    :goto_0
    return-void

    .line 6796
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6800
    :goto_1
    iput v3, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    goto :goto_0

    .line 6797
    :catch_0
    move-exception v0

    .line 6798
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "[HtcMusic]"

    const-string v2, "[dismissActiveDialog] ."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 6800
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput v3, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    throw v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 3005
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3007
    .local v2, keyCode:I
    packed-switch v2, :pswitch_data_0

    .line 3030
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 3011
    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 3012
    .local v0, dlnaMode:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 3014
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createVolumeDialog()V

    .line 3017
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3019
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getVolume()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3025
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 3021
    :catch_0
    move-exception v1

    .line 3022
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 3027
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 3007
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 1571
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1572
    return-void
.end method

.method public isShowNowPlaying()Z
    .locals 1

    .prologue
    .line 5577
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 2546
    const-string v15, "[HtcMusic]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "receive activity result, requestCode:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", resultCode:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_1

    .line 2709
    :cond_0
    :goto_0
    return-void

    .line 2558
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v15, :cond_2

    .line 2559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/htc/music/NowPlayingViewHelper;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v10

    .line 2561
    .local v10, result:Z
    if-nez v10, :cond_0

    .line 2565
    .end local v10           #result:Z
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2580
    :sswitch_0
    const/4 v15, -0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    .line 2581
    const/4 v15, 0x1

    new-array v8, v15, [I

    const/4 v15, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v16

    aput v16, v8, v15

    .line 2582
    .local v8, list:[I
    const-string v15, "playlist"

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2584
    .local v9, playlist:I
    int-to-long v15, v9

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-static {v0, v8, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 2567
    .end local v8           #list:[I
    .end local v9           #playlist:I
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 2568
    .local v14, uri:Landroid/net/Uri;
    if-eqz v14, :cond_0

    .line 2569
    const/4 v15, 0x1

    new-array v8, v15, [I

    .line 2570
    .restart local v8       #list:[I
    const/4 v15, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v16

    aput v16, v8, v15

    .line 2571
    invoke-virtual {v14}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2572
    .restart local v9       #playlist:I
    int-to-long v15, v9

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-static {v0, v8, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 2590
    .end local v8           #list:[I
    .end local v9           #playlist:I
    .end local v14           #uri:Landroid/net/Uri;
    :sswitch_2
    const/4 v15, -0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    .line 2591
    move-object/from16 v11, p3

    .line 2592
    .local v11, resultIntent:Landroid/content/Intent;
    new-instance v12, Lcom/htc/music/HtcMusic$19;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11}, Lcom/htc/music/HtcMusic$19;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Intent;)V

    .line 2612
    .local v12, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v13, Ljava/lang/Thread;

    invoke-direct {v13, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2613
    .local v13, thread:Ljava/lang/Thread;
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2618
    .end local v11           #resultIntent:Landroid/content/Intent;
    .end local v12           #setContactRingtoneRunnable:Ljava/lang/Runnable;
    .end local v13           #thread:Ljava/lang/Thread;
    :sswitch_3
    const-string v15, "[HtcMusic]"

    const-string v16, "DMR_CHOOSER"

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    const/4 v4, 0x0

    .line 2621
    .local v4, dmr:Ljava/lang/String;
    const-string v15, "DMR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2622
    const/4 v7, 0x1

    .line 2623
    .local v7, isSelectedDMR:Z
    if-nez v4, :cond_3

    .line 2624
    const/4 v7, 0x0

    .line 2627
    :cond_3
    const-string v15, "[HtcMusic]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DMR = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    new-instance v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v15, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    .line 2632
    .local v3, dlnaManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-virtual {v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    .line 2634
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 2636
    const-string v15, "[HtcMusic]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DLNA Mode = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_0

    .line 2682
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v15, :cond_8

    .line 2683
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v6

    .line 2684
    .local v6, isPlaying:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/IMediaPlaybackService;->switchMode(I)V

    .line 2685
    if-eqz v6, :cond_0

    .line 2686
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->playAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2690
    .end local v6           #isPlaying:Z
    :catch_0
    move-exception v5

    .line 2691
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2640
    .end local v5           #e:Landroid/os/RemoteException;
    :pswitch_1
    if-eqz v7, :cond_0

    .line 2642
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v15

    if-nez v15, :cond_4

    .line 2643
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->pauseAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2650
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v15, :cond_5

    .line 2651
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 2654
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 2655
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 2656
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->switchToDmc(Landroid/content/Context;)Z

    goto/16 :goto_0

    .line 2645
    :catch_1
    move-exception v5

    .line 2646
    .restart local v5       #e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2661
    .end local v5           #e:Landroid/os/RemoteException;
    :pswitch_2
    if-eqz v7, :cond_0

    .line 2663
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v15

    if-nez v15, :cond_6

    .line 2664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->pauseAsync()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2671
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v15, :cond_7

    .line 2672
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 2675
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 2676
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->switchToPush(Landroid/content/Context;)Z

    goto/16 :goto_0

    .line 2666
    :catch_2
    move-exception v5

    .line 2667
    .restart local v5       #e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 2688
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_8
    :try_start_3
    const-string v15, "[HtcMusic]"

    const-string v16, "service null, cannot stop plugin service"

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2696
    :pswitch_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v15, :cond_0

    .line 2699
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v6

    .line 2701
    .restart local v6       #isPlaying:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/music/HtcMusic;->switchToDmp(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 2703
    .end local v6           #isPlaying:Z
    :catch_3
    move-exception v5

    .line 2704
    .restart local v5       #e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2565
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x13 -> :sswitch_2
        0x25 -> :sswitch_3
    .end sparse-switch

    .line 2638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2819
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_0

    .line 2820
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 2821
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 2829
    :goto_0
    return-void

    .line 2827
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12
    .parameter "newConfig"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x6c

    const/4 v9, 0x7

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 758
    const-string v5, "[HtcMusic]"

    const-string v6, "onConfigurationChanged"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget v5, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_0

    .line 760
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 860
    :goto_0
    return-void

    .line 764
    :cond_0
    const-string v5, "common_app_bkg"

    const v6, 0x2080001

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 766
    .local v0, appBkgResId:I
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 768
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v5, :cond_1

    .line 769
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    .line 773
    :cond_1
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 774
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 776
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mIsLyricPanelInit:Z

    .line 778
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 779
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 782
    const v5, 0x7f070026

    invoke-virtual {p0, v5}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 784
    .local v1, group:Landroid/view/ViewGroup;
    const v5, 0x7f070054

    invoke-virtual {p0, v5}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 785
    .local v3, mainContainer:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 786
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 789
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 790
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030023

    invoke-virtual {v2, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 791
    .local v4, view:Landroid/view/View;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    .line 797
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    .line 798
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v5, :cond_3

    .line 799
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setAlpha(I)V

    .line 806
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    .line 808
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    .line 809
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    .line 813
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v5, v9}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 814
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z

    .line 815
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v5, v9}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 816
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    .line 818
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 819
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 820
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 822
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v5, :cond_4

    .line 823
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 824
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v5, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setGlobalBackgroundResource(I)V

    .line 829
    :cond_4
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 830
    iput-object v11, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    .line 835
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mActivityStoped:Z

    if-nez v5, :cond_5

    .line 836
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 837
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 841
    :cond_5
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v5, :cond_6

    .line 842
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    .line 845
    :cond_6
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    if-eqz v5, :cond_8

    .line 854
    :cond_7
    const-string v5, "ffstop"

    invoke-direct {p0, v5}, Lcom/htc/music/HtcMusic;->stopFFRWScan(Ljava/lang/String;)V

    .line 855
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    .line 856
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    .line 859
    :cond_8
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    invoke-direct {p0, v5}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    .line 440
    const-string v8, "[HtcMusic]"

    const-string v9, "onCreate() +"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 443
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 446
    .local v1, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    if-nez v8, :cond_0

    .line 447
    new-instance v8, Lcom/htc/music/HtcMusic$LyricUpdateReceiver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/htc/music/HtcMusic$LyricUpdateReceiver;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    .line 448
    new-instance v3, Landroid/content/IntentFilter;

    const-string v8, "action_download_finish"

    invoke-direct {v3, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 449
    .local v3, lyricUpdateIntentFilter:Landroid/content/IntentFilter;
    const-string v8, "action_update_lyrics_data_fee_check_denied"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    .end local v3           #lyricUpdateIntentFilter:Landroid/content/IntentFilter;
    :cond_0
    if-eqz p1, :cond_1

    .line 454
    const-string v8, "islyricsvisible"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    .line 460
    :cond_1
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 461
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v8, :cond_2

    .line 462
    new-instance v8, Lcom/htc/music/HtcMusic$EventReceiver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/htc/music/HtcMusic$EventReceiver;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 463
    new-instance v0, Landroid/content/IntentFilter;

    const-string v8, "com.htc.music.lockscreen_start"

    invoke-direct {v0, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 467
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    const-string v8, "from-lockscreen"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 469
    .local v2, isFromLockscreen:Z
    const-string v8, "[HtcMusic]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[onCreate] bp. value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    if-eqz v2, :cond_3

    .line 471
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 472
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 482
    .end local v2           #isFromLockscreen:Z
    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 483
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    .line 484
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x10

    and-int/2addr v8, v9

    if-lez v8, :cond_4

    .line 485
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    .line 486
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 489
    :cond_4
    const-string v8, "showEmptyQueue"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    .line 491
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 493
    .local v5, resources:Landroid/content/res/Resources;
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->setVolumeControlStream(I)V

    .line 495
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->requestWindowFeature(I)Z

    .line 499
    new-instance v8, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    invoke-direct {v8, p0}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    .line 501
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 503
    const v8, 0x7f030024

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->setContentView(I)V

    .line 504
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-nez v8, :cond_6

    .line 505
    new-instance v8, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 507
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    new-instance v9, Lcom/htc/music/HtcMusic$3;

    invoke-direct {v9, p0}, Lcom/htc/music/HtcMusic$3;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 515
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initGlider()V

    .line 529
    const/4 v8, 0x1

    iput v8, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    .line 530
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    .line 532
    if-eqz p1, :cond_8

    .line 533
    const-string v8, "configchange"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    .line 534
    const-string v8, "message"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    .line 535
    const-string v8, "downloadalbumartid"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 536
    const-string v8, "currentAudioId"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 537
    const-string v8, "currentAudioPath"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 542
    const-string v8, "ringtoneAudioPath"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 543
    .local v6, ringtoneAudioPath:Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 544
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v8, :cond_7

    .line 545
    new-instance v8, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v8, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 547
    :cond_7
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v9, "ringtoneAudioId"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    .line 548
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v8, v6}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 549
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v9, "ringtoneAudioType"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    .line 555
    .end local v6           #ringtoneAudioPath:Ljava/lang/String;
    :cond_8
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "HtcMusicActivityWorker"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 556
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 557
    new-instance v8, Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/htc/music/HtcMusic$NonUiHandler;-><init>(Lcom/htc/music/HtcMusic;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 559
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-nez v8, :cond_9

    .line 560
    const-string v8, "[HtcMusic]"

    const-string v9, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_9
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v8, :cond_a

    .line 564
    const-string v8, "Music"

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 567
    :cond_a
    const/4 v4, 0x0

    .line 568
    .local v4, nowPlayingViewOn:Z
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "ShowNowPlaying"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 570
    .local v7, showNowPlaying:I
    const/4 v8, -0x1

    if-ne v8, v7, :cond_d

    .line 571
    const/4 v4, 0x0

    .line 578
    :goto_1
    if-eqz v4, :cond_b

    .line 579
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 584
    :cond_b
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    .line 587
    new-instance v8, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 589
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

    invoke-virtual {v8, v9}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 590
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 591
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->registerDmcReceiver()V

    .line 593
    const-string v8, "[HtcMusic]"

    const-string v9, "onCreate() -"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void

    .line 474
    .end local v4           #nowPlayingViewOn:Z
    .end local v5           #resources:Landroid/content/res/Resources;
    .end local v7           #showNowPlaying:I
    .restart local v2       #isFromLockscreen:Z
    :cond_c
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 572
    .end local v2           #isFromLockscreen:Z
    .restart local v4       #nowPlayingViewOn:Z
    .restart local v5       #resources:Landroid/content/res/Resources;
    .restart local v7       #showNowPlaying:I
    :cond_d
    if-nez v7, :cond_e

    .line 573
    const/4 v4, 0x0

    goto :goto_1

    .line 575
    :cond_e
    const/4 v4, 0x1

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 22
    .parameter "id"

    .prologue
    .line 4882
    sparse-switch p1, :sswitch_data_0

    .line 5231
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v13

    :goto_0
    return-object v13

    .line 4884
    :sswitch_0
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v13

    goto :goto_0

    .line 4889
    :sswitch_1
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/CharSequence;

    const/16 v18, 0x0

    const v19, 0x7f060066

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x1

    const v19, 0x7f060065

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x2

    const v19, 0x7f060096

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .line 4892
    .local v10, items:[Ljava/lang/CharSequence;
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x7f060064

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/htc/music/HtcMusic$26;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$26;-><init>(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v13

    .line 4912
    .local v13, repeatDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    goto :goto_0

    .line 4918
    .end local v10           #items:[Ljava/lang/CharSequence;
    .end local v13           #repeatDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_2
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f060054

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x1040013

    new-instance v20, Lcom/htc/music/HtcMusic$27;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$27;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    .line 4930
    .local v5, dialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v13, v5

    .line 4931
    goto/16 :goto_0

    .line 4933
    .end local v5           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 4936
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 4939
    :cond_0
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x1040013

    new-instance v20, Lcom/htc/music/HtcMusic$29;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$29;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x1040009

    new-instance v20, Lcom/htc/music/HtcMusic$28;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$28;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 4959
    .local v8, drmDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v13, v8

    .line 4960
    goto/16 :goto_0

    .line 4971
    .end local v8           #drmDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_4
    const/16 v18, 0x6

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 4972
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/CharSequence;

    const/16 v18, 0x0

    const v19, 0x7f060093

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x1

    const v19, 0x7f060094

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x2

    const v19, 0x7f060095

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .line 4984
    .restart local v10       #items:[Ljava/lang/CharSequence;
    :goto_1
    const/4 v14, 0x0

    .line 4985
    .local v14, ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 4986
    new-instance v18, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 4987
    const-string v18, "[HtcMusic]"

    const-string v19, "Ringtonehelper is null!! this should never happen!!"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4990
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 4991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v18, v0

    const/16 v19, 0x13

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v14

    .line 4993
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    :cond_2
    move-object v13, v14

    .line 4996
    goto/16 :goto_0

    .line 4977
    .end local v10           #items:[Ljava/lang/CharSequence;
    .end local v14           #ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_3
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/CharSequence;

    const/16 v18, 0x0

    const v19, 0x7f060093

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x1

    const v19, 0x7f060094

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .restart local v10       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 4999
    .end local v10           #items:[Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createDownloadAlbumArtDialog()Landroid/app/Dialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    .line 5000
    const-string v18, "[HtcMusic]"

    const-string v19, "onCreateDialog DIALOG_DOWNLOAD_ALBUMART"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5001
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5004
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 5005
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    .line 5013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 5014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 5016
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5020
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 5021
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    .line 5025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 5026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 5028
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5032
    :sswitch_8
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/CharSequence;

    const/16 v18, 0x0

    const v19, 0x7f0600cd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x1

    const v19, 0x7f0600ce

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .line 5035
    .restart local v10       #items:[Ljava/lang/CharSequence;
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/htc/music/HtcMusic$30;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$30;-><init>(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v15

    .line 5052
    .local v15, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v13, v15

    .line 5053
    goto/16 :goto_0

    .line 5058
    .end local v10           #items:[Ljava/lang/CharSequence;
    .end local v15           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareBundle:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v13

    goto/16 :goto_0

    .line 5071
    :sswitch_a
    const/4 v10, 0x0

    .line 5073
    .restart local v10       #items:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 5075
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/htc/music/online/Util;->isSinaWeiboClientExists(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 5076
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/CharSequence;

    .end local v10           #items:[Ljava/lang/CharSequence;
    const/16 v18, 0x0

    const v19, 0x7f0600d8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x1

    const v19, 0x7f060049

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x2

    const v19, 0x204020f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x3

    const v19, 0x7f060046

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x4

    const v19, 0x204014d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x5

    const v19, 0x7f0600e6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .line 5107
    .restart local v10       #items:[Ljava/lang/CharSequence;
    :cond_9
    :goto_2
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/htc/music/HtcMusic$31;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$31;-><init>(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v12

    .line 5167
    .local v12, optionDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v13, v12

    .line 5168
    goto/16 :goto_0

    .line 5084
    .end local v12           #optionDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_a
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/CharSequence;

    .end local v10           #items:[Ljava/lang/CharSequence;
    const/16 v18, 0x0

    const v19, 0x7f0600d8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x1

    const v19, 0x7f060049

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x2

    const v19, 0x204020f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x3

    const v19, 0x7f060046

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x4

    const v19, 0x204014d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .restart local v10       #items:[Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 5092
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 5094
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/htc/music/online/Util;->isSinaWeiboClientExists(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 5095
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/CharSequence;

    .end local v10           #items:[Ljava/lang/CharSequence;
    const/16 v18, 0x0

    const v19, 0x204020f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x1

    const v19, 0x204014d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x2

    const v19, 0x7f0600e6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .restart local v10       #items:[Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 5100
    :cond_d
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/CharSequence;

    .end local v10           #items:[Ljava/lang/CharSequence;
    const/16 v18, 0x0

    const v19, 0x204020f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x1

    const v19, 0x204014d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .restart local v10       #items:[Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 5172
    .end local v10           #items:[Ljava/lang/CharSequence;
    :sswitch_b
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 5173
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v18, 0x7f030016

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 5174
    .local v17, view:Landroid/view/View;
    const v18, 0x7f070043

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/AutoCompleteTextView;

    .line 5175
    .local v16, textview:Landroid/widget/AutoCompleteTextView;
    const v18, 0x7f06004c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 5176
    .local v11, name:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5177
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 5179
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x7f060082

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x2040152

    new-instance v20, Lcom/htc/music/HtcMusic$33;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$33;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f060055

    new-instance v20, Lcom/htc/music/HtcMusic$32;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$32;-><init>(Lcom/htc/music/HtcMusic;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .line 5194
    .local v4, createDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v18, Lcom/htc/music/HtcMusic$EditTextWatcher;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/htc/music/HtcMusic$EditTextWatcher;-><init>(Lcom/htc/widget/HtcAlertDialog;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v13, v4

    .line 5195
    goto/16 :goto_0

    .line 5198
    .end local v4           #createDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v11           #name:Ljava/lang/String;
    .end local v16           #textview:Landroid/widget/AutoCompleteTextView;
    .end local v17           #view:Landroid/view/View;
    :sswitch_c
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0600ab

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x2040174

    new-instance v20, Lcom/htc/music/HtcMusic$34;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$34;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .local v6, dmrDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v13, v6

    .line 5208
    goto/16 :goto_0

    .line 5212
    .end local v6           #dmrDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_d
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0600aa

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x2040174

    new-instance v20, Lcom/htc/music/HtcMusic$35;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$35;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    .local v7, dmsDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v13, v7

    .line 5222
    goto/16 :goto_0

    .line 5226
    .end local v7           #dmsDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createConnectionFailDialog()Landroid/app/Dialog;

    move-result-object v13

    goto/16 :goto_0

    .line 5229
    :sswitch_f
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createWaitDialog()Landroid/app/Dialog;

    move-result-object v13

    goto/16 :goto_0

    .line 4882
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x12 -> :sswitch_a
        0x13 -> :sswitch_8
        0x14 -> :sswitch_9
        0x15 -> :sswitch_b
        0x16 -> :sswitch_c
        0x17 -> :sswitch_d
        0x18 -> :sswitch_e
        0x19 -> :sswitch_f
        0xaae61 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 2177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2179
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateActionMenu(Landroid/view/Menu;)V

    .line 2181
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_2

    .line 2182
    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-ne v3, v1, :cond_1

    .line 2216
    :cond_0
    :goto_0
    return v0

    .line 2186
    :cond_1
    iput v3, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2187
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 2190
    :cond_2
    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v0, v1, :cond_0

    .line 2193
    iput v0, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2196
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_3

    .line 2197
    const/16 v1, 0x14

    const v2, 0x7f0600b7

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2200
    :cond_3
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2201
    const/16 v1, 0x15

    const v2, 0x7f060008

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2204
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2205
    const/16 v1, 0x25

    const v2, 0x7f0600a0

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20800b5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2210
    :cond_5
    const/16 v1, 0x20

    const v2, 0x2040216

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2212
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2213
    const/16 v1, 0x29

    const v2, 0x2040218

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2091
    const-string v0, "[HtcMusic]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2099
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 2105
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2108
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-eqz v0, :cond_2

    .line 2109
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsView;->clearResource()V

    .line 2110
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    .line 2114
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->unregisterDmcReceiver()V

    .line 2116
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_3

    .line 2117
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 2120
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cleanMessage()V

    .line 2122
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v0, :cond_4

    .line 2123
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2124
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 2127
    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    .line 2128
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2129
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2138
    :cond_5
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 2145
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v0, :cond_6

    .line 2146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;)V

    .line 2147
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 2150
    :cond_6
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_7

    .line 2151
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->deInit()V

    .line 2152
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 2155
    :cond_7
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v0, :cond_8

    .line 2156
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->destroy()V

    .line 2157
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 2160
    :cond_8
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 2162
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->writeQueueCountToULog()V

    .line 2163
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->writeRevertDlAlbumArtCountToULog()V

    .line 2165
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2166
    const-string v0, "[HtcMusic]"

    const-string v1, "onDestroy finished"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 3035
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 3036
    .local v0, repcnt:I
    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod1(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3074
    :cond_0
    :goto_0
    return v1

    .line 3036
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod2(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3039
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 3074
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 3041
    :sswitch_0
    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    goto :goto_0

    .line 3045
    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    .line 3048
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3049
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->requestFocus()Z

    .line 3052
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    goto :goto_0

    .line 3055
    :sswitch_2
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    .line 3058
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3059
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->requestFocus()Z

    .line 3062
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    goto :goto_0

    .line 3066
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    goto :goto_0

    .line 3039
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x2f -> :sswitch_3
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2992
    packed-switch p1, :pswitch_data_0

    .line 2997
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2994
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/music/HtcMusic;->searchRelatedWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    const/4 v0, 0x1

    goto :goto_0

    .line 2992
    nop

    :pswitch_data_0
    .packed-switch 0xe3
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x1

    .line 2917
    sparse-switch p1, :sswitch_data_0

    .line 2983
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 2919
    :sswitch_0
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v3, :cond_0

    .line 2922
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_2

    .line 2923
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    .line 2924
    iget-wide v3, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2925
    :cond_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->prevAsync()V

    .line 2935
    :cond_2
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 2936
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    .line 2981
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2927
    :cond_3
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    goto :goto_2

    .line 2930
    :cond_4
    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    .line 2932
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_2

    .line 2939
    :sswitch_1
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v3, :cond_0

    .line 2942
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_5

    .line 2943
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v3, :cond_6

    iget-wide v3, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    .line 2944
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->nextAsync()V

    .line 2951
    :cond_5
    :goto_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 2952
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    .line 2946
    :cond_6
    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    .line 2948
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_3

    .line 2955
    :sswitch_2
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 2956
    .local v1, searchManager:Landroid/app/SearchManager;
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    if-eqz v2, :cond_7

    .line 2957
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 2958
    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    goto/16 :goto_0

    .line 2960
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 2961
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/music/HtcMusic;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 2966
    .end local v1           #searchManager:Landroid/app/SearchManager;
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2968
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v0

    .line 2969
    .local v0, isOnlineMode:Z
    if-eqz v0, :cond_8

    .line 2970
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/music/HtcMusic;->shareOnlineMusicTextViaShareKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2973
    :cond_8
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/music/HtcMusic;->shareMusicTextViaShareKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2917
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x54 -> :sswitch_2
        0xe3 -> :sswitch_3
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 1843
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    .line 1846
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1847
    const-string v3, "from-lockscreen"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1849
    .local v0, isFromLockscreen:Z
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onNewIntent] bp. value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    if-eqz v0, :cond_0

    .line 1851
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1852
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 1859
    .end local v0           #isFromLockscreen:Z
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v3, :cond_1

    .line 1861
    const-string v3, "ShowNowPlaying"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1863
    .local v1, showNowPlaying:Z
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 1866
    .end local v1           #showNowPlaying:Z
    :cond_1
    if-eqz p1, :cond_3

    .line 1867
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1868
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1869
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_2

    .line 1870
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    .line 1875
    :cond_2
    const-string v3, "directmode"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 1876
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get (on new) intent directmode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    return-void

    .line 1854
    .restart local v0       #isFromLockscreen:Z
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 2505
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 2507
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onActionMenuSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2540
    :goto_0
    return v2

    .line 2511
    :cond_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    iget v4, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v3, :cond_1

    .line 2513
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2, p1}, Lcom/htc/music/NowPlayingViewHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 2518
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2540
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 2520
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->launchProperty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2537
    :catch_0
    move-exception v0

    .line 2538
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2524
    .end local v0           #ex:Ljava/lang/Exception;
    :sswitch_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, v2, v3}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    goto :goto_1

    .line 2528
    :sswitch_2
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 2532
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2534
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2518
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_2
        0x20 -> :sswitch_0
        0x25 -> :sswitch_1
        0x29 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 7

    .prologue
    .line 2044
    const-string v4, "[HtcMusic]"

    const-string v5, "onPause"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v4, :cond_0

    .line 2048
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 2051
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2059
    const-string v4, "[HtcMusic]"

    const-string v5, "onEvent: getSystemService(Context.POWER_SERVICE) +"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2061
    .local v1, pm:Landroid/os/PowerManager;
    const-string v4, "[HtcMusic]"

    const-string v5, "onEvent: getSystemService(Context.POWER_SERVICE) - isScreenOn +"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 2063
    .local v0, isScreenOn:Z
    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEvent: isScreenOn - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    if-nez v0, :cond_1

    .line 2065
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2066
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2067
    .local v3, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x80001

    and-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2068
    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Bypass][onPause] Set winParams.flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2080
    .end local v2           #win:Landroid/view/Window;
    .end local v3           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v4, :cond_2

    .line 2081
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v4}, Lcom/htc/music/GliderAdapter;->pauseDecoder()V

    .line 2084
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->setDLNAPreloadEnable(Z)V

    .line 2086
    const-string v4, "[HtcMusic]"

    const-string v5, "onPause finished"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 5260
    iput p1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    .line 5261
    sparse-switch p1, :sswitch_data_0

    .line 5351
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 5263
    .restart local p2
    :sswitch_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5264
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5272
    .restart local p2
    :sswitch_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 5277
    .restart local p2
    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/htc/music/HtcMusic;->prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 5308
    :sswitch_3
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5323
    .restart local p2
    :sswitch_4
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 5325
    iget v1, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v1, :cond_0

    .line 5328
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5329
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v1

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 5331
    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v1, :cond_1

    .line 5332
    const-string v1, "[HtcMusic]"

    const-string v2, "mCurrentAudioId < 0"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5339
    :catch_0
    move-exception v0

    .line 5340
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[HtcMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 5342
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 5343
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    goto :goto_0

    .line 5336
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 5337
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 5261
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0xd -> :sswitch_2
        0x12 -> :sswitch_4
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2349
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onPrepareActionMenu(Landroid/view/Menu;)V

    .line 2351
    iget-boolean v6, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v6, :cond_2

    .line 2352
    iget v4, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v7, v4, :cond_0

    .line 2354
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeGroup(I)V

    .line 2355
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2358
    :cond_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4, p1}, Lcom/htc/music/NowPlayingViewHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    .line 2421
    :cond_1
    :goto_0
    return v4

    .line 2361
    :cond_2
    iget v6, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v4, v6, :cond_3

    .line 2363
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeGroup(I)V

    .line 2364
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2367
    :cond_3
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_1

    .line 2371
    iget v3, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 2374
    .local v3, nDlnaMode:I
    const/16 v6, 0x14

    :try_start_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2375
    .local v0, downloadAlbumArtMenu:Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    .line 2376
    if-nez v3, :cond_5

    .line 2377
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 2378
    iget v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-ltz v6, :cond_1

    .line 2380
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2386
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    if-ne v4, v6, :cond_9

    move v4, v5

    .line 2387
    goto :goto_0

    .line 2382
    :cond_5
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2393
    .end local v0           #downloadAlbumArtMenu:Landroid/view/MenuItem;
    :catch_0
    move-exception v1

    .line 2394
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 2395
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 2396
    iput v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    .line 2399
    .end local v1           #ex:Landroid/os/RemoteException;
    :goto_2
    const/4 v2, 0x0

    .line 2401
    .local v2, menuItem:Landroid/view/MenuItem;
    const/16 v6, 0x15

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2402
    if-eqz v2, :cond_7

    .line 2403
    if-eqz v3, :cond_6

    const/4 v6, 0x3

    if-ne v6, v3, :cond_a

    .line 2405
    :cond_6
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2411
    :cond_7
    :goto_3
    const/16 v6, 0x2e

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2412
    if-eqz v2, :cond_1

    .line 2413
    if-eqz v3, :cond_8

    if-ne v4, v3, :cond_b

    .line 2415
    :cond_8
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2390
    .end local v2           #menuItem:Landroid/view/MenuItem;
    .restart local v0       #downloadAlbumArtMenu:Landroid/view/MenuItem;
    :cond_9
    :try_start_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 2391
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2407
    .end local v0           #downloadAlbumArtMenu:Landroid/view/MenuItem;
    .restart local v2       #menuItem:Landroid/view/MenuItem;
    :cond_a
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 2417
    :cond_b
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/16 v9, 0x6c

    const/4 v8, 0x0

    .line 1883
    const-string v4, "[HtcMusic]"

    const-string v5, "onResume +"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1888
    .local v2, pMgr:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1889
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1961
    :goto_0
    return-void

    .line 1894
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doStart()V

    .line 1896
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v4, :cond_1

    .line 1897
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SSurfaceView;->onResume()V

    .line 1900
    :cond_1
    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v4, v5, :cond_2

    const/4 v4, 0x3

    iget v5, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v4, v5, :cond_3

    .line 1901
    :cond_2
    const-string v4, "[HtcMusic]"

    const-string v5, "DMC/Push mode..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    :cond_3
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 1906
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v4, :cond_4

    .line 1907
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 1910
    :cond_4
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1913
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-eqz v4, :cond_5

    .line 1914
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1918
    :cond_5
    const/16 v4, 0x12

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 1919
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1921
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v4, :cond_6

    .line 1922
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v4}, Lcom/htc/music/GliderAdapter;->resumeDecoder()V

    .line 1925
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 1926
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v0

    .line 1927
    .local v0, next:J
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_7

    .line 1929
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1930
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z

    .line 1931
    invoke-direct {p0, v0, v1}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    :cond_7
    :goto_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkedInternalStorageWhenResume(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1938
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 1942
    :cond_8
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/music/HtcMusic$18;

    invoke-direct {v4, p0}, Lcom/htc/music/HtcMusic$18;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1948
    .local v3, setHeadsetOwnerThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1950
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    if-eqz v4, :cond_9

    .line 1951
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v4

    new-instance v5, Lcom/htc/music/HtcMusic$InitialUIIdlehandler;

    invoke-direct {v5, p0}, Lcom/htc/music/HtcMusic$InitialUIIdlehandler;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v4, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1952
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 1958
    :goto_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->setDLNAPreloadEnable(Z)V

    .line 1960
    const-string v4, "[HtcMusic]"

    const-string v5, "onResume -"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1954
    :cond_9
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1955
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 1933
    .end local v3           #setHeadsetOwnerThread:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1704
    const-string v1, "configchange"

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1705
    const-string v0, "message"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    const-string v0, "downloadalbumartid"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1708
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1710
    :cond_1
    const-string v0, "currentAudioId"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1711
    const-string v0, "currentAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_3

    .line 1721
    const-string v0, "ringtoneAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    const-string v0, "ringtoneAudioId"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1724
    const-string v0, "ringtoneAudioType"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1728
    :cond_3
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 1729
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 1732
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-eqz v0, :cond_4

    .line 1733
    const-string v0, "islyricsvisible"

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1736
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1737
    return-void

    .line 1704
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectionChange(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 6024
    new-instance v0, Lcom/htc/music/HtcMusic$36;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$36;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6029
    return-void
.end method

.method public onSelectionChangeUI(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 6033
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_0

    .line 6034
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 6036
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1741
    const-string v1, "[HtcMusic]"

    const-string v2, "[HtcMusic][onStart Begin]"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1743
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mActivityStoped:Z

    .line 1744
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->dismissActiveDialog()V

    .line 1748
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1749
    .local v0, pMgr:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1762
    :goto_0
    return-void

    .line 1753
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doStart()V

    .line 1759
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->registerTVDisplayHelper()V

    .line 1761
    const-string v1, "[HtcMusic]"

    const-string v2, "[HtcMusic][onStart End]"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 6041
    new-instance v0, Lcom/htc/music/HtcMusic$37;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$37;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6046
    return-void
.end method

.method public onStateChangeUI(I)V
    .locals 10
    .parameter "nState"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6050
    iput p1, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 6051
    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChangeUI mGliderState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6053
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 6113
    :cond_0
    :goto_0
    return-void

    .line 6055
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v4, :cond_0

    .line 6058
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6059
    iget v4, p0, Lcom/htc/music/HtcMusic;->prevScrollState:I

    invoke-static {p1, v4}, Lcom/htc/music/util/ProfilerPerformanceUtils;->profilerNowPlayingScrolling(II)I

    move-result v4

    iput v4, p0, Lcom/htc/music/HtcMusic;->prevScrollState:I

    .line 6062
    :cond_2
    if-eqz p1, :cond_3

    const/4 v4, 0x2

    if-ne v4, p1, :cond_4

    .line 6064
    :cond_3
    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPlayAlbumCookie = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/HtcMusic;->mPlayAlbumCookie:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6065
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    .line 6066
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_0

    .line 6067
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v4, v9}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    goto :goto_0

    .line 6071
    :cond_4
    const/16 v4, 0x12

    if-ne v4, p1, :cond_0

    .line 6072
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->stopAnimationTimer()V

    .line 6073
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v4, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 6074
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    if-ne v8, v4, :cond_7

    .line 6075
    iget v4, p0, Lcom/htc/music/HtcMusic;->mPlayAlbumCookie:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/music/HtcMusic;->mPlayAlbumCookie:I

    .line 6076
    iget v4, p0, Lcom/htc/music/HtcMusic;->mPlayAlbumCookie:I

    if-gez v4, :cond_5

    .line 6077
    iput v7, p0, Lcom/htc/music/HtcMusic;->mPlayAlbumCookie:I

    .line 6078
    :cond_5
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getSelection()I

    move-result v2

    .line 6079
    .local v2, position:I
    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PLAY_ALBUM position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6080
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_6

    .line 6081
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget v5, p0, Lcom/htc/music/HtcMusic;->mPlayAlbumCookie:I

    invoke-virtual {v4, v9, v2, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 6083
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v4, v9}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 6084
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6111
    .end local v1           #msg:Landroid/os/Message;
    :cond_6
    :goto_1
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    goto/16 :goto_0

    .line 6090
    .end local v2           #position:I
    :cond_7
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getSelection()I

    move-result v2

    .line 6091
    .restart local v2       #position:I
    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChangeUI STATE_IDLE position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6092
    const/4 v3, 0x0

    .line 6094
    .local v3, queuePos:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getQueuePositionImmediately()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 6098
    :goto_2
    if-eq v2, v3, :cond_6

    .line 6099
    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queue pos is not equal to position queue pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6101
    if-nez v3, :cond_8

    .line 6102
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v4, v3, v7}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 6103
    :cond_8
    if-ge v3, v2, :cond_9

    .line 6104
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v4, v7, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 6105
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v4, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->scrollTo(I)V

    goto :goto_1

    .line 6095
    :catch_0
    move-exception v0

    .line 6096
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 6107
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_9
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v4, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->scrollTo(I)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1581
    const-string v1, "[HtcMusic]"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityStoped:Z

    .line 1586
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v1, :cond_0

    .line 1587
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->onPause()V

    .line 1590
    :cond_0
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_2

    .line 1591
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 1593
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 1594
    const-string v1, "Music"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 1597
    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "NOW_PLAYING_SWITCH"

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    .line 1599
    .local v0, nowPlayingViewOn:Z
    if-eqz v0, :cond_7

    .line 1602
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NOW_PLAYING_SWITCH"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1609
    .end local v0           #nowPlayingViewOn:Z
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v1, :cond_3

    .line 1611
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 1612
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 1615
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1616
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1618
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1622
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1627
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1632
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1633
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    if-eqz v1, :cond_4

    .line 1634
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 1635
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    .line 1637
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1638
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1641
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1644
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    .line 1645
    iput-object v5, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 1646
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v1, :cond_5

    .line 1647
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 1653
    :cond_5
    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 1655
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->dismissWaitDialog()V

    .line 1656
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->releaseTVDisplayHelper()V

    .line 1658
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v1, :cond_6

    .line 1659
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 1662
    :cond_6
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1663
    const-string v1, "[HtcMusic]"

    const-string v2, "onStop finished"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    return-void

    .line 1605
    .restart local v0       #nowPlayingViewOn:Z
    :cond_7
    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    goto :goto_0

    .line 1641
    .end local v0           #nowPlayingViewOn:Z
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 1639
    :catch_0
    move-exception v1

    .line 1641
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_4

    .line 1628
    :catch_1
    move-exception v1

    goto :goto_3

    .line 1623
    :catch_2
    move-exception v1

    goto :goto_2

    .line 1619
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 6552
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->queryUpdateAlbumArtSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsAutoUpdate:Z

    .line 6553
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbum()V

    .line 6554
    return-void
.end method

.method registerDmcReceiver()V
    .locals 3

    .prologue
    .line 6938
    new-instance v1, Lcom/htc/music/HtcMusic$DMCServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/HtcMusic$DMCServiceListener;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Lcom/htc/music/HtcMusic$DMCServiceListener;

    .line 6939
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6940
    .local v0, fDMCSvc:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.dmcservice.released"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6941
    const-string v1, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6942
    const-string v1, "com.htc.music.dmcservice.repeat_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6943
    const-string v1, "com.htc.music.dmcservice.shuffle_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6944
    const-string v1, "com.htc.music.dmcservice.dlna_connected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6945
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Lcom/htc/music/HtcMusic$DMCServiceListener;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6946
    return-void
.end method

.method public setNowPlayingVisible(Z)V
    .locals 9
    .parameter "setVisible"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5581
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-ne v4, p1, :cond_1

    .line 5655
    :cond_0
    :goto_0
    return-void

    .line 5584
    :cond_1
    if-eqz p1, :cond_6

    .line 5585
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5586
    .local v0, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/track"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5587
    const-string v4, "isnowplayinglist"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5589
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-nez v4, :cond_5

    .line 5590
    new-instance v4, Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {v4, p0}, Lcom/htc/music/NowPlayingViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    .line 5591
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4, v0, v8}, Lcom/htc/music/NowPlayingViewHelper;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 5596
    :goto_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 5597
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 5599
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    .line 5614
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    .line 5616
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-eqz v4, :cond_0

    .line 5617
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x2c

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 5618
    .local v2, queue:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x2d

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 5620
    .local v3, soundhound:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x2f

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 5622
    .local v1, lyric:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_8

    .line 5625
    if-eqz v2, :cond_3

    .line 5626
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5628
    :cond_3
    if-eqz v3, :cond_4

    .line 5629
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5632
    :cond_4
    if-eqz v1, :cond_0

    .line 5634
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 5593
    .end local v1           #lyric:Landroid/view/MenuItem;
    .end local v2           #queue:Landroid/view/MenuItem;
    .end local v3           #soundhound:Landroid/view/MenuItem;
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4, v0}, Lcom/htc/music/NowPlayingViewHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 5594
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->onRestart()V

    goto :goto_1

    .line 5601
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v4, :cond_2

    .line 5602
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v4, :cond_7

    .line 5603
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setVisibility(Z)V

    .line 5605
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->requestLayout()V

    .line 5608
    :cond_7
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    .line 5609
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->finish()V

    .line 5610
    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    goto :goto_2

    .line 5640
    .restart local v1       #lyric:Landroid/view/MenuItem;
    .restart local v2       #queue:Landroid/view/MenuItem;
    .restart local v3       #soundhound:Landroid/view/MenuItem;
    :cond_8
    if-eqz v2, :cond_9

    .line 5641
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5643
    :cond_9
    if-eqz v3, :cond_a

    .line 5644
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5647
    :cond_a
    if-eqz v1, :cond_0

    .line 5649
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected setProgressTimeIndicator()V
    .locals 8

    .prologue
    .line 6732
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 6734
    :try_start_0
    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v0

    .line 6735
    .local v0, pos:J
    :goto_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6741
    .end local v0           #pos:J
    :cond_0
    :goto_1
    return-void

    .line 6734
    :cond_1
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6738
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected showNewDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 6723
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->showNewDialog(ILandroid/os/Bundle;)V

    .line 6724
    return-void
.end method

.method protected showNewDialog(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "args"

    .prologue
    .line 6727
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 6728
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/HtcMusic;->showDialog(ILandroid/os/Bundle;)Z

    .line 6729
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 5
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 3081
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3082
    .local v2, mIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3083
    const-string v3, "content://servo_search/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3084
    const-string v3, "CATEGORY_ORDER"

    const-string v4, "media/audio"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3085
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3087
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3088
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 3100
    :cond_0
    :goto_0
    return-void

    .line 3090
    :cond_1
    iget v3, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v3, :cond_0

    .line 3091
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3093
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3094
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method switchToDmp(Z)V
    .locals 3
    .parameter "isPlaying"

    .prologue
    .line 3424
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3425
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->pauseAsync()V

    .line 3426
    :cond_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->switchMode(I)V

    .line 3427
    if-eqz p1, :cond_1

    .line 3428
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->playAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3433
    :cond_1
    :goto_0
    return-void

    .line 3430
    :catch_0
    move-exception v0

    .line 3431
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method syncUpdateCurrentAlbum()V
    .locals 8

    .prologue
    .line 6568
    const/4 v1, 0x0

    .line 6570
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    iget v0, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 6571
    .local v0, currentAlbumId:I
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v5, :cond_0

    .line 6572
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 6573
    iput v0, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 6575
    :cond_0
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    int-to-long v6, v0

    invoke-static {p0, v5, v6, v7}, Lcom/htc/music/util/ContentUtils;->getAlbum(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 6576
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6577
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 6578
    .local v2, dlPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartRevertPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 6580
    .local v3, dlRevertPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 6581
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z

    .line 6585
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6597
    .end local v2           #dlPath:Ljava/lang/String;
    .end local v3           #dlRevertPath:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .line 6598
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6599
    .end local v0           #currentAlbumId:I
    :goto_2
    const/4 v1, 0x0

    .line 6602
    :cond_1
    return-void

    .line 6583
    .restart local v0       #currentAlbumId:I
    .restart local v2       #dlPath:Ljava/lang/String;
    .restart local v3       #dlRevertPath:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6589
    .end local v0           #currentAlbumId:I
    .end local v2           #dlPath:Ljava/lang/String;
    .end local v3           #dlRevertPath:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 6590
    .local v4, ex:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "[HtcMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught remote exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6597
    if-eqz v1, :cond_1

    .line 6598
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 6587
    .end local v4           #ex:Landroid/os/RemoteException;
    .restart local v0       #currentAlbumId:I
    :cond_3
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 6592
    .end local v0           #currentAlbumId:I
    :catch_1
    move-exception v4

    .line 6593
    .local v4, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v5, "[HtcMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6597
    if-eqz v1, :cond_1

    .line 6598
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 6597
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_4

    .line 6598
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6599
    const/4 v1, 0x0

    .line 6597
    :cond_4
    throw v5
.end method

.method syncUpdateCurrentAlbumAndRefreshDialog(Landroid/app/Dialog;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 6556
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbum()V

    .line 6557
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6558
    const v3, 0x7f07004d

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    .line 6559
    .local v2, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6560
    .local v0, adapter:Landroid/widget/ListAdapter;
    instance-of v3, v0, Landroid/widget/ArrayAdapter;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 6561
    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 6562
    .local v1, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 6566
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    .end local v2           #listView:Lcom/htc/widget/HtcListView;
    :cond_0
    return-void
.end method

.method unregisterDmcReceiver()V
    .locals 1

    .prologue
    .line 6949
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Lcom/htc/music/HtcMusic$DMCServiceListener;

    if-eqz v0, :cond_0

    .line 6950
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Lcom/htc/music/HtcMusic$DMCServiceListener;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6951
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Lcom/htc/music/HtcMusic$DMCServiceListener;

    .line 6953
    :cond_0
    return-void
.end method
