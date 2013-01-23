.class Lcom/scalado/app/rewind/RectTracker$Comparison;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Comparison"
.end annotation


# instance fields
.field private mDdx:F

.field private mDdy:F

.field private mDeltaIndex:I

.field private mIntersection:Landroid/graphics/Rect;

.field private mOverlap:F

.field private mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

.field private mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V
    .locals 0
    .parameter
    .parameter "r0"
    .parameter "r1"
    .parameter "deltaIndex"

    .prologue
    .line 2739
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2740
    iput-object p2, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2741
    iput-object p3, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2742
    iput p4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDeltaIndex:I

    .line 2743
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$Comparison;->init()V

    .line 2744
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;ILcom/scalado/app/rewind/RectTracker$Comparison;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2739
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RectTracker$Comparison;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$Comparison;Lcom/scalado/app/rewind/RectTracker$Comparison;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2759
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$Comparison;->compare(Lcom/scalado/app/rewind/RectTracker$Comparison;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$Comparison;)Z
    .locals 1
    .parameter

    .prologue
    .line 2774
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$Comparison;->isOk()Z

    move-result v0

    return v0
.end method

.method private compare(Lcom/scalado/app/rewind/RectTracker$Comparison;)I
    .locals 6
    .parameter "comp"

    .prologue
    const/4 v2, 0x1

    .line 2760
    iget v3, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    iget v4, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 2771
    :cond_0
    :goto_0
    return v2

    .line 2762
    :cond_1
    iget v3, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    iget v4, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 2763
    iget v3, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdx:F

    iget v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdx:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdy:F

    iget v5, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdy:F

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 2764
    .local v0, md:F
    iget v3, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdx:F

    iget v4, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdx:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdy:F

    iget v5, p1, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdy:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 2765
    .local v1, od:F
    cmpg-float v3, v0, v1

    if-ltz v3, :cond_0

    .line 2767
    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    .line 2768
    const/4 v2, 0x0

    goto :goto_0

    .line 2771
    .end local v0           #md:F
    .end local v1           #od:F
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 2747
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->this$0:Lcom/scalado/app/rewind/RectTracker;

    iget v5, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDeltaIndex:I

    #calls: Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    invoke-static {v4, v5}, Lcom/scalado/app/rewind/RectTracker;->access$8(Lcom/scalado/app/rewind/RectTracker;I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 2748
    .local v0, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v5

    add-float v2, v4, v5

    .line 2749
    .local v2, xt:F
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v5

    add-float v3, v4, v5

    .line 2750
    .local v3, yt:F
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v4, v2

    iput v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdx:F

    .line 2751
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mDdy:F

    .line 2753
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2754
    .local v1, moved:Landroid/graphics/Rect;
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->offset(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;Landroid/graphics/Rect;)V

    .line 2755
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mIntersection:Landroid/graphics/Rect;

    .line 2756
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mIntersection:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v4, v1, v5}, Lcom/scalado/app/rewind/RectTracker$Comparison;->intersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v4

    iput v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    .line 2757
    return-void
.end method

.method private intersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 5
    .parameter "intRect"
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 2786
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2787
    const/4 v1, 0x0

    .line 2788
    .local v1, overlap:F
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2789
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v0, v3

    .line 2790
    .local v0, intArea:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v2, v3

    .line 2791
    .local v2, totArea:F
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 2792
    sub-float/2addr v2, v0

    .line 2793
    div-float v1, v0, v2

    .line 2797
    .end local v0           #intArea:F
    .end local v2           #totArea:F
    :goto_0
    return v1

    .line 2795
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOk()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2776
    const-string v2, "isOk (im=%d, id=%d) -> (im=%d, id=%d) overlap=%f"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 2777
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mR1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2775
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->access$5(Ljava/lang/String;)V

    .line 2782
    iget v2, p0, Lcom/scalado/app/rewind/RectTracker$Comparison;->mOverlap:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
