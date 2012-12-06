.class public Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
.super Ljava/lang/Object;
.source "GridViewAsyncTaskDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DecodeTask"
.end annotation


# static fields
.field public static final DECODE_ALBUMID:I = 0x1

.field public static final DECODE_NOTHING:I = 0x3

.field public static final DECODE_PATH:I = 0x0

.field public static final DEOCDE_VIEW:I = 0x2


# instance fields
.field private mAlbumId:I

.field private mAlbumKey:Ljava/lang/String;

.field private mAlbumName:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDeocdeType:I

.field private mObject:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;

.field private mPosition:I

.field private mediaDataType:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "type"
    .parameter "position"
    .parameter "albumId"
    .parameter "path"
    .parameter "albumName"
    .parameter "albumKey"
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 487
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput v2, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mDeocdeType:I

    .line 477
    iput v2, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPosition:I

    .line 478
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumId:I

    .line 480
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumName:Ljava/lang/String;

    .line 481
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumKey:Ljava/lang/String;

    .line 482
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 483
    iput-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mObject:Ljava/lang/Object;

    .line 485
    iput v2, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mediaDataType:I

    .line 488
    iput p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mDeocdeType:I

    .line 489
    iput p2, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPosition:I

    .line 490
    iput-object p4, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 491
    iput p3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumId:I

    .line 492
    iput-object p5, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumName:Ljava/lang/String;

    .line 493
    iput-object p6, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumKey:Ljava/lang/String;

    .line 494
    iput-object p7, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mObject:Ljava/lang/Object;

    .line 495
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mediaDataType:I

    .line 498
    :cond_0
    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 471
    iget v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mDeocdeType:I

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 471
    iput p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mDeocdeType:I

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 471
    iget v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mAlbumId:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 471
    iget v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mObject:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 502
    instance-of v2, p1, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 503
    check-cast v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .line 504
    .local v0, task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    iget v2, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPosition:I

    iget v3, v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPosition:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mDeocdeType:I

    iget v3, v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mDeocdeType:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 506
    .end local v0           #task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    :cond_0
    return v1
.end method
