.class Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionOptimizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    }
.end annotation


# static fields
.field private static final MAX_CANDIDATES:I = 0x64

.field private static final MAX_POSSIBILITES:I = 0x186a0


# instance fields
.field private MAX_COST:F

.field private mCandidates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;",
            ">;"
        }
    .end annotation
.end field

.field private mCurBgIndex:I

.field private mEndReached:Z

.field private mNumPossibilities:I

.field private mWorkPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;)V
    .locals 1
    .parameter

    .prologue
    .line 2289
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2282
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    .line 2283
    const v0, 0x3d75c28f

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->MAX_COST:F

    .line 2287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    .line 2297
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2289
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;)V

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V
    .locals 0
    .parameter

    .prologue
    .line 2299
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimize()V

    return-void
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Z
    .locals 1
    .parameter

    .prologue
    .line 2287
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)I
    .locals 1
    .parameter

    .prologue
    .line 2281
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    return v0
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Lcom/scalado/app/rewind/RectTracker;
    .locals 1
    .parameter

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    return-object v0
.end method

.method private eval()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2362
    new-instance v5, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    const/4 v8, 0x0

    invoke-direct {v5, p0, v7, v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;-><init>(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;ILcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)V

    .line 2363
    .local v5, selection:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    const/4 v6, 0x0

    .line 2364
    .local v6, sumCost:F
    const/4 v3, 0x0

    .line 2365
    .local v3, maxCost:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v2, v7, :cond_1

    .line 2403
    #setter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$4(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;F)V

    .line 2405
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2406
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2424
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_8

    .line 2427
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    .line 2428
    return-void

    .line 2366
    :cond_1
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2367
    .local v1, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v7

    iget v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    if-ne v7, v8, :cond_2

    .line 2368
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    iget v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    aput v8, v7, v2

    .line 2369
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v10, v7, v2

    .line 2370
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v1, v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$5(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V

    .line 2365
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2373
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 2376
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    const/4 v8, -0x1

    aput v8, v7, v2

    .line 2377
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v10, v7, v2

    .line 2378
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v1, v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$5(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V

    goto :goto_2

    .line 2388
    :cond_3
    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v8

    invoke-direct {p0, v1, v7, v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->getCost(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)F

    move-result v0

    .line 2389
    .local v0, curCost:F
    cmpg-float v7, v0, v10

    if-gez v7, :cond_4

    .line 2390
    #setter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mUnreliable:Z
    invoke-static {v5, v9}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;Z)V

    .line 2392
    const/high16 v0, 0x42c8

    .line 2396
    :goto_3
    add-float/2addr v6, v0

    .line 2397
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2398
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v0, v7, v2

    .line 2399
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v8

    aput v8, v7, v2

    goto :goto_2

    .line 2394
    :cond_4
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v1, v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$5(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V

    goto :goto_3

    .line 2408
    .end local v0           #curCost:F
    .end local v1           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    :cond_5
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2409
    :goto_4
    if-gtz v2, :cond_7

    .line 2415
    :cond_6
    const/4 v7, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2416
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7, v5, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 2417
    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 2418
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    .line 2419
    .local v4, pone:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v7

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 2420
    const-string v7, "Muppet!"

    #calls: Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$5(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2410
    .end local v4           #pone:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    :cond_7
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v7

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-lez v7, :cond_6

    .line 2413
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 2425
    :cond_8
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private getCost(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)F
    .locals 12
    .parameter "face"
    .parameter "bg"
    .parameter "fg"

    .prologue
    .line 2431
    if-ne p2, p3, :cond_1

    .line 2432
    const/4 v0, 0x0

    .line 2474
    :cond_0
    :goto_0
    return v0

    .line 2434
    :cond_1
    const/4 v0, 0x0

    .line 2435
    .local v0, curCost:F
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2436
    .local v6, start:I
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2437
    .local v1, end:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v8

    if-nez v8, :cond_6

    .line 2438
    move v4, v6

    .local v4, i:I
    :goto_1
    if-le v4, v1, :cond_2

    .line 2448
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->absoluteRelativeDist(IILandroid/graphics/PointF;)Z
    invoke-static {p1, p2, p3, v8}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$9(Lcom/scalado/app/rewind/RectTracker$AbstractFace;IILandroid/graphics/PointF;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2449
    const/high16 v0, -0x4080

    goto :goto_0

    .line 2439
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v8

    aget-object v7, v8, v4

    .line 2440
    .local v7, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v7, :cond_3

    .line 2441
    const/high16 v0, -0x4080

    goto :goto_0

    .line 2443
    :cond_3
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->translationRelativeToBg(Landroid/graphics/PointF;)Z
    invoke-static {v7, v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$5(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2444
    const/high16 v0, -0x4080

    goto :goto_0

    .line 2446
    :cond_4
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float/2addr v0, v8

    .line 2438
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2451
    .end local v7           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_5
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float/2addr v0, v8

    goto :goto_0

    .line 2453
    .end local v4           #i:I
    :cond_6
    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->getAllLocked()[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$10(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v3

    .line 2454
    .local v3, faces:[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/high16 v0, -0x4080

    .line 2455
    array-length v9, v3

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_0

    aget-object v5, v3, v8

    .line 2456
    .local v5, iterFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/4 v2, 0x0

    .line 2457
    .local v2, faceCost:F
    move v4, v6

    .restart local v4       #i:I
    :goto_3
    if-le v4, v1, :cond_7

    .line 2467
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->absoluteRelativeDist(IILandroid/graphics/PointF;)Z
    invoke-static {v5, p2, p3, v10}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$9(Lcom/scalado/app/rewind/RectTracker$AbstractFace;IILandroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 2468
    const/high16 v0, -0x4080

    goto :goto_0

    .line 2458
    :cond_7
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v10

    aget-object v7, v10, v4

    .line 2459
    .restart local v7       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v7, :cond_8

    .line 2460
    const/high16 v0, -0x4080

    goto :goto_0

    .line 2462
    :cond_8
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->translationRelativeToBg(Landroid/graphics/PointF;)Z
    invoke-static {v7, v10}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$5(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 2463
    const/high16 v0, -0x4080

    goto/16 :goto_0

    .line 2465
    :cond_9
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-float/2addr v2, v10

    .line 2457
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2470
    .end local v7           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_a
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-float/2addr v2, v10

    .line 2471
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2455
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private numPossibilities()I
    .locals 4

    .prologue
    .line 2496
    const/4 v1, 0x1

    .line 2497
    .local v1, n:I
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2500
    return v1

    .line 2497
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2498
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/2addr v1, v3

    goto :goto_0
.end method

.method private optimize()V
    .locals 9

    .prologue
    const v7, 0x186a0

    const/4 v8, 0x0

    .line 2300
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iput v4, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    .line 2301
    new-instance v4, Ljava/util/Vector;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    .line 2302
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2327
    iget v4, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    if-le v4, v7, :cond_7

    .line 2328
    const-string v4, "%s failed, # possibilites > "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/scalado/app/rewind/RectTracker;->logw(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->access$4(Ljava/lang/String;)V

    .line 2329
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    .line 2333
    :goto_1
    return-void

    .line 2302
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2303
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/4 v5, -0x1

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v0, v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$0(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)V

    .line 2304
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mAllSame:Z
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$1(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2307
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v3, v5, v6

    .line 2309
    .local v3, rank:Lcom/scalado/app/rewind/RectTracker$RankedId;
    #calls: Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$0(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2310
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    iget v6, v3, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 2311
    .local v2, img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->addPossibility(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$3(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    .line 2313
    .end local v2           #img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x2

    .line 2314
    .local v1, i:I
    :goto_2
    if-lez v1, :cond_3

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v6

    aget-object v6, v6, v1

    #calls: Lcom/scalado/app/rewind/RectTracker$RankedId;->isGoodEnoughEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$1(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2322
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2323
    iget v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    .line 2325
    :cond_4
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v0, v8}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$5(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V

    goto/16 :goto_0

    .line 2315
    :cond_5
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v3, v5, v6

    .line 2316
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    iget v6, v3, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 2317
    .restart local v2       #img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #calls: Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$0(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2318
    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->addPossibility(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$3(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    .line 2320
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2332
    .end local v0           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v1           #i:I
    .end local v2           #img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v3           #rank:Lcom/scalado/app/rewind/RectTracker$RankedId;
    :cond_7
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeBg()V

    goto/16 :goto_1
.end method

.method private optimizeBg()V
    .locals 2

    .prologue
    .line 2336
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2340
    return-void

    .line 2337
    :cond_0
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    .line 2338
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    .line 2336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private optimizeFace(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 2343
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 2344
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->eval()V

    .line 2359
    :cond_0
    :goto_0
    return-void

    .line 2347
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2348
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2349
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    goto :goto_0

    .line 2350
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2351
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$0(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)V

    .line 2352
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    goto :goto_0

    .line 2354
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2355
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$4(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$0(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)V

    .line 2356
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    .line 2354
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
