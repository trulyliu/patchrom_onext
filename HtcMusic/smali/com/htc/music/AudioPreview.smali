.class public Lcom/htc/music/AudioPreview;
.super Landroid/app/Activity;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/AudioPreview$NonUiHandler;,
        Lcom/htc/music/AudioPreview$PreviewPlayer;,
        Lcom/htc/music/AudioPreview$MediaButtonKeyListener;,
        Lcom/htc/music/AudioPreview$ProgressRefresher;,
        Lcom/htc/music/AudioPreview$QueryHandler;
    }
.end annotation


# static fields
.field private static final CMDFINISH:Ljava/lang/String; = "finish"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final DIALOG_AUDIO_PREVIEW:I = 0x4

.field private static final DIALOG_DRM_CONFIRM:I = 0x0

.field private static final DIALOG_DRM_ERROR:I = 0x1

.field private static final KEY_PLAY_AT_GLANCE:Ljava/lang/String; = "playatglance"

.field private static final NONDRM:I = 0x0

.field private static final SERVICECMD:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field private static final SET_ALBUMART:I = 0x1

.field private static final SET_DEFAULT_ALBUMART:I = 0x2

.field private static final SET_NAMES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[AudioPreview]"

.field private static final TRACK_ENDED:I = 0x1


# instance fields
.field private mActivityPopup:Z

.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAlbumArtBitmap:Landroid/graphics/Bitmap;

.field private mAlbumID:I

.field private mArtistName:Ljava/lang/String;

.field private mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDrmConsumed:Z

.field private mDuration:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaId:J

.field private mMsg:Ljava/lang/String;

.field private mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;

.field private mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

.field private mProgressRefresher:Landroid/os/Handler;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    iput-boolean v3, p0, Lcom/htc/music/AudioPreview;->mSeeking:Z

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    .line 109
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    .line 110
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    .line 112
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 114
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/AudioPreview;->mAlbumID:I

    .line 117
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 124
    iput-boolean v3, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    .line 137
    iput-boolean v3, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    .line 632
    new-instance v0, Lcom/htc/music/AudioPreview$1;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$1;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 747
    new-instance v0, Lcom/htc/music/AudioPreview$2;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$2;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 801
    new-instance v0, Lcom/htc/music/AudioPreview$3;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$3;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    .line 1570
    new-instance v0, Lcom/htc/music/AudioPreview$10;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$10;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1644
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/music/AudioPreview;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/htc/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mSeeking:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/music/AudioPreview;->mSeeking:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/AudioPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/music/AudioPreview;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/AudioPreview;->setTime(JJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/AudioPreview;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/AudioPreview;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/AudioPreview;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/music/AudioPreview;->setPlayPause(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/AudioPreview;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->stopPlayback()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/AudioPreview;)Lcom/htc/widget/HtcRimImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/music/AudioPreview;Lcom/htc/widget/HtcRimImageButton;)Lcom/htc/widget/HtcRimImageButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/music/AudioPreview;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/music/AudioPreview;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/music/AudioPreview;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/music/AudioPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/AudioPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/music/AudioPreview;->mAlbumID:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/AudioPreview;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/htc/music/AudioPreview;->mAlbumID:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/AudioPreview;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->start()V

    return-void
.end method

.method private appExist(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 1518
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1520
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 1521
    .local v0, appExist:Z
    :cond_0
    return v0
.end method

.method private checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 1103
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1104
    const-string v1, "[AudioPreview]"

    const-string v2, "getDrmStatus Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :goto_0
    return v0

    .line 1108
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/AudioPreview;->consumeRights(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1109
    const-string v1, "[AudioPreview]"

    const-string v2, "Consume Rights Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkSizeLimit()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1503
    const/4 v1, 0x0

    .line 1505
    .local v1, overSizeLimit:Z
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getMaxRingtoneSize(Landroid/content/Context;)I

    move-result v0

    .line 1506
    .local v0, maxRingtoneSize:I
    if-lez v0, :cond_0

    .line 1507
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1508
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    mul-int/lit16 v5, v0, 0x400

    if-le v4, v5, :cond_1

    move v1, v2

    .line 1514
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 1508
    goto :goto_0

    .line 1510
    :cond_2
    iget-wide v4, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    long-to-int v4, v4

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getTrackSize(Landroid/content/Context;I)I

    move-result v4

    mul-int/lit16 v5, v0, 0x400

    if-le v4, v5, :cond_3

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    .line 1514
    goto :goto_1
.end method

.method private consumeRights(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1117
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1118
    .local v0, drmCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1119
    const-string v3, "[AudioPreview]"

    const-string v5, "drmCursor == null in consumeRights"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :goto_0
    return v4

    .line 1123
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1124
    const-string v5, "_data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1126
    .local v2, filepath:Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1128
    const/4 v0, 0x0

    .line 1129
    invoke-static {p0, p1, v2, v3}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .line 1131
    .local v1, error:I
    const-string v5, "[AudioPreview]"

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

    .line 1132
    if-nez v1, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method private createDrawableForTile(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "tileDrawable"
    .parameter "clip"

    .prologue
    .line 1549
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_0

    .line 1561
    .end local p1
    :goto_0
    return-object p1

    .line 1552
    .restart local p1
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1554
    .local v2, tileBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1557
    .local v1, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1559
    .local v0, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1561
    if-eqz p2, :cond_1

    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v1, v3

    .end local v1           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_1
    move-object p1, v1

    goto :goto_0
.end method

.method private initAudioPreviewDialogView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 218
    const v0, 0x7f07000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f07000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f070010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f070011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f07000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;

    .line 224
    const v0, 0x7f07000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    .line 242
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->preparePlayback()V

    .line 243
    return-void
.end method

.method private preparePlayback()V
    .locals 5

    .prologue
    .line 300
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    .line 301
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/htc/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    .line 303
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 304
    .local v1, player:Lcom/htc/music/AudioPreview$PreviewPlayer;
    if-nez v1, :cond_3

    .line 305
    new-instance v3, Lcom/htc/music/AudioPreview$PreviewPlayer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/music/AudioPreview$PreviewPlayer;-><init>(Lcom/htc/music/AudioPreview$1;)V

    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 306
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v3, p0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/htc/music/AudioPreview;)V

    .line 308
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/htc/music/AudioPreview;->checkDrmFile(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-eqz v3, :cond_1

    .line 329
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/music/AudioPreview$NonUiHandler;->sendEmptyMessage(I)Z

    .line 333
    :cond_1
    new-instance v3, Lcom/htc/music/AudioPreview$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/htc/music/AudioPreview$QueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/htc/music/AudioPreview;)V

    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 336
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, scheme:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/htc/music/AudioPreview;->startQuery(Ljava/lang/String;)V

    .line 338
    .end local v2           #scheme:Ljava/lang/String;
    :goto_1
    return-void

    .line 311
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "[AudioPreview]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const v3, 0x7f060054

    invoke-direct {p0, v3}, Lcom/htc/music/AudioPreview;->showToast(I)V

    .line 316
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_1

    .line 320
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    iput-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 321
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v3, p0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/htc/music/AudioPreview;)V

    .line 322
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v3}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->showPostPrepareUI()V

    goto :goto_0
.end method

.method private setPlayPause(Z)V
    .locals 2
    .parameter "bPlay"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 736
    if-nez p1, :cond_1

    .line 737
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x20800b6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x20800bb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 742
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setTime(JJ)V
    .locals 8
    .parameter "pos"
    .parameter "remain"

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v0, 0x0

    .line 712
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 718
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 713
    .restart local p3
    :cond_1
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    div-long v4, p1, v6

    invoke-static {v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    cmp-long v5, p3, v0

    if-lez v5, :cond_2

    .end local p3
    :goto_1
    div-long v0, p3, v6

    invoke-static {v4, v0, v1}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .restart local p3
    :cond_2
    move-wide p3, v0

    goto :goto_1
.end method

.method private showPostPrepareUI()V
    .locals 4

    .prologue
    .line 618
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    .line 619
    iget v0, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 621
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 625
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 628
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/htc/music/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/htc/music/AudioPreview$ProgressRefresher;-><init>(Lcom/htc/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 629
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    .line 630
    return-void
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 1023
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1024
    return-void
.end method

.method private start()V
    .locals 4

    .prologue
    .line 665
    const-string v0, "[AudioPreview]"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 669
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->start()V

    .line 670
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/htc/music/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/htc/music/AudioPreview$ProgressRefresher;-><init>(Lcom/htc/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 671
    return-void
.end method

.method private startQuery(Ljava/lang/String;)V
    .locals 11
    .parameter "scheme"

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 342
    const-string v0, "[AudioPreview]"

    const-string v1, "startQuery with null mUri!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v0, :cond_2

    .line 346
    const-string v0, "[AudioPreview]"

    const-string v1, "startQuery with null mAsyncQueryHandler!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-nez v0, :cond_3

    .line 350
    const-string v0, "[AudioPreview]"

    const-string v1, "startQuery with null mAsyncQueryHandler!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_3
    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v3, "drm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v1

    const-string v5, "title"

    aput-object v5, v4, v6

    const-string v5, "artist"

    aput-object v5, v4, v7

    const-string v5, "album_id"

    aput-object v5, v4, v10

    const-string v5, "_data=?"

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_4
    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/external/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 370
    .local v8, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v1

    const-string v5, "title"

    aput-object v5, v4, v6

    const-string v5, "artist"

    aput-object v5, v4, v7

    const-string v5, "album_id"

    aput-object v5, v4, v10

    const-string v5, "_id=?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v8, v6, v1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    .end local v8           #id:Ljava/lang/String;
    :cond_5
    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 384
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 385
    .local v9, path:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v1

    const-string v5, "title"

    aput-object v5, v4, v6

    const-string v5, "artist"

    aput-object v5, v4, v7

    const-string v5, "album_id"

    aput-object v5, v4, v10

    const-string v5, "_data=?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v9, v6, v1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    .end local v9           #path:Ljava/lang/String;
    :cond_6
    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/sdcard/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 405
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 406
    .restart local v9       #path:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v1

    const-string v5, "title"

    aput-object v5, v4, v6

    const-string v5, "artist"

    aput-object v5, v4, v7

    const-string v5, "album_id"

    aput-object v5, v4, v10

    const-string v5, "_data=?"

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "/sdcard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    .end local v9           #path:Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->setNames()V

    goto/16 :goto_0
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 581
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->release()V

    .line 586
    iput-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 587
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 589
    :cond_1
    return-void
.end method

.method private updatePlayPause()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x20800b6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x20800bb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 729
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private wasDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 1027
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


# virtual methods
.method canShare()I
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 1382
    iget-object v9, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    if-eqz v9, :cond_0

    iget-wide v9, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    :cond_0
    move v0, v8

    .line 1457
    :goto_0
    return v0

    .line 1385
    :cond_1
    iget-wide v9, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    long-to-int v9, v9

    invoke-static {p0, v9}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 1386
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 1387
    goto :goto_0

    .line 1389
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 1390
    :cond_3
    if-eqz v1, :cond_4

    .line 1391
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 1392
    goto :goto_0

    .line 1395
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1396
    const/4 v0, 0x0

    .line 1401
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1403
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1407
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1409
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1410
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1415
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 1417
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 1418
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 1419
    const-string v9, "[AudioPreview]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1422
    const/4 v1, 0x0

    move v0, v8

    .line 1423
    goto :goto_0

    .line 1426
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 1427
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1429
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1432
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 1434
    :cond_8
    const/4 v0, 0x2

    .line 1438
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1454
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1455
    const/4 v1, 0x0

    .line 1457
    goto/16 :goto_0

    .line 1442
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1444
    const-string v8, "[AudioPreview]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const/4 v0, 0x0

    goto :goto_1

    .line 1449
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public checkDrmFile(Landroid/net/Uri;)V
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1067
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1069
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 1070
    .local v5, status:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 1071
    invoke-virtual {p0, v8}, Lcom/htc/music/AudioPreview;->showDialog(I)V

    .line 1100
    :goto_0
    return-void

    .line 1072
    :cond_0
    if-nez v5, :cond_3

    .line 1073
    invoke-static {v3, p1, v8}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 1075
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 1076
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->playDrm()V

    goto :goto_0

    .line 1078
    :cond_1
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    .line 1079
    iget-object v6, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1080
    invoke-virtual {p0, v7}, Lcom/htc/music/AudioPreview;->showDialog(I)V

    goto :goto_0

    .line 1082
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->playDrm()V

    goto :goto_0

    .line 1086
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1088
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1089
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, filename:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1094
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1095
    const-string v6, "drmuri"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string v6, "drmtargettomain"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1097
    invoke-virtual {p0, v2}, Lcom/htc/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 1098
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0

    .line 1091
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #filename:Ljava/lang/String;
    goto :goto_1
.end method

.method public drmConsume()V
    .locals 3

    .prologue
    .line 1299
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    if-nez v1, :cond_0

    .line 1300
    const-string v1, "[AudioPreview]"

    const-string v2, "Check if the DRM File to play is legal"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/htc/music/AudioPreview;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z

    move-result v0

    .line 1302
    .local v0, isLegal:Z
    if-nez v0, :cond_1

    .line 1303
    const-string v1, "[AudioPreview]"

    const-string v2, "Cannot play drm file because the rights has been expired."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const v1, 0x7f060080

    invoke-direct {p0, v1}, Lcom/htc/music/AudioPreview;->showToast(I)V

    .line 1312
    .end local v0           #isLegal:Z
    :cond_0
    :goto_0
    return-void

    .line 1308
    .restart local v0       #isLegal:Z
    :cond_1
    const-string v1, "[AudioPreview]"

    const-string v2, "Legal rights to play drm file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    .line 605
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 606
    return-void
.end method

.method public generateReflection(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "srcBitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 984
    if-ltz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, p2

    if-gt v0, v2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, p3

    if-le v0, v2, :cond_2

    .line 986
    :cond_0
    const-string v2, "[AudioPreview]"

    const-string v4, "The reflection\'s width/height is out of bound"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const/4 v12, 0x0

    .line 1014
    :cond_1
    return-object v12

    .line 990
    :cond_2
    mul-int v2, p2, p3

    new-array v3, v2, [I

    .line 991
    .local v3, srcPix:[I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 992
    .local v16, srcHeight:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 993
    .local v12, bm:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .local v18, y:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    .line 994
    mul-int v4, v18, p2

    const/4 v6, 0x0

    sub-int v2, v16, p3

    add-int v7, v18, v2

    const/4 v9, 0x1

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 993
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 998
    :cond_3
    const/high16 v10, 0x3000

    .line 999
    .local v10, alpha:I
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    .line 1000
    const/16 v17, 0x0

    .local v17, x:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 1001
    mul-int v2, v18, p2

    add-int v14, v2, v17

    .line 1002
    .local v14, index:I
    aget v2, v3, v14

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v15, v2, 0xff

    .line 1003
    .local v15, r:I
    aget v2, v3, v14

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v13, v2, 0xff

    .line 1004
    .local v13, g:I
    aget v2, v3, v14

    and-int/lit16 v11, v2, 0xff

    .line 1006
    .local v11, b:I
    shl-int/lit8 v2, v15, 0x10

    or-int/2addr v2, v10

    shl-int/lit8 v4, v13, 0x8

    or-int/2addr v2, v4

    or-int/2addr v2, v11

    aput v2, v3, v14

    .line 1000
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1008
    .end local v11           #b:I
    .end local v13           #g:I
    .end local v14           #index:I
    .end local v15           #r:I
    :cond_4
    const/high16 v2, 0x100

    add-int/2addr v10, v2

    .line 999
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1011
    .end local v17           #x:I
    :cond_5
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 1012
    mul-int v4, v18, p2

    const/4 v6, 0x0

    sub-int v2, p3, v18

    add-int/lit8 v7, v2, -0x1

    const/4 v9, 0x1

    move-object v2, v12

    move/from16 v5, p2

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1011
    add-int/lit8 v18, v18, 0x1

    goto :goto_3
.end method

.method public getAlbumArtPath(I)Ljava/lang/String;
    .locals 8
    .parameter "albumId"

    .prologue
    const/4 v4, 0x0

    .line 1599
    move v2, p1

    .line 1600
    .local v2, id:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    move-object v3, v4

    .line 1634
    :cond_0
    :goto_0
    return-object v3

    .line 1606
    :cond_1
    const/4 v1, 0x0

    .line 1608
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    int-to-long v6, v2

    invoke-static {p0, v5, v6, v7}, Lcom/htc/music/util/ContentUtils;->getAlbum(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 1610
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_4

    .line 1611
    :cond_2
    const-string v5, "[AudioPreview]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find album with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1637
    if-eqz v1, :cond_3

    .line 1638
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1639
    const/4 v1, 0x0

    :cond_3
    move-object v3, v4

    .line 1612
    goto :goto_0

    .line 1615
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1616
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1617
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 1618
    .local v3, path:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_5

    .line 1637
    if-eqz v1, :cond_0

    .line 1638
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1639
    .end local v3           #path:Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1623
    :cond_5
    :try_start_2
    const-string v5, "album_art"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1625
    .local v0, artColumnIndex:I
    if-gez v0, :cond_7

    .line 1626
    const-string v5, "[AudioPreview]"

    const-string v6, "Cannot find art column index"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1637
    if-eqz v1, :cond_6

    .line 1638
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1639
    const/4 v1, 0x0

    :cond_6
    move-object v3, v4

    .line 1627
    goto :goto_0

    .line 1630
    :cond_7
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1631
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 1637
    if-eqz v1, :cond_0

    .line 1638
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1633
    :cond_8
    :try_start_4
    const-string v5, "[AudioPreview]"

    const-string v6, "Cannot move to first position"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1637
    if-eqz v1, :cond_9

    .line 1638
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1639
    const/4 v1, 0x0

    :cond_9
    move-object v3, v4

    .line 1634
    goto/16 :goto_0

    .line 1637
    .end local v0           #artColumnIndex:I
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_a

    .line 1638
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1639
    const/4 v1, 0x0

    .line 1637
    :cond_a
    throw v4
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1566
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 1567
    .local v0, roundedCorners:[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 1566
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "drmuri"

    .prologue
    .line 1031
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

    .line 1036
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1037
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1039
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1040
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1041
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1042
    const-string v0, "_data"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1044
    .local v9, data:Ljava/lang/String;
    const-string v0, "content_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1046
    .local v7, contentOffset:I
    const-string v0, "content_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1048
    .local v8, contentid:Ljava/lang/String;
    const-string v0, "content_boundary_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1051
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

    .line 1057
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 1058
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1059
    const/4 v11, 0x0

    .line 1063
    :cond_1
    return-object v10

    .line 1057
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    .line 1058
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1059
    const/4 v11, 0x0

    .line 1057
    :cond_2
    throw v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, 0x1

    .line 789
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 795
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 796
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 797
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 798
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    .line 147
    const-string v7, "[AudioPreview]"

    const-string v8, "onCreate()"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v7, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v7, p0, Lcom/htc/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v0}, Lcom/htc/music/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "AudioPreviewActivityWorker"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    .line 155
    iget-object v7, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 156
    new-instance v7, Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v8, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/htc/music/AudioPreview$NonUiHandler;-><init>(Lcom/htc/music/AudioPreview;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    .line 158
    iget-object v7, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-nez v7, :cond_0

    .line 159
    const-string v7, "[AudioPreview]"

    const-string v8, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 163
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    .line 211
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    .line 168
    iget-object v7, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    if-nez v7, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0

    .line 172
    :cond_2
    const-string v7, "[AudioPreview]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUri - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v7, "com.dropbox.android.intent.extra.DROPBOX_PATH"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, dropboxExtra:Ljava/lang/String;
    const-string v7, "[AudioPreview]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onCreate] String extra for com.dropbox.android.intent.extra.DROPBOX_PATH = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-eqz v1, :cond_3

    .line 181
    :try_start_0
    const-string v7, "[AudioPreview]"

    const-string v8, "[onCreate] Redirect to Dropbox player."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v3}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 184
    .local v6, redirectIntent:Landroid/content/Intent;
    const-string v7, "com.htc.dropboxplayer.action.LAUNCH"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v6}, Lcom/htc/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v6           #redirectIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 190
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const-string v7, "[AudioPreview]"

    const-string v8, "[onCreate] Fail to redirect to Dropbox player."

    invoke-static {v7, v8, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    :cond_3
    const-string v7, "playatglance"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 197
    .local v5, playAtGlance:Z
    if-eqz v5, :cond_4

    .line 198
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 199
    .local v4, newIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/htc/music/HtcMusic;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v4}, Lcom/htc/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto/16 :goto_0

    .line 205
    .end local v4           #newIntent:Landroid/content/Intent;
    :cond_4
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/htc/music/AudioPreview;->setVolumeControlStream(I)V

    .line 206
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/music/AudioPreview;->requestWindowFeature(I)Z

    .line 210
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/htc/music/AudioPreview;->showDialog(I)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x1040013

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 1137
    packed-switch p1, :pswitch_data_0

    .line 1285
    :pswitch_0
    invoke-super {p0, p1, v0}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 1139
    :pswitch_1
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1145
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/AudioPreview$5;

    invoke-direct {v4, p0}, Lcom/htc/music/AudioPreview$5;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v3, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    new-instance v5, Lcom/htc/music/AudioPreview$4;

    invoke-direct {v5, p0}, Lcom/htc/music/AudioPreview$4;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .local v1, drmDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v0, v1

    .line 1164
    goto :goto_0

    .line 1167
    .end local v1           #drmDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_2
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060054

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/AudioPreview$6;

    invoke-direct {v4, p0}, Lcom/htc/music/AudioPreview$6;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v3, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1178
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 1181
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_3
    iget-object v3, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-eqz v3, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1185
    .local v2, view:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/htc/music/AudioPreview;->initAudioPreviewDialogView(Landroid/view/View;)V

    .line 1186
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f060014

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const-string v4, "play/pause"

    new-instance v5, Lcom/htc/music/AudioPreview$7;

    invoke-direct {v5, p0}, Lcom/htc/music/AudioPreview$7;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1197
    .restart local v0       #dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v3, Lcom/htc/music/AudioPreview$8;

    invoke-direct {v3, p0}, Lcom/htc/music/AudioPreview$8;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1206
    new-instance v3, Lcom/htc/music/AudioPreview$MediaButtonKeyListener;

    invoke-direct {v3, p0}, Lcom/htc/music/AudioPreview$MediaButtonKeyListener;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1207
    new-instance v3, Lcom/htc/music/AudioPreview$9;

    invoke-direct {v3, p0, v0}, Lcom/htc/music/AudioPreview$9;-><init>(Lcom/htc/music/AudioPreview;Lcom/htc/widget/HtcAlertDialog;)V

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto/16 :goto_0

    .line 1137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 834
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 835
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 507
    const-string v1, "[AudioPreview]"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->stopPlayback()V

    .line 510
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/AudioPreview$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 512
    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 517
    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 527
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 528
    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 538
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 543
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[AudioPreview]"

    const-string v2, "unregister mIntentReceiver fail"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    .line 785
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 844
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1289
    packed-switch p1, :pswitch_data_0

    .line 1296
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 1291
    .restart local p2
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1292
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 840
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    .end local p1
    :goto_0
    return-void

    .line 611
    .restart local p1
    :cond_0
    check-cast p1, Lcom/htc/music/AudioPreview$PreviewPlayer;

    .end local p1
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 612
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->setNames()V

    .line 613
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->start()V

    .line 614
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->showPostPrepareUI()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 501
    .local v0, player:Lcom/htc/music/AudioPreview$PreviewPlayer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 502
    return-object v0
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    if-nez v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    .line 599
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 600
    return-void

    .line 598
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    goto :goto_0
.end method

.method public playDrm()V
    .locals 5

    .prologue
    .line 1315
    const/4 v0, 0x0

    .line 1317
    .local v0, drmFileToPlay:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1318
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/music/AudioPreview;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1321
    :cond_0
    if-eqz v0, :cond_1

    .line 1322
    const-string v2, "[AudioPreview]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drmFileToPlay= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->drmConsume()V

    .line 1325
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v2}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1326
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V

    .line 1338
    :cond_1
    :goto_0
    return-void

    .line 1328
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->start()V

    .line 1329
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1331
    :catch_0
    move-exception v1

    .line 1332
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "[AudioPreview]"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const v2, 0x7f060054

    invoke-direct {p0, v2}, Lcom/htc/music/AudioPreview;->showToast(I)V

    .line 1334
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0
.end method

.method public playPauseClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-nez v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 829
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    goto :goto_0

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    if-nez v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/htc/music/AudioPreview;->checkDrmFile(Landroid/net/Uri;)V

    goto :goto_1

    .line 826
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->start()V

    goto :goto_1
.end method

.method public setMusicInfoFromMetadataRetriever()V
    .locals 6

    .prologue
    .line 1341
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1343
    const/4 v3, 0x0

    .line 1344
    .local v3, trackName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1345
    .local v0, artistName:Ljava/lang/String;
    const-string v4, "[AudioPreview]"

    const-string v5, "get metadata from MediaMetadataRetriever"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1348
    .local v2, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v2, :cond_0

    .line 1351
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, p0, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1353
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 1355
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1361
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1362
    const/4 v2, 0x0

    .line 1365
    :cond_0
    if-eqz v3, :cond_1

    .line 1366
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1367
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    :cond_1
    if-eqz v0, :cond_2

    .line 1371
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1372
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    .end local v0           #artistName:Ljava/lang/String;
    .end local v2           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v3           #trackName:Ljava/lang/String;
    :cond_2
    return-void

    .line 1357
    .restart local v0       #artistName:Ljava/lang/String;
    .restart local v2       #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v3       #trackName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1358
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "[AudioPreview]"

    const-string v5, "Retrieve metadata fail"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNames()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/AudioPreview$NonUiHandler;->sendEmptyMessage(I)Z

    .line 678
    :cond_0
    return-void
.end method

.method public tileify(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "drawable"

    .prologue
    .line 1525
    instance-of v6, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_4

    move-object v1, p1

    .line 1526
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 1527
    .local v1, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 1528
    .local v0, N:I
    new-array v5, v0, [Landroid/graphics/drawable/Drawable;

    .line 1530
    .local v5, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1531
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 1532
    .local v3, id:I
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const v6, 0x102000d

    if-eq v3, v6, :cond_0

    const v6, 0x102000f

    if-ne v3, v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    invoke-direct {p0, v7, v6}, Lcom/htc/music/AudioPreview;->createDrawableForTile(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1530
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1532
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1537
    .end local v3           #id:I
    :cond_2
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1539
    .local v4, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 1540
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 1539
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1543
    :cond_3
    move-object p1, v4

    .line 1545
    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v2           #i:I
    .end local v4           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v5           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_4
    return-object p1
.end method
