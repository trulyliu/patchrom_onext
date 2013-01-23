.class public Lcom/scalado/caps/screen/Screen;
.super Lcom/scalado/jni/JniPeer;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/screen/Screen$1;,
        Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;,
        Lcom/scalado/caps/screen/Screen$ScreenState;,
        Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;,
        Lcom/scalado/caps/screen/Screen$RenderMode;
    }
.end annotation


# instance fields
.field private image:Lcom/scalado/base/Image;

.field private mIsPanCacheEnabled:Z

.field private mPanX:F

.field private mPanY:F

.field private mRotation:I

.field private mZoom:F

.field private session:Lcom/scalado/caps/Session;

.field private state:Lcom/scalado/caps/screen/Screen$ScreenState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 592
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 593
    invoke-static {}, Lcom/scalado/caps/screen/Screen;->nativeClassInit()V

    .line 594
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V
    .locals 3
    .parameter "session"
    .parameter "image"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 159
    new-instance v0, Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-direct {v0, p0, v2}, Lcom/scalado/caps/screen/Screen$ScreenState;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/screen/Screen$1;)V

    iput-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    .line 161
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->mRotation:I

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/screen/Screen;->mIsPanCacheEnabled:Z

    .line 163
    iput v1, p0, Lcom/scalado/caps/screen/Screen;->mZoom:F

    .line 164
    iput v1, p0, Lcom/scalado/caps/screen/Screen;->mPanX:F

    .line 165
    iput v1, p0, Lcom/scalado/caps/screen/Screen;->mPanY:F

    .line 177
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 181
    :cond_1
    iput-object p2, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    .line 182
    iput-object p1, p0, Lcom/scalado/caps/screen/Screen;->session:Lcom/scalado/caps/Session;

    .line 183
    new-instance v0, Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;

    invoke-direct {v0, p0, p0}, Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/screen/Screen;)V

    invoke-virtual {p1, v0}, Lcom/scalado/caps/Session;->addListener(Lcom/scalado/caps/SessionListener;)V

    .line 185
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/scalado/caps/screen/Screen;->internalCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen/Screen;->internalCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method private internalCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "oldDecoder"
    .parameter "newDecoder"

    .prologue
    .line 514
    if-eqz p1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p0}, Lcom/scalado/caps/screen/Screen$ScreenState;->save(Lcom/scalado/caps/screen/Screen;)V

    .line 516
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeDestroy()V

    .line 517
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    invoke-direct {p0, p2, v0}, Lcom/scalado/caps/screen/Screen;->nativeCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;)V

    .line 518
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p0}, Lcom/scalado/caps/screen/Screen$ScreenState;->load(Lcom/scalado/caps/screen/Screen;)V

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    invoke-direct {p0, p2, v0}, Lcom/scalado/caps/screen/Screen;->nativeCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;)V

    goto :goto_0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;)V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeGetCanvas(Lcom/scalado/base/Rect;)V
.end method

.method private native nativeGetPan()V
.end method

.method private native nativeGetRotation()V
.end method

.method private native nativeGetZoom()V
.end method

.method private native nativeGetZoomPoint(Lcom/scalado/base/Point;)V
.end method

.method private native nativeIsPanCacheEnabled()V
.end method

.method private native nativeRenderScreen()V
.end method

.method private native nativeSetDitheringEnabled(Z)V
.end method

.method private native nativeSetPan(FF)V
.end method

.method private native nativeSetPanCacheEnabled(Z)V
.end method

.method private native nativeSetRenderMode(I)V
.end method

.method private native nativeSetRotation(I)V
.end method

.method private native nativeSetSharpness(I)V
.end method

.method private native nativeSetZoom(F)V
.end method

.method private native nativeSetZoomPoint(FLcom/scalado/base/Point;)V
.end method

.method private native nativeSetZoomRect(Lcom/scalado/base/Rect;)V
.end method

.method private native nativeTransformFromSessionViewport(Lcom/scalado/base/Point;Lcom/scalado/base/Point;)V
.end method

.method private native nativeTransformToSessionViewport(Lcom/scalado/base/Point;Lcom/scalado/base/Point;)V
.end method


# virtual methods
.method public draw()V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeRenderScreen()V

    .line 511
    return-void
.end method

.method public getCanvas()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 491
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 492
    .local v0, rect:Lcom/scalado/base/Rect;
    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeGetCanvas(Lcom/scalado/base/Rect;)V

    .line 493
    return-object v0
.end method

.method public getDimensions()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/scalado/base/Image;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    return-object v0
.end method

.method public getPanX()F
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetPan()V

    .line 395
    iget v0, p0, Lcom/scalado/caps/screen/Screen;->mPanX:F

    return v0
.end method

.method public getPanY()F
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetPan()V

    .line 407
    iget v0, p0, Lcom/scalado/caps/screen/Screen;->mPanY:F

    return v0
.end method

.method public getPoint()Lcom/scalado/base/Point;
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 365
    .local v0, point:Lcom/scalado/base/Point;
    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeGetZoomPoint(Lcom/scalado/base/Point;)V

    .line 366
    return-object v0
.end method

.method public getRotation()Lcom/scalado/caps/Rotation;
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetRotation()V

    .line 275
    iget v0, p0, Lcom/scalado/caps/screen/Screen;->mRotation:I

    invoke-static {v0}, Lcom/scalado/caps/Rotation;->getRotationFromValue(I)Lcom/scalado/caps/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/scalado/caps/Session;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->session:Lcom/scalado/caps/Session;

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetZoom()V

    .line 353
    iget v0, p0, Lcom/scalado/caps/screen/Screen;->mZoom:F

    return v0
.end method

.method public isPanCacheEnabled()Z
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeIsPanCacheEnabled()V

    .line 442
    iget-boolean v0, p0, Lcom/scalado/caps/screen/Screen;->mIsPanCacheEnabled:Z

    return v0
.end method

.method public preview()Lcom/scalado/base/Iterator;
    .locals 1

    .prologue
    .line 503
    new-instance v0, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;

    invoke-direct {v0, p0, p0}, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/screen/Screen;)V

    return-object v0
.end method

.method public setDitheringEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetDitheringEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setDitheringEnabled(Z)V

    .line 250
    return-void
.end method

.method public setPan(FF)V
    .locals 3
    .parameter "panX"
    .parameter "panY"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v1, -0x4080

    .line 379
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v2

    if-gtz v0, :cond_0

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 383
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen/Screen;->nativeSetPan(FF)V

    .line 384
    return-void
.end method

.method public setPanCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetPanCacheEnabled(Z)V

    .line 431
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setPanCacheEnabled(Z)V

    .line 432
    return-void
.end method

.method public setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V
    .locals 1
    .parameter "rendermode"

    .prologue
    .line 417
    iget v0, p1, Lcom/scalado/caps/screen/Screen$RenderMode;->value:I

    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeSetRenderMode(I)V

    .line 418
    return-void
.end method

.method public setRotation(Lcom/scalado/caps/Rotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeSetRotation(I)V

    .line 265
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setRotation(Lcom/scalado/caps/Rotation;)V

    .line 266
    return-void
.end method

.method public setSharpness(I)V
    .locals 1
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 227
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 232
    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetSharpness(I)V

    .line 233
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setSharpness(I)V

    .line 235
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .parameter "zoom"

    .prologue
    .line 288
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 293
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetZoom(F)V

    .line 294
    return-void
.end method

.method public setZoomPoint(FLcom/scalado/base/Point;)V
    .locals 1
    .parameter "zoom"
    .parameter "midpoint"

    .prologue
    .line 311
    if-nez p2, :cond_0

    .line 313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 315
    :cond_0
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 320
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen/Screen;->nativeSetZoomPoint(FLcom/scalado/base/Point;)V

    .line 321
    return-void
.end method

.method public setZoomRect(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "zoomRect"

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 343
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetZoomRect(Lcom/scalado/base/Rect;)V

    .line 344
    return-void
.end method

.method public transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;
    .locals 2
    .parameter "sessionCoordinates"

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 456
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 458
    :cond_0
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 459
    .local v0, outPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/screen/Screen;->nativeTransformFromSessionViewport(Lcom/scalado/base/Point;Lcom/scalado/base/Point;)V

    .line 460
    return-object v0
.end method

.method public transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;
    .locals 2
    .parameter "screenCoordinates"

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 474
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 476
    :cond_0
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 477
    .local v0, outPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/screen/Screen;->nativeTransformToSessionViewport(Lcom/scalado/base/Point;Lcom/scalado/base/Point;)V

    .line 478
    return-object v0
.end method
