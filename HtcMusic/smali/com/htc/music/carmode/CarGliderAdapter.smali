.class public Lcom/htc/music/carmode/CarGliderAdapter;
.super Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;
.source "CarGliderAdapter.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;,
        Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALBUM_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "[CarGliderAdapter]"

.field private static final UPDATE_TRANSPARENT_ALBUM:I = 0xa8ca

.field private static final UPDATE_TRANSPARENT_ALBUM_DURAION:J = 0x7d0L

.field private static final mMdColumns:[Ljava/lang/String;


# instance fields
.field private mAlbumIdArtPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumIdPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlbumIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

.field private mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

.field private mCanUpdateSelectedItem:Z

.field private mComponentCount:I

.field private mCookie:J

.field private mCurrentAlbumId:I

.field private mDeInit:Z

.field private mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

.field private mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

.field private mImageHeight:I

.field private mImageWidth:I

.field mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mIsDownloadInfoQueried:Z

.field private mIsEnhancerExist:Z

.field private mIsPluginMode:Z

.field private mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

.field private mMemCacheSize:I

.field private mMemCacheSizeHalf:I

.field private mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

.field private mNormalScale:Z

.field private mPreSelectedAlbumId:I

.field private mPreSelectedPos:I

.field private mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

.field private mSelectedPos:I

.field private mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

.field private mTransparentIndex:I

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMdColumns:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/sunnyCore/widget/presentation/SPresentation;Z)V
    .locals 4
    .parameter "musicContext"
    .parameter "spresentation"
    .parameter "defaultBig"

    .prologue
    const/16 v1, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;-><init>()V

    .line 45
    iput v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    .line 46
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    .line 50
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    .line 52
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 53
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    .line 60
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 63
    iput v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    .line 65
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    .line 66
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    .line 68
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedPos:I

    .line 69
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I

    .line 70
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    .line 72
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    .line 74
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    .line 76
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z

    .line 78
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    .line 81
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    .line 87
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentIndex:I

    .line 408
    new-instance v0, Lcom/htc/music/carmode/CarGliderAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarGliderAdapter$1;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mUIHandler:Landroid/os/Handler;

    .line 589
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDeInit:Z

    .line 609
    new-instance v0, Lcom/htc/music/carmode/CarGliderAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarGliderAdapter$2;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 689
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCurrentAlbumId:I

    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    .line 99
    iput-object p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    .line 100
    iput-object p2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 101
    invoke-direct {p0, p3}, Lcom/htc/music/carmode/CarGliderAdapter;->init(Z)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarGliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/carmode/CarGliderAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/music/carmode/CarNowPlayingActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/music/carmode/CarGliderAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarGliderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarGliderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/carmode/CarGliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/sunnyCore/widget/presentation/SPresentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/carmode/CarGliderAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/htc/music/carmode/CarGliderAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private declared-synchronized addBitmapToCache(I)Z
    .locals 16
    .parameter "nItemPos"

    .prologue
    .line 438
    monitor-enter p0

    const/4 v12, 0x0

    .line 439
    .local v12, bmp:Lcom/htc/sunnyCore/SBitmap;
    const/4 v9, 0x0

    .local v9, addToDecoder:Z
    const/4 v10, 0x0

    .line 440
    .local v10, bHasCached:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move v11, v10

    .line 492
    .end local v10           #bHasCached:Z
    .local v11, bHasCached:I
    :goto_0
    monitor-exit p0

    return v11

    .line 442
    .end local v11           #bHasCached:I
    .restart local v10       #bHasCached:Z
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v1, v1

    move/from16 v0, p1

    if-lt v0, v1, :cond_2

    :cond_1
    move v11, v10

    .line 443
    .restart local v11       #bHasCached:I
    goto :goto_0

    .line 446
    .end local v11           #bHasCached:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/sunnyCore/SBitmap;

    move-object v12, v0

    .line 448
    if-eqz v12, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v12}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    if-ne v1, v2, :cond_6

    :cond_3
    const/4 v9, 0x1

    .line 449
    :goto_1
    if-nez v9, :cond_4

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 452
    .local v14, oldAlbumId:Ljava/lang/Integer;
    if-nez v14, :cond_7

    .line 453
    const/4 v9, 0x1

    .line 461
    .end local v14           #oldAlbumId:Ljava/lang/Integer;
    :cond_4
    :goto_2
    if-eqz v9, :cond_a

    .line 462
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v15, v1, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    .local v15, service:Lcom/htc/music/IMediaPlaybackService;
    if-eqz v15, :cond_5

    .line 466
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    move/from16 v2, p1

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IZ[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v15           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_5
    :goto_3
    move v11, v10

    .line 492
    .restart local v11       #bHasCached:I
    goto :goto_0

    .line 448
    .end local v11           #bHasCached:I
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 454
    .restart local v14       #oldAlbumId:Ljava/lang/Integer;
    :cond_7
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v1, v2, :cond_4

    .line 455
    invoke-virtual {v12}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 456
    const/4 v9, 0x1

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 438
    .end local v14           #oldAlbumId:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 467
    .restart local v15       #service:Lcom/htc/music/IMediaPlaybackService;
    :catch_0
    move-exception v13

    .line 468
    .local v13, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 472
    .end local v13           #e:Landroid/os/RemoteException;
    .end local v15           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    if-eqz v1, :cond_5

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v1, :cond_9

    const-string v1, "<unknown>"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyUpdateItem(I)V

    goto :goto_3

    .line 478
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget-object v3, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v4, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v6, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget-object v7, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget-object v8, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumKey:Ljava/lang/String;

    move/from16 v2, p1

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 489
    :cond_a
    const/4 v10, 0x1

    goto/16 :goto_3
.end method

.method private getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 561
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 586
    :goto_0
    return-object v2

    .line 565
    :cond_0
    monitor-enter p0

    .line 567
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDeInit:Z

    if-ne v3, v2, :cond_1

    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 570
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 571
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    monitor-exit p0

    goto :goto_0

    .line 574
    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 575
    .local v0, bmpOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 576
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 577
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001a

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 579
    .local v1, defaultBmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 580
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    iget v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 581
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 584
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    goto :goto_0
.end method

.method private getTransparentAlbumArt()Lcom/htc/sunnyCore/SBitmap;
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 557
    :goto_0
    return-object v0

    .line 546
    :cond_0
    monitor-enter p0

    .line 548
    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDeInit:Z

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 551
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    monitor-exit p0

    goto :goto_0

    .line 554
    :cond_2
    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    invoke-static {v0, v1, v2}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(III)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 555
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    goto :goto_0
.end method

.method private init(Z)V
    .locals 0
    .parameter "defaultBig"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->reload(Z)V

    .line 106
    return-void
.end method

.method private interpolateLinear(FFFF)F
    .locals 2
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    .line 872
    cmpl-float v1, v0, p4

    if-nez v1, :cond_0

    .line 874
    :goto_0
    return v0

    :cond_0
    div-float v0, p3, p4

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    goto :goto_0
.end method


# virtual methods
.method public animate(Z)V
    .locals 13
    .parameter "normalScale"

    .prologue
    .line 884
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-nez v8, :cond_1

    .line 968
    :cond_0
    return-void

    .line 886
    :cond_1
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    .line 887
    iget v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v6, v8, [F

    .line 888
    .local v6, targetTranslationX:[F
    iget v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v7, v8, [F

    .line 889
    .local v7, targetTranslationY:[F
    iget v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v5, v8, [F

    .line 892
    .local v5, targetScale:[F
    const/4 v3, 0x1

    .line 894
    .local v3, nUIPos:I
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v8, v8, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    aput v8, v6, v3

    .line 895
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v8, v8, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    aput v8, v7, v3

    .line 896
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v8, v8, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    aput v8, v5, v3

    .line 898
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 899
    .local v0, animationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    new-instance v9, Lcom/htc/sunnyCore/view/Vector3F;

    aget v10, v6, v3

    aget v11, v7, v3

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v8, v9}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 900
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    new-instance v9, Lcom/htc/sunnyCore/view/Vector3F;

    aget v10, v5, v3

    aget v11, v5, v3

    const/high16 v12, 0x3f80

    invoke-direct {v9, v10, v11, v12}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v8, v9}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 901
    const-wide/16 v8, 0x96

    invoke-virtual {v0, v8, v9}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 903
    sget-object v8, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v8}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 904
    if-eqz p1, :cond_4

    .line 905
    new-instance v8, Lcom/htc/music/carmode/CarGliderAdapter$3;

    invoke-direct {v8, p0}, Lcom/htc/music/carmode/CarGliderAdapter$3;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;)V

    invoke-virtual {v0, v8}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 942
    :goto_0
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v8, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerView(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v4

    .line 943
    .local v4, sview:Lcom/htc/sunnyCore/view/SView;
    if-eqz v4, :cond_2

    .line 944
    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 947
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-ge v2, v8, :cond_0

    .line 948
    const/4 v8, 0x1

    if-ne v8, v2, :cond_5

    .line 947
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 922
    .end local v2           #i:I
    .end local v4           #sview:Lcom/htc/sunnyCore/view/SView;
    :cond_4
    new-instance v8, Lcom/htc/music/carmode/CarGliderAdapter$4;

    invoke-direct {v8, p0}, Lcom/htc/music/carmode/CarGliderAdapter$4;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;)V

    invoke-virtual {v0, v8}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    goto :goto_0

    .line 950
    .restart local v2       #i:I
    .restart local v4       #sview:Lcom/htc/sunnyCore/view/SView;
    :cond_5
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v8, v8, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    aput v8, v6, v2

    .line 951
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v8, v8, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    aput v8, v7, v2

    .line 952
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v8, v8, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    aput v8, v5, v2

    .line 954
    new-instance v1, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 955
    .local v1, animationController2:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    new-instance v9, Lcom/htc/sunnyCore/view/Vector3F;

    aget v10, v6, v2

    aget v11, v7, v2

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v8, v9}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 956
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    new-instance v9, Lcom/htc/sunnyCore/view/Vector3F;

    aget v10, v5, v2

    aget v11, v5, v2

    const/high16 v12, 0x3f80

    invoke-direct {v9, v10, v11, v12}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v8, v9}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 957
    const-wide/16 v8, 0x96

    invoke-virtual {v1, v8, v9}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 959
    sget-object v8, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v1, v8}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 961
    iget-object v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v8, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerView(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v4

    .line 962
    if-eqz v4, :cond_3

    .line 963
    invoke-virtual {v4, v1}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_2
.end method

.method protected changeLayout(Z)V
    .locals 6
    .parameter "normalScale"

    .prologue
    .line 972
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-nez v4, :cond_0

    .line 990
    :goto_0
    return-void

    .line 973
    :cond_0
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v2, v4, [F

    .line 974
    .local v2, targetTranslationX:[F
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v3, v4, [F

    .line 975
    .local v3, targetTranslationY:[F
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v1, v4, [F

    .line 977
    .local v1, targetScale:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-ge v0, v4, :cond_1

    .line 979
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    aput v4, v2, v0

    .line 980
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    aput v4, v3, v0

    .line 981
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    aput v4, v1, v0

    .line 983
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    aget v5, v2, v0

    iput v5, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 984
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    aget v5, v3, v0

    iput v5, v4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 986
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    aget v5, v1, v0

    iput v5, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 987
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    aget v5, v1, v0

    iput v5, v4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 989
    :cond_1
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateAllContainersLayout()V

    goto :goto_0
.end method

.method public declared-synchronized clearAllCache()V
    .locals 1

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->clear()V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->clear()V

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit p0

    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deInit()V
    .locals 1

    .prologue
    .line 591
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDeInit:Z

    .line 592
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->quit()V

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 605
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 606
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarGliderAdapter;->clearAllCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    monitor-exit p0

    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlbumInfo(I)Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    .locals 1
    .parameter "nPos"

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContainerCount()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    return v0
.end method

.method public getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
    .locals 1
    .parameter "nUIPos"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-lt p1, v0, :cond_1

    .line 346
    :cond_0
    const/4 v0, 0x0

    .line 349
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public declared-synchronized getItemBitmap(I)Lcom/htc/sunnyCore/SBitmap;
    .locals 6
    .parameter "nItemPos"

    .prologue
    const/4 v4, 0x1

    .line 356
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedPos:I

    iget v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-eq v2, v3, :cond_0

    .line 357
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    instance-of v2, v2, Lcom/htc/music/carmode/CarNowPlayingActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v2, :cond_3

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/carmode/CarGliderAdapter;->getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 402
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    .line 366
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_4

    if-ltz p1, :cond_4

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt p1, v2, :cond_5

    .line 367
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/carmode/CarGliderAdapter;->getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_5
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    if-eqz v2, :cond_6

    .line 371
    const-string v2, "<unknown>"

    iget-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 372
    invoke-direct {p0}, Lcom/htc/music/carmode/CarGliderAdapter;->getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_6
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/SBitmap;

    .line 377
    .local v0, bmp:Lcom/htc/sunnyCore/SBitmap;
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 378
    .local v1, oldAlbumId:Ljava/lang/Integer;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    if-ne v4, v2, :cond_9

    .line 379
    :cond_7
    invoke-direct {p0}, Lcom/htc/music/carmode/CarGliderAdapter;->getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    .line 386
    :cond_8
    :goto_1
    iget-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    if-nez v2, :cond_b

    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-ne p1, v2, :cond_b

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-ne v2, v0, :cond_b

    .line 388
    iput p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentIndex:I

    .line 389
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mUIHandler:Landroid/os/Handler;

    const v3, 0xa8ca

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 390
    invoke-direct {p0}, Lcom/htc/music/carmode/CarGliderAdapter;->getTransparentAlbumArt()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v2, v3, :cond_8

    .line 381
    :cond_a
    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 382
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-direct {p0}, Lcom/htc/music/carmode/CarGliderAdapter;->getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_1

    .line 392
    :cond_b
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-ne p1, v2, :cond_c

    .line 394
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printCarNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 397
    :cond_c
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentIndex:I

    if-ne p1, v2, :cond_2

    .line 398
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentIndex:I

    .line 399
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 356
    .end local v0           #bmp:Lcom/htc/sunnyCore/SBitmap;
    .end local v1           #oldAlbumId:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getItemCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 328
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    .line 336
    :goto_0
    monitor-exit p0

    return v0

    .line 331
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSelectionChanged(I)V
    .locals 4
    .parameter "nSelectedPos"

    .prologue
    .line 692
    monitor-enter p0

    const/4 v1, 0x0

    .line 693
    .local v1, nStart:I
    const/4 v0, 0x0

    .line 694
    .local v0, nEnd:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_2

    .line 695
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p1, v2

    .line 696
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int v0, p1, v2

    .line 697
    if-gez v1, :cond_0

    .line 698
    const/4 v1, 0x0

    .line 699
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 700
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 702
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->setVisibleRange(II)V

    .line 703
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    iget-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setQueueLength(I)V

    .line 704
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v2, p1}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    .line 706
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->requestAllBitmap(I)V

    .line 708
    :cond_2
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_3

    if-ltz p1, :cond_3

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-le v2, p1, :cond_3

    .line 709
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I

    .line 716
    :goto_0
    iput p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    monitor-exit p0

    return-void

    .line 711
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    const/4 p1, 0x0

    goto :goto_0

    .line 692
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public pauseDecoder()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    .line 522
    :cond_0
    return-void
.end method

.method public reload(Z)V
    .locals 18
    .parameter "defaultBig"

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 110
    .local v10, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f0a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v16

    .line 112
    .local v16, translateX:[F
    const v2, 0x7f0a0001

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v17

    .line 114
    .local v17, translateY:[F
    const v2, 0x7f0a0002

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v13

    .line 116
    .local v13, scale:[F
    const v2, 0x7f0a0003

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v11

    .line 118
    .local v11, rotateX:[F
    const v2, 0x7f0a0004

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v12

    .line 120
    .local v12, rotateY:[F
    const v2, 0x7f0a0005

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 122
    .local v8, alpha:[I
    const/high16 v2, 0x7f09

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    .line 123
    const v2, 0x7f090001

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    .line 125
    const v2, 0x7f090002

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 126
    .local v15, spriteWidth:I
    const v2, 0x7f090003

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 128
    .local v14, spriteHeight:I
    if-eqz v16, :cond_2

    if-eqz v17, :cond_2

    if-eqz v13, :cond_2

    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    if-eqz v8, :cond_2

    .line 130
    move-object/from16 v0, v16

    array-length v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    .line 131
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    .line 132
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    if-nez v2, :cond_0

    .line 135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v2, v2, [Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    .line 137
    :cond_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-ge v9, v2, :cond_3

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    if-nez v2, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    new-instance v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v3, v2, v9

    .line 141
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    aget v3, v13, v9

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    aget v3, v13, v9

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    aget v3, v11, v9

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    aget v3, v12, v9

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iput v14, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iput v15, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    aget v3, v16, v9

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    aget v3, v17, v9

    iput v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v9

    aget v3, v8, v9

    iput v3, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    .line 137
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 157
    .end local v9           #i:I
    :cond_2
    const-string v2, "[CarGliderAdapter]"

    const-string v3, "init failed"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-nez v2, :cond_4

    .line 163
    new-instance v2, Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/htc/music/util/DlArtAsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->setReportError(Z)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->setRecycleOnPause(Z)V

    .line 167
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v2, :cond_5

    .line 168
    new-instance v2, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    invoke-direct {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    .line 173
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v2, :cond_6

    .line 175
    new-instance v2, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 177
    :cond_6
    return-void
.end method

.method public declared-synchronized requestAllBitmap(I)V
    .locals 12
    .parameter "nSelectedPos"

    .prologue
    const/4 v11, 0x1

    .line 736
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 810
    :cond_0
    monitor-exit p0

    return-void

    .line 740
    :cond_1
    const/4 v2, 0x1

    .line 741
    .local v2, nCacheSize:I
    :try_start_1
    iget v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    div-int/lit8 v10, v10, 0x2

    rsub-int/lit8 v3, v10, 0x0

    .line 742
    .local v3, nLowBound:I
    const/4 v7, 0x1

    .line 743
    .local v7, nUpBound:I
    const/4 v6, 0x0

    .line 744
    .local v6, nScannedCount:I
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v8, v10

    .line 746
    .local v8, queueLen:I
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    .line 747
    iget-boolean v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    if-ne v10, v11, :cond_3

    .line 748
    const/4 v7, 0x1

    .line 754
    :goto_0
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v10}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->clear()V

    .line 757
    if-lt p1, v3, :cond_0

    if-gt p1, v7, :cond_0

    .line 761
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    .line 762
    add-int/lit8 v6, v6, 0x1

    .line 764
    const/4 v9, -0x1

    .line 765
    .local v9, sign:I
    const/4 v4, 0x1

    .line 766
    .local v4, nOffset:I
    const/4 v5, 0x0

    .line 767
    .local v5, nPos:I
    const/4 v1, 0x0

    .local v1, bUpBound:Z
    const/4 v0, 0x0

    .line 768
    .local v0, bLowBound:Z
    :goto_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 769
    :cond_2
    const/4 v10, -0x1

    if-ne v10, v9, :cond_9

    if-nez v0, :cond_9

    .line 770
    mul-int v10, v4, v9

    add-int v5, p1, v10

    .line 771
    if-ge v5, v3, :cond_4

    .line 772
    const/4 v0, 0x1

    .line 773
    goto :goto_1

    .line 750
    .end local v0           #bLowBound:Z
    .end local v1           #bUpBound:Z
    .end local v4           #nOffset:I
    .end local v5           #nPos:I
    .end local v9           #sign:I
    :cond_3
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v10, :cond_0

    .line 751
    iget v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v8

    add-int/lit8 v7, v10, -0x1

    goto :goto_0

    .line 774
    .restart local v0       #bLowBound:Z
    .restart local v1       #bUpBound:Z
    .restart local v4       #nOffset:I
    .restart local v5       #nPos:I
    .restart local v9       #sign:I
    :cond_4
    if-ne v5, v3, :cond_5

    .line 775
    const/4 v0, 0x1

    .line 778
    :cond_5
    if-gez v5, :cond_6

    .line 779
    add-int/2addr v5, v8

    .line 782
    :cond_6
    invoke-direct {p0, v5}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    .line 783
    add-int/lit8 v6, v6, 0x1

    .line 802
    :cond_7
    :goto_2
    if-ne v11, v9, :cond_8

    .line 803
    add-int/lit8 v4, v4, 0x1

    .line 805
    if-le v2, v6, :cond_0

    .line 808
    :cond_8
    mul-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 785
    :cond_9
    if-ne v11, v9, :cond_7

    if-nez v1, :cond_7

    .line 786
    mul-int v10, v4, v9

    add-int v5, p1, v10

    .line 787
    if-le v5, v7, :cond_a

    .line 788
    const/4 v1, 0x1

    .line 789
    goto :goto_1

    .line 790
    :cond_a
    if-ne v5, v7, :cond_b

    .line 791
    const/4 v1, 0x1

    .line 794
    :cond_b
    if-lt v5, v8, :cond_c

    .line 795
    sub-int/2addr v5, v8

    .line 798
    :cond_c
    invoke-direct {p0, v5}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 736
    .end local v0           #bLowBound:Z
    .end local v1           #bUpBound:Z
    .end local v2           #nCacheSize:I
    .end local v3           #nLowBound:I
    .end local v4           #nOffset:I
    .end local v5           #nPos:I
    .end local v6           #nScannedCount:I
    .end local v7           #nUpBound:I
    .end local v8           #queueLen:I
    .end local v9           #sign:I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public resumeDecoder()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    .line 528
    :cond_0
    return-void
.end method

.method public declared-synchronized setAlbumInfo([Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;ZI)V
    .locals 17
    .parameter "albumInfo"
    .parameter "isPluginMode"
    .parameter "selectedPos"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    .line 181
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    .line 182
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    .line 183
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedPos:I

    .line 184
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    .line 186
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z

    if-eqz v2, :cond_3

    .line 187
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 189
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v16, selection:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 192
    const-string v2, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-ge v11, v2, :cond_2

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, v11

    iget v2, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 201
    .local v15, posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 205
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 206
    .restart local v15       #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v15, :cond_1

    .line 207
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 180
    .end local v11           #i:I
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16           #selection:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 209
    .restart local v11       #i:I
    .restart local v15       #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v16       #selection:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    const-string v2, "[CarGliderAdapter]"

    const-string v3, "Something wrong in setAlbumInfo"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 214
    const-string v2, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/htc/music/carmode/CarGliderAdapter;->mMdColumns:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v11           #i:I
    .end local v16           #selection:Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-ltz v2, :cond_5

    if-ltz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p3

    if-le v2, v0, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 225
    .local v14, oldAlbumId:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p3

    iget v12, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    .line 226
    .local v12, newAlbumId:I
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v12, :cond_4

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/sunnyCore/SBitmap;

    .line 228
    .local v10, bmp:Lcom/htc/sunnyCore/SBitmap;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 229
    invoke-virtual {v10}, Lcom/htc/sunnyCore/SBitmap;->substitute()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v13

    .line 230
    .local v13, newBmp:Lcom/htc/sunnyCore/SBitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setQueueLength(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v10           #bmp:Lcom/htc/sunnyCore/SBitmap;
    .end local v13           #newBmp:Lcom/htc/sunnyCore/SBitmap;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I

    if-ne v2, v12, :cond_5

    .line 239
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    .line 242
    .end local v12           #newAlbumId:I
    .end local v14           #oldAlbumId:Ljava/lang/Integer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_6

    if-ltz p3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p3

    if-le v2, v0, :cond_6

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p3

    iget v2, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I

    .line 250
    :goto_2
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 245
    :cond_6
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    const/16 p3, 0x0

    goto :goto_2
.end method

.method public declared-synchronized setDlAlbumArt(ILjava/lang/String;)V
    .locals 10
    .parameter "albumId"
    .parameter "dlArtPath"

    .prologue
    .line 254
    monitor-enter p0

    if-gez p1, :cond_1

    .line 255
    :try_start_0
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "setDlAlbumArt: Illegal Arguments"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 259
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    if-gtz v7, :cond_3

    .line 260
    :cond_2
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumInfoArray = null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 264
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_5

    .line 265
    :cond_4
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumIdPosMap = null or size <= 0"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_5
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 270
    .local v4, posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 275
    const/4 v3, -0x1

    .line 276
    .local v3, pos:I
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 277
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 278
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 280
    if-ltz v3, :cond_c

    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    if-ge v3, v7, :cond_c

    .line 281
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    if-ne v7, p1, :cond_6

    .line 282
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-static {v7, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 286
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iput-object p2, v7, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    .line 288
    iget v6, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    .line 289
    .local v6, validPos:I
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    if-ge v6, v7, :cond_a

    .line 290
    iget v6, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    .line 294
    :cond_7
    :goto_2
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    sub-int v2, v6, v7

    .line 295
    .local v2, lowerBound:I
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    add-int v5, v6, v7

    .line 299
    .local v5, upperBound:I
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v7, :cond_6

    .line 300
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/SBitmap;

    .line 301
    .local v0, bmp:Lcom/htc/sunnyCore/SBitmap;
    if-gt v2, v3, :cond_8

    if-le v3, v5, :cond_9

    :cond_8
    if-eqz v0, :cond_6

    .line 302
    :cond_9
    const-string v7, "[CarGliderAdapter]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDlAlbumArt: update image of position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->remove(Ljava/lang/Object;)V

    .line 304
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 305
    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->notifyUpdateItem(I)V

    .line 306
    invoke-direct {p0, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    .line 291
    .end local v0           #bmp:Lcom/htc/sunnyCore/SBitmap;
    .end local v2           #lowerBound:I
    .end local v5           #upperBound:I
    :cond_a
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_7

    .line 292
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v6, v7, -0x1

    goto :goto_2

    .line 308
    .restart local v0       #bmp:Lcom/htc/sunnyCore/SBitmap;
    .restart local v2       #lowerBound:I
    .restart local v5       #upperBound:I
    :cond_b
    invoke-direct {p0, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    .line 314
    .end local v0           #bmp:Lcom/htc/sunnyCore/SBitmap;
    .end local v2           #lowerBound:I
    .end local v5           #upperBound:I
    .end local v6           #validPos:I
    :cond_c
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "pos illegal"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public updateLayoutAtTimeSlot(IIIILcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;Z)V
    .locals 22
    .parameter "nTimeSlot"
    .parameter "nTotalTimeSlot"
    .parameter "nCurrentUIPos"
    .parameter "nNextUIPos"
    .parameter "layout"
    .parameter "isBouncing"

    .prologue
    .line 817
    const/4 v12, 0x0

    .local v12, nStartX:F
    const/4 v7, 0x0

    .line 818
    .local v7, nEndX:F
    const/4 v14, 0x0

    .local v14, nStartY:F
    const/4 v9, 0x0

    .line 819
    .local v9, nEndY:F
    const/16 v16, 0x0

    .local v16, nStartZ:F
    const/4 v11, 0x0

    .line 821
    .local v11, nEndZ:F
    const/4 v13, 0x0

    .local v13, nStartXF:F
    const/4 v8, 0x0

    .line 822
    .local v8, nEndXF:F
    const/4 v15, 0x0

    .local v15, nStartYF:F
    const/4 v10, 0x0

    .line 824
    .local v10, nEndYF:F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 826
    .local v6, nAbsTimeSlot:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarGliderAdapter;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    .line 827
    .local v5, currentLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
    if-nez v5, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarGliderAdapter;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v17

    .line 829
    .local v17, nextLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
    if-eqz v17, :cond_0

    .line 831
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 832
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 833
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 834
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 835
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 836
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 837
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 840
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 841
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v8, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 842
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 843
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v10, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 844
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v8, v13

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 845
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v10, v15

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 846
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 848
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 849
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 850
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v16, v0

    .line 851
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v11, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 852
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 853
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 854
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 855
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 856
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v11, v16

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v16

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 859
    int-to-float v0, v6

    move/from16 v18, v0

    iget v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v20, v0

    iget v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    .line 862
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 863
    if-nez v6, :cond_0

    goto/16 :goto_0
.end method
