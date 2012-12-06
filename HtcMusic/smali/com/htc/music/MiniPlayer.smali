.class public Lcom/htc/music/MiniPlayer;
.super Ljava/lang/Object;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MiniPlayer$NonUIHandler;,
        Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;,
        Lcom/htc/music/MiniPlayer$ILoadSuccessListener;,
        Lcom/htc/music/MiniPlayer$MiniPlayerCreator;
    }
.end annotation


# static fields
.field private static final ALBUM_ART_COLS:[Ljava/lang/String; = null

.field private static final DECODE_ALBUM_ART:I = 0x2714

.field private static final Decode_BitMap:Ljava/lang/String; = "DECODED_BITMAP"

.field private static final TAG:Ljava/lang/String; = "[MiniPlayer]"

.field private static final TRACK_COLS:[Ljava/lang/String;


# instance fields
.field private final TRACK_ID_COLS:[Ljava/lang/String;

.field isMonitoring:Z

.field private isReleased:Z

.field private loadPreferences:Z

.field loadQueueFail:Z

.field loadTrackFail:Z

.field private mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

.field protected mContext:Landroid/app/Activity;

.field private mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasSet:Z

.field mInternalEnough:Z

.field private mIsServiceBinded:Z

.field private mLauncherListener:Landroid/view/View$OnClickListener;

.field private mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

.field private mMaxNotifyAlbumArtSideLen:I

.field private mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field protected mPlayPause:Lcom/htc/widget/HtcRimImageButton;

.field protected mPlayerContainer:Landroid/view/ViewGroup;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSavedAction:Z

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mStopRefreshMiniPlayer:Z

.field protected mThumb:Landroid/widget/ImageView;

.field private mThumbBitmap:Landroid/graphics/Bitmap;

.field private mThumbPath:Ljava/lang/String;

.field protected mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

.field private mUIHandler:Landroid/os/Handler;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/MiniPlayer;->TRACK_COLS:[Ljava/lang/String;

    .line 85
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "album_art"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/music/MiniPlayer;->ALBUM_ART_COLS:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    .line 93
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    .line 95
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 97
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    .line 98
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    .line 99
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    .line 101
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    .line 104
    iput-boolean v5, p0, Lcom/htc/music/MiniPlayer;->loadPreferences:Z

    .line 106
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mStopRefreshMiniPlayer:Z

    .line 107
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mSavedAction:Z

    .line 169
    iput-boolean v5, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    .line 170
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 199
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    .line 236
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 303
    new-instance v1, Lcom/htc/music/MiniPlayer$1;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$1;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 342
    new-instance v1, Lcom/htc/music/MiniPlayer$2;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$2;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 419
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    .line 421
    new-instance v1, Lcom/htc/music/MiniPlayer$3;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$3;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->osc:Landroid/content/ServiceConnection;

    .line 524
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 525
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 868
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 869
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 870
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    .line 1041
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1042
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    .line 1053
    new-instance v1, Lcom/htc/music/MiniPlayer$4;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$4;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;

    .line 1171
    new-instance v1, Lcom/htc/music/MiniPlayer$5;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$5;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    .line 1191
    new-instance v1, Lcom/htc/music/MiniPlayer$6;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$6;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 137
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    .line 152
    new-instance v1, Lcom/htc/widget/HtcFooter;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    .line 153
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v1, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;-><init>(Lcom/htc/music/MiniPlayer;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    .line 159
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "cache"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MiniPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mStopRefreshMiniPlayer:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/music/MiniPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/music/MiniPlayer;->mSavedAction:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/MiniPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/MiniPlayer;->handleAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/MiniPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/music/MiniPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/music/MiniPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/MiniPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->loadPreferences:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/music/MiniPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/music/MiniPlayer;->loadPreferences:Z

    return p1
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/music/MiniPlayer;->ALBUM_ART_COLS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/MiniPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/MiniPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->doPauseResume()V

    return-void
.end method

.method private doPauseResume()V
    .locals 4

    .prologue
    .line 498
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 522
    :goto_0
    return-void

    .line 501
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 518
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    goto :goto_0

    .line 520
    :catch_0
    move-exception v2

    goto :goto_0

    .line 504
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 508
    .local v1, isMirrorPlayOnTV:Z
    :goto_2
    if-eqz v1, :cond_3

    .line 509
    const-string v2, "[MiniPlayer]"

    const-string v3, "doPauseResume TV is on"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 504
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isMirrorPlayOnTV:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 514
    .restart local v1       #isMirrorPlayOnTV:Z
    :cond_3
    const-string v2, "[MiniPlayer]"

    const-string v3, "doPauseResume TV is off"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private handleAction(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 321
    if-nez p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    goto :goto_0

    .line 327
    :cond_2
    const-string v0, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    .line 329
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    goto :goto_0

    .line 330
    :cond_3
    const-string v0, "com.htc.music.playstatechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 331
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    .line 332
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    goto :goto_0

    .line 333
    :cond_4
    const-string v0, "com.htc.music.queuechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    goto :goto_0

    .line 335
    :cond_5
    const-string v0, "com.htc.music.onerror"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 336
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    goto :goto_0

    .line 337
    :cond_6
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    goto :goto_0
.end method

.method private initNonUiHandler()V
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1051
    :goto_0
    return-void

    .line 1048
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiniPlayerWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1049
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1050
    new-instance v0, Lcom/htc/music/MiniPlayer$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MiniPlayer$NonUIHandler;-><init>(Lcom/htc/music/MiniPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    goto :goto_0
.end method


# virtual methods
.method public addLoadSuccessListener(Lcom/htc/music/MiniPlayer$ILoadSuccessListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 239
    return-void
.end method

.method protected bindMediaPlayer()V
    .locals 3

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 479
    :goto_0
    return-void

    .line 475
    :cond_0
    const-string v0, "[MiniPlayer]"

    const-string v1, "someone called bindService again but service already binded!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsServiceBinded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1202
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public inflateView()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->initNonUiHandler()V

    .line 166
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/htc/music/MiniPlayer;->initializeView(Landroid/app/Activity;)V

    .line 167
    return-void
.end method

.method protected initGlancelauncher()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MiniPlayer2LineText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    :cond_1
    return-void
.end method

.method protected initPlayPauseBtn()V
    .locals 6

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_b_transport_outer"

    const v3, 0x2080014

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v3, "common_b_transport_pressed"

    const v4, 0x2080015

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v4, "common_b_transport_rest"

    const v5, 0x2080016

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 296
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :cond_0
    return-void
.end method

.method protected initializeView(Landroid/app/Activity;)V
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x2050001

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 249
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 277
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 252
    .local v0, layoutInflator:Landroid/view/LayoutInflater;
    const v3, 0x7f030034

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 254
    .local v1, playerLayout:Landroid/view/View;
    const v3, 0x7f070078

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    .line 255
    const v3, 0x7f070079

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/music/widget/MiniPlayer2LineText;

    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    .line 256
    const v3, 0x7f07007a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    .line 258
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    invoke-virtual {v3, v6}, Lcom/htc/music/widget/MiniPlayer2LineText;->setPrimaryTextVisibility(I)V

    .line 260
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    invoke-virtual {v3, v6}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    .line 263
    :cond_1
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 267
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0b0005

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 272
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 275
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initGlancelauncher()V

    .line 276
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initPlayPauseBtn()V

    goto :goto_0
.end method

.method public isLoadTrackSuccess()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshInfo()V
    .locals 0

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    .line 862
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    .line 863
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateThumb()V

    .line 864
    return-void
.end method

.method protected registerEventReceiver()V
    .locals 4

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    .line 356
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 372
    .local v1, f:Landroid/content/IntentFilter;
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v2, "com.htc.music.onerror"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 391
    .restart local v1       #f:Landroid/content/IntentFilter;
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 392
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 395
    .local v0, dlArtFilter:Landroid/content/IntentFilter;
    const-string v2, "action_complete_one_download"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 398
    const-string v2, "[MiniPlayer]"

    const-string v3, "registerEventReceiver"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    .line 204
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 205
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->removeLoadSuccessListener()V

    .line 207
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 209
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 214
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 221
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 223
    :cond_2
    return-void
.end method

.method public removeLoadSuccessListener()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 243
    return-void
.end method

.method protected setArtistName(Ljava/lang/String;)V
    .locals 2
    .parameter "artist"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v0, :cond_0

    .line 970
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDefaultThumb()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 873
    invoke-virtual {p0, v0, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method protected setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "bitmap"
    .parameter "thumbPath"

    .prologue
    const/4 v1, 0x0

    .line 877
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 879
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 882
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    if-eqz v0, :cond_2

    .line 883
    if-eqz p1, :cond_1

    .line 884
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 901
    :cond_1
    :goto_0
    return-void

    .line 889
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    .line 891
    if-eqz p1, :cond_3

    .line 892
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 897
    :goto_1
    iput-object p2, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 898
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 894
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected setTrackName(Ljava/lang/String;)V
    .locals 3
    .parameter "trackName"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v0, :cond_2

    .line 953
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MiniPlayer2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 966
    :goto_0
    return-void

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MiniPlayer2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const-string v1, "-- --"

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MiniPlayer2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :cond_2
    const-string v0, "[MiniPlayer]"

    const-string v1, "mTrackDetail is NULL!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startMonitor()V
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    .line 187
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 179
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    .line 183
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->bindMediaPlayer()V

    .line 186
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->registerEventReceiver()V

    goto :goto_0
.end method

.method public stopMonitor()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 193
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->unRegisterEventReceiver()V

    .line 195
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->unBindMediaPlayer()V

    goto :goto_0
.end method

.method public stopRefreshMiniPlayer(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 1206
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mStopRefreshMiniPlayer:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1207
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mSavedAction:Z

    if-eqz v0, :cond_0

    .line 1208
    const-string v0, "[MiniPlayer]"

    const-string v1, "handle the saved META_CHANGED action"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MiniPlayer;->handleAction(Ljava/lang/String;)V

    .line 1210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mSavedAction:Z

    .line 1213
    :cond_0
    iput-boolean p1, p0, Lcom/htc/music/MiniPlayer;->mStopRefreshMiniPlayer:Z

    .line 1214
    return-void
.end method

.method protected unBindMediaPlayer()V
    .locals 2

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    .line 486
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 487
    return-void
.end method

.method protected unRegisterEventReceiver()V
    .locals 3

    .prologue
    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    :goto_1
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[MiniPlayer]"

    const-string v2, "somebody called unregister twice!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 411
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 412
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "[MiniPlayer]"

    const-string v2, "somebody called unregister twice!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected updatePlayPauseBtn()V
    .locals 7

    .prologue
    const v6, 0x20800bb

    .line 981
    const-string v4, "[MiniPlayer]"

    const-string v5, "[updatePlayPauseBtn] +"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    if-nez v4, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 985
    :cond_0
    const/4 v1, 0x0

    .line 987
    .local v1, isPlaying:Z
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 989
    .local v3, playIcon:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 991
    .local v2, isPluginMode:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    .line 992
    const/4 v2, 0x1

    .line 996
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    .line 998
    :cond_2
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 1000
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcRimImageButton;->invalidate()V

    .line 1006
    const-string v4, "[MiniPlayer]"

    const-string v5, "[updatePlayPauseBtn] -"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1010
    :cond_3
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 1013
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1019
    :goto_2
    if-eqz v1, :cond_4

    .line 1020
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const v5, 0x20800b6

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1026
    :goto_3
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcRimImageButton;->invalidate()V

    .line 1028
    const-string v4, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updatePlayPauseBtn] - Enabled, isPlaying="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2

    .line 1022
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_3

    .line 994
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method protected updateThumb()V
    .locals 1

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->loadPreferences:Z

    if-eqz v0, :cond_0

    .line 906
    :goto_0
    return-void

    .line 905
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/MiniPlayer;->updateThumb(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateThumb(Ljava/lang/String;)V
    .locals 5
    .parameter "albumArtPath"

    .prologue
    .line 909
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateThumb] + mService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";albumArtPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    if-nez p1, :cond_3

    .line 915
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_2

    .line 917
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0

    .line 922
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object p1

    .line 923
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateThumb] mService.getAlbumArtPath()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :cond_3
    :goto_1
    if-eqz p1, :cond_6

    .line 930
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 934
    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    if-nez v2, :cond_4

    .line 935
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    .line 937
    :cond_4
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    if-eqz v2, :cond_5

    .line 938
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    const/16 v3, 0x2714

    invoke-virtual {v2, v3}, Lcom/htc/music/MiniPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 939
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 940
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    invoke-virtual {v2, v1}, Lcom/htc/music/MiniPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 948
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    :goto_2
    const-string v2, "[MiniPlayer]"

    const-string v3, "[updateThumb] -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, ex:Ljava/lang/Exception;
    const/4 p1, 0x0

    goto :goto_1

    .line 945
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_2
.end method

.method public updateTrackInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 527
    invoke-virtual {p0, v0, v0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public updateTrackInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .parameter "artistName"
    .parameter "trackName"

    .prologue
    .line 532
    const/4 v10, 0x0

    .line 535
    .local v10, path:Ljava/lang/String;
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    .line 536
    :cond_0
    :try_start_0
    const-string v15, "<unknown>"

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 537
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v16, 0x7f06003d

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 648
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v15, :cond_2e

    if-nez p2, :cond_2e

    if-nez p1, :cond_2e

    .line 649
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadPreferences:Z

    if-eqz v15, :cond_2

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "data-cached"

    invoke-interface/range {v15 .. v16}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_32

    .line 652
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lcom/htc/music/MiniPlayer;->TRACK_COLS:[Ljava/lang/String;

    :goto_0
    invoke-static/range {v15 .. v18}, Lcom/htc/music/util/ContentUtils;->getFirstTrack(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;)V

    .line 729
    :cond_2
    :goto_1
    return-void

    .line 543
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v15, :cond_4

    .line 544
    const-string v15, "[MiniPlayer]"

    const-string v16, "Service is null!!"

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 648
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v15, :cond_3b

    if-nez p2, :cond_3b

    if-nez p1, :cond_3b

    .line 649
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadPreferences:Z

    if-eqz v15, :cond_2

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "data-cached"

    invoke-interface/range {v15 .. v16}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3f

    .line 652
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lcom/htc/music/MiniPlayer;->TRACK_COLS:[Ljava/lang/String;

    goto :goto_0

    .line 548
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 550
    if-eqz v10, :cond_d

    .line 551
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo] path="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object p1

    .line 553
    const-string v15, "<unknown>"

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 554
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v16, 0x7f06003d

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 557
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object p2

    .line 559
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    .line 560
    const-string v15, "[MiniPlayer]"

    const-string v16, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 563
    .local v7, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v7, :cond_6

    .line 565
    :try_start_3
    invoke-virtual {v7, v10}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 567
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 568
    const/4 v15, 0x7

    invoke-virtual {v7, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object p2

    .line 574
    :goto_2
    :try_start_4
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 575
    const/4 v7, 0x0

    .line 579
    :cond_6
    if-eqz p1, :cond_7

    .line 580
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 582
    :cond_7
    if-eqz p1, :cond_8

    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 583
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v16, 0x7f06003d

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 585
    :cond_9
    if-eqz p2, :cond_a

    .line 586
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 588
    :cond_a
    if-eqz p2, :cond_b

    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 590
    :cond_b
    const-string v15, "/"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 591
    const/4 v8, -0x1

    .local v8, nBegin:I
    const/4 v9, -0x1

    .line 593
    .local v9, nEnd:I
    const-string v15, "/"

    invoke-virtual {v10, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 594
    const-string v15, "."

    invoke-virtual {v10, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 596
    if-ltz v8, :cond_c

    if-le v9, v8, :cond_c

    .line 597
    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v10, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object p2

    .line 648
    .end local v7           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v8           #nBegin:I
    .end local v9           #nEnd:I
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v15, :cond_48

    if-nez p2, :cond_48

    if-nez p1, :cond_48

    .line 649
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadPreferences:Z

    if-eqz v15, :cond_2

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "data-cached"

    invoke-interface/range {v15 .. v16}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4c

    .line 652
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lcom/htc/music/MiniPlayer;->TRACK_COLS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 570
    .restart local v7       #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v5

    .line 571
    .local v5, ex:Ljava/lang/RuntimeException;
    :try_start_5
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateTrackInfoP(), Uri.parse(path) = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 644
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .end local v7           #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v4

    .line 645
    .local v4, e:Landroid/os/RemoteException;
    :try_start_6
    const-string v15, "[MiniPlayer]"

    const-string v16, "[updateTrackInfo] ."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 648
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v15, :cond_21

    if-nez p2, :cond_21

    if-nez p1, :cond_21

    .line 649
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadPreferences:Z

    if-eqz v15, :cond_2

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "data-cached"

    invoke-interface/range {v15 .. v16}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_25

    .line 652
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lcom/htc/music/MiniPlayer;->TRACK_COLS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 602
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v15

    if-eqz v15, :cond_c

    .line 603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v13

    .line 604
    .local v13, queue:[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v12

    .line 605
    .local v12, position:I
    if-eqz v13, :cond_e

    array-length v15, v13

    if-lez v15, :cond_e

    if-ltz v12, :cond_e

    array-length v15, v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    if-gt v15, v12, :cond_f

    .line 648
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v15, :cond_55

    if-nez p2, :cond_55

    if-nez p1, :cond_55

    .line 649
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadPreferences:Z

    if-eqz v15, :cond_2

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "data-cached"

    invoke-interface/range {v15 .. v16}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_59

    .line 652
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lcom/htc/music/MiniPlayer;->TRACK_COLS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 610
    :cond_f
    const/16 v15, 0xb

    :try_start_8
    new-array v6, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "audio._id AS _id"

    aput-object v16, v6, v15

    const/4 v15, 0x1

    const-string v16, "artist"

    aput-object v16, v6, v15

    const/4 v15, 0x2

    const-string v16, "album"

    aput-object v16, v6, v15

    const/4 v15, 0x3

    const-string v16, "title"

    aput-object v16, v6, v15

    const/4 v15, 0x4

    const-string v16, "_data"

    aput-object v16, v6, v15

    const/4 v15, 0x5

    const-string v16, "mime_type"

    aput-object v16, v6, v15

    const/4 v15, 0x6

    const-string v16, "album_id"

    aput-object v16, v6, v15

    const/4 v15, 0x7

    const-string v16, "artist_id"

    aput-object v16, v6, v15

    const/16 v15, 0x8

    const-string v16, "is_podcast"

    aput-object v16, v6, v15

    const/16 v15, 0x9

    const-string v16, "bookmark"

    aput-object v16, v6, v15

    const/16 v15, 0xa

    const-string v16, "composer"

    aput-object v16, v6, v15

    .line 624
    .local v6, mCursorCols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    aget v16, v13, v12

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v15, v6, v0, v1}, Lcom/htc/music/util/ContentUtils;->getTrack(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v3

    .line 625
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_10

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v15

    if-nez v15, :cond_11

    .line 648
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v15, :cond_62

    if-nez p2, :cond_62

    if-nez p1, :cond_62

    .line 649
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadPreferences:Z

    if-eqz v15, :cond_2

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "data-cached"

    invoke-interface/range {v15 .. v16}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_66

    .line 652
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lcom/htc/music/MiniPlayer;->TRACK_COLS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 629
    :cond_11
    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 630
    const-string v15, "artist"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 631
    if-eqz p1, :cond_12

    const-string v15, "<unknown>"

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 632
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v16, 0x7f06003d

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 635
    :cond_13
    const-string v15, "title"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 637
    if-eqz v3, :cond_c

    .line 638
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    .line 648
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v6           #mCursorCols:[Ljava/lang/String;
    .end local v12           #position:I
    .end local v13           #queue:[I
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-nez v16, :cond_17

    if-nez p2, :cond_17

    if-nez p1, :cond_17

    .line 649
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadPreferences:Z

    if-eqz v15, :cond_2

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "data-cached"

    invoke-interface/range {v15 .. v16}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_18

    .line 652
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lcom/htc/music/MiniPlayer;->TRACK_COLS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 691
    :catch_2
    move-exception v5

    .line 692
    .local v5, ex:Ljava/lang/Exception;
    const/16 p1, 0x0

    .line 693
    const/16 p2, 0x0

    .line 696
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_14
    :goto_4
    const-string v16, "[MiniPlayer]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "artist:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 699
    const-string v16, "[MiniPlayer]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "trackName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    if-eqz p2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1d

    .line 701
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    move-object/from16 v16, v0

    if-eqz v16, :cond_15

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    .line 705
    :cond_15
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_16

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 708
    :cond_16
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 709
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 648
    :goto_5
    throw v15

    .line 684
    :cond_17
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v16

    if-eqz v16, :cond_14

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result v11

    .line 686
    .local v11, pluginReady:Z
    if-nez v11, :cond_14

    .line 687
    const/16 p1, 0x0

    .line 688
    const/16 p2, 0x0

    goto/16 :goto_4

    .line 653
    .end local v11           #pluginReady:Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "plugin-mode"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_2

    .line 655
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curtitle"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curartist"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 657
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";track:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1c

    .line 659
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 668
    :cond_19
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curalbumartpath"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, albumArtPath:Ljava/lang/String;
    if-eqz v2, :cond_1a

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->updateThumb(Ljava/lang/String;)V

    .line 673
    :cond_1a
    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v15, :cond_1b

    .line 674
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo][null==mService] Load data from pref - trackName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";artistName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";albumArtPath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_7
    invoke-static/range {v15 .. v18}, Lcom/htc/music/util/ContentUtils;->getFirstTrack(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 662
    .end local v2           #albumArtPath:Ljava/lang/String;
    :cond_1c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_19

    .line 664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_6

    .line 711
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    move/from16 v16, v0

    if-nez v16, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1e

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 714
    :cond_1e
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 715
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 717
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 718
    .local v14, status:Ljava/lang/String;
    const-string v16, "[MiniPlayer]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[updateTrackInfo] status="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v16, "mounted"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1f

    const-string v16, "mounted_ro"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_20

    .line 722
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v19}, Lcom/htc/music/util/ContentUtils;->getFirstTrack(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;)V

    goto/16 :goto_5

    .line 724
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    const/high16 v17, 0x7f06

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 684
    .end local v14           #status:Ljava/lang/String;
    .restart local v4       #e:Landroid/os/RemoteException;
    :cond_21
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v15, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v15

    if-eqz v15, :cond_22

    .line 685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-result v11

    .line 686
    .restart local v11       #pluginReady:Z
    if-nez v11, :cond_22

    .line 687
    const/16 p1, 0x0

    .line 688
    const/16 p2, 0x0

    .line 696
    .end local v11           #pluginReady:Z
    :cond_22
    :goto_8
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 699
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "trackName:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    if-eqz p2, :cond_2a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2a

    .line 701
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_23

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    .line 705
    :cond_23
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_24

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_24

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 708
    :cond_24
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 709
    .end local v4           #e:Landroid/os/RemoteException;
    :goto_9
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    goto/16 :goto_1

    .line 691
    .restart local v4       #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v5

    .line 692
    .restart local v5       #ex:Ljava/lang/Exception;
    const/16 p1, 0x0

    .line 693
    const/16 p2, 0x0

    goto/16 :goto_8

    .line 653
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "plugin-mode"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_2

    .line 655
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curtitle"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curartist"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 657
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";track:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_29

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_29

    .line 659
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 668
    :cond_26
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curalbumartpath"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .restart local v2       #albumArtPath:Ljava/lang/String;
    if-eqz v2, :cond_27

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->updateThumb(Ljava/lang/String;)V

    .line 673
    :cond_27
    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v15, :cond_28

    .line 674
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo][null==mService] Load data from pref - trackName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";artistName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";albumArtPath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_28
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_7

    .line 662
    .end local v2           #albumArtPath:Ljava/lang/String;
    :cond_29
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_26

    .line 664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_a

    .line 711
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v15, :cond_2b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_2b

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 714
    :cond_2b
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 715
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 717
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 718
    .restart local v14       #status:Ljava/lang/String;
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo] status="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v15, "mounted"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2c

    const-string v15, "mounted_ro"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2d

    .line 722
    :cond_2c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v4           #e:Landroid/os/RemoteException;
    :goto_b
    invoke-static/range {v15 .. v18}, Lcom/htc/music/util/ContentUtils;->getFirstTrack(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 724
    .restart local v4       #e:Landroid/os/RemoteException;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const/high16 v16, 0x7f06

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .end local v4           #e:Landroid/os/RemoteException;
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 684
    .end local v14           #status:Ljava/lang/String;
    :cond_2e
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v15, :cond_2f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v15

    if-eqz v15, :cond_2f

    .line 685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    move-result v11

    .line 686
    .restart local v11       #pluginReady:Z
    if-nez v11, :cond_2f

    .line 687
    const/16 p1, 0x0

    .line 688
    const/16 p2, 0x0

    .line 696
    .end local v11           #pluginReady:Z
    :cond_2f
    :goto_d
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 699
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "trackName:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    if-eqz p2, :cond_37

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_37

    .line 701
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_30

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    .line 705
    :cond_30
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_31

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_31

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 708
    :cond_31
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_9

    .line 691
    :catch_4
    move-exception v5

    .line 692
    .restart local v5       #ex:Ljava/lang/Exception;
    const/16 p1, 0x0

    .line 693
    const/16 p2, 0x0

    goto :goto_d

    .line 653
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_32
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "plugin-mode"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_2

    .line 655
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curtitle"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curartist"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 657
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";track:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_36

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_36

    .line 659
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 668
    :cond_33
    :goto_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curalbumartpath"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .restart local v2       #albumArtPath:Ljava/lang/String;
    if-eqz v2, :cond_34

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->updateThumb(Ljava/lang/String;)V

    .line 673
    :cond_34
    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v15, :cond_35

    .line 674
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo][null==mService] Load data from pref - trackName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";artistName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";albumArtPath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_35
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_7

    .line 662
    .end local v2           #albumArtPath:Ljava/lang/String;
    :cond_36
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_33

    .line 664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_e

    .line 711
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v15, :cond_38

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_38

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 714
    :cond_38
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 715
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 717
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 718
    .restart local v14       #status:Ljava/lang/String;
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo] status="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v15, "mounted"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_39

    const-string v15, "mounted_ro"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3a

    .line 722
    :cond_39
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_b

    .line 724
    :cond_3a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const/high16 v16, 0x7f06

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_c

    .line 684
    .end local v14           #status:Ljava/lang/String;
    :cond_3b
    :try_start_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v15, :cond_3c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v15

    if-eqz v15, :cond_3c

    .line 685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    move-result v11

    .line 686
    .restart local v11       #pluginReady:Z
    if-nez v11, :cond_3c

    .line 687
    const/16 p1, 0x0

    .line 688
    const/16 p2, 0x0

    .line 696
    .end local v11           #pluginReady:Z
    :cond_3c
    :goto_f
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 699
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "trackName:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    if-eqz p2, :cond_44

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_44

    .line 701
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_3d

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    .line 705
    :cond_3d
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_3e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_3e

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 708
    :cond_3e
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_9

    .line 691
    :catch_5
    move-exception v5

    .line 692
    .restart local v5       #ex:Ljava/lang/Exception;
    const/16 p1, 0x0

    .line 693
    const/16 p2, 0x0

    goto :goto_f

    .line 653
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "plugin-mode"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_2

    .line 655
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curtitle"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curartist"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 657
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";track:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_43

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_43

    .line 659
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 668
    :cond_40
    :goto_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curalbumartpath"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .restart local v2       #albumArtPath:Ljava/lang/String;
    if-eqz v2, :cond_41

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->updateThumb(Ljava/lang/String;)V

    .line 673
    :cond_41
    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v15, :cond_42

    .line 674
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo][null==mService] Load data from pref - trackName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";artistName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";albumArtPath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_42
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_7

    .line 662
    .end local v2           #albumArtPath:Ljava/lang/String;
    :cond_43
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_40

    .line 664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_10

    .line 711
    :cond_44
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v15, :cond_45

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_45

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 714
    :cond_45
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 715
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 717
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 718
    .restart local v14       #status:Ljava/lang/String;
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo] status="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v15, "mounted"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_46

    const-string v15, "mounted_ro"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_47

    .line 722
    :cond_46
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_b

    .line 724
    :cond_47
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const/high16 v16, 0x7f06

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_c

    .line 684
    .end local v14           #status:Ljava/lang/String;
    :cond_48
    :try_start_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v15, :cond_49

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v15

    if-eqz v15, :cond_49

    .line 685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    move-result v11

    .line 686
    .restart local v11       #pluginReady:Z
    if-nez v11, :cond_49

    .line 687
    const/16 p1, 0x0

    .line 688
    const/16 p2, 0x0

    .line 696
    .end local v11           #pluginReady:Z
    :cond_49
    :goto_11
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 699
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "trackName:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    if-eqz p2, :cond_51

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_51

    .line 701
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_4a

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    .line 705
    :cond_4a
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_4b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_4b

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 708
    :cond_4b
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_9

    .line 691
    :catch_6
    move-exception v5

    .line 692
    .restart local v5       #ex:Ljava/lang/Exception;
    const/16 p1, 0x0

    .line 693
    const/16 p2, 0x0

    goto :goto_11

    .line 653
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "plugin-mode"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_2

    .line 655
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curtitle"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curartist"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 657
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";track:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_50

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_50

    .line 659
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 668
    :cond_4d
    :goto_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curalbumartpath"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .restart local v2       #albumArtPath:Ljava/lang/String;
    if-eqz v2, :cond_4e

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->updateThumb(Ljava/lang/String;)V

    .line 673
    :cond_4e
    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v15, :cond_4f

    .line 674
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo][null==mService] Load data from pref - trackName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";artistName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";albumArtPath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_4f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_7

    .line 662
    .end local v2           #albumArtPath:Ljava/lang/String;
    :cond_50
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_4d

    .line 664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_12

    .line 711
    :cond_51
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v15, :cond_52

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_52

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 714
    :cond_52
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 715
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 717
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 718
    .restart local v14       #status:Ljava/lang/String;
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo] status="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v15, "mounted"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_53

    const-string v15, "mounted_ro"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_54

    .line 722
    :cond_53
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_b

    .line 724
    :cond_54
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const/high16 v16, 0x7f06

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_c

    .line 684
    .end local v14           #status:Ljava/lang/String;
    .restart local v12       #position:I
    .restart local v13       #queue:[I
    :cond_55
    :try_start_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v15, :cond_56

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v15

    if-eqz v15, :cond_56

    .line 685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    move-result v11

    .line 686
    .restart local v11       #pluginReady:Z
    if-nez v11, :cond_56

    .line 687
    const/16 p1, 0x0

    .line 688
    const/16 p2, 0x0

    .line 696
    .end local v11           #pluginReady:Z
    :cond_56
    :goto_13
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 699
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "trackName:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    if-eqz p2, :cond_5e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5e

    .line 701
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_57

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    .line 705
    :cond_57
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_58

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_58

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 708
    :cond_58
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_9

    .line 691
    :catch_7
    move-exception v5

    .line 692
    .restart local v5       #ex:Ljava/lang/Exception;
    const/16 p1, 0x0

    .line 693
    const/16 p2, 0x0

    goto :goto_13

    .line 653
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_59
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "plugin-mode"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_2

    .line 655
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curtitle"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curartist"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 657
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";track:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_5d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_5d

    .line 659
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 668
    :cond_5a
    :goto_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curalbumartpath"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .restart local v2       #albumArtPath:Ljava/lang/String;
    if-eqz v2, :cond_5b

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->updateThumb(Ljava/lang/String;)V

    .line 673
    :cond_5b
    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v15, :cond_5c

    .line 674
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo][null==mService] Load data from pref - trackName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";artistName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";albumArtPath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_5c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_7

    .line 662
    .end local v2           #albumArtPath:Ljava/lang/String;
    :cond_5d
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_5a

    .line 664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_14

    .line 711
    :cond_5e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v15, :cond_5f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_5f

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 714
    :cond_5f
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 715
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 717
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 718
    .restart local v14       #status:Ljava/lang/String;
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo] status="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v15, "mounted"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_60

    const-string v15, "mounted_ro"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_61

    .line 722
    :cond_60
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_b

    .line 724
    :cond_61
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const/high16 v16, 0x7f06

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_c

    .line 684
    .end local v14           #status:Ljava/lang/String;
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v6       #mCursorCols:[Ljava/lang/String;
    :cond_62
    :try_start_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v15, :cond_63

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v15

    if-eqz v15, :cond_63

    .line 685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    move-result v11

    .line 686
    .restart local v11       #pluginReady:Z
    if-nez v11, :cond_63

    .line 687
    const/16 p1, 0x0

    .line 688
    const/16 p2, 0x0

    .line 696
    .end local v11           #pluginReady:Z
    :cond_63
    :goto_15
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 699
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "trackName:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    if-eqz p2, :cond_6b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6b

    .line 701
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_64

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    .line 705
    :cond_64
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_65

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_65

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 708
    :cond_65
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_9

    .line 691
    :catch_8
    move-exception v5

    .line 692
    .restart local v5       #ex:Ljava/lang/Exception;
    const/16 p1, 0x0

    .line 693
    const/16 p2, 0x0

    goto :goto_15

    .line 653
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_66
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "plugin-mode"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_2

    .line 655
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curtitle"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curartist"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 657
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "artist:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";track:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_6a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_6a

    .line 659
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 668
    :cond_67
    :goto_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "curalbumartpath"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .restart local v2       #albumArtPath:Ljava/lang/String;
    if-eqz v2, :cond_68

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->updateThumb(Ljava/lang/String;)V

    .line 673
    :cond_68
    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v15, :cond_69

    .line 674
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo][null==mService] Load data from pref - trackName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";artistName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";albumArtPath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_69
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_7

    .line 662
    .end local v2           #albumArtPath:Ljava/lang/String;
    :cond_6a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v15, :cond_67

    .line 664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_16

    .line 711
    :cond_6b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v15, :cond_6c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v15, :cond_6c

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 714
    :cond_6c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 715
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 717
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 718
    .restart local v14       #status:Ljava/lang/String;
    const-string v15, "[MiniPlayer]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[updateTrackInfo] status="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v15, "mounted"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6d

    const-string v15, "mounted_ro"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6e

    .line 722
    :cond_6d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->TRACK_ID_COLS:[Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_b

    .line 724
    :cond_6e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const/high16 v16, 0x7f06

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_c
.end method
