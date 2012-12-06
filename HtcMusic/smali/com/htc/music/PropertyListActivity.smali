.class public Lcom/htc/music/PropertyListActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "PropertyListActivity.java"


# instance fields
.field private final PROPERTY_ALBUM:I

.field private final PROPERTY_ARTIST:I

.field private final PROPERTY_COMPOSER:I

.field private final PROPERTY_DISC_NUMBER:I

.field private final PROPERTY_DRM_TYPE:I

.field private final PROPERTY_FILENAME:I

.field private final PROPERTY_GENRE:I

.field private final PROPERTY_LENGTH:I

.field private final PROPERTY_LOCATION:I

.field private final PROPERTY_TRACK:I

.field private final PROPERTY_TRACK_NUMBER:I

.field private final PROPERTY_TRACK_YEAR:I

.field private TAG:Ljava/lang/String;

.field private isWMdrm:Z

.field private mAudiopreview:Z

.field private mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

.field private mDrmCursor:Landroid/database/Cursor;

.field private mIsSeriveBinded:Z

.field private mNeedBindSerive:Z

.field private mPropertyAdapter:Landroid/widget/BaseAdapter;

.field private mPropertyList:Lcom/htc/widget/HtcListView;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackId:Ljava/lang/String;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;

.field minetype:Ljava/lang/String;

.field protected osc:Landroid/content/ServiceConnection;

.field private titleArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 45
    const-string v0, "[PropertyListActivity]"

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->TAG:Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_TRACK:I

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_LENGTH:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_FILENAME:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_ARTIST:I

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_ALBUM:I

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_GENRE:I

    .line 59
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_COMPOSER:I

    .line 61
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_DISC_NUMBER:I

    .line 63
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_TRACK_NUMBER:I

    .line 65
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_TRACK_YEAR:I

    .line 67
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_LOCATION:I

    .line 69
    const/16 v0, 0xb

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_DRM_TYPE:I

    .line 71
    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 75
    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    .line 80
    iput-boolean v2, p0, Lcom/htc/music/PropertyListActivity;->isWMdrm:Z

    .line 84
    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 86
    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    .line 88
    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

    .line 90
    iput-boolean v2, p0, Lcom/htc/music/PropertyListActivity;->mAudiopreview:Z

    .line 92
    iput-boolean v2, p0, Lcom/htc/music/PropertyListActivity;->mNeedBindSerive:Z

    .line 93
    iput-boolean v2, p0, Lcom/htc/music/PropertyListActivity;->mIsSeriveBinded:Z

    .line 95
    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 312
    new-instance v0, Lcom/htc/music/PropertyListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/PropertyListActivity$2;-><init>(Lcom/htc/music/PropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->osc:Landroid/content/ServiceConnection;

    .line 341
    new-instance v0, Lcom/htc/music/PropertyListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/PropertyListActivity$3;-><init>(Lcom/htc/music/PropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 363
    new-instance v0, Lcom/htc/music/PropertyListActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/PropertyListActivity$4;-><init>(Lcom/htc/music/PropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 445
    new-instance v0, Lcom/htc/music/PropertyListActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/PropertyListActivity$5;-><init>(Lcom/htc/music/PropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->mPropertyAdapter:Landroid/widget/BaseAdapter;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/PropertyListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/music/PropertyListActivity;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/PropertyListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/music/PropertyListActivity;->isWMdrm:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/PropertyListActivity;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/PropertyListActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/music/PropertyListActivity;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/htc/music/PropertyListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/music/PropertyListActivity;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/PropertyListActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/PropertyListActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mPropertyAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/PropertyListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/PropertyListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/music/PropertyListActivity;->showPoperty()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/PropertyListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/music/PropertyListActivity;->mAudiopreview:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/PropertyListActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;

    return-object v0
.end method

.method private showPoperty()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->init()V

    .line 385
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mPropertyList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0
.end method

.method private wasDRMFilePlaying(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 389
    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getDrmType(I)Ljava/lang/String;
    .locals 2
    .parameter "deliveryType"

    .prologue
    .line 426
    const-string v0, ""

    .line 428
    .local v0, type:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 442
    :goto_0
    return-object v0

    .line 430
    :pswitch_0
    const v1, 0x7f060078

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    goto :goto_0

    .line 434
    :pswitch_1
    const v1, 0x7f06007a

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    goto :goto_0

    .line 437
    :pswitch_2
    const v1, 0x7f060079

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getProperties(Z)[Ljava/lang/String;
    .locals 7
    .parameter "drm"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 396
    if-eqz p1, :cond_0

    .line 397
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f06006a

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f060068

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f060069

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f06006b

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f06006c

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x7f06006d

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f06006e

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f06006f

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f060070

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f060071

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f060072

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f060074

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 410
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f06006a

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f060068

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f060069

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f06006b

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f06006c

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x7f06006d

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f06006e

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f06006f

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f060070

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f060071

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f060072

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method init()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 152
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 154
    iput-object v6, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 158
    iput-object v6, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    .line 162
    :cond_1
    iput-boolean v4, p0, Lcom/htc/music/PropertyListActivity;->isWMdrm:Z

    .line 165
    iput-object v6, p0, Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, path:Ljava/lang/String;
    const/16 v3, 0xc

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v4

    const-string v3, "artist"

    aput-object v3, v0, v7

    const/4 v3, 0x2

    const-string v4, "album"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "title"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "_data"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "mime_type"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "album_id"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "artist_id"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "composer"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "year"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "track"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "mime_type"

    aput-object v4, v0, v3

    .line 179
    .local v0, CursorCols:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 180
    .local v2, trackId:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 181
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    .line 189
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 201
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 203
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 204
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "mime_type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->minetype:Ljava/lang/String;

    .line 215
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/music/PropertyListActivity;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 216
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    .line 217
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_4

    .line 218
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 219
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 220
    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

    .line 230
    :cond_4
    :goto_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->minetype:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->minetype:Ljava/lang/String;

    const-string v4, "audio/x-wma-drm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 232
    iput-boolean v7, p0, Lcom/htc/music/PropertyListActivity;->isWMdrm:Z

    .line 233
    invoke-virtual {p0, v7}, Lcom/htc/music/PropertyListActivity;->getProperties(Z)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;

    .line 238
    :goto_3
    return-void

    .line 182
    :cond_5
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_2

    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 210
    :cond_6
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 211
    iput-object v6, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 223
    :cond_7
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 224
    iput-object v6, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    goto :goto_2

    .line 237
    :cond_8
    invoke-direct {p0, v1}, Lcom/htc/music/PropertyListActivity;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/music/PropertyListActivity;->getProperties(Z)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;

    goto :goto_3

    .line 185
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public isBypass()Z
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->setVolumeControlStream(I)V

    .line 106
    if-eqz p1, :cond_3

    .line 107
    const-string v1, "track"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    .line 108
    const-string v1, "audiopreview"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mAudiopreview:Z

    .line 114
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/PropertyListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #f:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .restart local v0       #f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/PropertyListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    const v1, 0x7f03003d

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->setContentView(I)V

    .line 125
    new-instance v1, Lcom/htc/widget/ActionBarText;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 126
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->init()V

    .line 131
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mPropertyList:Lcom/htc/widget/HtcListView;

    .line 132
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mPropertyList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/PropertyListActivity;->mPropertyAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    const v1, 0x7f060067

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->setTitle(I)V

    .line 137
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 139
    new-instance v1, Lcom/htc/music/PropertyListActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/music/PropertyListActivity$1;-><init>(Lcom/htc/music/PropertyListActivity;)V

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.music.lockscreen_start"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/PropertyListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    :cond_2
    return-void

    .line 110
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "track"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "audiopreview"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mAudiopreview:Z

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 245
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 247
    iput-object v2, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 251
    iput-object v2, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    .line 253
    :cond_1
    iput-object v2, p0, Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

    .line 255
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 264
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 302
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 296
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mPropertyList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 297
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 306
    const-string v1, "configchange"

    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    const-string v0, "track"

    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "audiopreview"

    iget-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mAudiopreview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 309
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 271
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/PropertyListActivity;->mNeedBindSerive:Z

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart, Fail to bind service."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/PropertyListActivity;->mNeedBindSerive:Z

    .line 278
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 279
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-boolean v0, p0, Lcom/htc/music/PropertyListActivity;->mIsSeriveBinded:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    iput-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mIsSeriveBinded:Z

    .line 287
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 288
    iput-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mNeedBindSerive:Z

    .line 290
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 291
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 3

    .prologue
    .line 749
    iget-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mAudiopreview:Z

    if-eqz v1, :cond_0

    .line 750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "finish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    invoke-virtual {p0, v0}, Lcom/htc/music/PropertyListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 753
    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->finish()V

    .line 755
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onUserLeaveHint()V

    .line 756
    return-void
.end method
