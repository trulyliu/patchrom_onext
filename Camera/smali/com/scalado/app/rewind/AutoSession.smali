.class public Lcom/scalado/app/rewind/AutoSession;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;,
        Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;,
        Lcom/scalado/app/rewind/AutoSession$Command;,
        Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;,
        Lcom/scalado/app/rewind/AutoSession$LooperThread;,
        Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;,
        Lcom/scalado/app/rewind/AutoSession$Replacement;,
        Lcom/scalado/app/rewind/AutoSession$ToUiHandler;,
        Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command:[I = null

.field private static final ABSOLUTE_MIN_FEATHERING:I = 0x2

.field private static final MSG_ADD_JPEG:I = 0x1

.field private static final MSG_ALL_IMAGES_ADDED:I = 0x81

.field private static final MSG_ERROR:I = 0x100

.field private static final MSG_GET_MERGED_IMG:I = 0x3

.field private static final MSG_GET_SOURCE_IMG:I = 0x4

.field private static final MSG_LTW_COMPLETED:I = 0x80

.field private static final MSG_OUTPUT_JPEG:I = 0x2

.field private static final MSG_OUTPUT_SOURCE_JPEG:I = 0x10

.field private static final MSG_QUIT:I = 0x20

.field private static final MSG_RECTS:I = 0xa0

.field private static final MSG_RECTS_BACK_INDEX:I = 0xa1

.field private static final MSG_RECYCLE:I = 0x8

.field private static final MSG_SAVE_COMPLETED:I = 0x8c

.field private static final REF_MIN_FEATHERING:I = 0x8

.field private static final REF_MIN_FEATHERING_DIM_LENGTH:I = 0xcc0

.field private static final REF_MIN_MAX_TRANSLATION:I = 0x3c

.field private static final REF_MIN_MAX_TRANSLATION_DIM_LENGTH:I = 0xcc0

.field private static final TAG:Ljava/lang/String; = "AutoSession"

.field private static maxRelativeTranslation:F

.field private static sLogging:Z


# instance fields
.field private backgroundImageIndex:I

.field private mAbortRequested:Z

.field private mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

.field private mBestBgIndex:I

.field private mDecoders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/caps/codec/decoder/JpegDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mDryMode:Z

.field private mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

.field private mFaceDetection2W:I

.field private mFaceDetectionBaseW:I

.field private mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceDetectionDims2:Lcom/scalado/base/Size;

.field private mFirstTime:Z

.field private mImgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mImgs2:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mJpegs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

.field private mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

.field private mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

.field private mLtwCompleted:Z

.field private mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

.field private mMaxJpegSize:I

.field private mMaxMaxTranslation:I

.field private mMergedImg:Lcom/scalado/base/Image;

.field private mMergedJpeg:Lcom/scalado/base/Buffer;

.field private mMinFeathering:I

.field private mMinMaxTranslation:I

.field private mNotReplaced:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$Replacement;",
            ">;"
        }
    .end annotation
.end field

.field private mNumImages:I

.field private mNumReceived:I

.field private mRectTracker:Lcom/scalado/app/rewind/RectTracker;

.field private mRelMaxTranslation:F

.field private mReplacements:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$Replacement;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Lcom/scalado/caps/screen/Screen;

.field private mScreenCfg:Lcom/scalado/base/Image$Config;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mScreenImgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Lcom/scalado/caps/Session;

.field private mSrcDims:Lcom/scalado/base/Size;

.field private mT0:J

.field private mT0All:J

.field private mT1:J

.field private mTesseraFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

.field private mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

.field private mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

.field private mUseImage2:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command()[I
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/scalado/app/rewind/AutoSession$Command;->values()[Lcom/scalado/app/rewind/AutoSession$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->ABORT:Lcom/scalado/app/rewind/AutoSession$Command;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->CONTINUE:Lcom/scalado/app/rewind/AutoSession$Command;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->SKIP_THIS:Lcom/scalado/app/rewind/AutoSession$Command;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    .line 124
    const v0, 0x3f333333

    sput v0, Lcom/scalado/app/rewind/AutoSession;->maxRelativeTranslation:F

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter "numImages"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 445
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    .line 102
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    .line 104
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    .line 105
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    .line 113
    sget-object v0, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

    .line 114
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 115
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTesseraFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

    .line 116
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 118
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    .line 119
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    .line 120
    iput-boolean v4, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    .line 122
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    .line 143
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    .line 144
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    .line 145
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    .line 148
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    .line 149
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    .line 161
    new-instance v0, Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;-><init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$LooperThread;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    .line 170
    new-instance v0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;-><init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$ToUiHandler;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    .line 180
    iput-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    .line 185
    iput-boolean v4, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    .line 186
    iput-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    .line 190
    iput-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mDryMode:Z

    .line 192
    iput v3, p0, Lcom/scalado/app/rewind/AutoSession;->backgroundImageIndex:I

    .line 194
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    .line 446
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    .line 447
    iput v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    .line 448
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->start()V

    .line 449
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    return-object v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/AutoSession;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    return-void
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1617
    invoke-static {p0}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/AutoSession;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->privateAddJpeg(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/AutoSession;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1272
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->renderOutput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->privateGetMergedImage()V

    return-void
.end method

.method static synthetic access$7(Lcom/scalado/app/rewind/AutoSession;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1354
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->privateGetSourceImage(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1586
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->privateRecycle()V

    return-void
.end method

.method static synthetic access$9(Lcom/scalado/app/rewind/AutoSession;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1307
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/AutoSession;->doSaveSourceJpeg(ILjava/lang/String;)V

    return-void
.end method

.method private boundDim(III)I
    .locals 2
    .parameter "start"
    .parameter "length"
    .parameter "maxLength"

    .prologue
    .line 1430
    add-int v1, p1, p2

    if-le v1, p3, :cond_0

    .line 1431
    add-int v1, p1, p2

    sub-int v0, v1, p3

    .line 1432
    .local v0, d:I
    sub-int/2addr p2, v0

    .line 1433
    const/4 v1, -0x1

    invoke-direct {p0, p2, v1}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result p2

    .line 1435
    .end local v0           #d:I
    :cond_0
    return p2
.end method

.method private convertToSrc(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 12
    .parameter "r"

    .prologue
    const/high16 v11, 0x3f00

    .line 1373
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v9}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    .line 1375
    .local v3, srcDims:Lcom/scalado/base/Size;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1376
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    .line 1375
    mul-float v4, v9, v10

    .line 1377
    .local v4, w:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1378
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 1377
    mul-float v2, v9, v10

    .line 1379
    .local v2, h:F
    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1380
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    .line 1379
    mul-float/2addr v9, v10

    .line 1380
    mul-float v10, v11, v4

    .line 1379
    add-float v0, v9, v10

    .line 1381
    .local v0, cx:F
    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1382
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 1381
    mul-float/2addr v9, v10

    .line 1382
    mul-float v10, v11, v2

    .line 1381
    add-float v1, v9, v10

    .line 1385
    .local v1, cy:F
    mul-float v9, v11, v4

    sub-float v9, v0, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1386
    .local v5, x0:I
    mul-float v9, v11, v2

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1387
    .local v7, y0:I
    mul-float v9, v11, v4

    add-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1388
    .local v6, x1:I
    mul-float v9, v11, v2

    add-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1389
    .local v8, y1:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v5, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v9
.end method

.method private correctOrientation(Lcom/scalado/stream/BufferStream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 6
    .parameter "stream"

    .prologue
    .line 1167
    new-instance v2, Lcom/scalado/caps/exif/Session;

    .line 1166
    invoke-direct {v2, p1}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    .line 1170
    .local v2, exifSession:Lcom/scalado/caps/exif/Session;
    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 1171
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v3, 0x0

    .line 1174
    .local v3, inputDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/scalado/base/Iterator;->step(I)F

    .line 1175
    invoke-virtual {v4}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    .line 1180
    :goto_0
    return-object v5

    .line 1176
    :catch_0
    move-exception v1

    .line 1177
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Rotating image "

    invoke-static {v5}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    .line 1178
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private createLtw()V
    .locals 3

    .prologue
    .line 992
    new-instance v1, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-direct {v1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 993
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 998
    return-void

    .line 995
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/Decoder;

    invoke-virtual {v2, v1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->addSource(Lcom/scalado/caps/Decoder;)V

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createReplaceRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;
    .locals 9
    .parameter "r"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1393
    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1394
    .local v3, x:I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1395
    .local v4, y:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1396
    .local v2, w:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1397
    .local v0, h:I
    invoke-direct {p0, v3, v6}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v3

    .line 1398
    invoke-direct {p0, v4, v6}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v4

    .line 1399
    invoke-direct {p0, v2, v8}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v2

    .line 1400
    invoke-direct {p0, v0, v8}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v0

    .line 1401
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    invoke-direct {p0, v3, v2, v5}, Lcom/scalado/app/rewind/AutoSession;->boundDim(III)I

    move-result v2

    .line 1402
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v0, v5}, Lcom/scalado/app/rewind/AutoSession;->boundDim(III)I

    move-result v0

    .line 1403
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 1404
    .local v1, innerRect:Lcom/scalado/base/Rect;
    const-string v5, "AutoSession"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",y"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",w"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    add-int v5, v3, v2

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1411
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    sub-int v2, v5, v3

    .line 1412
    const-string v5, "jimmy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "reduce w by 10 : x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",y"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",w"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_0
    add-int v5, v4, v0

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 1417
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    sub-int v0, v5, v4

    .line 1418
    const-string v5, "jimmy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "reduce h by 10 : x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",y"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",w"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_1
    invoke-virtual {v1, v3}, Lcom/scalado/base/Rect;->setX(I)V

    .line 1423
    invoke-virtual {v1, v4}, Lcom/scalado/base/Rect;->setY(I)V

    .line 1424
    invoke-virtual {v1, v2}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 1425
    invoke-virtual {v1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 1426
    return-object v1
.end method

.method private decodeJpeg(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 1051
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 1052
    .local v3, srcJpeg:Ljava/nio/ByteBuffer;
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, v3}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1053
    .local v0, buffer:Lcom/scalado/base/Buffer;
    new-instance v4, Lcom/scalado/stream/BufferStream;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 1055
    .local v4, stream:Lcom/scalado/stream/BufferStream;
    invoke-direct {p0, v4}, Lcom/scalado/app/rewind/AutoSession;->correctOrientation(Lcom/scalado/stream/BufferStream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v1

    .line 1059
    .local v1, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    :try_start_0
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-nez v5, :cond_0

    .line 1065
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->findFaceDetectionDims()V

    .line 1066
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5, v6}, Lcom/scalado/app/rewind/RectTracker;->setFaceDetectionDims(Lcom/scalado/base/Size;)V

    .line 1067
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->findMinFeathering()V

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1060
    :catch_0
    move-exception v2

    .line 1061
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "AutoSession"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception when scaling image "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doLtw()V
    .locals 3

    .prologue
    .line 821
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendEmptyMessage(I)Z

    .line 822
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RectTracker;->analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 823
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v1, :cond_4

    .line 824
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->trackingSuccessful:Z

    if-nez v1, :cond_1

    .line 825
    const-string v1, "AutoSession"

    const-string v2, "Tracking failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendEmptyMessage(I)Z

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->alignmentSuccessful:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->compositionSuccessful:Z

    if-nez v1, :cond_3

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    if-eqz v1, :cond_3

    .line 830
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    invoke-interface {v1}, Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;->onMergeCompositionError()Lcom/scalado/app/rewind/AutoSession$Command;

    move-result-object v0

    .line 831
    .local v0, cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    invoke-static {}, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 838
    .end local v0           #cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    :cond_3
    iget-boolean v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    if-nez v1, :cond_0

    .line 842
    :cond_4
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->replaceFaces()V

    .line 843
    iget-boolean v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    if-nez v1, :cond_0

    .line 846
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->renderScreen()V

    .line 847
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->sendReplacementInfo()V

    .line 848
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->log()V

    goto :goto_0

    .line 833
    .restart local v0       #cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    goto :goto_0

    .line 831
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private doSaveSourceJpeg(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "filename"

    .prologue
    .line 1310
    const-string v0, "Outputting source %d to %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1309
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1315
    :cond_0
    const-string v0, "AutoSession"

    .line 1316
    const-string v1, "Session not initialized correctly or incorrect state. Cannot save source jpeg."

    .line 1314
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :goto_0
    return-void

    .line 1320
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0, p2}, Lcom/scalado/app/rewind/FileUtils;->save(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensureTwoMult(II)I
    .locals 1
    .parameter "val"
    .parameter "dir"

    .prologue
    .line 1439
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 1440
    add-int/2addr p1, p2

    .line 1442
    :cond_0
    return p1
.end method

.method private findFaceDetectionDims()V
    .locals 10

    .prologue
    .line 1202
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 1203
    .local v1, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-virtual {v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    .line 1204
    .local v3, srcDims:Lcom/scalado/base/Size;
    iput-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    .line 1205
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    .line 1206
    .local v4, w:I
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    .line 1208
    .local v2, h:I
    const/16 v5, 0x3c0

    .line 1209
    .local v5, wBase:I
    const/16 v7, 0x320

    .line 1210
    .local v7, wBaseMin:I
    const/16 v6, 0x4b0

    .line 1218
    .local v6, wBaseMax:I
    div-int/lit8 v8, v4, 0x4

    if-lt v8, v7, :cond_7

    div-int/lit8 v8, v4, 0x4

    if-gt v8, v6, :cond_7

    .line 1219
    div-int/lit8 v4, v4, 0x4

    .line 1231
    :goto_0
    const/16 v4, 0x300

    .line 1233
    iget v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    if-lez v8, :cond_0

    .line 1234
    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    .line 1236
    :cond_0
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 1237
    .local v0, ar:F
    int-to-float v8, v4

    div-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1238
    rem-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_1

    .line 1239
    add-int/lit8 v4, v4, 0x1

    .line 1241
    :cond_1
    rem-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_2

    .line 1242
    add-int/lit8 v2, v2, 0x1

    .line 1244
    :cond_2
    new-instance v8, Lcom/scalado/base/Size;

    invoke-direct {v8, v4, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 1245
    iget-boolean v8, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    if-eqz v8, :cond_6

    .line 1247
    const/16 v4, 0x500

    .line 1248
    iget v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    if-lez v8, :cond_3

    .line 1249
    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    .line 1251
    :cond_3
    int-to-float v8, v4

    div-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1252
    rem-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_4

    .line 1253
    add-int/lit8 v4, v4, 0x1

    .line 1255
    :cond_4
    rem-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_5

    .line 1256
    add-int/lit8 v2, v2, 0x1

    .line 1258
    :cond_5
    new-instance v8, Lcom/scalado/base/Size;

    invoke-direct {v8, v4, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims2:Lcom/scalado/base/Size;

    .line 1260
    :cond_6
    return-void

    .line 1221
    .end local v0           #ar:F
    :cond_7
    move v4, v5

    goto :goto_0
.end method

.method private findMinFeathering()V
    .locals 7

    .prologue
    .line 1263
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 1264
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-virtual {v0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    .line 1265
    .local v3, srcDims:Lcom/scalado/base/Size;
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    .line 1266
    .local v4, w:I
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    .line 1267
    .local v2, h:I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 1268
    const/high16 v6, 0x454c

    .line 1267
    div-float/2addr v5, v6

    .line 1268
    const/high16 v6, 0x4100

    .line 1267
    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1269
    .local v1, f:I
    const/4 v5, 0x2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/scalado/app/rewind/AutoSession;->mMinFeathering:I

    .line 1270
    return-void
.end method

.method private getMaxTranslation(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 7
    .parameter "rBg"
    .parameter "rFg"

    .prologue
    .line 1185
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1186
    .local v0, dimSize:I
    mul-int/lit8 v5, v0, 0x3c

    int-to-float v5, v5

    const/high16 v6, 0x454c

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1187
    .local v4, minValue:I
    iget v5, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    if-ltz v5, :cond_0

    .line 1188
    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    .line 1191
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1192
    .local v1, dx:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1195
    .local v2, dy:F
    float-to-int v5, v1

    float-to-int v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3fc0

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1196
    .local v3, maxTransl:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1198
    return v3
.end method

.method private log()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1476
    const-string v1, "--- Faces ---"

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1477
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Faces detected = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/RectTracker;->numRects()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1478
    const-string v1, "Replaced faces = %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1480
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v1, v6}, Lcom/scalado/app/rewind/RectTracker;->logDump(Z)V

    .line 1481
    const-string v1, "--- Replaced faces ---"

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1483
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time (since all imgs) = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    iget-wide v4, p0, Lcom/scalado/app/rewind/AutoSession;->mT0All:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1484
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time (total) = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    iget-wide v4, p0, Lcom/scalado/app/rewind/AutoSession;->mT0:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1485
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selected bg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/scalado/app/rewind/AutoSession;->mBestBgIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1486
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1498
    const-string v1, "***"

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1499
    return-void

    .line 1486
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/AutoSession$Replacement;

    .line 1488
    .local v0, repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    const-string v2, "Replace area = %s, feath. = %d, max. trans. = %d"

    new-array v3, v9, [Ljava/lang/Object;

    .line 1489
    iget-object v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    invoke-static {v4}, Lcom/scalado/app/rewind/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFeathering:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1490
    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mMaxTransl:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 1487
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1491
    const-string v2, "   id = %d, bg = %d, fg = %d"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1492
    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFg:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 1491
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1494
    const-string v2, "   bg = %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectBg:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1493
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    .line 1496
    const-string v2, "   fg = %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectFg:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1495
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1618
    sget-boolean v0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    if-eqz v0, :cond_0

    .line 1619
    const-string v0, "AutoSession"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_0
    return-void
.end method

.method private static final logd2(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1624
    sget-boolean v0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    if-eqz v0, :cond_0

    .line 1626
    const-string v0, "AutoSession"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_0
    return-void
.end method

.method private privateAddJpeg(Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter "buffer"

    .prologue
    .line 778
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-lt v3, v4, :cond_1

    .line 779
    const-string v3, "AutoSession"

    const-string v4, "All images arleady added!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    if-eqz v3, :cond_2

    .line 783
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/scalado/app/rewind/AutoSession;->mT0:J

    .line 784
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    .line 786
    :cond_2
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-ne v3, v4, :cond_3

    .line 787
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/scalado/app/rewind/AutoSession;->mT0All:J

    .line 789
    :cond_3
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    if-nez v3, :cond_5

    .line 790
    new-instance v3, Lcom/scalado/app/rewind/RectTracker;

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    invoke-direct {v3, v4}, Lcom/scalado/app/rewind/RectTracker;-><init>(I)V

    iput-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 793
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mTesseraFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

    if-nez v3, :cond_4

    .line 794
    new-instance v3, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;-><init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;)V

    iput-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mTesseraFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

    .line 796
    :cond_4
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mTesseraFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->setFaceDectionExtern(Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;)V

    .line 797
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    const/high16 v4, 0x4020

    const/high16 v5, 0x4040

    invoke-virtual {v3, v4, v5}, Lcom/scalado/app/rewind/RectTracker;->setRectScaling(FF)V

    .line 798
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    .line 799
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->setMaxTranslation(F)V

    .line 802
    :cond_5
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    .line 803
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 805
    .local v2, index:I
    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/AutoSession;->decodeJpeg(I)V

    .line 806
    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/AutoSession;->scaleDown(I)V

    .line 807
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/base/Image;

    .line 808
    .local v0, image:Lcom/scalado/base/Image;
    const/4 v1, 0x0

    .line 809
    .local v1, image2:Lcom/scalado/base/Image;
    iget-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    if-eqz v3, :cond_6

    .line 810
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #image2:Lcom/scalado/base/Image;
    check-cast v1, Lcom/scalado/base/Image;

    .line 812
    .restart local v1       #image2:Lcom/scalado/base/Image;
    :cond_6
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/base/Image;

    invoke-virtual {v4, v3, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->trackImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V

    .line 813
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    .line 814
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-ne v3, v4, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->doLtw()V

    goto/16 :goto_0
.end method

.method private privateGetMergedImage()V
    .locals 4

    .prologue
    .line 1349
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    .line 1350
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1351
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1352
    return-void
.end method

.method private privateGetSourceImage(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 1355
    const/4 v0, 0x0

    .line 1356
    .local v0, image:Lcom/scalado/base/Image;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 1357
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #image:Lcom/scalado/base/Image;
    check-cast v0, Lcom/scalado/base/Image;

    .line 1365
    .restart local v0       #image:Lcom/scalado/base/Image;
    :goto_0
    if-nez v0, :cond_0

    .line 1366
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->renderScreen(I)Lcom/scalado/base/Image;

    move-result-object v0

    .line 1368
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1369
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v2, v1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1370
    return-void

    .line 1361
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    const-string v2, "AutoSession"

    .line 1362
    const-string v3, "In privateGetSourceImage: Index out of bounds or session not initialized correctly."

    .line 1360
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private privateRecycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1587
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1588
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1589
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1590
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1591
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1592
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    .line 1593
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedJpeg:Lcom/scalado/base/Buffer;

    .line 1595
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 1596
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims2:Lcom/scalado/base/Size;

    .line 1598
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 1599
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 1601
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 1602
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1603
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1605
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 1606
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    .line 1607
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1609
    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    .line 1610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    .line 1611
    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    .line 1612
    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    .line 1614
    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    .line 1615
    return-void
.end method

.method private privateRecycleLtw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1574
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1576
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1577
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 1578
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 1579
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1580
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1581
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 1582
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    .line 1583
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1584
    return-void
.end method

.method private renderOutput(Ljava/lang/String;)V
    .locals 12
    .parameter "filename"

    .prologue
    const/16 v11, 0x8c

    .line 1274
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Outputting to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    .line 1275
    const/4 v6, 0x0

    .line 1277
    .local v6, stream:Lcom/scalado/stream/FileStream;
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v8, :cond_0

    .line 1278
    const-string v8, "AutoSession"

    .line 1279
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Session not initilized correctly. Not possible to output to file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1279
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1278
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v11, v9}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1282
    .local v5, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v8, v5}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1286
    .end local v5           #msg:Landroid/os/Message;
    :cond_0
    :try_start_0
    new-instance v7, Lcom/scalado/stream/FileStream;

    sget-object v8, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v7, p1, v8}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .local v7, stream:Lcom/scalado/stream/FileStream;
    :try_start_1
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v8}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 1288
    .local v0, dims:Lcom/scalado/base/Size;
    new-instance v2, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v2, v7, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 1289
    .local v2, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v8, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 1290
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/scalado/base/Iterator;->step(I)F

    .line 1291
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v9, 0x8c

    invoke-virtual {v8, v9, p1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1293
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v8, v5}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1297
    if-eqz v7, :cond_3

    .line 1299
    :try_start_2
    invoke-virtual {v7}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v6, v7

    .line 1305
    .end local v0           #dims:Lcom/scalado/base/Size;
    .end local v2           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    .end local v5           #msg:Landroid/os/Message;
    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    :cond_1
    :goto_0
    return-void

    .line 1294
    :catch_0
    move-exception v1

    .line 1295
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v8, "AutoSession"

    const-string v9, "Exception when rendering to file."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1297
    if-eqz v6, :cond_1

    .line 1299
    :try_start_4
    invoke-virtual {v6}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1300
    :catch_1
    move-exception v3

    .line 1301
    .local v3, ioe:Ljava/io/IOException;
    const-string v8, "AutoSession"

    const-string v9, "Exception when closing file."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1296
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1297
    :goto_2
    if-eqz v6, :cond_2

    .line 1299
    :try_start_5
    invoke-virtual {v6}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1304
    :cond_2
    :goto_3
    throw v8

    .line 1300
    :catch_2
    move-exception v3

    .line 1301
    .restart local v3       #ioe:Ljava/io/IOException;
    const-string v9, "AutoSession"

    const-string v10, "Exception when closing file."

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1300
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .restart local v0       #dims:Lcom/scalado/base/Size;
    .restart local v2       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v4       #iterator:Lcom/scalado/base/Iterator;
    .restart local v5       #msg:Landroid/os/Message;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :catch_3
    move-exception v3

    .line 1301
    .restart local v3       #ioe:Ljava/io/IOException;
    const-string v8, "AutoSession"

    const-string v9, "Exception when closing file."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3           #ioe:Ljava/io/IOException;
    :cond_3
    move-object v6, v7

    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_0

    .line 1296
    .end local v0           #dims:Lcom/scalado/base/Size;
    .end local v2           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_2

    .line 1294
    .end local v6           #stream:Lcom/scalado/stream/FileStream;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v6       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_1
.end method

.method private renderScreen(I)Lcom/scalado/base/Image;
    .locals 6
    .parameter "index"

    .prologue
    .line 872
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    if-eqz v4, :cond_0

    .line 873
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 877
    :cond_0
    const/4 v1, 0x0

    .line 885
    .local v1, image:Lcom/scalado/base/Image;
    :goto_0
    return-object v1

    .line 879
    .end local v1           #image:Lcom/scalado/base/Image;
    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 880
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v3, Lcom/scalado/caps/Session;

    invoke-direct {v3, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 881
    .local v3, session:Lcom/scalado/caps/Session;
    new-instance v1, Lcom/scalado/base/Image;

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v1, v4, v5}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 882
    .restart local v1       #image:Lcom/scalado/base/Image;
    new-instance v2, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v2, v3, v1}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 883
    .local v2, screen:Lcom/scalado/caps/screen/Screen;
    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->draw()V

    goto :goto_0
.end method

.method private renderScreen()V
    .locals 5

    .prologue
    .line 852
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    if-nez v2, :cond_1

    .line 855
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    .line 865
    :goto_0
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v3, 0x80

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 866
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v2, v1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 868
    return-void

    .line 857
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->getDecoder()Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 858
    new-instance v2, Lcom/scalado/caps/Session;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    .line 859
    new-instance v0, Lcom/scalado/base/Image;

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v2, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 860
    .local v0, image:Lcom/scalado/base/Image;
    new-instance v2, Lcom/scalado/caps/screen/Screen;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-direct {v2, v3, v0}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 861
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 862
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    .line 863
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    goto :goto_0
.end method

.method private renderToBuffer()Lcom/scalado/base/Buffer;
    .locals 9

    .prologue
    .line 1324
    const/4 v0, 0x0

    .line 1326
    .local v0, buffer:Lcom/scalado/base/Buffer;
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v7, :cond_0

    .line 1328
    const-string v7, "AutoSession"

    .line 1329
    const-string v8, "Session not initialized correctly. Cannot do renderToBuffer()."

    .line 1328
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const/4 v7, 0x0

    .line 1345
    :goto_0
    return-object v7

    .line 1334
    :cond_0
    :try_start_0
    new-instance v1, Lcom/scalado/base/Buffer;

    iget v7, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    mul-int/lit8 v7, v7, 0x1

    invoke-direct {v1, v7}, Lcom/scalado/base/Buffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    .end local v0           #buffer:Lcom/scalado/base/Buffer;
    .local v1, buffer:Lcom/scalado/base/Buffer;
    :try_start_1
    new-instance v6, Lcom/scalado/stream/BufferStream;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 1336
    .local v6, stream:Lcom/scalado/stream/BufferStream;
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v7}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    .line 1337
    .local v2, dims:Lcom/scalado/base/Size;
    new-instance v4, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v4, v6, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 1338
    .local v4, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v7, v4}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 1339
    .local v5, iterator:Lcom/scalado/base/Iterator;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #dims:Lcom/scalado/base/Size;
    .end local v4           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v5           #iterator:Lcom/scalado/base/Iterator;
    .end local v6           #stream:Lcom/scalado/stream/BufferStream;
    .restart local v0       #buffer:Lcom/scalado/base/Buffer;
    :goto_1
    move-object v7, v0

    .line 1345
    goto :goto_0

    .line 1340
    :catch_0
    move-exception v3

    .line 1341
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const-string v7, "AutoSession"

    const-string v8, "Exception when rendering to file."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1342
    const/4 v0, 0x0

    goto :goto_1

    .line 1340
    .end local v0           #buffer:Lcom/scalado/base/Buffer;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #buffer:Lcom/scalado/base/Buffer;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .restart local v0       #buffer:Lcom/scalado/base/Buffer;
    goto :goto_2
.end method

.method private replaceFaces()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 889
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->createLtw()V

    .line 890
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v7}, Lcom/scalado/app/rewind/RectTracker;->getBestStartImage()I

    move-result v0

    .line 891
    .local v0, bg:I
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v7, v7, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v7, :cond_0

    .line 892
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v7}, Lcom/scalado/app/rewind/RectTracker;->getMaxScoreImage()I

    move-result v0

    .line 894
    :cond_0
    if-gez v0, :cond_1

    .line 895
    const-string v7, "AutoSession"

    const-string v8, "Failed to determine best image."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget v7, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    div-int/lit8 v0, v7, 0x2

    .line 899
    :cond_1
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v7, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setBackgroundSource(I)V

    .line 900
    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->backgroundImageIndex:I

    .line 902
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v7}, Lcom/scalado/app/rewind/RectTracker;->getIds()[I

    move-result-object v3

    .line 904
    .local v3, ids:[I
    if-eqz v3, :cond_2

    .line 906
    array-length v8, v3

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_3

    .line 925
    :cond_2
    :goto_1
    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->mBestBgIndex:I

    .line 926
    return-void

    .line 906
    :cond_3
    aget v2, v3, v7

    .line 907
    .local v2, id:I
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v9, v0, v2}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v9

    if-nez v9, :cond_5

    .line 908
    const-string v9, "id=%d unknown in bg=%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    .line 906
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 913
    :cond_5
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v9, v2}, Lcom/scalado/app/rewind/RectTracker;->getSelectedFg(I)I

    move-result v1

    .line 914
    .local v1, fg:I
    if-eq v1, v0, :cond_7

    move v4, v5

    .line 915
    .local v4, replace:Z
    :goto_2
    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v9, v9, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v9, :cond_6

    .line 916
    const/4 v4, 0x0

    .line 918
    :cond_6
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/scalado/app/rewind/AutoSession;->replaceOneFace(IIIZ)V

    .line 919
    iget-boolean v9, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    if-eqz v9, :cond_4

    goto :goto_1

    .end local v4           #replace:Z
    :cond_7
    move v4, v6

    .line 914
    goto :goto_2
.end method

.method private replaceOneFace(IIIZ)V
    .locals 15
    .parameter "bg"
    .parameter "fg"
    .parameter "id"
    .parameter "doReplace"

    .prologue
    .line 930
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceSource(I)V

    .line 931
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v10

    .line 932
    .local v10, rBg:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v11

    .line 934
    .local v11, rFg:Landroid/graphics/Rect;
    if-eqz v10, :cond_0

    if-nez v11, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    invoke-direct {p0, v10}, Lcom/scalado/app/rewind/AutoSession;->convertToSrc(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    .line 938
    invoke-direct {p0, v11}, Lcom/scalado/app/rewind/AutoSession;->convertToSrc(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    .line 940
    invoke-direct {p0, v10, v11}, Lcom/scalado/app/rewind/AutoSession;->getMaxTranslation(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v7

    .line 942
    .local v7, maxTransl:I
    iget v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    if-le v7, v2, :cond_2

    .line 943
    iget v7, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    .line 944
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    if-eqz v2, :cond_2

    if-eqz p4, :cond_2

    .line 945
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    invoke-interface {v2}, Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;->onToGreatTranslation()Lcom/scalado/app/rewind/AutoSession$Command;

    move-result-object v13

    .line 946
    .local v13, cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    invoke-static {}, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command()[I

    move-result-object v2

    invoke-virtual {v13}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 957
    .end local v13           #cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    :cond_2
    :goto_1
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v6, v2, 0x4

    .line 958
    .local v6, feathering:I
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->hasNeighbours(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 959
    iget v6, p0, Lcom/scalado/app/rewind/AutoSession;->mMinFeathering:I

    .line 962
    :cond_3
    invoke-direct {p0, v10}, Lcom/scalado/app/rewind/AutoSession;->createReplaceRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;

    move-result-object v5

    .line 963
    .local v5, innerRect:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getOriginalEnlargedRectangle(II)Landroid/graphics/Rect;

    move-result-object v12

    .line 964
    .local v12, orgLargeRect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 965
    const/4 v12, 0x0

    .line 967
    :cond_4
    if-eqz p4, :cond_6

    .line 969
    iget-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mDryMode:Z

    if-nez v2, :cond_5

    .line 978
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2, v5, v6, v7}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceArea(Lcom/scalado/base/Rect;II)V

    .line 979
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->update()V

    .line 980
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->commit()V

    .line 982
    :cond_5
    iget-object v14, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/rewind/AutoSession$Replacement;

    move-object v3, p0

    move/from16 v4, p3

    move/from16 v8, p1

    move/from16 v9, p2

    .line 983
    invoke-direct/range {v2 .. v12}, Lcom/scalado/app/rewind/AutoSession$Replacement;-><init>(Lcom/scalado/app/rewind/AutoSession;ILcom/scalado/base/Rect;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 982
    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 948
    .end local v5           #innerRect:Lcom/scalado/base/Rect;
    .end local v6           #feathering:I
    .end local v12           #orgLargeRect:Landroid/graphics/Rect;
    .restart local v13       #cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    :pswitch_0
    const/16 p4, 0x0

    .line 949
    goto :goto_1

    .line 951
    :pswitch_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    goto/16 :goto_0

    .line 986
    .end local v13           #cmd:Lcom/scalado/app/rewind/AutoSession$Command;
    .restart local v5       #innerRect:Lcom/scalado/base/Rect;
    .restart local v6       #feathering:I
    .restart local v12       #orgLargeRect:Landroid/graphics/Rect;
    :cond_6
    iget-object v14, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/rewind/AutoSession$Replacement;

    move-object v3, p0

    move/from16 v4, p3

    move/from16 v8, p1

    move/from16 v9, p2

    .line 987
    invoke-direct/range {v2 .. v12}, Lcom/scalado/app/rewind/AutoSession$Replacement;-><init>(Lcom/scalado/app/rewind/AutoSession;ILcom/scalado/base/Rect;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 986
    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 946
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scaleDown(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 1001
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 1002
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v5, Lcom/scalado/caps/Session;

    invoke-direct {v5, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 1009
    .local v5, session:Lcom/scalado/caps/Session;
    new-instance v3, Lcom/scalado/base/Image;

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v3, v6, v7}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 1011
    .local v3, image:Lcom/scalado/base/Image;
    new-instance v2, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 1013
    .local v2, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    :try_start_0
    invoke-virtual {v5, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 1014
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    :goto_0
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1031
    iget-boolean v6, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    if-eqz v6, :cond_0

    .line 1032
    new-instance v5, Lcom/scalado/caps/Session;

    .end local v5           #session:Lcom/scalado/caps/Session;
    invoke-direct {v5, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 1037
    .restart local v5       #session:Lcom/scalado/caps/Session;
    new-instance v3, Lcom/scalado/base/Image;

    .end local v3           #image:Lcom/scalado/base/Image;
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims2:Lcom/scalado/base/Size;

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v3, v6, v7}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 1038
    .restart local v3       #image:Lcom/scalado/base/Image;
    new-instance v2, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    .end local v2           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-direct {v2, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 1040
    .restart local v2       #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    :try_start_1
    invoke-virtual {v5, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 1041
    .restart local v4       #iterator:Lcom/scalado/base/Iterator;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1045
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    :goto_1
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_0
    return-void

    .line 1015
    :catch_0
    move-exception v1

    .line 1016
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "AutoSession"

    const-string v7, "Exception when rendering image!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1042
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1043
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "AutoSession"

    const-string v7, "Exception when rendering image!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private sendReplacementInfo()V
    .locals 19

    .prologue
    .line 1502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v14

    .line 1503
    .local v14, n:I
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1504
    .local v17, replacedRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1517
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    .line 1518
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1517
    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1519
    .local v15, notReplacedRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v2, 0xa1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession;->backgroundImageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 1536
    .local v13, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v1, v13}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1538
    const/4 v1, 0x2

    new-array v12, v1, [Ljava/util/ArrayList;

    .line 1539
    .local v12, lists:[Ljava/util/ArrayList;
    const/4 v1, 0x0

    aput-object v17, v12, v1

    .line 1540
    const/4 v1, 0x1

    aput-object v15, v12, v1

    .line 1542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2, v12}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 1543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v1, v13}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1544
    return-void

    .line 1504
    .end local v12           #lists:[Ljava/util/ArrayList;
    .end local v13           #msg:Landroid/os/Message;
    .end local v15           #notReplacedRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;>;"
    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/scalado/app/rewind/AutoSession$Replacement;

    .line 1505
    .local v16, repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    new-instance v11, Lcom/scalado/base/Rect;

    invoke-direct {v11}, Lcom/scalado/base/Rect;-><init>()V

    .line 1506
    .local v11, cr:Lcom/scalado/base/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    invoke-static {v1, v2, v11}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1507
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1508
    .local v5, r:Landroid/graphics/Rect;
    invoke-static {v11, v5}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v7

    .line 1510
    .local v7, faceRect:Landroid/graphics/Rect;
    if-eqz v7, :cond_1

    .line 1511
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/scalado/app/rewind/AutoSession;->transformFdToSession(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->transformToScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1513
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->wasFound(II)Z

    move-result v8

    .line 1515
    .local v8, found:Z
    new-instance v1, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFg:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mOrgLargeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/scalado/app/rewind/AutoSession;->backgroundImageIndex:I

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;-><init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILcom/scalado/app/rewind/AutoSession$ReplaceInfo;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1519
    .end local v5           #r:Landroid/graphics/Rect;
    .end local v7           #faceRect:Landroid/graphics/Rect;
    .end local v8           #found:Z
    .end local v11           #cr:Lcom/scalado/base/Rect;
    .end local v16           #repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    .restart local v15       #notReplacedRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;>;"
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/scalado/app/rewind/AutoSession$Replacement;

    .line 1520
    .restart local v16       #repl:Lcom/scalado/app/rewind/AutoSession$Replacement;
    new-instance v11, Lcom/scalado/base/Rect;

    invoke-direct {v11}, Lcom/scalado/base/Rect;-><init>()V

    .line 1521
    .restart local v11       #cr:Lcom/scalado/base/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    invoke-static {v1, v2, v11}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1522
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1523
    .restart local v5       #r:Landroid/graphics/Rect;
    invoke-static {v11, v5}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v7

    .line 1525
    .restart local v7       #faceRect:Landroid/graphics/Rect;
    if-eqz v7, :cond_3

    .line 1526
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/scalado/app/rewind/AutoSession;->transformFdToSession(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->transformToScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1528
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->wasFound(II)Z

    move-result v8

    .line 1529
    .restart local v8       #found:Z
    new-instance v1, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFg:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mOrgLargeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/scalado/app/rewind/AutoSession;->backgroundImageIndex:I

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;-><init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILcom/scalado/app/rewind/AutoSession$ReplaceInfo;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static setLogging(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 535
    sput-boolean p0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    .line 536
    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->setLogging(Z)V

    .line 537
    return-void
.end method

.method private transformFdToSession(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .parameter "r"

    .prologue
    .line 1547
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 1548
    .local v1, x0:F
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 1549
    .local v3, y0:F
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1550
    .local v2, x1:F
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 1551
    .local v4, y1:F
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1552
    .local v0, rDst:Landroid/graphics/Rect;
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 1553
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 1554
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 1555
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1556
    return-object v0
.end method

.method private transformToScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .parameter "r"

    .prologue
    .line 1560
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 1561
    .local v0, scr:Lcom/scalado/base/Rect;
    invoke-static {p1, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 1562
    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/AutoSession;->transformToScreen(Lcom/scalado/base/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method private transformToScreen(Lcom/scalado/base/Rect;)Landroid/graphics/Rect;
    .locals 3
    .parameter "r"

    .prologue
    .line 1566
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 1567
    .local v0, cr:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1568
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1569
    .local v1, dst:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 1570
    return-object v1
.end method


# virtual methods
.method public addJpeg(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "jpeg"

    .prologue
    .line 549
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 550
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 551
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 605
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 606
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 607
    return-void
.end method

.method public getMergedImage()V
    .locals 3

    .prologue
    .line 575
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 576
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 577
    return-void
.end method

.method public getSourceImage(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 588
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x4

    .line 589
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 588
    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 590
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 591
    return-void
.end method

.method public numSourceJpegs()I
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public outputToFile(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"

    .prologue
    .line 562
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 564
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 565
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendEmptyMessage(I)Z

    .line 599
    return-void
.end method

.method public saveSourceJpeg(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "filename"

    .prologue
    .line 638
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    .line 639
    const/16 v2, 0x10

    const/4 v3, -0x1

    .line 638
    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 640
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 641
    return-void
.end method

.method public setAdvisor(Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;)V
    .locals 0
    .parameter "advisor"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    .line 627
    return-void
.end method

.method public setBaseFaceDetctionWidth(I)V
    .locals 0
    .parameter "w"

    .prologue
    .line 507
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    .line 508
    return-void
.end method

.method public setCompositionMaxTranslation(F)V
    .locals 0
    .parameter "relMaxTranslation"

    .prologue
    .line 495
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    .line 496
    return-void
.end method

.method public setFaceDetectEx(Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;)V
    .locals 0
    .parameter "FDE"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    .line 199
    return-void
.end method

.method public setListener(Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 617
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    .line 618
    return-void
.end method

.method public setMaxTranslation(I)V
    .locals 0
    .parameter "maxTranslation"

    .prologue
    .line 475
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    .line 476
    return-void
.end method

.method public setMinTranslation(I)V
    .locals 0
    .parameter "minTranslation"

    .prologue
    .line 485
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    .line 486
    return-void
.end method

.method public setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 3
    .parameter "dims"
    .parameter "config"

    .prologue
    .line 461
    new-instance v0, Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    .line 462
    iput-object p2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    .line 463
    return-void
.end method

.method public setSecondaryFaceDetctionWidth(I)V
    .locals 0
    .parameter "w"

    .prologue
    .line 527
    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    .line 528
    return-void
.end method

.method public setSecondaryImage(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    .line 516
    return-void
.end method
