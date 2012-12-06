.class public Lcom/htc/music/GliderAdapter;
.super Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;
.source "GliderAdapter.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/GliderAdapter$QueryHandler;,
        Lcom/htc/music/GliderAdapter$AlbumInfo;
    }
.end annotation


# static fields
.field private static final CHANGE_BACKGROUND_PERIOD:J = 0x5dcL

.field private static final TAG:Ljava/lang/String; = "[GliderAdapter]"

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

.field private mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

.field private mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

.field private mCanUpdateSelectedItem:Z

.field private mComponentCount:I

.field private mCookie:J

.field private mDeInit:Z

.field private mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

.field private mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

.field private mImageHeight:I

.field private mImageWidth:I

.field mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mIsDownloadInfoQueried:Z

.field private mIsEnhancerExist:Z

.field private mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

.field private mMemCacheSize:I

.field private mMemCacheSizeHalf:I

.field private mMusicContext:Lcom/htc/music/HtcMusic;

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
    .line 83
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

    sput-object v0, Lcom/htc/music/GliderAdapter;->mMdColumns:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/htc/music/HtcMusic;Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V
    .locals 4
    .parameter "musicContext"
    .parameter "spresentation"

    .prologue
    const/16 v1, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;-><init>()V

    .line 40
    iput v1, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    .line 41
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    .line 45
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    .line 47
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 48
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    .line 55
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 58
    iput v1, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    .line 60
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mImageWidth:I

    .line 61
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mImageHeight:I

    .line 63
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    iput v2, p0, Lcom/htc/music/GliderAdapter;->mPreSelectedPos:I

    .line 64
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I

    .line 65
    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    .line 68
    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    .line 70
    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z

    .line 72
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/GliderAdapter;->mCookie:J

    .line 75
    iput-object v3, p0, Lcom/htc/music/GliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    .line 81
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentIndex:I

    .line 421
    new-instance v0, Lcom/htc/music/GliderAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/GliderAdapter$1;-><init>(Lcom/htc/music/GliderAdapter;)V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mUIHandler:Landroid/os/Handler;

    .line 611
    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mDeInit:Z

    .line 631
    new-instance v0, Lcom/htc/music/GliderAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/music/GliderAdapter$2;-><init>(Lcom/htc/music/GliderAdapter;)V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 91
    iput-object p1, p0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    .line 92
    iput-object p2, p0, Lcom/htc/music/GliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 93
    invoke-direct {p0}, Lcom/htc/music/GliderAdapter;->init()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/GliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/GliderAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/GliderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/GliderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/GliderAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/htc/music/GliderAdapter;->mCookie:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/GliderAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    return p1
.end method

.method private declared-synchronized addBitmapToCache(I)Z
    .locals 23
    .parameter "nItemPos"

    .prologue
    .line 450
    monitor-enter p0

    const/16 v18, 0x0

    .line 451
    .local v18, bmp:Lcom/htc/sunnyCore/SBitmap;
    const/16 v16, 0x0

    .local v16, addToDecoder:Z
    const/16 v17, 0x0

    .line 452
    .local v17, bHasCached:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    move/from16 v2, v17

    .line 516
    :goto_0
    monitor-exit p0

    return v2

    .line 454
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_2

    :cond_1
    move/from16 v2, v17

    .line 455
    goto :goto_0

    .line 458
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunnyCore/SBitmap;

    move-object/from16 v18, v0

    .line 460
    if-eqz v18, :cond_3

    const/4 v2, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v3

    if-ne v2, v3, :cond_5

    :cond_3
    const/16 v16, 0x1

    .line 461
    :goto_1
    if-nez v16, :cond_4

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 464
    .local v21, oldAlbumId:Ljava/lang/Integer;
    if-nez v21, :cond_6

    .line 465
    const/16 v16, 0x1

    .line 473
    .end local v21           #oldAlbumId:Ljava/lang/Integer;
    :cond_4
    :goto_2
    if-eqz v16, :cond_d

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    iget-object v0, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    .line 475
    .local v22, service:Lcom/htc/music/IMediaPlaybackService;
    if-nez v22, :cond_7

    .line 476
    const-string v2, "[GliderAdapter]"

    const-string v3, "addBitmapToCache with null service!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/4 v2, 0x0

    goto :goto_0

    .line 460
    .end local v22           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    .line 466
    .restart local v21       #oldAlbumId:Ljava/lang/Integer;
    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v2, v3, :cond_4

    .line 467
    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 468
    const/16 v16, 0x1

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 450
    .end local v21           #oldAlbumId:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 479
    .restart local v22       #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_7
    const/16 v19, 0x0

    .line 481
    .local v19, currentMode:I
    :try_start_2
    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getCurrentMode()I

    move-result v19

    .line 482
    const/4 v2, 0x2

    move/from16 v0, v19

    if-eq v0, v2, :cond_8

    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_a

    .line 483
    :cond_8
    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, path:Ljava/lang/String;
    const-string v2, "[GliderAdapter]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add to decoder path = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    const/4 v6, 0x1

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v7, v3

    move/from16 v3, p1

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IZ[Ljava/lang/Object;)V

    .end local v4           #path:Ljava/lang/String;
    .end local v19           #currentMode:I
    .end local v22           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_9
    :goto_3
    move/from16 v2, v17

    .line 516
    goto/16 :goto_0

    .line 487
    .restart local v19       #currentMode:I
    .restart local v22       #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    .line 488
    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v7

    .line 489
    .local v7, artPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    const/4 v9, 0x1

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v10, v2

    move/from16 v6, p1

    move/from16 v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IZ[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 508
    .end local v7           #artPath:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 509
    .local v20, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 491
    .end local v20           #e:Landroid/os/RemoteException;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    if-eqz v2, :cond_9

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v2, :cond_c

    const-string v2, "<unknown>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyUpdateItem(I)V

    goto :goto_3

    .line 497
    :cond_c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget-object v10, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v11, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v13, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget-object v14, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget-object v15, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumKey:Ljava/lang/String;

    move/from16 v9, p1

    move/from16 v12, p1

    invoke-virtual/range {v8 .. v15}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 513
    .end local v19           #currentMode:I
    .end local v22           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_3
.end method

.method private getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 584
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 585
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 608
    :goto_0
    return-object v2

    .line 588
    :cond_0
    monitor-enter p0

    .line 590
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mDeInit:Z

    if-ne v3, v2, :cond_1

    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_0

    .line 606
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 593
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 594
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    monitor-exit p0

    goto :goto_0

    .line 597
    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 598
    .local v0, bmpOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 599
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 600
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020041

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 601
    .local v1, defaultBmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 602
    invoke-static {v1}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 603
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 606
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    goto :goto_0
.end method

.method private getTransparentAlbumArt()Lcom/htc/sunnyCore/SBitmap;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 565
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 580
    :goto_0
    return-object v0

    .line 569
    :cond_0
    monitor-enter p0

    .line 571
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/GliderAdapter;->mDeInit:Z

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 574
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    monitor-exit p0

    goto :goto_0

    .line 577
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(III)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 578
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/htc/music/GliderAdapter;->reload()V

    .line 98
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

    .line 892
    cmpl-float v1, v0, p4

    if-nez v1, :cond_0

    .line 894
    :goto_0
    return v0

    :cond_0
    div-float v0, p3, p4

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clearAllCache()V
    .locals 1

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->clear()V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->clear()V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deInit()V
    .locals 1

    .prologue
    .line 613
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/GliderAdapter;->mDeInit:Z

    .line 614
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->quit()V

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mTransparentBitmap:Lcom/htc/sunnyCore/SBitmap;

    .line 627
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 628
    invoke-virtual {p0}, Lcom/htc/music/GliderAdapter;->clearAllCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    monitor-exit p0

    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlbumInfo(I)Lcom/htc/music/GliderAdapter$AlbumInfo;
    .locals 1
    .parameter "nPos"

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContainerCount()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    return v0
.end method

.method public getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
    .locals 1
    .parameter "nUIPos"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    if-lt p1, v0, :cond_1

    .line 359
    :cond_0
    const/4 v0, 0x0

    .line 362
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public declared-synchronized getItemBitmap(I)Lcom/htc/sunnyCore/SBitmap;
    .locals 6
    .parameter "nItemPos"

    .prologue
    const/4 v4, 0x1

    .line 369
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/htc/music/GliderAdapter;->mPreSelectedPos:I

    iget v3, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-eq v2, v3, :cond_0

    .line 370
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    .line 375
    :cond_0
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    instance-of v2, v2, Lcom/htc/music/HtcMusic;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v2, :cond_3

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/GliderAdapter;->getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 415
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    .line 379
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_4

    if-ltz p1, :cond_4

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt p1, v2, :cond_5

    .line 380
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/GliderAdapter;->getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_5
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    if-eqz v2, :cond_6

    .line 384
    const-string v2, "<unknown>"

    iget-object v3, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 385
    invoke-direct {p0}, Lcom/htc/music/GliderAdapter;->getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_0

    .line 389
    :cond_6
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/SBitmap;

    .line 390
    .local v0, bmp:Lcom/htc/sunnyCore/SBitmap;
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 391
    .local v1, oldAlbumId:Ljava/lang/Integer;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    if-ne v4, v2, :cond_9

    .line 392
    :cond_7
    invoke-direct {p0}, Lcom/htc/music/GliderAdapter;->getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    .line 399
    :cond_8
    :goto_1
    iget-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    if-nez v2, :cond_b

    iget v2, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-ne p1, v2, :cond_b

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunnyCore/SBitmap;

    if-ne v2, v0, :cond_b

    .line 401
    iput p1, p0, Lcom/htc/music/GliderAdapter;->mTransparentIndex:I

    .line 402
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mUIHandler:Landroid/os/Handler;

    const v3, 0xa8ca

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 403
    invoke-direct {p0}, Lcom/htc/music/GliderAdapter;->getTransparentAlbumArt()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v2, v3, :cond_8

    .line 394
    :cond_a
    invoke-virtual {v0}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 395
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-direct {p0}, Lcom/htc/music/GliderAdapter;->getDefaultUnknownAlbumArt()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    goto :goto_1

    .line 405
    :cond_b
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-ne p1, v2, :cond_c

    .line 407
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 410
    :cond_c
    iget v2, p0, Lcom/htc/music/GliderAdapter;->mTransparentIndex:I

    if-ne p1, v2, :cond_2

    .line 411
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/GliderAdapter;->mTransparentIndex:I

    .line 412
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 369
    .end local v0           #bmp:Lcom/htc/sunnyCore/SBitmap;
    .end local v1           #oldAlbumId:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getItemCount()I
    .locals 1

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSelectionChanged(I)V
    .locals 4
    .parameter "nSelectedPos"

    .prologue
    .line 720
    monitor-enter p0

    const/4 v1, 0x0

    .line 721
    .local v1, nStart:I
    const/4 v0, 0x0

    .line 722
    .local v0, nEnd:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_2

    .line 723
    iget v2, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p1, v2

    .line 724
    iget v2, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int v0, p1, v2

    .line 725
    if-gez v1, :cond_0

    .line 726
    const/4 v1, 0x0

    .line 727
    :cond_0
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 728
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 730
    :cond_1
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->setVisibleRange(II)V

    .line 731
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    iget-object v3, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setQueueLength(I)V

    .line 732
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v2, p1}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    .line 734
    invoke-virtual {p0, p1}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V

    .line 737
    :cond_2
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_3

    if-ltz p1, :cond_3

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-le v2, p1, :cond_3

    .line 738
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    iput v2, p0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I

    .line 745
    :goto_0
    iput p1, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    monitor-exit p0

    return-void

    .line 740
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    const/4 p1, 0x0

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public pauseDecoder()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    .line 545
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 18

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 102
    .local v10, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0006

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v16

    .line 104
    .local v16, translateX:[F
    const v1, 0x7f0a0007

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v17

    .line 106
    .local v17, translateY:[F
    const v1, 0x7f0a0008

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v13

    .line 108
    .local v13, scale:[F
    const v1, 0x7f0a0009

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v11

    .line 110
    .local v11, rotateX:[F
    const v1, 0x7f0a000a

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v12

    .line 112
    .local v12, rotateY:[F
    const v1, 0x7f0a000b

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 114
    .local v7, alpha:[I
    const v1, 0x7f090004

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mImageWidth:I

    .line 115
    const v1, 0x7f090005

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mImageHeight:I

    .line 117
    const v1, 0x7f090006

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 118
    .local v15, spriteWidth:I
    const v1, 0x7f090007

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 120
    .local v14, spriteHeight:I
    if-eqz v16, :cond_4

    if-eqz v17, :cond_4

    if-eqz v13, :cond_4

    if-eqz v11, :cond_4

    if-eqz v12, :cond_4

    if-eqz v7, :cond_4

    .line 122
    move-object/from16 v0, v16

    array-length v1, v0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    .line 123
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    add-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    .line 124
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    if-nez v1, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    new-array v1, v1, [Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    .line 130
    :cond_0
    const/4 v8, 0x0

    .line 131
    .local v8, fineTuneTranslationY:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v1, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->getHeight()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 133
    const/4 v8, 0x1

    .line 136
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    if-ge v9, v1, :cond_5

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v9

    if-nez v1, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    new-instance v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v2, v1, v9

    .line 141
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    aget v2, v13, v9

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    aget v2, v13, v9

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    aget v2, v11, v9

    iput v2, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    aget v2, v12, v9

    iput v2, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v9

    iput v14, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v9

    iput v15, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    aget v2, v16, v9

    iput v2, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v9

    iget-object v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    aget v3, v17, v9

    const/4 v1, 0x1

    if-ne v8, v1, :cond_3

    const/high16 v1, -0x4100

    :goto_1
    add-float/2addr v1, v3

    iput v1, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v9

    aget v2, v7, v9

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 151
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 157
    .end local v8           #fineTuneTranslationY:Z
    .end local v9           #i:I
    :cond_4
    const-string v1, "[GliderAdapter]"

    const-string v2, "init failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-nez v1, :cond_6

    .line 161
    new-instance v1, Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/GliderAdapter;->mImageWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/GliderAdapter;->mImageHeight:I

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/util/DlArtAsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->setReportError(Z)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->setRecycleOnPause(Z)V

    .line 165
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v1, :cond_7

    .line 166
    new-instance v1, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    invoke-direct {v1, v2}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    .line 171
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v1, :cond_8

    .line 173
    new-instance v1, Lcom/htc/music/GliderAdapter$QueryHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/htc/music/GliderAdapter$QueryHandler;-><init>(Lcom/htc/music/GliderAdapter;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 175
    :cond_8
    return-void
.end method

.method public declared-synchronized requestAllBitmap(I)V
    .locals 16
    .parameter "nSelectedPos"

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_1

    .line 836
    :cond_0
    monitor-exit p0

    return-void

    .line 754
    :cond_1
    const/4 v5, 0x1

    .line 755
    .local v5, nCacheSize:I
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    div-int/lit8 v14, v14, 0x2

    rsub-int/lit8 v6, v14, 0x0

    .line 756
    .local v6, nLowBound:I
    const/4 v10, 0x1

    .line 757
    .local v10, nUpBound:I
    const/4 v9, 0x0

    .line 758
    .local v9, nScannedCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v11, v14

    .line 760
    .local v11, queueLen:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    .line 762
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v14, :cond_0

    .line 763
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v11

    add-int/lit8 v10, v14, -0x1

    .line 765
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v14}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->clear()V

    .line 767
    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-gt v0, v10, :cond_0

    .line 771
    invoke-direct/range {p0 .. p1}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    .line 772
    add-int/lit8 v9, v9, 0x1

    .line 774
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    iget-object v12, v14, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    .local v12, service:Lcom/htc/music/IMediaPlaybackService;
    const/4 v4, 0x0

    .line 776
    .local v4, isPluginMode:Z
    if-eqz v12, :cond_2

    .line 778
    :try_start_2
    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 785
    :cond_2
    :goto_0
    if-nez v4, :cond_0

    .line 790
    const/4 v13, -0x1

    .line 791
    .local v13, sign:I
    const/4 v7, 0x1

    .line 792
    .local v7, nOffset:I
    const/4 v8, 0x0

    .line 793
    .local v8, nPos:I
    const/4 v2, 0x0

    .local v2, bUpBound:Z
    const/4 v1, 0x0

    .line 794
    .local v1, bLowBound:Z
    :goto_1
    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    .line 795
    :cond_3
    const/4 v14, -0x1

    if-ne v14, v13, :cond_9

    if-nez v1, :cond_9

    .line 796
    mul-int v14, v7, v13

    add-int v8, p1, v14

    .line 797
    if-ge v8, v6, :cond_4

    .line 798
    const/4 v1, 0x1

    .line 799
    goto :goto_1

    .line 779
    .end local v1           #bLowBound:Z
    .end local v2           #bUpBound:Z
    .end local v7           #nOffset:I
    .end local v8           #nPos:I
    .end local v13           #sign:I
    :catch_0
    move-exception v3

    .line 780
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_3
    const-string v14, "[GliderAdapter]"

    const-string v15, "Remote Exception in requestAllBitmap getCurrentMode()"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 750
    .end local v3           #ex:Landroid/os/RemoteException;
    .end local v4           #isPluginMode:Z
    .end local v5           #nCacheSize:I
    .end local v6           #nLowBound:I
    .end local v9           #nScannedCount:I
    .end local v10           #nUpBound:I
    .end local v11           #queueLen:I
    .end local v12           #service:Lcom/htc/music/IMediaPlaybackService;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 800
    .restart local v1       #bLowBound:Z
    .restart local v2       #bUpBound:Z
    .restart local v4       #isPluginMode:Z
    .restart local v5       #nCacheSize:I
    .restart local v6       #nLowBound:I
    .restart local v7       #nOffset:I
    .restart local v8       #nPos:I
    .restart local v9       #nScannedCount:I
    .restart local v10       #nUpBound:I
    .restart local v11       #queueLen:I
    .restart local v12       #service:Lcom/htc/music/IMediaPlaybackService;
    .restart local v13       #sign:I
    :cond_4
    if-ne v8, v6, :cond_5

    .line 801
    const/4 v1, 0x1

    .line 804
    :cond_5
    if-gez v8, :cond_6

    .line 805
    add-int/2addr v8, v11

    .line 808
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    .line 809
    add-int/lit8 v9, v9, 0x1

    .line 828
    :cond_7
    :goto_2
    const/4 v14, 0x1

    if-ne v14, v13, :cond_8

    .line 829
    add-int/lit8 v7, v7, 0x1

    .line 831
    if-le v5, v9, :cond_0

    .line 834
    :cond_8
    mul-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 811
    :cond_9
    const/4 v14, 0x1

    if-ne v14, v13, :cond_7

    if-nez v2, :cond_7

    .line 812
    mul-int v14, v7, v13

    add-int v8, p1, v14

    .line 813
    if-le v8, v10, :cond_a

    .line 814
    const/4 v2, 0x1

    .line 815
    goto :goto_1

    .line 816
    :cond_a
    if-ne v8, v10, :cond_b

    .line 817
    const/4 v2, 0x1

    .line 820
    :cond_b
    if-lt v8, v11, :cond_c

    .line 821
    sub-int/2addr v8, v11

    .line 824
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 825
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method public resumeDecoder()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    .line 551
    :cond_0
    return-void
.end method

.method public declared-synchronized setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;I)V
    .locals 20
    .parameter "albumInfo"
    .parameter "selectedPos"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    .line 179
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    .line 180
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/GliderAdapter;->mPreSelectedPos:I

    .line 181
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;

    iget-object v0, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .local v19, service:Lcom/htc/music/IMediaPlaybackService;
    const/4 v13, 0x0

    .line 189
    .local v13, isPluginMode:Z
    :try_start_1
    invoke-interface/range {v19 .. v19}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    .line 196
    :goto_0
    if-nez v13, :cond_6

    .line 197
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z

    if-eqz v2, :cond_3

    .line 198
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 200
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v18, selection:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 203
    const-string v2, "_id IN ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-ge v12, v2, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, v12

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, v12

    iget v2, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 212
    .local v17, posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, v12

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 190
    .end local v12           #i:I
    .end local v17           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v18           #selection:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    .line 191
    .local v11, ex:Landroid/os/RemoteException;
    const-string v2, "[GliderAdapter]"

    const-string v3, "remove exception in getCurrentMode()"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 178
    .end local v11           #ex:Landroid/os/RemoteException;
    .end local v13           #isPluginMode:Z
    .end local v19           #service:Lcom/htc/music/IMediaPlaybackService;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 216
    .restart local v12       #i:I
    .restart local v13       #isPluginMode:Z
    .restart local v18       #selection:Ljava/lang/StringBuilder;
    .restart local v19       #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, v12

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashSet;

    .line 217
    .restart local v17       #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v17, :cond_1

    .line 218
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 220
    :cond_1
    const-string v2, "[GliderAdapter]"

    const-string v3, "Something wrong in setAlbumInfo"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 224
    .end local v17           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 225
    const-string v2, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/GliderAdapter;->mCookie:J

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/GliderAdapter;->mCookie:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/htc/music/GliderAdapter;->mMdColumns:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v12           #i:I
    .end local v18           #selection:Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-le v2, v3, :cond_5

    if-ltz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p2

    if-le v2, v0, :cond_5

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 239
    .local v16, oldAlbumId:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p2

    iget v14, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    .line 240
    .local v14, newAlbumId:I
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v14, :cond_4

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/sunnyCore/SBitmap;

    .line 242
    .local v10, bmp:Lcom/htc/sunnyCore/SBitmap;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/htc/sunnyCore/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 243
    invoke-virtual {v10}, Lcom/htc/sunnyCore/SBitmap;->substitute()Lcom/htc/sunnyCore/SBitmap;

    move-result-object v15

    .line 244
    .local v15, newBmp:Lcom/htc/sunnyCore/SBitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setQueueLength(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v10           #bmp:Lcom/htc/sunnyCore/SBitmap;
    .end local v15           #newBmp:Lcom/htc/sunnyCore/SBitmap;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I

    if-ne v2, v14, :cond_5

    .line 252
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z

    .line 256
    .end local v14           #newAlbumId:I
    .end local v16           #oldAlbumId:Ljava/lang/Integer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_7

    if-ltz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p2

    if-le v2, v0, :cond_7

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p2

    iget v2, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I

    .line 265
    :goto_3
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    :cond_6
    monitor-exit p0

    return-void

    .line 259
    :cond_7
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/GliderAdapter;->mPreSelectedAlbumId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 262
    const/16 p2, 0x0

    goto :goto_3
.end method

.method public declared-synchronized setDlAlbumArt(ILjava/lang/String;)V
    .locals 10
    .parameter "albumId"
    .parameter "dlArtPath"

    .prologue
    .line 270
    monitor-enter p0

    if-gez p1, :cond_1

    .line 271
    :try_start_0
    const-string v7, "[GliderAdapter]"

    const-string v8, "setDlAlbumArt: Illegal Arguments"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    if-gtz v7, :cond_3

    .line 276
    :cond_2
    const-string v7, "[GliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumInfoArray = null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 280
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_5

    .line 281
    :cond_4
    const-string v7, "[GliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumIdPosMap = null or size <= 0"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_5
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 286
    .local v4, posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 291
    const/4 v3, -0x1

    .line 292
    .local v3, pos:I
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 296
    if-ltz v3, :cond_c

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    if-ge v3, v7, :cond_c

    .line 297
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-ne v7, p1, :cond_6

    .line 298
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-static {v7, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 302
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iput-object p2, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    .line 304
    iget v6, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    .line 305
    .local v6, validPos:I
    iget v7, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    if-ge v6, v7, :cond_a

    .line 306
    iget v6, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    .line 310
    :cond_7
    :goto_2
    iget v7, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    sub-int v2, v6, v7

    .line 311
    .local v2, lowerBound:I
    iget v7, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    add-int v5, v6, v7

    .line 315
    .local v5, upperBound:I
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v7, :cond_6

    .line 316
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/SBitmap;

    .line 317
    .local v0, bmp:Lcom/htc/sunnyCore/SBitmap;
    if-gt v2, v3, :cond_8

    if-le v3, v5, :cond_9

    :cond_8
    if-eqz v0, :cond_6

    .line 318
    :cond_9
    const-string v7, "[GliderAdapter]"

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

    .line 319
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->remove(Ljava/lang/Object;)V

    .line 320
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 321
    invoke-virtual {p0, v3}, Lcom/htc/music/GliderAdapter;->notifyUpdateItem(I)V

    .line 322
    invoke-direct {p0, v3}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    .line 307
    .end local v0           #bmp:Lcom/htc/sunnyCore/SBitmap;
    .end local v2           #lowerBound:I
    .end local v5           #upperBound:I
    :cond_a
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_7

    .line 308
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v6, v7, -0x1

    goto :goto_2

    .line 324
    .restart local v0       #bmp:Lcom/htc/sunnyCore/SBitmap;
    .restart local v2       #lowerBound:I
    .restart local v5       #upperBound:I
    :cond_b
    invoke-direct {p0, v3}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    .line 331
    .end local v0           #bmp:Lcom/htc/sunnyCore/SBitmap;
    .end local v2           #lowerBound:I
    .end local v5           #upperBound:I
    .end local v6           #validPos:I
    :cond_c
    const-string v7, "[GliderAdapter]"

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
    .line 843
    const/4 v12, 0x0

    .local v12, nStartX:F
    const/4 v7, 0x0

    .line 844
    .local v7, nEndX:F
    const/4 v14, 0x0

    .local v14, nStartY:F
    const/4 v9, 0x0

    .line 845
    .local v9, nEndY:F
    const/16 v16, 0x0

    .local v16, nStartZ:F
    const/4 v11, 0x0

    .line 847
    .local v11, nEndZ:F
    const/4 v13, 0x0

    .local v13, nStartXF:F
    const/4 v8, 0x0

    .line 848
    .local v8, nEndXF:F
    const/4 v15, 0x0

    .local v15, nStartYF:F
    const/4 v10, 0x0

    .line 850
    .local v10, nEndYF:F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 852
    .local v6, nAbsTimeSlot:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/music/GliderAdapter;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    .line 853
    .local v5, currentLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
    if-nez v5, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/music/GliderAdapter;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v17

    .line 855
    .local v17, nextLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
    if-eqz v17, :cond_0

    .line 857
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 858
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 859
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 860
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 861
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

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 862
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

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 863
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 866
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 867
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v8, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 868
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 869
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v10, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 870
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

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 871
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

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 872
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 874
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 875
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 876
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v16, v0

    .line 877
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v11, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 878
    iget-object v0, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 879
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 880
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

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 881
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

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 882
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

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 885
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

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    goto/16 :goto_0
.end method
