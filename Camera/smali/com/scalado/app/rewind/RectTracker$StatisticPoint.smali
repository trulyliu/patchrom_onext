.class Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatisticPoint"
.end annotation


# instance fields
.field private mDx:F

.field private mDy:F

.field private mMaxX:F

.field private mMaxY:F

.field private mMinX:F

.field private mMinY:F

.field private mSize:I

.field private mStdDevX:F

.field private mStdDevY:F

.field private mSumX:F

.field private mSumX2:F

.field private mSumY:F

.field private mSumY2:F

.field private mVarX:F

.field private mVarY:F

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f7fffff

    const/high16 v1, -0x80

    const/4 v0, 0x0

    .line 2696
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2680
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumX:F

    .line 2681
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumY:F

    .line 2682
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F

    .line 2683
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F

    .line 2684
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mVarX:F

    .line 2685
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mVarY:F

    .line 2686
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F

    .line 2687
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevY:F

    .line 2688
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumX2:F

    .line 2689
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumY2:F

    .line 2690
    iput v2, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMinX:F

    .line 2691
    iput v2, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMinY:F

    .line 2692
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMaxX:F

    .line 2693
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMaxY:F

    .line 2695
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I

    .line 2697
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2696
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;)V

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F
    .locals 1
    .parameter

    .prologue
    .line 2682
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F

    return v0
.end method

.method static synthetic access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I
    .locals 1
    .parameter

    .prologue
    .line 2695
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I

    return v0
.end method

.method static synthetic access$11(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;Landroid/graphics/Rect;F)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2724
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->offset(Landroid/graphics/Rect;F)V

    return-void
.end method

.method static synthetic access$12(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F
    .locals 1
    .parameter

    .prologue
    .line 2692
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMaxX:F

    return v0
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F
    .locals 1
    .parameter

    .prologue
    .line 2683
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2720
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->offset(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2682
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2683
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F

    return-void
.end method

.method static synthetic access$6(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2699
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V

    return-void
.end method

.method static synthetic access$7(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V
    .locals 0
    .parameter

    .prologue
    .line 2711
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V

    return-void
.end method

.method static synthetic access$8(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F
    .locals 1
    .parameter

    .prologue
    .line 2686
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F

    return v0
.end method

.method static synthetic access$9(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F
    .locals 1
    .parameter

    .prologue
    .line 2687
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevY:F

    return v0
.end method

.method private addObservation(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2700
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumX:F

    .line 2701
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumY:F

    .line 2702
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumX2:F

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumX2:F

    .line 2703
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumY2:F

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumY2:F

    .line 2704
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMinX:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMinX:F

    .line 2705
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMaxX:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMaxX:F

    .line 2706
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMinY:F

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMinY:F

    .line 2707
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMaxY:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMaxY:F

    .line 2708
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I

    .line 2709
    return-void
.end method

.method private compute()V
    .locals 3

    .prologue
    .line 2712
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumX:F

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F

    .line 2713
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumY:F

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F

    .line 2714
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumX2:F

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F

    iget v2, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mVarX:F

    .line 2715
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSumY2:F

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F

    iget v2, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mVarY:F

    .line 2716
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mVarX:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F

    .line 2717
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mVarY:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevY:F

    .line 2718
    return-void
.end method

.method private offset(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 2721
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2722
    return-void
.end method

.method private offset(Landroid/graphics/Rect;F)V
    .locals 2
    .parameter "r"
    .parameter "factor"

    .prologue
    .line 2725
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2726
    return-void
.end method
