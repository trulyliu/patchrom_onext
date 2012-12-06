.class public Lcom/htc/music/carmode/CarNowPlayingActivity;
.super Landroid/app/Activity;
.source "CarNowPlayingActivity.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;
.implements Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;
.implements Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnContainerClickListener;
.implements Lcom/htc/music/util/IMonitorHeadSetStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;,
        Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;,
        Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    }
.end annotation


# static fields
.field private static final ALBUM_QUEUE:Ljava/lang/String; = "album_queue"

.field private static final ALBUM_QUEUE_POS:Ljava/lang/String; = "album_queue_pos"

.field private static final ALBUM_QUEUE_SIZE:Ljava/lang/String; = "album_queue_size"

.field private static final COEFFICIENT_GESTURE_ALBUM_RATIO:F = 0.3f

.field private static final COEFFICIENT_GESTURE_BACK_RATIO:F = 0.2f

.field private static final COEFFICIENT_TOUCH_INTERVAL:F = 100.0f

.field private static final COEFFICIENT_TOUCH_RANGE_RATIO:F = 0.03f

.field private static final GLIDER_STATE:Ljava/lang/String; = "glider_state"

.field private static final IS_BEATS_ON:Ljava/lang/String; = "is_beats_on"

.field private static final IS_HEADSET_PLUGGED:Ljava/lang/String; = "is_headset_plugged"

.field private static final IS_PLAYING:Ljava/lang/String; = "is_playing"

.field private static final NONUI_ANIMATION_INIT:I = 0xd

.field private static final NONUI_DO_NEXT:I = 0x6

.field private static final NONUI_DO_PLAY_PAUSE:I = 0x3

.field private static final NONUI_DO_PREV:I = 0x7

.field private static final NONUI_DO_REPEAT:I = 0x5

.field private static final NONUI_DO_SEEK:I = 0x11

.field private static final NONUI_DO_SHUFFLE:I = 0x4

.field private static final NONUI_DO_STATE_CHANGE_UI:I = 0x18

.field private static final NONUI_END_ANIMATION:I = 0x10

.field private static final NONUI_GET_BEATS_STATE:I = 0x12

.field private static final NONUI_GET_BEATS_STATE_HEADSET_CHANGED:I = 0x13

.field private static final NONUI_GET_PLAY_STATE:I = 0x9

.field private static final NONUI_GET_REPEAT_STATE:I = 0xb

.field private static final NONUI_GET_SHUFFLE_STATE:I = 0xa

.field private static final NONUI_GET_TRACK_INFO:I = 0x2

.field private static final NONUI_GET_TRACK_TIME:I = 0x8

.field private static final NONUI_ON_START:I = 0x17

.field private static final NONUI_ON_STOP:I = 0x16

.field private static final NONUI_PLAY_ALBUM:I = 0x1

.field private static final NONUI_SERVICE_CONNECTED:I = 0x14

.field private static final NONUI_SERVICE_DISCONNECTED:I = 0x15

.field private static final NONUI_START_NEXT_ANIMATION:I = 0xe

.field private static final NONUI_START_PREV_ANIMATION:I = 0xf

.field private static final NONUI_UPDATE_GLIDER:I = 0xc

.field private static final REPEAT_MODE:Ljava/lang/String; = "repeat_mode"

.field private static final SEEK_POS:Ljava/lang/String; = "seek_pos"

.field private static final SHUFFLE_MODE:Ljava/lang/String; = "shuffle_mode"

.field private static final TAG:Ljava/lang/String; = "[CarNowPlayingActivity]"

.field private static final UI_ANIMATION_INIT:I = 0x7

.field private static final UI_ANIMATION_TIMEOUT:I = 0xe

.field private static final UI_DISPATCH_TOUCH_EVENT:I = 0xb

.field private static final UI_DO_STATE_CHANGE_UI:I = 0xf

.field private static final UI_QUEUE_NOT_FOUND:I = 0xc

.field private static final UI_REFRESH_BEATS_STATE:I = 0xd

.field private static final UI_REFRESH_GLIDER:I = 0x8

.field private static final UI_REFRESH_PLAY_STATE:I = 0x2

.field private static final UI_REFRESH_REPEAT:I = 0x4

.field private static final UI_REFRESH_SHUFFLE:I = 0x3

.field private static final UI_REFRESH_TRACK_INFO:I = 0x1

.field private static final UI_REFRESH_TRACK_TIME:I = 0x5

.field private static final UI_SHOW_TOAST:I = 0x6

.field private static final UI_START_NEXT_ANIMATION:I = 0x9

.field private static final UI_START_PREV_ANIMATION:I = 0xa


# instance fields
.field private final ANIMATION_TIME_OUT_DURATION:I

.field private final GLOBAL_BEATS_EFFECT:I

.field private m3DLayout:Landroid/widget/RelativeLayout;

.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mAlbumArtGesture:Landroid/view/View;

.field private mAlbumArtGestureDetector:Landroid/view/GestureDetector;

.field private mAlbumArtistName:Landroid/widget/TextView;

.field private mBeatsIndicator:Landroid/widget/ImageView;

.field private mCarDockListener:Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;

.field private mElapsedTime:J

.field private mErrorText:Landroid/widget/TextView;

.field mFirstMe:Landroid/view/MotionEvent;

.field mFirstTouchTime:J

.field private mGestureAlbumWidth:D

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureHeight:D

.field private mGlanceView:Landroid/view/ViewGroup;

.field private mGlanceViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

.field private mGliderState:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

.field mIsFling:Z

.field private mIsSeriveBinded:Z

.field private mMainLayout:Landroid/view/ViewGroup;

.field private mNeedBindService:Z

.field private mNextButton:Lcom/htc/widget/HtcRimImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

.field private mPauseButton:Lcom/htc/widget/HtcRimImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field public mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

.field private mPrevButton:Lcom/htc/widget/HtcRimImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mQueueSize:I

.field private mRepeatButton:Lcom/htc/widget/HtcImageButton;

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field private mRepeatMode:I

.field private mRepeatTouchListener:Landroid/view/View$OnTouchListener;

.field protected mScanReceiver:Landroid/content/BroadcastReceiver;

.field mSecondMe:Landroid/view/MotionEvent;

.field mSecondTouchTime:J

.field mService:Lcom/htc/music/IMediaPlaybackService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mShuffleButton:Lcom/htc/widget/HtcImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mShuffleMode:I

.field private mShuffleRepeatDivider:Landroid/view/View;

.field private mShuffleTouchListener:Landroid/view/View$OnTouchListener;

.field private mStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

.field private mTitle:Lcom/htc/widget/ActionBarText;

.field private mToast:Landroid/widget/Toast;

.field private mTotalTime:J

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchRangeX:D

.field private mTouchRangeY:D

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackTimeInfo:Landroid/widget/TextView;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4034

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 77
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    .line 80
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    .line 81
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 82
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 83
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 84
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    .line 85
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    .line 86
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    .line 87
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    .line 88
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    .line 89
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    .line 90
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    .line 91
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;

    .line 92
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    .line 96
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    .line 97
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    .line 98
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    .line 99
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    .line 100
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleRepeatDivider:Landroid/view/View;

    .line 101
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    .line 104
    iput v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    .line 107
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    .line 108
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mElapsedTime:J

    .line 111
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 112
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z

    .line 113
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNeedBindService:Z

    .line 120
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    .line 121
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 177
    const/16 v0, 0x1770

    iput v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->ANIMATION_TIME_OUT_DURATION:I

    .line 180
    const/16 v0, 0x384

    iput v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->GLOBAL_BEATS_EFFECT:I

    .line 190
    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    .line 191
    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    .line 194
    const-wide/high16 v0, 0x4049

    iput-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    .line 197
    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    .line 199
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGesture:Landroid/view/View;

    .line 201
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;

    .line 348
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$3;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 361
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    .line 362
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondMe:Landroid/view/MotionEvent;

    .line 363
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsFling:Z

    .line 364
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstTouchTime:J

    .line 365
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondTouchTime:J

    .line 366
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$4;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 966
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$9;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 1029
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$10;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1134
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$13;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$13;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 1149
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$14;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$14;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleTouchListener:Landroid/view/View$OnTouchListener;

    .line 1172
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$15;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$15;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatTouchListener:Landroid/view/View$OnTouchListener;

    .line 1252
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$16;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$16;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 1263
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$17;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$17;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1281
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$18;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextListener:Landroid/view/View$OnClickListener;

    .line 1287
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$19;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$19;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 1319
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$20;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    .line 1858
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$21;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$21;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startLibraryActivity()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->launchSoundEffectSetting()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateGlider()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/htc/music/carmode/CarNowPlayingActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doSelectionChangeUI(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doStateChangeUI(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/carmode/CarNowPlayingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->uiRefreshShuffleButton(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/music/carmode/CarNowPlayingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->uiRefreshRepeatButton(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/carmode/CarNowPlayingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/ActionBarText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setPlayPauseButtonImage(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setShuffleButtonImage(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setRepeatButtonImage(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshTrackTime(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/music/carmode/CarNowPlayingActivity;[II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshGlider([II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/music/carmode/CarNowPlayingActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->checkCurrentStorateState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->prev()V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateShuffletState(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateRepeatState(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiPlayAlbum(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUIGetTrackInfo()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiDoPauseResume()V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiDoShuffle()V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiDoRepeat()V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiDoNext()V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiDoPrev()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->next()V

    return-void
.end method

.method static synthetic access$5000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetTrackTime()V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetPlayState()V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetShuffleState()V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetRepeatState()V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiUpdateGlider()V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiAnimationInit()V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiStartNextAnimation()V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiStartPrevAnimation()V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiEndAnimation()V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiSeek(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetBeatsState()V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUiGetBeatsStateHeadsetChanged()V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNeedBindService:Z

    return v0
.end method

.method static synthetic access$6202(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNeedBindService:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z

    return v0
.end method

.method static synthetic access$6302(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private animationRefresh(Landroid/os/Handler;)V
    .locals 3
    .parameter "nonUiHandler"

    .prologue
    const/16 v2, 0xd

    .line 1790
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "animationRefresh()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    if-eqz p1, :cond_1

    .line 1792
    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1793
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1794
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1796
    :cond_1
    return-void
.end method

.method private checkCurrentStorateState()Z
    .locals 4

    .prologue
    .line 1829
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1830
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1832
    :cond_0
    const/4 v1, 0x1

    .line 1853
    :goto_0
    return v1

    .line 1836
    :cond_1
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1837
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1838
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x7f060039

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1853
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1840
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x7f060038

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1843
    :cond_3
    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "bad_removal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1845
    :cond_4
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x20400a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1847
    :cond_5
    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1848
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x20401fa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1850
    :cond_6
    const-string v1, "[CarNowPlayingActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalStorageState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private doSelectionChangeUI(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->onSelectionChanged(I)V

    .line 1084
    :cond_0
    return-void
.end method

.method private doStateChangeUI(I)V
    .locals 4
    .parameter "nState"

    .prologue
    .line 1097
    iput p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    .line 1098
    const-string v1, "[CarNowPlayingActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChangeUI mGliderState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v1, :cond_0

    .line 1105
    const/16 v1, 0x12

    if-ne v1, p1, :cond_0

    .line 1106
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->stopAnimationTimer()V

    .line 1107
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v1, :cond_2

    .line 1108
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1109
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "glider_state"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1110
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1112
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    goto :goto_0
.end method

.method private initAlbumArtGestureDetector()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "Gesture initKeypadGestureDetector"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/music/carmode/CarNowPlayingActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$2;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;

    .line 340
    return-void
.end method

.method private initGlider()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 724
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-nez v1, :cond_0

    .line 725
    new-instance v1, Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-direct {v1, p0}, Lcom/htc/sunnyCore/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 726
    const-string v1, "common_app_bkg"

    const v2, 0x2080001

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 728
    .local v0, bkgIdentifier:I
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->set3DGlobalBackground(I)V

    .line 730
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 733
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 736
    .end local v0           #bkgIdentifier:I
    :cond_0
    return-void
.end method

.method private initKeypadGestureDetector()V
    .locals 2

    .prologue
    .line 266
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "Gesture initKeypadGestureDetector"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/music/carmode/CarNowPlayingActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$1;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 289
    return-void
.end method

.method private initPlaybackControl()V
    .locals 9

    .prologue
    const v8, 0x7f020007

    const v7, 0x7f020001

    const/high16 v6, 0x7f02

    .line 765
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    .line 766
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    const v2, 0x203007f

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 767
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    .line 768
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    const v2, 0x2030081

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 770
    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    .line 771
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v2, "automotive_common_b_transport_large_outer"

    const v3, 0x7f020004

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "automotive_common_b_transport_large_pressed"

    const v4, 0x7f020005

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "automotive_common_b_transport_large_rest"

    const v5, 0x7f020006

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 781
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 782
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    .line 786
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v2, "automative_common_b_transport_outer"

    invoke-static {p0, v2, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "automotive_common_b_transport_pressed"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "automative_common_b_transport_rest"

    invoke-static {p0, v4, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 796
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 797
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    .line 800
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v2, "automative_common_b_transport_outer"

    invoke-static {p0, v2, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "automotive_common_b_transport_pressed"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "automative_common_b_transport_rest"

    invoke-static {p0, v4, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 810
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 811
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    const v1, 0x7f070036

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    .line 814
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 815
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 818
    const v1, 0x7f070034

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    .line 819
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 820
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 828
    const v1, 0x7f070032

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleRepeatDivider:Landroid/view/View;

    .line 829
    const-string v1, "common_b_div"

    const v2, 0x2080036

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 830
    .local v0, resId:I
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleRepeatDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 832
    const v1, 0x7f070030

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    .line 833
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    const v2, 0x2030082

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 835
    return-void
.end method

.method private initPresentation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 740
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 743
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 745
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setEdgeItemScrollRatio(F)V

    .line 746
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setOnContainerClickListener(Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnContainerClickListener;)V

    .line 747
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setOnSelectionChangeListener(Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;)V

    .line 748
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setOnStateListener(Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;)V

    .line 749
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledReflection(Z)V

    .line 750
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setShiftOneItemMode(Z)V

    .line 751
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 752
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableScroll(Z)V

    .line 753
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-nez v0, :cond_1

    .line 757
    new-instance v0, Lcom/htc/music/carmode/CarGliderAdapter;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-direct {v0, p0, v1, v3}, Lcom/htc/music/carmode/CarGliderAdapter;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/sunnyCore/widget/presentation/SPresentation;Z)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    .line 758
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;)V

    .line 759
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setOnLayoutListener(Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;)V

    .line 761
    :cond_1
    return-void
.end method

.method private initTitleBar()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 628
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v6, :cond_0

    .line 720
    :goto_0
    return-void

    .line 632
    :cond_0
    new-instance v6, Lcom/htc/widget/ActionBarText;

    invoke-direct {v6, p0, v9}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    .line 633
    new-instance v6, Lcom/htc/widget/ActionBarContainer;

    invoke-direct {v6, p0}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 634
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v9}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    .line 635
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    const v7, 0x7f060014

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 636
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 637
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 638
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 639
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 640
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v11}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 641
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v11}, Lcom/htc/widget/ActionBarContainer;->setClickable(Z)V

    .line 642
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v7, Lcom/htc/music/carmode/CarNowPlayingActivity$5;

    invoke-direct {v7, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$5;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v7, Lcom/htc/music/carmode/CarNowPlayingActivity$6;

    invoke-direct {v7, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$6;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    new-instance v4, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v4, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 664
    .local v4, searchView:Lcom/htc/widget/ActionBarItemView;
    const v6, 0x7f020012

    invoke-virtual {v4, v6}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 665
    invoke-virtual {v4, v9}, Lcom/htc/widget/ActionBarItemView;->setSupportMode(I)V

    .line 666
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 667
    new-instance v6, Lcom/htc/music/carmode/CarNowPlayingActivity$7;

    invoke-direct {v6, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$7;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v4, v6}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    new-instance v5, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v5, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 680
    .local v5, soundEffectView:Lcom/htc/widget/ActionBarItemView;
    const v6, 0x7f02000b

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 681
    invoke-virtual {v5, v9}, Lcom/htc/widget/ActionBarItemView;->setSupportMode(I)V

    .line 682
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v5}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 683
    new-instance v6, Lcom/htc/music/carmode/CarNowPlayingActivity$8;

    invoke-direct {v6, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$8;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    const/4 v2, 0x0

    .line 693
    .local v2, linearLayoutInternal:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout;

    .end local v2           #linearLayoutInternal:Landroid/widget/LinearLayout;
    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 694
    .restart local v2       #linearLayoutInternal:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarText;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 699
    .local v0, animateTextLayout:Landroid/view/View;
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v6, v0}, Lcom/htc/widget/ActionBarText;->removeView(Landroid/view/View;)V

    .line 700
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v6, v2}, Lcom/htc/widget/ActionBarText;->addView(Landroid/view/View;)V

    .line 701
    const/4 v3, 0x0

    .line 703
    .local v3, lparams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 706
    .restart local v3       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .line 708
    .local v1, frameLayoutInternal:Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout;

    .end local v1           #frameLayoutInternal:Landroid/widget/FrameLayout;
    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 709
    .restart local v1       #frameLayoutInternal:Landroid/widget/FrameLayout;
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 711
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 713
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    .line 714
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    const v7, 0x7f02000a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 715
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 716
    .restart local v3       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2050001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 717
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 719
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private isBeatsEffectOn(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 1906
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1907
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 1908
    const-string v3, "[CarNowPlayingActivity]"

    const-string v4, "isBeatsEffectOn - audioManager = null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const/4 v2, 0x0

    .line 1915
    :goto_0
    return v2

    :cond_0
    move-object v1, v0

    .line 1912
    check-cast v1, Landroid/media/HtcIfAudioManager;

    .line 1913
    .local v1, ifam:Landroid/media/HtcIfAudioManager;
    invoke-interface {v1}, Landroid/media/HtcIfAudioManager;->getBeatsState()Z

    move-result v2

    .line 1914
    .local v2, isBeatsOn:Z
    const-string v3, "[CarNowPlayingActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBeatsOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isGlobalBeatEffectOn()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1919
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1920
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_1

    .line 1921
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "getGlobalBeatEffect - audioManager = null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, v0

    .line 1925
    check-cast v2, Landroid/media/HtcIfAudioManager;

    .line 1926
    .local v2, ifam:Landroid/media/HtcIfAudioManager;
    invoke-interface {v2}, Landroid/media/HtcIfAudioManager;->getGlobalEffect()I

    move-result v1

    .line 1927
    .local v1, globalEffect:I
    const-string v4, "[CarNowPlayingActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "globalEffect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    const/16 v4, 0x384

    if-ne v1, v4, :cond_0

    .line 1929
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private launchSoundEffectSetting()V
    .locals 4

    .prologue
    .line 1936
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1937
    .local v1, soundEffectIntent:Landroid/content/Intent;
    const-string v2, "com.htc.AutoMotive"

    const-string v3, "com.htc.AutoMotive.soundenhancersetting.SoundEnhancerSet"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1940
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1941
    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1945
    .end local v1           #soundEffectIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1942
    :catch_0
    move-exception v0

    .line 1943
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "Cannot found com.htc.AutoMotive.soundenhancersetting.SoundEnhancerSet"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private next()V
    .locals 4

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v1, :cond_0

    .line 1295
    iget v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1296
    .local v0, skipNext:Z
    :goto_0
    if-nez v0, :cond_2

    .line 1297
    const/16 v1, 0x9

    iput v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    .line 1298
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startAnimationTimer()V

    .line 1299
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1304
    .end local v0           #skipNext:Z
    :cond_0
    :goto_1
    return-void

    .line 1295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1301
    .restart local v0       #skipNext:Z
    :cond_2
    const-string v1, "[CarNowPlayingActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip next mGliderState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private nonUiRefreshRepeatButton()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 1215
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 1216
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1217
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1218
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1220
    .local v1, msg:Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 1221
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v2

    iput v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "repeat_mode"

    iget v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatMode:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1226
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1228
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 1222
    .restart local v1       #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1223
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private nonUiRefreshShuffleButton()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    .line 1199
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 1200
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1201
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1202
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1204
    .local v1, msg:Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 1205
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v2

    iput v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "shuffle_mode"

    iget v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleMode:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1210
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1212
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 1206
    .restart local v1       #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1207
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHandleNonUIGetTrackInfo()V
    .locals 21

    .prologue
    .line 2228
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 2229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    .line 2230
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queueSize = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 2232
    .local v16, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    if-nez v2, :cond_1

    .line 2233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2369
    .end local v16           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2237
    .restart local v16       #path:Ljava/lang/String;
    :cond_1
    new-instance v20, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/music/carmode/CarNowPlayingActivity$1;)V

    .line 2238
    .local v20, trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    if-eqz v16, :cond_e

    .line 2239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2242
    const-string v2, "<unknown>"

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2243
    const v2, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2246
    :cond_2
    const-string v2, "<unknown>"

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2247
    const v2, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2250
    :cond_3
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    if-nez v2, :cond_d

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    if-nez v2, :cond_d

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 2252
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2256
    .local v13, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v13, :cond_4

    .line 2258
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2260
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2263
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2265
    const/4 v2, 0x7

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2272
    :goto_1
    :try_start_2
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2273
    const/4 v13, 0x0

    .line 2278
    :cond_4
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2279
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2281
    :cond_5
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2282
    :cond_6
    const v2, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2284
    :cond_7
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 2285
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2287
    :cond_8
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2288
    :cond_9
    const v2, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2290
    :cond_a
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 2291
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2293
    :cond_b
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2295
    :cond_c
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2296
    const/4 v14, -0x1

    .local v14, nBegin:I
    const/4 v15, -0x1

    .line 2298
    .local v15, nEnd:I
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 2299
    const-string v2, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 2301
    if-ltz v14, :cond_d

    if-le v15, v14, :cond_d

    .line 2302
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2359
    .end local v13           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v14           #nBegin:I
    .end local v15           #nEnd:I
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    iput v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mQueuePos:I

    .line 2360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mQueueSize:I

    .line 2361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    .line 2362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 2363
    .local v19, refreshMsg:Landroid/os/Message;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2366
    .end local v16           #path:Ljava/lang/String;
    .end local v19           #refreshMsg:Landroid/os/Message;
    .end local v20           #trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    :catch_0
    move-exception v11

    .line 2367
    .local v11, ex:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2267
    .end local v11           #ex:Landroid/os/RemoteException;
    .restart local v13       #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v16       #path:Ljava/lang/String;
    .restart local v20       #trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    :catch_1
    move-exception v11

    .line 2268
    .local v11, ex:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTrackInfoP(), Uri.parse(path) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2310
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v13           #mmr:Landroid/media/MediaMetadataRetriever;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v18

    .line 2311
    .local v18, queue:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v17

    .line 2312
    .local v17, position:I
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    array-length v2, v0

    if-lez v2, :cond_0

    if-ltz v17, :cond_0

    move-object/from16 v0, v18

    array-length v2, v0

    move/from16 v0, v17

    if-le v2, v0, :cond_0

    .line 2318
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio._id AS _id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_data"

    aput-object v3, v4, v2

    .line 2326
    .local v4, cursorCols:[Ljava/lang/String;
    aget v2, v18, v17

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 2327
    .local v12, id:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "is_music>=1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2331
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_f

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_10

    .line 2332
    :cond_f
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "Cannot find cursor in update Track"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2335
    :cond_10
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2336
    const-string v2, "artist"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2338
    .local v9, artistName:Ljava/lang/String;
    if-eqz v9, :cond_11

    const-string v2, "<unknown>"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2339
    :cond_11
    const v2, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2341
    :cond_12
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artistName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    move-object/from16 v0, v20

    iput-object v9, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2343
    const-string v2, "album"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2345
    .local v8, albumName:Ljava/lang/String;
    if-eqz v8, :cond_13

    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2346
    :cond_13
    const v2, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2348
    :cond_14
    move-object/from16 v0, v20

    iput-object v8, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2349
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2352
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTrackName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    if-eqz v10, :cond_d

    .line 2355
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method

.method private onHandleNonUiAnimationInit()V
    .locals 5

    .prologue
    .line 2176
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2177
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2178
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2179
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2187
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 2182
    :cond_1
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "onHandleNonUiAnimationInit"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2186
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateGlider()V

    goto :goto_0

    .line 2183
    :catch_0
    move-exception v0

    .line 2184
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private onHandleNonUiDoNext()V
    .locals 3

    .prologue
    .line 2121
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 2122
    const-string v1, "[CarNowPlayingActivity]"

    const-string v2, "doNext"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->nextAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2128
    :cond_0
    :goto_0
    return-void

    .line 2125
    :catch_0
    move-exception v0

    .line 2126
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHandleNonUiDoPauseResume()V
    .locals 3

    .prologue
    .line 2105
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 2106
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2107
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->pauseAsync()V

    .line 2108
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshPlaybackControl(Z)V

    .line 2117
    :cond_0
    :goto_0
    return-void

    .line 2110
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->playAsync()V

    .line 2111
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshPlaybackControl(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2114
    :catch_0
    move-exception v0

    .line 2115
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "[CarNowPlayingActivity]"

    const-string v2, "RemoteException in doPauseResume"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onHandleNonUiDoPrev()V
    .locals 3

    .prologue
    .line 2132
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 2133
    const-string v1, "[CarNowPlayingActivity]"

    const-string v2, "doPrev"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->prevAsync()V

    .line 2135
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime(Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    :cond_0
    :goto_0
    return-void

    .line 2137
    :catch_0
    move-exception v0

    .line 2138
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHandleNonUiDoRepeat()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2080
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 2081
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    .line 2082
    .local v1, mode:I
    if-nez v1, :cond_1

    .line 2083
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 2084
    const v2, 0x7f060045

    invoke-direct {p0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V

    .line 2096
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->nonUiRefreshRepeatButton()V

    .line 2101
    .end local v1           #mode:I
    :cond_0
    :goto_1
    return-void

    .line 2085
    .restart local v1       #mode:I
    :cond_1
    if-ne v1, v3, :cond_3

    .line 2086
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 2087
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2088
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 2089
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->nonUiRefreshShuffleButton()V

    .line 2091
    :cond_2
    const v2, 0x7f060044

    invoke-direct {p0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2098
    .end local v1           #mode:I
    :catch_0
    move-exception v0

    .line 2099
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "cycleRepeat"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2093
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #mode:I
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 2094
    const v2, 0x7f060043

    invoke-direct {p0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private onHandleNonUiDoShuffle()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 2055
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 2056
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    .line 2057
    .local v1, shuffle:I
    if-nez v1, :cond_2

    .line 2058
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 2059
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2060
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 2061
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->nonUiRefreshRepeatButton()V

    .line 2063
    :cond_0
    const v2, 0x7f060041

    invoke-direct {p0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V

    .line 2071
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->nonUiRefreshShuffleButton()V

    .line 2076
    .end local v1           #shuffle:I
    :cond_1
    :goto_1
    return-void

    .line 2064
    .restart local v1       #shuffle:I
    :cond_2
    if-eq v1, v4, :cond_3

    if-ne v1, v3, :cond_4

    .line 2066
    :cond_3
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 2067
    const v2, 0x7f060042

    invoke-direct {p0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2073
    .end local v1           #shuffle:I
    :catch_0
    move-exception v0

    .line 2074
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "Remote Exception in toggleShuffle"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2069
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #shuffle:I
    :cond_4
    :try_start_1
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid shuffle mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private onHandleNonUiEndAnimation()V
    .locals 0

    .prologue
    .line 2223
    return-void
.end method

.method private onHandleNonUiGetBeatsState()V
    .locals 7

    .prologue
    .line 1983
    invoke-direct {p0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->isBeatsEffectOn(Landroid/content/Context;)Z

    move-result v1

    .line 1984
    .local v1, isBeatsOn:Z
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v2

    .line 1985
    .local v2, isHeadSetPlugged:Z
    const/4 v3, 0x0

    .line 1988
    .local v3, isPlaying:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 1989
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1994
    :cond_0
    :goto_0
    const-string v4, "[CarNowPlayingActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isBeatsOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateBeatsStatus(ZZZ)V

    .line 1996
    return-void

    .line 1990
    :catch_0
    move-exception v0

    .line 1991
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "NONUI_GET_BEATS_STATE Remote exception"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onHandleNonUiGetBeatsStateHeadsetChanged()V
    .locals 7

    .prologue
    .line 1999
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->isGlobalBeatEffectOn()Z

    move-result v1

    .line 2000
    .local v1, isBeatsOn:Z
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v2

    .line 2001
    .local v2, isHeadSetPlugged:Z
    const/4 v3, 0x0

    .line 2003
    .local v3, isPlaying:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 2004
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2008
    :cond_0
    :goto_0
    const-string v4, "[CarNowPlayingActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isGlobalBeatEffectOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateBeatsStatus(ZZZ)V

    .line 2010
    return-void

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "NONUI_GET_BEATS_STATE Remote exception"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onHandleNonUiGetPlayState()V
    .locals 4

    .prologue
    .line 2165
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 2166
    const-string v1, "[CarNowPlayingActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService.isPlaying() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshPlaybackControl(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    :cond_0
    :goto_0
    return-void

    .line 2169
    :catch_0
    move-exception v0

    .line 2170
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHandleNonUiGetRepeatState()V
    .locals 0

    .prologue
    .line 2376
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->nonUiRefreshRepeatButton()V

    .line 2377
    return-void
.end method

.method private onHandleNonUiGetShuffleState()V
    .locals 0

    .prologue
    .line 2372
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->nonUiRefreshShuffleButton()V

    .line 2373
    return-void
.end method

.method private onHandleNonUiGetTrackTime()V
    .locals 6

    .prologue
    .line 2144
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_1

    .line 2145
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mElapsedTime:J

    .line 2146
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    .line 2147
    .local v2, isPlaying:Z
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 2148
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2149
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2151
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2152
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2153
    .local v0, data:Landroid/os/Bundle;
    const-string v4, "is_playing"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2154
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2155
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #isPlaying:Z
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 2158
    :catch_0
    move-exception v1

    .line 2159
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHandleNonUiPlayAlbum(I)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 2028
    return-void
.end method

.method private onHandleNonUiSeek(I)V
    .locals 4
    .parameter "pos"

    .prologue
    .line 2014
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 2015
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2019
    :cond_0
    :goto_0
    return-void

    .line 2016
    :catch_0
    move-exception v0

    .line 2017
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHandleNonUiStartNextAnimation()V
    .locals 5

    .prologue
    .line 2192
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    .line 2193
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v2

    .line 2194
    .local v2, pos:I
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 2195
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2196
    .local v0, animMsg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "album_queue_pos"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2197
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2203
    .end local v0           #animMsg:Landroid/os/Message;
    .end local v2           #pos:I
    :cond_0
    :goto_0
    return-void

    .line 2200
    :catch_0
    move-exception v1

    .line 2201
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHandleNonUiStartPrevAnimation()V
    .locals 6

    .prologue
    .line 2207
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 2208
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v2

    .line 2209
    .local v2, pos:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueueSize()I

    move-result v3

    .line 2210
    .local v3, queueSize:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 2211
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2212
    .local v0, animMsg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album_queue_pos"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2213
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album_queue_size"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2214
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2220
    .end local v0           #animMsg:Landroid/os/Message;
    .end local v2           #pos:I
    .end local v3           #queueSize:I
    :cond_0
    :goto_0
    return-void

    .line 2217
    :catch_0
    move-exception v1

    .line 2218
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHandleNonUiUpdateGlider()V
    .locals 6

    .prologue
    .line 2031
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "reveice UPDATE_GLIDER + "

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    const/4 v0, 0x0

    .line 2033
    .local v0, albumQueue:[I
    const/4 v1, 0x0

    .line 2035
    .local v1, albumQueuePos:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_1

    .line 2036
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueue()[I

    move-result-object v0

    .line 2037
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v1

    .line 2038
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 2039
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2040
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2041
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2042
    .local v3, gliderMsg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album_queue"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2043
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album_queue_pos"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2044
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2050
    .end local v3           #gliderMsg:Landroid/os/Message;
    :cond_1
    :goto_0
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "reveice UPDATE_GLIDER - "

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    return-void

    .line 2047
    :catch_0
    move-exception v2

    .line 2048
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "remote exception in UPDATE_GLIDER"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prev()V
    .locals 4

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v1, :cond_0

    .line 1308
    iget v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1309
    .local v0, skipNext:Z
    :goto_0
    if-nez v0, :cond_2

    .line 1310
    const/16 v1, 0x9

    iput v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    .line 1311
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startAnimationTimer()V

    .line 1312
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1317
    .end local v0           #skipNext:Z
    :cond_0
    :goto_1
    return-void

    .line 1308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1314
    .restart local v0       #skipNext:Z
    :cond_2
    const-string v1, "[CarNowPlayingActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip prev mGliderState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private refreshBeatsState(Landroid/os/Handler;)V
    .locals 2
    .parameter "nonUiHandler"

    .prologue
    const/16 v1, 0x12

    .line 1889
    if-eqz p1, :cond_1

    .line 1890
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1892
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1894
    :cond_1
    return-void
.end method

.method private refreshBeatsStateHeadsetChange(Landroid/os/Handler;)V
    .locals 2
    .parameter "nonUiHandler"

    .prologue
    const/16 v1, 0x13

    .line 1897
    if-eqz p1, :cond_1

    .line 1898
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1900
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1902
    :cond_1
    return-void
.end method

.method private refreshGlider([II)V
    .locals 7
    .parameter "albumIdArray"
    .parameter "selectedPos"

    .prologue
    const/4 v6, 0x0

    .line 920
    const-string v3, "[CarNowPlayingActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshGlider selectedPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v3, "[CarNowPlayingActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshGlider albumIdArray = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-nez v3, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    const/4 v2, 0x0

    .line 926
    .local v2, nLength:I
    if-eqz p1, :cond_2

    .line 927
    array-length v2, p1

    .line 930
    :cond_2
    if-eqz p1, :cond_4

    if-lez v2, :cond_4

    .line 931
    new-array v0, v2, [Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    .line 933
    .local v0, albumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 934
    new-instance v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    invoke-direct {v3}, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;-><init>()V

    aput-object v3, v0, v1

    .line 935
    aget-object v3, v0, v1

    aget v4, p1, v1

    iput v4, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    .line 933
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 937
    :cond_3
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v3, :cond_0

    .line 940
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, v0, v6, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->setAlbumInfo([Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;ZI)V

    .line 950
    .end local v0           #albumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    .end local v1           #i:I
    :goto_2
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v3, p2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyDataSetChanged(I)V

    .line 952
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v3, :cond_0

    .line 954
    if-ltz p2, :cond_5

    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarGliderAdapter;->getItemCount()I

    move-result v3

    if-ge p2, v3, :cond_5

    .line 955
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v3, p2, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 956
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->onSelectionChanged(I)V

    .line 957
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->requestAllBitmap(I)V

    goto :goto_0

    .line 943
    :cond_4
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v3, :cond_0

    .line 946
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->setAlbumInfo([Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;ZI)V

    goto :goto_2

    .line 959
    :cond_5
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v3, v6, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 960
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, v6}, Lcom/htc/music/carmode/CarGliderAdapter;->onSelectionChanged(I)V

    .line 961
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, v6}, Lcom/htc/music/carmode/CarGliderAdapter;->requestAllBitmap(I)V

    goto :goto_0
.end method

.method private refreshTrackTime(Z)V
    .locals 11
    .parameter "isPlaying"

    .prologue
    const-wide/16 v9, 0x3e8

    .line 1754
    if-eqz p1, :cond_0

    .line 1755
    iget-wide v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mElapsedTime:J

    rem-long/2addr v5, v9

    sub-long v1, v9, v5

    .line 1756
    .local v1, remaining:J
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v5, :cond_0

    .line 1757
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v1, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1760
    .end local v1           #remaining:J
    :cond_0
    const/4 v0, 0x0

    .line 1761
    .local v0, elapsedTime:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1762
    .local v4, totalTime:Ljava/lang/String;
    iget-wide v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    .line 1763
    const-string v0, "--.--"

    .line 1764
    const-string v4, "--.--"

    .line 1769
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1770
    .local v3, time:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1771
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1776
    return-void

    .line 1766
    .end local v3           #time:Ljava/lang/StringBuilder;
    :cond_1
    iget-wide v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mElapsedTime:J

    div-long/2addr v5, v9

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1767
    iget-wide v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    div-long/2addr v5, v9

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private setPlayPauseButtonImage(Z)V
    .locals 2
    .parameter "isPlaying"

    .prologue
    .line 838
    if-eqz p1, :cond_0

    .line 839
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 843
    :goto_0
    return-void

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_0
.end method

.method private setRepeatButtonImage(I)V
    .locals 4
    .parameter "repeatMode"

    .prologue
    const v3, 0x7f020010

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 847
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 848
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "mRepeatButton is null in setRepeatButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :goto_0
    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 858
    packed-switch p1, :pswitch_data_0

    .line 872
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 873
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 874
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 860
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 861
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 862
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 866
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 867
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 868
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 858
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setShuffleButtonImage(I)V
    .locals 3
    .parameter "shuffleMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 881
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 882
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "mShuffleButton is null in setShuffleButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 892
    packed-switch p1, :pswitch_data_0

    .line 899
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 900
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 901
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    .line 904
    :goto_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    goto :goto_0

    .line 895
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 896
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_1

    .line 892
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 1779
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1780
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1781
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1782
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1786
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private startAnimationTimer()V
    .locals 4

    .prologue
    const/16 v3, 0xe

    .line 2380
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2381
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2382
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2383
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2386
    :cond_1
    return-void
.end method

.method private startLibraryActivity()V
    .locals 3

    .prologue
    .line 1974
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1975
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.music.carmode.BROWSE_VIEWER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1976
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1977
    const-string v1, "caller"

    const-class v2, Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1978
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startActivity(Landroid/content/Intent;)V

    .line 1979
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->finish()V

    .line 1980
    return-void
.end method

.method private stopAnimationTimer()V
    .locals 2

    .prologue
    const/16 v1, 0xe

    .line 2389
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2391
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2393
    :cond_0
    return-void
.end method

.method private uiRefreshRepeatButton(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x4

    .line 1232
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1233
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1234
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1235
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1236
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "repeat_mode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1237
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1239
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private uiRefreshShuffleButton(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x3

    .line 1242
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1243
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1244
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1245
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1246
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "shuffle_mode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1247
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1249
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private updateBeatsStatus(ZZZ)V
    .locals 3
    .parameter "isBeatsOn"
    .parameter "isHeadSetPlugged"
    .parameter "isPlaying"

    .prologue
    .line 1743
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1744
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1745
    .local v0, refreshBeats:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_beats_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1746
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_headset_plugged"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1747
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_playing"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1748
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1751
    .end local v0           #refreshBeats:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateGlider()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 912
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 917
    :cond_1
    return-void
.end method

.method private updatePlayState(Landroid/os/Handler;)V
    .locals 1
    .parameter "nonUiHandler"

    .prologue
    .line 1799
    if-eqz p1, :cond_0

    .line 1800
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1802
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsState(Landroid/os/Handler;)V

    .line 1803
    return-void
.end method

.method private updateRepeatState(Landroid/os/Handler;)V
    .locals 1
    .parameter "nonUiHandler"

    .prologue
    .line 1818
    if-eqz p1, :cond_0

    .line 1819
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1821
    :cond_0
    return-void
.end method

.method private updateShuffletState(Landroid/os/Handler;)V
    .locals 1
    .parameter "nonUiHandler"

    .prologue
    .line 1812
    if-eqz p1, :cond_0

    .line 1813
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1815
    :cond_0
    return-void
.end method

.method private updateTrackInfo(Landroid/os/Handler;)V
    .locals 2
    .parameter "nonUihandler"

    .prologue
    const/4 v1, 0x2

    .line 1125
    if-eqz p1, :cond_1

    .line 1126
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1131
    :cond_1
    return-void
.end method

.method private updateTrackTime(Landroid/os/Handler;)V
    .locals 1
    .parameter "nonUiHandler"

    .prologue
    .line 1806
    if-eqz p1, :cond_0

    .line 1807
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1809
    :cond_0
    return-void
.end method


# virtual methods
.method public BTHeadSetStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 1960
    return-void
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 1
    .parameter "newStatus"

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsState(Landroid/os/Handler;)V

    .line 1965
    return-void
.end method

.method public getPresentation()Lcom/htc/sunnyCore/widget/presentation/SPresentation;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    return-object v0
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 1
    .parameter "newStatus"
    .parameter "isBeatsHeadset"

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsStateHeadsetChange(Landroid/os/Handler;)V

    .line 1950
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1969
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startLibraryActivity()V

    .line 1971
    return-void
.end method

.method public onContainerClick(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 0
    .parameter "clickedView"
    .parameter "nPosition"

    .prologue
    .line 1063
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x400

    const/16 v8, 0x8

    const v10, 0x3cf5c28f

    .line 204
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "onCreate + "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->closeActivityIfNotInCarMode(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->requestWindowFeature(I)Z

    .line 211
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 212
    .local v4, win:Landroid/view/Window;
    invoke-virtual {v4, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 214
    const/high16 v6, 0x40

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 215
    const/high16 v6, 0x20

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 216
    const v6, 0x7f03000f

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setContentView(I)V

    .line 218
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setVolumeControlStream(I)V

    .line 219
    const v6, 0x7f070026

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    .line 220
    const-string v6, "common_app_bkg"

    const v7, 0x2080001

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 222
    .local v0, bkgIdentifier:I
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 223
    const v6, 0x7f070027

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    .line 224
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 225
    const v6, 0x7f070038

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    .line 226
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v7, 0x203007f

    invoke-virtual {v6, p0, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 228
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initKeypadGestureDetector()V

    .line 230
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initAlbumArtGestureDetector()V

    .line 231
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initTitleBar()V

    .line 232
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initGlider()V

    .line 233
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initPresentation()V

    .line 234
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initPlaybackControl()V

    .line 235
    const v6, 0x7f070037

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGesture:Landroid/view/View;

    .line 236
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGesture:Landroid/view/View;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "CarNowPlayingActivityWorker"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 238
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 239
    new-instance v6, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    .line 241
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 242
    .local v1, display:Landroid/view/Display;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 243
    .local v5, windowSize:Landroid/graphics/Point;
    invoke-virtual {v1, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 244
    iget v6, v5, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v7, 0x3e4ccccd

    mul-float/2addr v6, v7

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    .line 245
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGestureHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 247
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 248
    iget v6, v3, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v6, v10

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    .line 249
    iget v6, v3, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float/2addr v6, v10

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    .line 250
    iget v6, v3, Landroid/util/DisplayMetrics;->xdpi:F

    const v7, 0x3e99999a

    mul-float/2addr v6, v7

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    .line 251
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTouchRangeX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTouchRangeY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGestureAlbumWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v2, Landroid/content/IntentFilter;

    sget-object v6, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, f3:Landroid/content/IntentFilter;
    new-instance v6, Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/music/carmode/CarNowPlayingActivity$1;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;

    .line 257
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;

    invoke-virtual {p0, v6, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "onCreate - "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/16 v4, 0x16

    const/4 v3, 0x0

    .line 571
    const-string v1, "[CarNowPlayingActivity]"

    const-string v2, "onDestroy + "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;)V

    .line 576
    iput-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarGliderAdapter;->deInit()V

    .line 581
    iput-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->destroy()V

    .line 586
    iput-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 589
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 590
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 593
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v1, :cond_4

    .line 594
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v1, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 595
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 596
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v1, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 600
    :goto_0
    iput-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    .line 603
    :cond_4
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_5

    .line 604
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 605
    iput-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 609
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;

    if-eqz v1, :cond_6

    .line 610
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :cond_6
    :goto_1
    const-string v1, "[CarNowPlayingActivity]"

    const-string v2, "onDestroy - "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 617
    return-void

    .line 598
    :cond_7
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[CarNowPlayingActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy, fail to unregisterReceiver(mCarDockListener), ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->pauseDecoder()V

    .line 525
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 526
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->resumeDecoder()V

    .line 513
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 514
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.carmode.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startActivity(Landroid/content/Intent;)V

    .line 624
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v1

    return v1
.end method

.method public onSelectionChange(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 1071
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity$11;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1077
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    .line 467
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "onStart + "

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/16 v2, 0x12

    iput v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    .line 469
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v2, :cond_1

    .line 470
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v2, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v2, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v2, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 477
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 478
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    const-string v2, "com.htc.music.rotateleft"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v2, "com.htc.music.rotateright"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v2, "skip_prev"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v2, "com.htc.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v2, "com.htc.music.refresh"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 488
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 489
    .local v1, f2:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 493
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 495
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v2, p0, p0}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 497
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-direct {p0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh(Landroid/os/Handler;)V

    .line 498
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-direct {p0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsState(Landroid/os/Handler;)V

    .line 499
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "onStart - "

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 501
    return-void
.end method

.method public onStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 1089
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity$12;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1094
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x7

    const/16 v2, 0x16

    .line 533
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 543
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 548
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    :cond_3
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_4

    .line 553
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 557
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_6

    .line 558
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 559
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 560
    :cond_5
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 563
    :cond_6
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 564
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method refreshPlaybackControl(Z)V
    .locals 3
    .parameter "isPlaying"

    .prologue
    const/4 v2, 0x2

    .line 1272
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1275
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1276
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_playing"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1277
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1279
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public wiredHeadSetStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 1955
    return-void
.end method
