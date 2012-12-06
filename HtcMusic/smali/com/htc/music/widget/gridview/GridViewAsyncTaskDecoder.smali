.class public Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;
.super Lcom/htc/music/util/AsyncTaskBase;
.source "GridViewAsyncTaskDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;,
        Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;,
        Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;,
        Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/music/util/AsyncTaskBase",
        "<",
        "Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlbumHandler:Landroid/os/Handler;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mContext:Landroid/content/Context;

.field private mDecodeFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;

.field private mDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

.field private mDecodeOrderListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

.field private mDecodeViewFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;

.field private mFilter:Z

.field private mHeight:I

.field private mRemovedTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

.field mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

.field private mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

.field private mViewContainer:Landroid/view/View;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 4
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "filter"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Lcom/htc/music/util/AsyncTaskBase;-><init>()V

    .line 24
    iput v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mWidth:I

    .line 25
    iput v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mHeight:I

    .line 26
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mContext:Landroid/content/Context;

    .line 27
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 29
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;

    .line 30
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeViewFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;

    .line 31
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 32
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 33
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mRemovedTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .line 34
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewContainer:Landroid/view/View;

    .line 145
    new-instance v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$1;-><init>(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeOrderListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    .line 179
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    .line 280
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mAlbumHandler:Landroid/os/Handler;

    .line 183
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mContext:Landroid/content/Context;

    .line 184
    iput p2, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mWidth:I

    .line 185
    iput p3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mHeight:I

    .line 186
    iput-boolean p4, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mFilter:Z

    .line 188
    new-instance v0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeOrderListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;-><init>(IILcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 190
    new-instance v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;-><init>(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    .line 192
    const-string v0, "GridViewDecoderThread"

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->init(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method static synthetic access$1002(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mRemovedTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Lcom/htc/music/widget/gridview/IViewBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeViewFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;)Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeViewFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;

    return-object p1
.end method

.method private decodeFile(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filePath"
    .parameter "degree"
    .parameter "width"
    .parameter "height"
    .parameter "type"

    .prologue
    .line 312
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v0

    .line 313
    .local v0, handle:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 323
    :goto_0
    return-object v1

    .line 315
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    .line 316
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 317
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 318
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    .line 319
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    .line 321
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public add(ILcom/htc/music/widget/gridview/MusicGridViewMediaData;)V
    .locals 9
    .parameter "position"
    .parameter "mediaData"

    .prologue
    const/4 v1, 0x0

    .line 220
    if-eqz p2, :cond_0

    .line 221
    invoke-virtual {p2}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getCoverInfo()Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    move-result-object v8

    .line 222
    .local v8, coverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    if-nez v8, :cond_1

    .line 236
    .end local v8           #coverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    :cond_0
    :goto_0
    return-void

    .line 226
    .restart local v8       #coverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    :cond_1
    iget-object v2, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    if-nez v2, :cond_2

    iget v2, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumId:I

    if-ltz v2, :cond_4

    .line 227
    :cond_2
    iget-boolean v2, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->mCanUseAlbumIdToDecode:Z

    if-eqz v2, :cond_3

    .line 228
    new-instance v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    iget v3, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumId:I

    iget-object v4, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    iget-object v5, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumName:Ljava/lang/String;

    iget-object v6, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumKey:Ljava/lang/String;

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    .local v0, task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    .end local v0           #task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    :cond_3
    new-instance v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    const/4 v3, -0x1

    iget-object v4, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    iget-object v5, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumName:Ljava/lang/String;

    iget-object v6, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumKey:Ljava/lang/String;

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v0       #task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    goto :goto_1

    .line 232
    .end local v0           #task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    :cond_4
    new-instance v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    const/4 v1, 0x3

    iget v3, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumId:I

    iget-object v4, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    iget-object v5, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumName:Ljava/lang/String;

    iget-object v6, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumKey:Ljava/lang/String;

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v0       #task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    goto :goto_1
.end method

.method public addToDecodeView(ILcom/htc/music/widget/gridview/MusicGridViewMediaData;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "position"
    .parameter "mediaData"
    .parameter "bitmap"

    .prologue
    .line 206
    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p2}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getCoverInfo()Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    move-result-object v8

    .line 208
    .local v8, coverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    if-nez v8, :cond_1

    .line 217
    .end local v8           #coverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local v8       #coverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    :cond_1
    new-instance v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    const/4 v1, 0x2

    iget v3, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumId:I

    iget-object v4, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    iget-object v5, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumName:Ljava/lang/String;

    iget-object v6, v8, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumKey:Ljava/lang/String;

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    .local v0, task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    #setter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$602(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 215
    iget-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Lcom/htc/music/util/AsyncTaskBase;->clear()V

    .line 286
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->clear()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mAlbumHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mAlbumHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 292
    :cond_1
    return-void
.end method

.method public getTaskSize()I
    .locals 2

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->getTaskSize()I

    move-result v0

    .line 431
    :cond_0
    invoke-super {p0}, Lcom/htc/music/util/AsyncTaskBase;->getTaskSize()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .parameter "threadName"

    .prologue
    .line 198
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 199
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 200
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 202
    invoke-super {p0, p1}, Lcom/htc/music/util/AsyncTaskBase;->init(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public initHostHandler()V
    .locals 1

    .prologue
    .line 419
    invoke-super {p0}, Lcom/htc/music/util/AsyncTaskBase;->initHostHandler()V

    .line 420
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->initHostHandler()V

    .line 423
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->pause()V

    .line 307
    :cond_0
    invoke-super {p0}, Lcom/htc/music/util/AsyncTaskBase;->pause()V

    .line 308
    return-void
.end method

.method protected processDownloadedPath(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)V
    .locals 4
    .parameter "dldt"

    .prologue
    .line 266
    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumName:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1400(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1500(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/com.htc.musicenhancer/files/.albumarts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/music/util/MusicUtils;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->processExternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumName:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1400(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->processAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1500(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, albumart:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    #setter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1602(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .end local v0           #albumart:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method protected processFinish(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;ZZ)V
    .locals 4
    .parameter "task"
    .parameter "processSucess"
    .parameter "isAsyncTaskPaused"

    .prologue
    .line 386
    if-eqz p1, :cond_1

    .line 387
    if-eqz p3, :cond_2

    .line 388
    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$600(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$600(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    const/4 v0, 0x0

    #setter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$602(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 392
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->add(Ljava/lang/Object;)V

    .line 415
    :cond_1
    :goto_0
    return-void

    .line 395
    :cond_2
    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mDeocdeType:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1700(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 398
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPosition:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$300(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I

    move-result v1

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$600(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mObject:Ljava/lang/Object;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$800(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;->onDecodeFinish(ILandroid/graphics/Bitmap;Ljava/lang/Object;)V

    goto :goto_0

    .line 403
    :pswitch_2
    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$600(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPosition:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$300(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I

    move-result v1

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$600(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mObject:Ljava/lang/Object;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$800(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;->onDecodeFinish(ILandroid/graphics/Bitmap;Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic processFinish(Ljava/lang/Object;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    check-cast p1, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->processFinish(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;ZZ)V

    return-void
.end method

.method protected processTask(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Landroid/os/Bundle;)Z
    .locals 9
    .parameter "task"
    .parameter "bundle"

    .prologue
    .line 328
    const/4 v7, 0x0

    .line 329
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_5

    .line 330
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->processDownloadedPath(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)V

    .line 331
    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mDeocdeType:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1700(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 376
    :cond_0
    :goto_0
    #setter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v7}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$602(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 378
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 380
    :goto_1
    return v0

    .line 333
    :pswitch_0
    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1600(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1600(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mWidth:I

    iget v4, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mHeight:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->decodeFile(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 338
    :cond_1
    if-nez v7, :cond_0

    .line 339
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mAlbumHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 340
    new-instance v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$2;-><init>(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mAlbumHandler:Landroid/os/Handler;

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mAlbumHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 352
    .local v8, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mAlbumHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 356
    .end local v8           #msg:Landroid/os/Message;
    :pswitch_1
    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumId:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1800(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mContext:Landroid/content/Context;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumId:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1800(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget-boolean v4, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mFilter:Z

    iget v5, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mWidth:I

    iget v6, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mHeight:I

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->decodeBitmapByAlbumId(Landroid/content/Context;IZLandroid/graphics/BitmapFactory$Options;ZII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 358
    if-nez v7, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 378
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 380
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic processTask(Ljava/lang/Object;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    check-cast p1, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->processTask(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/htc/music/util/AsyncTaskBase;->quit()V

    .line 241
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->quit()V

    .line 242
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->release()V

    .line 243
    return-void
.end method

.method protected removePriorTask()Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    .locals 3

    .prologue
    .line 247
    iget-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processVisiblePosition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mRemovedTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processPriorPosition()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mRemovedTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    goto :goto_0

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .local v0, task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    if-nez v0, :cond_0

    .line 262
    .end local v0           #task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic removePriorTask()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->removePriorTask()Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    move-result-object v0

    return-object v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->resume()V

    .line 299
    :cond_0
    invoke-super {p0}, Lcom/htc/music/util/AsyncTaskBase;->resume()V

    .line 300
    return-void
.end method

.method public setOnDecodeFinishListener(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;

    .line 450
    return-void
.end method

.method public setOnDecodeViewFinishListener(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->setOnDecodeViewFinishListener(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;)V

    .line 457
    :cond_0
    return-void
.end method

.method public setProcessDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setProcessDirection(I)V

    .line 443
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->setProcessDirection(I)V

    .line 446
    :cond_0
    return-void
.end method

.method public setViewBinderListener(Lcom/htc/music/widget/gridview/IViewBinder;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 461
    return-void
.end method

.method public setVisibleRange(III)V
    .locals 1
    .parameter "totalCount"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setVisibleRange(III)V

    .line 436
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewAsyncTaskDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->setVisibleRange(III)V

    .line 439
    :cond_0
    return-void
.end method
