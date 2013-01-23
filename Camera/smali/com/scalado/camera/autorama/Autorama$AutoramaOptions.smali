.class public Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
.super Ljava/lang/Object;
.source "Autorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoramaOptions"
.end annotation


# instance fields
.field private mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

.field private mColorCompensation:Z

.field private mDetectDirectionAutomatically:Z

.field private mIntensityCompensation:Z

.field private mMaximumDeviation:I

.field private mMinimumDelta:I

.field private mNumberOfImages:I

.field private mOverlap:I

.field private mTracketingThreshold:F

.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 279
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const/16 v0, 0x2d

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    .line 281
    const/16 v0, 0x64

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    .line 282
    const/16 v0, 0xa

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    .line 283
    iput-boolean v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    .line 285
    sget-object v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->MULTILEVEL_NORMAL:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 286
    iput-boolean v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    .line 287
    iput-boolean v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    .line 288
    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mTracketingThreshold:F

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 280
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    return v0
.end method

.method static synthetic access$1(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)F
    .locals 1
    .parameter

    .prologue
    .line 288
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mTracketingThreshold:F

    return v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 282
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    return v0
.end method

.method static synthetic access$4(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 281
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    return v0
.end method

.method static synthetic access$5(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 284
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    return v0
.end method

.method static synthetic access$6(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Lcom/scalado/caps/autorama/Stitcher$BlendMode;
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    return-object v0
.end method

.method static synthetic access$7(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    return v0
.end method

.method static synthetic access$8(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    return v0
.end method


# virtual methods
.method public getBlendMode()Lcom/scalado/caps/autorama/Stitcher$BlendMode;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    return-object v0
.end method

.method public getBlendModeOptionColorCompensation()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    return v0
.end method

.method public getBlendModeOptionIntensityCompensation()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    return v0
.end method

.method public getDirectionThreshold()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    return v0
.end method

.method public getMaximumDeviation()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    return v0
.end method

.method public getNumberOfImages()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    return v0
.end method

.method public getOverlap()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    return v0
.end method

.method public getTracketingThreshold()F
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mTracketingThreshold:F

    return v0
.end method

.method public lockDirection(Lcom/scalado/caps/autorama/Direction;)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 304
    :cond_0
    if-nez p1, :cond_1

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Direction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z

    .line 308
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v0, p1}, Lcom/scalado/camera/autorama/Autorama;->access$1(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)V

    goto :goto_0

    .line 307
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BlendMode must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 423
    return-void
.end method

.method public setBlendModeOptions(ZZ)V
    .locals 0
    .parameter "intensityCompensation"
    .parameter "colorCompensation"

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    .line 454
    iput-boolean p2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    .line 455
    return-void
.end method

.method public setDirectionThreshold(I)V
    .locals 2
    .parameter "threshold"

    .prologue
    .line 395
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must be in range [1, 99]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    .line 399
    return-void
.end method

.method public setMaximumDeviation(I)V
    .locals 2
    .parameter "deviation"

    .prologue
    .line 374
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum deviation must be in range [0, 100]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_1
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    .line 378
    return-void
.end method

.method public setNumberOfImages(I)V
    .locals 2
    .parameter "numberOfImages"

    .prologue
    .line 322
    if-gez p1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numberOfImages must be positive or 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    .line 327
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v0

    iget v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    if-lt v0, v1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->stop(Z)V

    .line 330
    :cond_1
    return-void
.end method

.method public setOverlap(I)V
    .locals 2
    .parameter "overlap"

    .prologue
    .line 348
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-le p1, v0, :cond_1

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overlap must be in range [10, 90]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    .line 352
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v1, 0x0

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V

    .line 353
    return-void
.end method

.method public setTracketingThreshold(F)V
    .locals 0
    .parameter "TracketingThreshold"

    .prologue
    .line 475
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mTracketingThreshold:F

    .line 476
    return-void
.end method
