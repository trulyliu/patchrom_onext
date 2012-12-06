.class public Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;
.source "MusicGridViewPreparator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static DIRECTION_NODIRECTION:I = 0x0

.field private static DIRECTION_SCROLL_TO_BOTTOM:I = 0x0

.field private static DIRECTION_SCROLL_TO_TOP:I = 0x0

.field public static final GET_VIEW_TEXTURE_BY_BOOLEAN:Ljava/lang/String; = "viewTexture"

.field private static final TAG:Ljava/lang/String; = "[MusicGridViewPreparator]"


# instance fields
.field private mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

.field private mCacheSize:I

.field private mChildBitmapRecycler:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mColumn:I

.field private mContext:Landroid/content/Context;

.field mDecodeBitmapListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

.field private mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

.field private mDecodeDirection:I

.field mDecodeFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;

.field private mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeTextViewFirst:Z

.field mDecodeTextureListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

.field private mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

.field private mDecodeThumbBitmapCount:I

.field mDecodeViewBitmapListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

.field private mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

.field mDecodeViewFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;

.field mDecodeViewTextureListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

.field private mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

.field private mFirstVisibleIndex:I

.field private mInit:Z

.field private mLastVisibleIndex:I

.field private mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

.field mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

.field private mParentBitmapRecycler:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mStep:I

.field private mStop:Z

.field private mSyncLock:Ljava/lang/Object;

.field private mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

.field private mViewCacheSize:I

.field private mViewDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->DIRECTION_SCROLL_TO_BOTTOM:I

    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->DIRECTION_SCROLL_TO_TOP:I

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->DIRECTION_NODIRECTION:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V
    .locals 3
    .parameter "host"
    .parameter "name"
    .parameter "musicGridViewUtil"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeThumbBitmapCount:I

    .line 27
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mCacheSize:I

    .line 28
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewCacheSize:I

    .line 29
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextViewFirst:Z

    .line 33
    sget v0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->DIRECTION_SCROLL_TO_BOTTOM:I

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeDirection:I

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mSyncLock:Ljava/lang/Object;

    .line 46
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mInit:Z

    .line 47
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mFirstVisibleIndex:I

    .line 48
    const/16 v0, 0x18

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mLastVisibleIndex:I

    .line 52
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 53
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 55
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 56
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 61
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$1;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;

    .line 96
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$2;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;

    .line 164
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$3;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    .line 181
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$4;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$4;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    .line 210
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$5;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$5;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    .line 220
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$6;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$6;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    .line 326
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mStep:I

    .line 443
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mColumn:I

    .line 491
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mStop:Z

    .line 989
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mPaused:Z

    .line 990
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mPauseLock:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewCacheSize:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;ILcom/htc/music/widget/gridview/MemoryCacheDecodeTask;Lcom/htc/music/widget/gridview/TextureMap;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->tryCreateTextureFromDecodedTask(ILcom/htc/music/widget/gridview/MemoryCacheDecodeTask;Lcom/htc/music/widget/gridview/TextureMap;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mCacheSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/TextureMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/TextureMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewMediaData;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->addMediaDataToDecode(Lcom/htc/music/widget/gridview/MusicGridViewMediaData;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mParentBitmapRecycler:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mChildBitmapRecycler:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    return-object v0
.end method

.method private addMediaDataToDecode(Lcom/htc/music/widget/gridview/MusicGridViewMediaData;I)Z
    .locals 2
    .parameter "mediaData"
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 148
    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isItemDataReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getDecodeStatus()I

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setDecodeStatus(I)V

    .line 158
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v1, p2, p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->add(ILcom/htc/music/widget/gridview/MusicGridViewMediaData;)V

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTimeExpired(J)Z
    .locals 2
    .parameter "limitedTimeMillis"

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processToPauseRenderThread()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->getTaskSize()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->isAllParentMediaDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 441
    :cond_0
    return-void
.end method

.method private tryCreateTextureFromDecodedTask(ILcom/htc/music/widget/gridview/MemoryCacheDecodeTask;Lcom/htc/music/widget/gridview/TextureMap;I)Z
    .locals 13
    .parameter "position"
    .parameter
    .parameter "map"
    .parameter "cacheSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/music/widget/gridview/TextureMap;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, cache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;,"Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 234
    .local v8, task:Lcom/htc/music/widget/gridview/DecodeTask;
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v10, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v5

    .line 235
    .local v5, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-nez v5, :cond_1

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #task:Lcom/htc/music/widget/gridview/DecodeTask;
    check-cast v8, Lcom/htc/music/widget/gridview/DecodeTask;

    .line 237
    .restart local v8       #task:Lcom/htc/music/widget/gridview/DecodeTask;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->remove(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p2, v8}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->releaseItemResource(Lcom/htc/music/widget/gridview/DecodeTask;)V

    .line 239
    if-eqz v8, :cond_0

    const/4 v10, 0x1

    .line 323
    :goto_0
    return v10

    .line 239
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 241
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 242
    const/4 v10, 0x0

    goto :goto_0

    .line 244
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #task:Lcom/htc/music/widget/gridview/DecodeTask;
    check-cast v8, Lcom/htc/music/widget/gridview/DecodeTask;

    .line 245
    .restart local v8       #task:Lcom/htc/music/widget/gridview/DecodeTask;
    invoke-virtual {v5}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, identity:Ljava/lang/String;
    if-eqz v8, :cond_3

    iget-object v10, v8, Lcom/htc/music/widget/gridview/DecodeTask;->key:Ljava/lang/String;

    if-eqz v10, :cond_3

    if-eqz v4, :cond_3

    iget-object v10, v8, Lcom/htc/music/widget/gridview/DecodeTask;->key:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 248
    :cond_3
    invoke-virtual {p2, v8}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->releaseItemResource(Lcom/htc/music/widget/gridview/DecodeTask;)V

    .line 249
    const/4 v10, 0x0

    goto :goto_0

    .line 252
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->remove(Ljava/lang/Object;)V

    .line 253
    iget-object v10, v8, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_7

    .line 254
    move-object/from16 v0, p3

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 255
    .local v9, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v9, :cond_5

    .line 256
    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 257
    :cond_5
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    move-object/from16 v0, p3

    if-ne v0, v10, :cond_6

    .line 258
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setViewDecodeStatus(I)V

    .line 263
    :goto_1
    invoke-virtual {p2, v8}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->releaseItemResource(Lcom/htc/music/widget/gridview/DecodeTask;)V

    .line 265
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v11, p1, v12}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 266
    const/4 v10, 0x1

    goto :goto_0

    .line 261
    :cond_6
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setDecodeStatus(I)V

    goto :goto_1

    .line 268
    .end local v9           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_7
    const/4 v6, 0x0

    .line 270
    .local v6, removeMediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    move-object/from16 v0, p3

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .restart local v9       #texture:Lcom/htc/sunnyCore/Texture;
    if-nez v9, :cond_a

    .line 271
    invoke-virtual/range {p3 .. p3}, Lcom/htc/music/widget/gridview/TextureMap;->size()I

    move-result v10

    move/from16 v0, p4

    if-lt v10, v0, :cond_8

    .line 272
    iget v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mFirstVisibleIndex:I

    add-int/lit8 v1, v10, -0x1

    .line 273
    .local v1, begin:I
    iget v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mLastVisibleIndex:I

    add-int/lit8 v3, v10, 0x1

    .line 277
    .local v3, end:I
    iget v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeDirection:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3, v10}, Lcom/htc/music/widget/gridview/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v7

    .line 278
    .local v7, removePos:I
    const/4 v10, -0x1

    if-le v7, v10, :cond_8

    .line 279
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/htc/music/widget/gridview/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 280
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v10, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v6

    .line 281
    if-eqz v6, :cond_8

    .line 282
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    move-object/from16 v0, p3

    if-ne v0, v10, :cond_c

    .line 283
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setViewDecodeStatus(I)V

    .line 291
    .end local v1           #begin:I
    .end local v3           #end:I
    .end local v7           #removePos:I
    :cond_8
    :goto_2
    if-nez v9, :cond_9

    .line 292
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 294
    :cond_9
    invoke-virtual {v5}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, p1, v9, v10}, Lcom/htc/music/widget/gridview/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 299
    :cond_a
    :try_start_0
    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v10

    iget-object v11, v8, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v10, v11}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByAndroidBitmapAndRealize(ILandroid/graphics/Bitmap;)Z

    .line 300
    iget-object v10, v8, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/htc/sunnyCore/Texture;->setWidth(I)V

    .line 301
    iget-object v10, v8, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/htc/sunnyCore/Texture;->setHeight(I)V

    .line 304
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    move-object/from16 v0, p3

    if-ne v0, v10, :cond_e

    .line 305
    invoke-virtual {v5}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getViewDecodeStatus()I

    move-result v10

    if-eqz v10, :cond_b

    .line 306
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setViewDecodeStatus(I)V

    .line 308
    :cond_b
    instance-of v10, v5, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v10, :cond_d

    .line 309
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mParentBitmapRecycler:Ljava/util/LinkedList;

    iget-object v11, v8, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 318
    :goto_3
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v11, p1, v12}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 285
    .restart local v1       #begin:I
    .restart local v3       #end:I
    .restart local v7       #removePos:I
    :cond_c
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setDecodeStatus(I)V

    goto :goto_2

    .line 311
    .end local v1           #begin:I
    .end local v3           #end:I
    .end local v7           #removePos:I
    :cond_d
    :try_start_1
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mChildBitmapRecycler:Ljava/util/LinkedList;

    iget-object v11, v8, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 319
    :catch_0
    move-exception v2

    .line 320
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 314
    .end local v2           #e:Ljava/lang/Exception;
    :cond_e
    :try_start_2
    invoke-virtual {v5}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getViewDecodeStatus()I

    move-result v10

    if-eqz v10, :cond_f

    .line 315
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setDecodeStatus(I)V

    .line 316
    :cond_f
    invoke-virtual {v8}, Lcom/htc/music/widget/gridview/DecodeTask;->releaseResources()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public bind(ILcom/htc/sunnyCore/IMediaList;I)V
    .locals 3
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 603
    iget-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mInit:Z

    if-nez v0, :cond_0

    .line 637
    .end local p2
    :goto_0
    return-void

    .line 605
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->initHostHandler()V

    .line 606
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {p0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->unbind(I)V

    .line 612
    :cond_1
    if-eqz p2, :cond_4

    instance-of v0, p2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_4

    .line 613
    check-cast p2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    .end local p2
    iput-object p2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    .line 614
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mLastVisibleIndex:I

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 615
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mLastVisibleIndex:I

    .line 617
    :cond_2
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mFirstVisibleIndex:I

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 618
    iput v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mFirstVisibleIndex:I

    .line 620
    :cond_3
    new-instance v0, Lcom/htc/music/widget/gridview/TextureMap;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    .line 621
    new-instance v0, Lcom/htc/music/widget/gridview/TextureMap;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    .line 623
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setTotalCount(I)V

    .line 624
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setTotalCount(I)V

    .line 625
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setTotalCount(I)V

    .line 626
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setTotalCount(I)V

    goto :goto_0

    .line 631
    .restart local p2
    :cond_4
    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    .line 632
    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    .line 634
    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    goto/16 :goto_0
.end method

.method public deInit()V
    .locals 4

    .prologue
    .line 496
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 497
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mInit:Z

    .line 498
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    if-eqz v2, :cond_0

    .line 499
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->quit()V

    .line 500
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    .line 503
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->clear()V

    .line 505
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    if-eqz v2, :cond_2

    .line 509
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->clear()V

    .line 510
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    .line 512
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mStop:Z

    .line 514
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    if-eqz v2, :cond_3

    .line 515
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->release()V

    .line 516
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 518
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    if-eqz v2, :cond_4

    .line 519
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->release()V

    .line 520
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 522
    :cond_4
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    if-eqz v2, :cond_5

    .line 523
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->release()V

    .line 524
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 526
    :cond_5
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    if-eqz v2, :cond_6

    .line 527
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->release()V

    .line 528
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 531
    :cond_6
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mParentBitmapRecycler:Ljava/util/LinkedList;

    if-eqz v2, :cond_9

    .line 532
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mParentBitmapRecycler:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 533
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 534
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 553
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 537
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_8
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mParentBitmapRecycler:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 540
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_9
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mChildBitmapRecycler:Ljava/util/LinkedList;

    if-eqz v2, :cond_c

    .line 541
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mChildBitmapRecycler:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 542
    .restart local v0       #b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_a

    .line 543
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 546
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_b
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mChildBitmapRecycler:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 549
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    .line 550
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mContext:Landroid/content/Context;

    .line 553
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    return-void
.end method

.method public freeOutOfRange(III)V
    .locals 6
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"

    .prologue
    .line 829
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 830
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-nez v4, :cond_0

    .line 831
    monitor-exit v5

    .line 893
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    if-eqz v4, :cond_4

    .line 838
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/TextureMap;->getContentListItemsCount()I

    move-result v0

    .line 839
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 840
    if-lt v1, p2, :cond_2

    if-gt v1, p3, :cond_2

    .line 839
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 841
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    invoke-virtual {v4, v1}, Lcom/htc/music/widget/gridview/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    .line 842
    .local v3, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 843
    :cond_3
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v2

    .line 844
    .local v2, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v2, :cond_1

    .line 845
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setDecodeStatus(I)V

    goto :goto_2

    .line 862
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    .end local v3           #texture:Lcom/htc/sunnyCore/Texture;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 850
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    if-eqz v4, :cond_8

    .line 851
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/TextureMap;->getContentListItemsCount()I

    move-result v0

    .line 852
    .restart local v0       #count:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v0, :cond_8

    .line 853
    if-lt v1, p2, :cond_6

    if-gt v1, p3, :cond_6

    .line 852
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 854
    :cond_6
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    invoke-virtual {v4, v1}, Lcom/htc/music/widget/gridview/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    .line 855
    .restart local v3       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 856
    :cond_7
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v2

    .line 857
    .restart local v2       #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v2, :cond_5

    .line 858
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setViewDecodeStatus(I)V

    goto :goto_4

    .line 862
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    .end local v3           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_8
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;
    .locals 3
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "inValue"

    .prologue
    const/4 v0, 0x0

    .line 807
    if-eqz p3, :cond_1

    .line 808
    const-string v1, "viewTexture"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    invoke-virtual {v1, p2}, Lcom/htc/music/widget/gridview/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 823
    :cond_0
    :goto_0
    return-object v0

    .line 817
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    invoke-virtual {v1, p2}, Lcom/htc/music/widget/gridview/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 820
    .local v0, texture:Lcom/htc/sunnyCore/Texture;
    goto :goto_0
.end method

.method public bridge synthetic get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "inValue"

    .prologue
    .line 453
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init(Context context, Bundle inValue) can\'t be used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V
    .locals 6
    .parameter "context"
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 459
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 460
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mContext:Landroid/content/Context;

    .line 462
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mParentBitmapRecycler:Ljava/util/LinkedList;

    .line 463
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mChildBitmapRecycler:Ljava/util/LinkedList;

    .line 465
    new-instance v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getDimension()I

    move-result v2

    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getDimension()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    .line 466
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->setOnDecodeFinishListener(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;)V

    .line 467
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->setOnDecodeViewFinishListener(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;)V

    .line 470
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getMaxTextureCount()I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mCacheSize:I

    .line 471
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getMaxTextureCount()I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewCacheSize:I

    .line 472
    new-instance v0, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mCacheSize:I

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    .line 473
    new-instance v0, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewCacheSize:I

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    .line 475
    new-instance v0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mCacheSize:I

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;-><init>(IILcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 476
    new-instance v0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mCacheSize:I

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;-><init>(IILcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 478
    new-instance v0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewCacheSize:I

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;-><init>(IILcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 479
    new-instance v0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewCacheSize:I

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;-><init>(IILcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 480
    iput-boolean v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mInit:Z

    .line 484
    return-void

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MusicGridViewPreparator]init error : context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;Lcom/htc/music/widget/gridview/IViewBinder;)V
    .locals 1
    .parameter "context"
    .parameter "params"
    .parameter "listener"

    .prologue
    .line 487
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V

    .line 488
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v0, p3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->setViewBinderListener(Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 489
    return-void
.end method

.method public iterate(J)V
    .locals 7
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 333
    iget-boolean v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mInit:Z

    if-nez v4, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mPauseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 336
    :try_start_0
    iget-boolean v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mPaused:Z

    if-eqz v5, :cond_2

    .line 337
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 339
    monitor-exit v4

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 344
    :try_start_2
    iget-boolean v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mStop:Z

    if-eqz v5, :cond_3

    .line 345
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 347
    monitor-exit v4

    goto :goto_0

    .line 349
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 351
    iget v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mStep:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mStep:I

    .line 352
    invoke-virtual {p0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, textureCreatedCount:I
    const/4 v0, 0x1

    .line 359
    .local v0, needToDecodeView:Z
    iget-boolean v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextViewFirst:Z

    if-nez v4, :cond_5

    .line 360
    iget v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeThumbBitmapCount:I

    iget v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mLastVisibleIndex:I

    iget v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mFirstVisibleIndex:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_4

    move v2, v3

    :cond_4
    iput-boolean v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextViewFirst:Z

    .line 362
    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v4, p1

    if-gez v2, :cond_d

    if-ge v1, v3, :cond_d

    .line 363
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v2

    if-lez v2, :cond_e

    .line 364
    iget v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mStep:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    .line 365
    if-eqz v0, :cond_7

    .line 366
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processVisiblePosition()Z

    .line 367
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processVisiblePosition()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 368
    add-int/lit8 v1, v1, 0x1

    .line 369
    goto :goto_1

    .line 371
    :cond_6
    const/4 v0, 0x0

    .line 379
    :cond_7
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processPriorPosition()Z

    .line 380
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processPriorPosition()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 383
    :cond_8
    iget v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mStep:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mStep:I

    goto :goto_1

    .line 387
    :cond_9
    iget-boolean v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextViewFirst:Z

    if-eqz v2, :cond_b

    .line 388
    if-eqz v0, :cond_b

    .line 389
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processVisiblePosition()Z

    .line 390
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processVisiblePosition()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 391
    add-int/lit8 v1, v1, 0x1

    .line 392
    goto :goto_1

    .line 394
    :cond_a
    const/4 v0, 0x0

    .line 400
    :cond_b
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processVisiblePosition()Z

    .line 401
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processVisiblePosition()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 402
    iget v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeThumbBitmapCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeThumbBitmapCount:I

    .line 403
    add-int/lit8 v1, v1, 0x1

    .line 404
    goto :goto_1

    .line 407
    :cond_c
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processPriorPosition()Z

    .line 408
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processPriorPosition()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 409
    add-int/lit8 v1, v1, 0x1

    .line 424
    :cond_d
    :goto_2
    if-nez v1, :cond_0

    iget v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mStep:I

    rem-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->processToPauseRenderThread()V

    goto/16 :goto_0

    .line 415
    :cond_e
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-nez v2, :cond_d

    goto :goto_2
.end method

.method public loadRange(IIIJ)V
    .locals 5
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"
    .parameter "restrictTime"

    .prologue
    const/4 v4, 0x0

    .line 899
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mFirstVisibleIndex:I

    .line 904
    .local v0, first:I
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mLastVisibleIndex:I

    .line 906
    .local v1, last:I
    invoke-virtual {p0, v4, p2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setVisibleRange(III)V

    .line 910
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-gez v2, :cond_3

    .line 911
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processVisiblePosition()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processVisiblePosition()Z

    move-result v2

    if-nez v2, :cond_2

    .line 916
    :cond_3
    invoke-virtual {p0, v4, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setVisibleRange(III)V

    goto :goto_0
.end method

.method public notifyDataItemChanged(II)V
    .locals 3
    .parameter "mediaListIdx"
    .parameter "itemIdx"

    .prologue
    .line 775
    iget-boolean v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mInit:Z

    if-nez v2, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v1

    .line 779
    .local v1, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v1, :cond_0

    .line 780
    invoke-direct {p0, v1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->addMediaDataToDecode(Lcom/htc/music/widget/gridview/MusicGridViewMediaData;I)Z

    .line 782
    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getViewDecodeStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 783
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setViewDecodeStatus(I)V

    .line 786
    instance-of v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v2, :cond_2

    .line 787
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mParentBitmapRecycler:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 792
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v2, p2, v1, v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->addToDecodeView(ILcom/htc/music/widget/gridview/MusicGridViewMediaData;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 789
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mChildBitmapRecycler:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0       #b:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public notifyDataItemChanged(III)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "flag"

    .prologue
    .line 770
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->notifyDataItemChanged(II)V

    .line 771
    return-void
.end method

.method public pausePreparator()V
    .locals 2

    .prologue
    .line 994
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 995
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mPaused:Z

    .line 996
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->pause()V

    .line 998
    monitor-exit v1

    .line 999
    return-void

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public refresh(ILcom/htc/sunnyCore/IMediaList;IZ)Ljava/util/List;
    .locals 12
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"
    .parameter "isAutoReleaseTexture"

    .prologue
    .line 644
    iget-boolean v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mInit:Z

    if-nez v10, :cond_0

    .line 645
    const/4 v8, 0x0

    .line 765
    :goto_0
    return-object v8

    .line 647
    :cond_0
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-nez v10, :cond_1

    if-nez p2, :cond_1

    .line 651
    :cond_1
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-nez v10, :cond_2

    if-eqz p2, :cond_2

    .line 653
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    .line 654
    const/4 v8, 0x0

    goto :goto_0

    .line 657
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v10

    if-nez v10, :cond_4

    .line 659
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 664
    :cond_4
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v10}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->pause()V

    .line 666
    new-instance v4, Lcom/htc/music/widget/gridview/TextureMap;

    invoke-interface {p2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v10

    invoke-direct {v4, v10}, Lcom/htc/music/widget/gridview/TextureMap;-><init>(I)V

    .line 667
    .local v4, newMap:Lcom/htc/music/widget/gridview/TextureMap;
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    .line 669
    .local v6, oldMap:Lcom/htc/music/widget/gridview/TextureMap;
    new-instance v5, Lcom/htc/music/widget/gridview/TextureMap;

    invoke-interface {p2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v10

    invoke-direct {v5, v10}, Lcom/htc/music/widget/gridview/TextureMap;-><init>(I)V

    .line 670
    .local v5, newViewMap:Lcom/htc/music/widget/gridview/TextureMap;
    iget-object v7, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    .line 677
    .local v7, oldViewMap:Lcom/htc/music/widget/gridview/TextureMap;
    invoke-interface {p2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 679
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_a

    .line 680
    invoke-interface {p2, v1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    .line 681
    .local v3, newData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v3, :cond_7

    .line 683
    iget-object v10, v3, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    if-eqz v10, :cond_5

    .line 684
    iget-object v10, v3, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->mCanUseAlbumIdToDecode:Z

    .line 687
    :cond_5
    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, identifier:Ljava/lang/String;
    invoke-virtual {v6, v2}, Lcom/htc/music/widget/gridview/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 689
    .local v9, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v9, :cond_8

    .line 690
    invoke-virtual {v4, v1, v9, v2}, Lcom/htc/music/widget/gridview/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 691
    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getDecodeStatus()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 692
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setDecodeStatus(I)V

    .line 698
    :cond_6
    :goto_2
    invoke-virtual {v7, v2}, Lcom/htc/music/widget/gridview/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 699
    if-eqz v9, :cond_9

    .line 700
    invoke-virtual {v5, v1, v9, v2}, Lcom/htc/music/widget/gridview/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getViewDecodeStatus()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 702
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setViewDecodeStatus(I)V

    .line 679
    .end local v2           #identifier:Ljava/lang/String;
    .end local v9           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 695
    .restart local v2       #identifier:Ljava/lang/String;
    .restart local v9       #texture:Lcom/htc/sunnyCore/Texture;
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setDecodeStatus(I)V

    goto :goto_2

    .line 705
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setViewDecodeStatus(I)V

    goto :goto_3

    .line 710
    .end local v2           #identifier:Ljava/lang/String;
    .end local v3           #newData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    .end local v9           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_a
    invoke-virtual {v6}, Lcom/htc/music/widget/gridview/TextureMap;->getContentListItemsCount()I

    move-result v0

    .line 711
    const/4 v8, 0x0

    .line 712
    .local v8, releaseList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Texture;>;"
    if-eqz p4, :cond_c

    .line 713
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    .line 714
    invoke-virtual {v6, v1}, Lcom/htc/music/widget/gridview/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 715
    .restart local v9       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v9, :cond_b

    .line 716
    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 713
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 720
    .end local v9           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_c
    new-instance v8, Ljava/util/LinkedList;

    .end local v8           #releaseList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Texture;>;"
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 721
    .restart local v8       #releaseList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Texture;>;"
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_e

    .line 722
    invoke-virtual {v6, v1}, Lcom/htc/music/widget/gridview/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 723
    .restart local v9       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v9, :cond_d

    .line 724
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 729
    .end local v9           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_e
    invoke-virtual {v7}, Lcom/htc/music/widget/gridview/TextureMap;->getContentListItemsCount()I

    move-result v0

    .line 730
    if-eqz p4, :cond_10

    .line 731
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_12

    .line 732
    invoke-virtual {v7, v1}, Lcom/htc/music/widget/gridview/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 733
    .restart local v9       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v9, :cond_f

    .line 734
    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 731
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 738
    .end local v9           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_10
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_12

    .line 739
    invoke-virtual {v7, v1}, Lcom/htc/music/widget/gridview/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    .line 740
    .restart local v9       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v9, :cond_11

    .line 741
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 746
    .end local v9           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_12
    const/4 v6, 0x0

    .line 747
    const/4 v7, 0x0

    .line 749
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v10}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->clear()V

    .line 750
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    invoke-virtual {v10}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->clear()V

    .line 751
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    invoke-virtual {v10}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->clear()V

    .line 753
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    .line 754
    iput-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    .line 755
    check-cast p2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    .end local p2
    iput-object p2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    .line 756
    const/4 p2, 0x0

    .line 758
    .restart local p2
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v11}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setTotalCount(I)V

    .line 759
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v11}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setTotalCount(I)V

    .line 760
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v11}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setTotalCount(I)V

    .line 761
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v11}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setTotalCount(I)V

    .line 763
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v10}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->resume()V

    goto/16 :goto_0
.end method

.method public refresh(ILcom/htc/sunnyCore/IMediaList;IZI)Ljava/util/List;
    .locals 6
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"
    .parameter "isAutoReleaseTexture"
    .parameter "refreshFlag"

    .prologue
    .line 1012
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->refresh(ILcom/htc/sunnyCore/IMediaList;IZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resetDecodeDirection()V
    .locals 2

    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mInit:Z

    if-nez v0, :cond_0

    .line 975
    :goto_0
    return-void

    .line 969
    :cond_0
    sget v0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->DIRECTION_NODIRECTION:I

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeDirection:I

    .line 970
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeDirection:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->setProcessDirection(I)V

    .line 971
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeDirection:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setProcessDirection(I)V

    .line 972
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeDirection:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setProcessDirection(I)V

    .line 973
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeDirection:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setProcessDirection(I)V

    .line 974
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeDirection:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setProcessDirection(I)V

    goto :goto_0
.end method

.method public resumePreparator()V
    .locals 2

    .prologue
    .line 1003
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1004
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->resume()V

    .line 1005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mPaused:Z

    .line 1006
    monitor-exit v1

    .line 1007
    return-void

    .line 1006
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColumnNumber(I)V
    .locals 0
    .parameter "numColumn"

    .prologue
    .line 448
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mColumn:I

    .line 449
    return-void
.end method

.method public setDecodeDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mInit:Z

    if-nez v0, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeDirection:I

    if-eq v0, p1, :cond_0

    .line 981
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeDirection:I

    .line 982
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setProcessDirection(I)V

    .line 983
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setProcessDirection(I)V

    .line 984
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setProcessDirection(I)V

    .line 985
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setProcessDirection(I)V

    .line 986
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->setProcessDirection(I)V

    goto :goto_0
.end method

.method public setVisibleRange(III)V
    .locals 2
    .parameter "mediaListIdx"
    .parameter "firstVisibleIndex"
    .parameter "lastVisibleIndex"

    .prologue
    .line 927
    iget-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mInit:Z

    if-nez v1, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_0

    .line 933
    if-gt p2, p3, :cond_0

    .line 934
    iput p2, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mFirstVisibleIndex:I

    .line 935
    iput p3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mLastVisibleIndex:I

    .line 936
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mLastVisibleIndex:I

    if-lt v1, v0, :cond_2

    .line 937
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mLastVisibleIndex:I

    .line 940
    :cond_2
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mFirstVisibleIndex:I

    if-gez v1, :cond_3

    .line 941
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mFirstVisibleIndex:I

    .line 956
    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v1, v0, p2, p3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->setVisibleRange(III)V

    .line 957
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v1, v0, p2, p3}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setVisibleRange(III)V

    .line 959
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeViewTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v1, v0, p2, p3}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setVisibleRange(III)V

    .line 960
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeBitmapOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v1, v0, p2, p3}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setVisibleRange(III)V

    .line 962
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTextureOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v1, v0, p2, p3}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setVisibleRange(III)V

    goto :goto_0
.end method

.method public unbind(I)V
    .locals 5
    .parameter "mediaListIdx"

    .prologue
    const/4 v4, 0x0

    .line 563
    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mInit:Z

    if-nez v3, :cond_0

    .line 597
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->pause()V

    .line 565
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    if-eqz v3, :cond_3

    .line 567
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/TextureMap;->getContentListItemsCount()I

    move-result v0

    .line 568
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 569
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    invoke-virtual {v3, v1}, Lcom/htc/music/widget/gridview/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    .line 570
    .local v2, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v2, :cond_1

    .line 571
    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 568
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 574
    .end local v2           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_2
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    .line 576
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    if-eqz v3, :cond_6

    .line 578
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/TextureMap;->getContentListItemsCount()I

    move-result v0

    .line 579
    .restart local v0       #count:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 580
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    invoke-virtual {v3, v1}, Lcom/htc/music/widget/gridview/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    .line 581
    .restart local v2       #texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v2, :cond_4

    .line 582
    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 579
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 585
    .end local v2           #texture:Lcom/htc/sunnyCore/Texture;
    :cond_5
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewTextureMap:Lcom/htc/music/widget/gridview/TextureMap;

    .line 587
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_6
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    if-eqz v3, :cond_7

    .line 588
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->clear()V

    .line 590
    :cond_7
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    if-eqz v3, :cond_8

    .line 591
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mViewDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->clear()V

    .line 594
    :cond_8
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->clear()V

    .line 595
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    .line 596
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->resume()V

    goto :goto_0
.end method

.method public updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V
    .locals 0
    .parameter "musicGridViewUtil"

    .prologue
    .line 140
    return-void
.end method
