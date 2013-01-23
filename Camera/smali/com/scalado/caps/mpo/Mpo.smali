.class public Lcom/scalado/caps/mpo/Mpo;
.super Lcom/scalado/jni/JniPeer;
.source "Mpo.java"


# instance fields
.field private mAccess:Lcom/scalado/stream/FileStream$Access;

.field private mStream:Lcom/scalado/stream/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 779
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 780
    invoke-static {}, Lcom/scalado/caps/mpo/Mpo;->nativeClassInit()V

    .line 781
    return-void
.end method

.method public constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/stream/FileStream$Access;)V
    .locals 2
    .parameter "mpoStream"
    .parameter "access"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mStream:Lcom/scalado/stream/Stream;

    .line 64
    sget-object v0, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    iput-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mAccess:Lcom/scalado/stream/FileStream$Access;

    .line 73
    iput-object p1, p0, Lcom/scalado/caps/mpo/Mpo;->mStream:Lcom/scalado/stream/Stream;

    .line 74
    iput-object p2, p0, Lcom/scalado/caps/mpo/Mpo;->mAccess:Lcom/scalado/stream/FileStream$Access;

    .line 76
    iget-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mAccess:Lcom/scalado/stream/FileStream$Access;

    sget-object v1, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mStream:Lcom/scalado/stream/Stream;

    invoke-direct {p0, v0}, Lcom/scalado/caps/mpo/Mpo;->nativeCreateFromMpo(Lcom/scalado/stream/Stream;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/scalado/caps/mpo/Mpo;->nativeCreate()V

    goto :goto_0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeClearAxisDistance_X(I)V
.end method

.method private native nativeClearAxisDistance_Y(I)V
.end method

.method private native nativeClearAxisDistance_Z(I)V
.end method

.method private native nativeClearBaseViewpointNum(I)V
.end method

.method private native nativeClearBaselineLength(I)V
.end method

.method private native nativeClearConvergenceAngle(I)V
.end method

.method private native nativeClearPanOrientation(I)V
.end method

.method private native nativeClearPanOverlap_H(I)V
.end method

.method private native nativeClearPanOverlap_V(I)V
.end method

.method private native nativeClearPitchAngle(I)V
.end method

.method private native nativeClearRollAngle(I)V
.end method

.method private native nativeClearTotalFrames()V
.end method

.method private native nativeClearVerticalDivergence(I)V
.end method

.method private native nativeClearYawAngle(I)V
.end method

.method private native nativeCreate()V
.end method

.method private native nativeCreateFromMpo(Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeGetAxisDistance_X_den(I)I
.end method

.method private native nativeGetAxisDistance_X_num(I)I
.end method

.method private native nativeGetAxisDistance_Y_den(I)I
.end method

.method private native nativeGetAxisDistance_Y_num(I)I
.end method

.method private native nativeGetAxisDistance_Z_den(I)I
.end method

.method private native nativeGetAxisDistance_Z_num(I)I
.end method

.method private native nativeGetBaseViewpointNum(I)I
.end method

.method private native nativeGetBaselineLength_den(I)I
.end method

.method private native nativeGetBaselineLength_num(I)I
.end method

.method private native nativeGetConvergenceAngle_den(I)I
.end method

.method private native nativeGetConvergenceAngle_num(I)I
.end method

.method private native nativeGetDependentImage1EntryNumber(I)S
.end method

.method private native nativeGetDependentImage2EntryNumber(I)S
.end method

.method private native nativeGetImageByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetIndividualImageAttribute(I)I
.end method

.method private native nativeGetIndividualImageUniqueID(I)Ljava/lang/String;
.end method

.method private native nativeGetMPIndividualNum(I)I
.end method

.method private native nativeGetNumberOfImages()I
.end method

.method private native nativeGetPanOrientation(I)I
.end method

.method private native nativeGetPanOverlap_H_den(I)I
.end method

.method private native nativeGetPanOverlap_H_num(I)I
.end method

.method private native nativeGetPanOverlap_V_den(I)I
.end method

.method private native nativeGetPanOverlap_V_num(I)I
.end method

.method private native nativeGetPitchAngle_den(I)I
.end method

.method private native nativeGetPitchAngle_num(I)I
.end method

.method private native nativeGetRollAngle_den(I)I
.end method

.method private native nativeGetRollAngle_num(I)I
.end method

.method private native nativeGetTotalFrames()I
.end method

.method private native nativeGetVerticalDivergence_den(I)I
.end method

.method private native nativeGetVerticalDivergence_num(I)I
.end method

.method private native nativeGetYawAngle_den(I)I
.end method

.method private native nativeGetYawAngle_num(I)I
.end method

.method private native nativeMpoSessionAddStream(Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeMpoSessionFlush(Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeSetAxisDistance_X(III)V
.end method

.method private native nativeSetAxisDistance_Y(III)V
.end method

.method private native nativeSetAxisDistance_Z(III)V
.end method

.method private native nativeSetBaseViewpointNum(II)V
.end method

.method private native nativeSetBaselineLength(III)V
.end method

.method private native nativeSetConvergenceAngle(III)V
.end method

.method private native nativeSetDependentImage1EntryNumber(IS)V
.end method

.method private native nativeSetDependentImage2EntryNumber(IS)V
.end method

.method private native nativeSetIndividualImageAttribute(II)V
.end method

.method private native nativeSetIndividualImageUniqueID(ILjava/lang/String;)V
.end method

.method private native nativeSetPanOrientation(II)V
.end method

.method private native nativeSetPanOverlap_H(III)V
.end method

.method private native nativeSetPanOverlap_V(III)V
.end method

.method private native nativeSetPitchAngle(III)V
.end method

.method private native nativeSetRollAngle(III)V
.end method

.method private native nativeSetTotalFrames(I)V
.end method

.method private native nativeSetVerticalDivergence(III)V
.end method

.method private native nativeSetYawAngle(III)V
.end method


# virtual methods
.method public addStream(Lcom/scalado/stream/Stream;)V
    .locals 0
    .parameter "stream"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeMpoSessionAddStream(Lcom/scalado/stream/Stream;)V

    .line 91
    return-void
.end method

.method public clearAxisDistance_X(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearAxisDistance_X(I)V

    .line 414
    return-void
.end method

.method public clearAxisDistance_Y(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearAxisDistance_Y(I)V

    .line 449
    return-void
.end method

.method public clearAxisDistance_Z(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearAxisDistance_Z(I)V

    .line 484
    return-void
.end method

.method public clearBaseViewpointNum(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearBaseViewpointNum(I)V

    .line 274
    return-void
.end method

.method public clearBaselineLength(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearBaselineLength(I)V

    .line 344
    return-void
.end method

.method public clearConvergenceAngle(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearConvergenceAngle(I)V

    .line 309
    return-void
.end method

.method public clearPanOrientation(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearPanOrientation(I)V

    .line 175
    return-void
.end method

.method public clearPanOverlapH(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearPanOverlap_H(I)V

    .line 236
    return-void
.end method

.method public clearPanOverlapV(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearPanOverlap_V(I)V

    .line 245
    return-void
.end method

.method public clearPitchAngle(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearPitchAngle(I)V

    .line 554
    return-void
.end method

.method public clearRollAngle(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearRollAngle(I)V

    .line 589
    return-void
.end method

.method public clearTotalFrames()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/scalado/caps/mpo/Mpo;->nativeClearTotalFrames()V

    .line 136
    return-void
.end method

.method public clearVerticalDivergence(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearVerticalDivergence(I)V

    .line 379
    return-void
.end method

.method public clearYawAngle(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearYawAngle(I)V

    .line 519
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mAccess:Lcom/scalado/stream/FileStream$Access;

    sget-object v1, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    if-ne v0, v1, :cond_0

    .line 678
    iget-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mStream:Lcom/scalado/stream/Stream;

    invoke-direct {p0, v0}, Lcom/scalado/caps/mpo/Mpo;->nativeMpoSessionFlush(Lcom/scalado/stream/Stream;)V

    .line 680
    :cond_0
    return-void
.end method

.method public getAxisDistance_X(I)Lcom/scalado/base/Rational;
    .locals 3
    .parameter "index"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_X_num(I)I

    move-result v1

    .line 399
    .local v1, num:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_X_den(I)I

    move-result v0

    .line 401
    .local v0, den:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 402
    :cond_0
    const/4 v2, 0x0

    .line 404
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getAxisDistance_Y(I)Lcom/scalado/base/Rational;
    .locals 3
    .parameter "index"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_Y_num(I)I

    move-result v1

    .line 434
    .local v1, num:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_Y_den(I)I

    move-result v0

    .line 436
    .local v0, den:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 437
    :cond_0
    const/4 v2, 0x0

    .line 439
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getAxisDistance_Z(I)Lcom/scalado/base/Rational;
    .locals 3
    .parameter "index"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_Z_num(I)I

    move-result v1

    .line 469
    .local v1, num:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_Z_den(I)I

    move-result v0

    .line 471
    .local v0, den:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 472
    :cond_0
    const/4 v2, 0x0

    .line 474
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getBaseViewpointNum(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetBaseViewpointNum(I)I

    move-result v0

    return v0
.end method

.method public getBaselineLength(I)Lcom/scalado/base/Rational;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, -0x1

    .line 328
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetBaselineLength_num(I)I

    move-result v1

    .line 329
    .local v1, num:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetBaselineLength_den(I)I

    move-result v0

    .line 331
    .local v0, den:I
    if-eq v1, v2, :cond_0

    if-ne v0, v2, :cond_1

    .line 332
    :cond_0
    const/4 v2, 0x0

    .line 334
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getConvergenceAngle(I)Lcom/scalado/base/Rational;
    .locals 3
    .parameter "index"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetConvergenceAngle_num(I)I

    move-result v1

    .line 294
    .local v1, num:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetConvergenceAngle_den(I)I

    move-result v0

    .line 296
    .local v0, den:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 297
    :cond_0
    const/4 v2, 0x0

    .line 299
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getDependentImage1EntryNumber(I)S
    .locals 1
    .parameter "index"

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetDependentImage1EntryNumber(I)S

    move-result v0

    return v0
.end method

.method public getDependentImage2EntryNumber(I)S
    .locals 1
    .parameter "index"

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetDependentImage2EntryNumber(I)S

    move-result v0

    return v0
.end method

.method public getImageByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "index"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetImageByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getIndividualImageAttribute(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetIndividualImageAttribute(I)I

    move-result v0

    return v0
.end method

.method public getIndividualImageUniqueID(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetIndividualImageUniqueID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMPIndividualNum(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetMPIndividualNum(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfImages()I
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/scalado/caps/mpo/Mpo;->nativeGetNumberOfImages()I

    move-result v0

    return v0
.end method

.method public getPanOrientation(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPanOrientation(I)I

    move-result v0

    return v0
.end method

.method public getPanOverlapH(I)Lcom/scalado/base/Rational;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, -0x1

    .line 204
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPanOverlap_H_num(I)I

    move-result v1

    .line 205
    .local v1, num:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPanOverlap_H_den(I)I

    move-result v0

    .line 207
    .local v0, den:I
    if-eq v1, v2, :cond_0

    if-ne v0, v2, :cond_1

    .line 208
    :cond_0
    const/4 v2, 0x0

    .line 210
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getPanOverlapV(I)Lcom/scalado/base/Rational;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, -0x1

    .line 220
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPanOverlap_V_num(I)I

    move-result v1

    .line 221
    .local v1, num:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPanOverlap_V_den(I)I

    move-result v0

    .line 223
    .local v0, den:I
    if-eq v1, v2, :cond_0

    if-ne v0, v2, :cond_1

    .line 224
    :cond_0
    const/4 v2, 0x0

    .line 226
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getPitchAngle(I)Lcom/scalado/base/Rational;
    .locals 3
    .parameter "index"

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPitchAngle_num(I)I

    move-result v1

    .line 539
    .local v1, num:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPitchAngle_den(I)I

    move-result v0

    .line 541
    .local v0, den:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 542
    :cond_0
    const/4 v2, 0x0

    .line 544
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getRollAngle(I)Lcom/scalado/base/Rational;
    .locals 3
    .parameter "index"

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetRollAngle_num(I)I

    move-result v1

    .line 574
    .local v1, num:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetRollAngle_den(I)I

    move-result v0

    .line 576
    .local v0, den:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 577
    :cond_0
    const/4 v2, 0x0

    .line 579
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getTotalFrames()I
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/scalado/caps/mpo/Mpo;->nativeGetTotalFrames()I

    move-result v0

    return v0
.end method

.method public getVerticalDivergence(I)Lcom/scalado/base/Rational;
    .locals 3
    .parameter "index"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetVerticalDivergence_num(I)I

    move-result v1

    .line 364
    .local v1, num:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetVerticalDivergence_den(I)I

    move-result v0

    .line 366
    .local v0, den:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 367
    :cond_0
    const/4 v2, 0x0

    .line 369
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getYawAngle(I)Lcom/scalado/base/Rational;
    .locals 3
    .parameter "index"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetYawAngle_num(I)I

    move-result v1

    .line 504
    .local v1, num:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetYawAngle_den(I)I

    move-result v0

    .line 506
    .local v0, den:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 507
    :cond_0
    const/4 v2, 0x0

    .line 509
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public setAxisDistance_X(ILcom/scalado/base/Rational;)V
    .locals 2
    .parameter "index"
    .parameter "angle"

    .prologue
    .line 388
    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetAxisDistance_X(III)V

    .line 389
    return-void
.end method

.method public setAxisDistance_Y(ILcom/scalado/base/Rational;)V
    .locals 2
    .parameter "index"
    .parameter "angle"

    .prologue
    .line 423
    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetAxisDistance_Y(III)V

    .line 424
    return-void
.end method

.method public setAxisDistance_Z(ILcom/scalado/base/Rational;)V
    .locals 2
    .parameter "index"
    .parameter "angle"

    .prologue
    .line 458
    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetAxisDistance_Z(III)V

    .line 459
    return-void
.end method

.method public setBaseViewpointNum(II)V
    .locals 0
    .parameter "index"
    .parameter "baseViewpoint"

    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetBaseViewpointNum(II)V

    .line 255
    return-void
.end method

.method public setBaselineLength(ILcom/scalado/base/Rational;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 318
    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetBaselineLength(III)V

    .line 319
    return-void
.end method

.method public setConvergenceAngle(ILcom/scalado/base/Rational;)V
    .locals 2
    .parameter "index"
    .parameter "angle"

    .prologue
    .line 283
    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetConvergenceAngle(III)V

    .line 284
    return-void
.end method

.method public setDependentImage1EntryNumber(IS)V
    .locals 0
    .parameter "index"
    .parameter "number"

    .prologue
    .line 618
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetDependentImage1EntryNumber(IS)V

    .line 619
    return-void
.end method

.method public setDependentImage2EntryNumber(IS)V
    .locals 0
    .parameter "index"
    .parameter "number"

    .prologue
    .line 638
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetDependentImage2EntryNumber(IS)V

    .line 639
    return-void
.end method

.method public setIndividualImageAttribute(II)V
    .locals 0
    .parameter "index"
    .parameter "attribute"

    .prologue
    .line 598
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetIndividualImageAttribute(II)V

    .line 599
    return-void
.end method

.method public setIndividualImageUniqueID(ILjava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "id"

    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetIndividualImageUniqueID(ILjava/lang/String;)V

    .line 659
    return-void
.end method

.method public setPanOrientation(II)V
    .locals 0
    .parameter "index"
    .parameter "panOrientation"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetPanOrientation(II)V

    .line 156
    return-void
.end method

.method public setPanOverlapH(ILcom/scalado/base/Rational;)V
    .locals 2
    .parameter "index"
    .parameter "panOverlap"

    .prologue
    .line 184
    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetPanOverlap_H(III)V

    .line 185
    return-void
.end method

.method public setPanOverlapV(ILcom/scalado/base/Rational;)V
    .locals 2
    .parameter "index"
    .parameter "panOverlap"

    .prologue
    .line 194
    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetPanOverlap_V(III)V

    .line 195
    return-void
.end method

.method public setPitchAngle(ILcom/scalado/base/Rational;)V
    .locals 2
    .parameter "index"
    .parameter "angle"

    .prologue
    .line 528
    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetPitchAngle(III)V

    .line 529
    return-void
.end method

.method public setRollAngle(ILcom/scalado/base/Rational;)V
    .locals 2
    .parameter "index"
    .parameter "angle"

    .prologue
    .line 563
    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetRollAngle(III)V

    .line 564
    return-void
.end method

.method public setTotalFrames(I)V
    .locals 0
    .parameter "totalFrames"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetTotalFrames(I)V

    .line 120
    return-void
.end method

.method public setVerticalDivergence(ILcom/scalado/base/Rational;)V
    .locals 2
    .parameter "index"
    .parameter "angle"

    .prologue
    .line 353
    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetVerticalDivergence(III)V

    .line 354
    return-void
.end method

.method public setYawAngle(ILcom/scalado/base/Rational;)V
    .locals 2
    .parameter "index"
    .parameter "angle"

    .prologue
    .line 493
    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetYawAngle(III)V

    .line 494
    return-void
.end method
