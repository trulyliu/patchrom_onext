.class public Lcom/htc/music/lyrics/widget/LyricsScrollView;
.super Landroid/widget/FrameLayout;
.source "LyricsScrollView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mDuration:I

.field private mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

.field private mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 144
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 88
    iput-boolean v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsLayoutDirty:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mSmoothScrollingEnabled:Z

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mActivePointerId:I

    .line 149
    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->initScrollView()V

    .line 157
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-virtual {p0, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 254
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 256
    .end local v1           #childHeight:I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1460
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1476
    :cond_0
    const/4 p1, 0x0

    .line 1486
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 1478
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1484
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 971
    if-eqz p1, :cond_0

    .line 972
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 973
    invoke-virtual {p0, v1, p1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->smoothScrollBy(II)V

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 713
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 714
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 723
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 725
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 726
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 727
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 728
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 729
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 731
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 737
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 740
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 742
    move-object v1, v5

    .line 743
    move v3, v8

    .line 726
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 737
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 745
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 750
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 751
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 757
    move-object v1, v5

    goto :goto_2

    .line 745
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 760
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 762
    move-object v1, v5

    .line 763
    const/4 v3, 0x1

    goto :goto_2

    .line 764
    :cond_7
    if-eqz v7, :cond_0

    .line 769
    move-object v1, v5

    goto :goto_2

    .line 776
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 683
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 684
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 686
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 692
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 651
    invoke-virtual {p0, v5}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 652
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 655
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v1

    .line 387
    .local v1, scrollY:I
    invoke-virtual {p0, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 393
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_0
    return v2
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 199
    new-instance v1, Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/lyrics/widget/LyricsScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    .line 200
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setFocusable(Z)V

    .line 201
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setDescendantFocusability(I)V

    .line 202
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setWillNotDraw(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 204
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTouchSlop:I

    .line 205
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mMinimumVelocity:I

    .line 206
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mMaximumVelocity:I

    .line 207
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mOverscrollDistance:I

    .line 208
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mOverflingDistance:I

    .line 209
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 950
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1332
    if-ne p1, p2, :cond_1

    .line 1337
    :cond_0
    :goto_0
    return v1

    .line 1336
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1337
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 958
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 959
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 961
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 618
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 619
    .local v1, pointerId:I
    iget v3, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 623
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 624
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mLastMotionY:F

    .line 625
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mActivePointerId:I

    .line 626
    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 627
    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 630
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 623
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 860
    const/4 v3, 0x1

    .line 862
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v4

    .line 863
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v1

    .line 864
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 865
    .local v0, containerBottom:I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_2

    move v6, v7

    .line 867
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 868
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 869
    move-object v5, p0

    .line 872
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 873
    const/4 v3, 0x0

    .line 879
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 880
    iput-boolean v7, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScrollViewMovedFocus:Z

    .line 881
    iput-boolean v8, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScrollViewMovedFocus:Z

    .line 884
    :cond_1
    return v3

    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    move v6, v8

    .line 865
    goto :goto_0

    .line 875
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 876
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->doScrollY(I)V

    goto :goto_1

    .line 875
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1131
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1134
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1136
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1138
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1139
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollBy(II)V

    .line 1141
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1152
    invoke-virtual {p0, p1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1153
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1154
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1155
    if-eqz p2, :cond_2

    .line 1156
    invoke-virtual {p0, v2, v0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollBy(II)V

    .line 1161
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1153
    goto :goto_0

    .line 1158
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 227
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 245
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 896
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 897
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 899
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 901
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 903
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 904
    iget-object v7, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 905
    iget-object v7, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 906
    iget-object v7, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 907
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->doScrollY(I)V

    .line 908
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 930
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 937
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getDescendantFocusability()I

    move-result v2

    .line 938
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setDescendantFocusability(I)V

    .line 939
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->requestFocus()Z

    .line 940
    invoke-virtual {p0, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setDescendantFocusability(I)V

    .line 942
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 911
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 913
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 914
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v6

    .line 924
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 927
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->doScrollY(I)V

    goto :goto_0

    .line 915
    :cond_5
    if-ne p1, v10, :cond_4

    .line 916
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 917
    invoke-virtual {p0, v7}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 918
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingBottom()I

    move-result v9

    sub-int v5, v8, v9

    .line 919
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 920
    sub-int v6, v1, v5

    goto :goto_1

    .line 927
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 1080
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1097
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v3

    .line 1098
    .local v3, oldX:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v4

    .line 1099
    .local v4, oldY:I
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsScroller;->getCurrX()I

    move-result v12

    .line 1100
    .local v12, x:I
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsScroller;->getCurrY()I

    move-result v13

    .line 1102
    .local v13, y:I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 1103
    :cond_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollRange()I

    move-result v6

    iget v8, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1105
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->onScrollChanged(IIII)V

    .line 1107
    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollRange()I

    move-result v11

    .line 1108
    .local v11, range:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getOverScrollMode()I

    move-result v10

    .line 1109
    .local v10, overscrollMode:I
    if-eqz v10, :cond_1

    const/4 v0, 0x1

    if-ne v10, v0, :cond_2

    if-lez v11, :cond_2

    .line 1111
    :cond_1
    if-gez v13, :cond_4

    if-ltz v4, :cond_4

    .line 1112
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v1}, Lcom/htc/music/lyrics/widget/LyricsScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->onAbsorb(I)V

    .line 1118
    .end local v10           #overscrollMode:I
    .end local v11           #range:I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->awakenScrollBars()Z

    .line 1121
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->postInvalidate()V

    .line 1123
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_3
    return-void

    .line 1113
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v10       #overscrollMode:I
    .restart local v11       #range:I
    .restart local v12       #x:I
    .restart local v13       #y:I
    :cond_4
    if-le v13, v11, :cond_2

    if-gt v4, v11, :cond_2

    .line 1114
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v1}, Lcom/htc/music/lyrics/widget/LyricsScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->onAbsorb(I)V

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1173
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1227
    :cond_0
    :goto_0
    return v6

    .line 1175
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v3

    .line 1176
    .local v3, height:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v5

    .line 1177
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1179
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1182
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1183
    add-int/2addr v5, v2

    .line 1187
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1188
    sub-int/2addr v4, v2

    .line 1191
    :cond_3
    const/4 v6, 0x0

    .line 1193
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1198
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1200
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1207
    :goto_1
    invoke-virtual {p0, v7}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1208
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1209
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1211
    goto :goto_0

    .line 1203
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1211
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1216
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1218
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1225
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1221
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1046
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1026
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v1

    .line 1027
    .local v1, count:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingTop()I

    move-result v6

    sub-int v0, v5, v6

    .line 1028
    .local v0, contentHeight:I
    if-nez v1, :cond_0

    .line 1041
    .end local v0           #contentHeight:I
    :goto_0
    return v0

    .line 1032
    .restart local v0       #contentHeight:I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1033
    .local v3, scrollRange:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v4

    .line 1034
    .local v4, scrollY:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1035
    .local v2, overscrollBottom:I
    if-gez v4, :cond_2

    .line 1036
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1041
    goto :goto_0

    .line 1037
    :cond_2
    if-le v4, v2, :cond_1

    .line 1038
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1429
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1430
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    if-eqz v4, :cond_3

    .line 1431
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v2

    .line 1432
    .local v2, scrollY:I
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v4}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1434
    .local v1, restoreCount:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getWidth()I

    move-result v3

    .line 1436
    .local v3, width:I
    neg-int v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1437
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->setSize(II)V

    .line 1438
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v4, p1}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->invalidate()V

    .line 1441
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1443
    .end local v1           #restoreCount:I
    .end local v3           #width:I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v4}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1444
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1445
    .restart local v1       #restoreCount:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getWidth()I

    move-result v3

    .line 1446
    .restart local v3       #width:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v0

    .line 1448
    .local v0, height:I
    neg-int v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1449
    const/high16 v4, 0x4334

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1450
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v0}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->setSize(II)V

    .line 1451
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v4, p1}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1452
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->invalidate()V

    .line 1454
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1457
    .end local v0           #height:I
    .end local v1           #restoreCount:I
    .end local v2           #scrollY:I
    .end local v3           #width:I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 343
    iget-object v6, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 345
    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 346
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 349
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 351
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 381
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 358
    :cond_2
    const/4 v1, 0x0

    .line 359
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 360
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 381
    goto :goto_0

    .line 362
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 363
    invoke-virtual {p0, v4}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 365
    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->fullScroll(I)Z

    move-result v1

    .line 367
    goto :goto_1

    .line 369
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 370
    invoke-virtual {p0, v5}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 372
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->fullScroll(I)Z

    move-result v1

    .line 374
    goto :goto_1

    .line 376
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 360
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 15
    .parameter "velocityY"

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1349
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingTop()I

    move-result v1

    sub-int v12, v0, v1

    .line 1350
    .local v12, height:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1352
    .local v11, bottom:I
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    sub-int v8, v11, v12

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v9, 0x0

    div-int/lit8 v10, v12, 0x2

    move/from16 v4, p1

    invoke-virtual/range {v0 .. v10}, Lcom/htc/music/lyrics/widget/LyricsScroller;->fling(IIIIIIIIII)V

    .line 1355
    if-lez p1, :cond_3

    const/4 v13, 0x1

    .line 1357
    .local v13, movingDown:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsScroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v13, v0, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 1359
    .local v14, newFocused:Landroid/view/View;
    if-nez v14, :cond_0

    .line 1360
    move-object v14, p0

    .line 1363
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v14, v0, :cond_1

    if-eqz v13, :cond_4

    const/16 v0, 0x82

    :goto_1
    invoke-virtual {v14, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScrollViewMovedFocus:Z

    .line 1366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScrollViewMovedFocus:Z

    .line 1369
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->invalidate()V

    .line 1371
    .end local v11           #bottom:I
    .end local v12           #height:I
    .end local v13           #movingDown:Z
    .end local v14           #newFocused:Landroid/view/View;
    :cond_2
    return-void

    .line 1355
    .restart local v11       #bottom:I
    .restart local v12       #height:I
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 1363
    .restart local v13       #movingDown:Z
    .restart local v14       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x21

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 828
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 829
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v2

    .line 831
    .local v2, height:I
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 832
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 834
    if-eqz v1, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v0

    .line 836
    .local v0, count:I
    if-lez v0, :cond_0

    .line 837
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 838
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 839
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 843
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 828
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 176
    const/4 v3, 0x0

    .line 186
    :goto_0
    return v3

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 180
    .local v1, length:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 181
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 182
    .local v2, span:I
    if-ge v2, v1, :cond_1

    .line 183
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 186
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 194
    const/high16 v0, 0x3f00

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 170
    :goto_0
    return v1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 166
    .local v0, length:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 170
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1051
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1056
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1059
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1061
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1062
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1067
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1069
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1072
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1075
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1076
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 410
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 482
    :goto_0
    return v0

    .line 414
    :cond_0
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 482
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 425
    :pswitch_1
    iget v8, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mActivePointerId:I

    .line 426
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_1

    .line 431
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 432
    .local v9, pointerIndex:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 433
    .local v10, y:F
    iget v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mLastMotionY:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v11, v1

    .line 434
    .local v11, yDiff:I
    iget v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTouchSlop:I

    if-le v11, v1, :cond_1

    .line 435
    iput-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    .line 436
    iput v10, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mLastMotionY:F

    goto :goto_1

    .line 442
    .end local v8           #activePointerId:I
    .end local v9           #pointerIndex:I
    .end local v10           #y:F
    .end local v11           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 443
    .restart local v10       #y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    float-to-int v2, v10

    invoke-direct {p0, v1, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 444
    iput-boolean v3, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 452
    :cond_2
    iput v10, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mLastMotionY:F

    .line 453
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mActivePointerId:I

    .line 460
    iget-object v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v1}, Lcom/htc/music/lyrics/widget/LyricsScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    move v3, v0

    :cond_3
    iput-boolean v3, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 467
    .end local v10           #y:F
    :pswitch_3
    iput-boolean v3, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    .line 468
    iput v2, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mActivePointerId:I

    .line 469
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v2

    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/lyrics/widget/LyricsScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->invalidate()V

    goto :goto_1

    .line 474
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1297
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsLayoutDirty:Z

    .line 1300
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1303
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1306
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollTo(II)V

    .line 1307
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 301
    iget-boolean v6, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 306
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 311
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getMeasuredHeight()I

    move-result v3

    .line 313
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 314
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 316
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 318
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    .line 319
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    .line 320
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 323
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 636
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v0}, Lcom/htc/music/lyrics/widget/LyricsScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    invoke-virtual {p0, p1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setScrollX(I)V

    .line 638
    invoke-virtual {p0, p2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->setScrollY(I)V

    .line 639
    if-eqz p4, :cond_0

    .line 640
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v2

    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/lyrics/widget/LyricsScroller;->springBack(IIIIII)Z

    .line 645
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->awakenScrollBars()Z

    .line 646
    return-void

    .line 643
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1257
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1258
    const/16 p1, 0x82

    .line 1263
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1268
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1276
    :cond_1
    :goto_2
    return v1

    .line 1259
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1260
    const/16 p1, 0x21

    goto :goto_0

    .line 1263
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1272
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1276
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1313
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1314
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1326
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1321
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1322
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1323
    iget-object v2, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1324
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .parameter "ev"

    .prologue
    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    const/4 v3, 0x0

    .line 612
    :goto_0
    return v3

    .line 494
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 495
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 497
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    .line 501
    .local v24, action:I
    move/from16 v0, v24

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 612
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 503
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    .line 504
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    .line 505
    const/4 v3, 0x0

    goto :goto_0

    .line 503
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 512
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsScroller;->abortAnimation()V

    .line 517
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mLastMotionY:F

    .line 518
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mActivePointerId:I

    goto :goto_1

    .line 522
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 524
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v25

    .line 525
    .local v25, activePointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v32

    .line 526
    .local v32, y:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mLastMotionY:F

    sub-float v3, v3, v32

    float-to-int v5, v3

    .line 527
    .local v5, deltaY:I
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mLastMotionY:F

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v27

    .line 530
    .local v27, oldX:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v28

    .line 531
    .local v28, oldY:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollRange()I

    move-result v9

    .line 532
    .local v9, range:I
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 537
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->onScrollChanged(IIII)V

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getOverScrollMode()I

    move-result v29

    .line 540
    .local v29, overscrollMode:I
    if-eqz v29, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_2

    if-lez v9, :cond_2

    .line 542
    :cond_7
    add-int v30, v28, v5

    .line 543
    .local v30, pulledToY:I
    if-gez v30, :cond_a

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->onPull(F)V

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->onRelease()V

    .line 554
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 556
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->invalidate()V

    goto/16 :goto_1

    .line 548
    :cond_a
    move/from16 v0, v30

    if-le v0, v9, :cond_8

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->onPull(F)V

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->onRelease()V

    goto :goto_3

    .line 562
    .end local v5           #deltaY:I
    .end local v9           #range:I
    .end local v25           #activePointerIndex:I
    .end local v27           #oldX:I
    .end local v28           #oldY:I
    .end local v29           #overscrollMode:I
    .end local v30           #pulledToY:I
    .end local v32           #y:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v31, v0

    .line 564
    .local v31, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 565
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mActivePointerId:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v26, v0

    .line 567
    .local v26, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 568
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_d

    .line 569
    move/from16 v0, v26

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->fling(I)V

    .line 578
    :cond_b
    :goto_4
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mActivePointerId:I

    .line 579
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_c

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 583
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 585
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    if-eqz v3, :cond_2

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->onRelease()V

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->onRelease()V

    goto/16 :goto_1

    .line 571
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollRange()I

    move-result v16

    .line 572
    .local v16, bottom:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/htc/music/lyrics/widget/LyricsScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->invalidate()V

    goto :goto_4

    .line 592
    .end local v16           #bottom:I
    .end local v26           #initialVelocity:I
    .end local v31           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollRange()I

    move-result v23

    invoke-virtual/range {v17 .. v23}, Lcom/htc/music/lyrics/widget/LyricsScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->invalidate()V

    .line 596
    :cond_e
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mActivePointerId:I

    .line 597
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsBeingDragged:Z

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_f

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 600
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 602
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    if-eqz v3, :cond_2

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->onRelease()V

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-virtual {v3}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->onRelease()V

    goto/16 :goto_1

    .line 609
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 792
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 793
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v2

    .line 795
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 796
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 797
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v0

    .line 798
    .local v0, count:I
    if-lez v0, :cond_0

    .line 799
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 800
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 801
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 810
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 812
    iget-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 792
    goto :goto_0

    .line 805
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 806
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 807
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1232
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1233
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1234
    invoke-direct {p0, p2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1240
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1241
    return-void

    .line 1237
    :cond_1
    iput-object p2, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1283
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1286
    invoke-direct {p0, p2, p3}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mIsLayoutDirty:Z

    .line 1292
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1293
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1381
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1382
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1383
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->clamp(III)I

    move-result p1

    .line 1384
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->clamp(III)I

    move-result p2

    .line 1385
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 1386
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1389
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public scrollToImmediately(II)V
    .locals 2
    .parameter "xTo"
    .parameter "yTo"

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsScroller;->setDuration(I)V

    .line 1399
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollTo(II)V

    .line 1400
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    iget v1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mDuration:I

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsScroller;->setDuration(I)V

    .line 1401
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 277
    iput-boolean p1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mFillViewport:Z

    .line 278
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->requestLayout()V

    .line 280
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 1411
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 1412
    iget-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    if-nez v3, :cond_0

    .line 1413
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1415
    .local v2, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 1416
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1417
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-direct {v3, v0, v1}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    .line 1418
    new-instance v3, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    invoke-direct {v3, v0, v1}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    .line 1424
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1425
    return-void

    .line 1421
    :cond_1
    iput-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowTop:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    .line 1422
    iput-object v4, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mEdgeGlowBottom:Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;

    goto :goto_0
.end method

.method public setScrollDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 1405
    iput p1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mDuration:I

    .line 1406
    iget-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v0, p1}, Lcom/htc/music/lyrics/widget/LyricsScroller;->setDuration(I)V

    .line 1407
    return-void
.end method

.method public setScrollY(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1394
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScrollY(I)V

    .line 1395
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mSmoothScrollingEnabled:Z

    .line 295
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 987
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 992
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 993
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getPaddingTop()I

    move-result v7

    sub-int v3, v6, v7

    .line 994
    .local v3, height:I
    invoke-virtual {p0, v10}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 995
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 996
    .local v4, maxY:I
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v5

    .line 997
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 999
    iget-object v6, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {v6, v7, v5, v10, p2}, Lcom/htc/music/lyrics/widget/LyricsScroller;->startScroll(IIII)V

    .line 1000
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->invalidate()V

    .line 1007
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #maxY:I
    .end local v5           #scrollY:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mLastScroll:J

    goto :goto_0

    .line 1002
    :cond_1
    iget-object v6, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v6}, Lcom/htc/music/lyrics/widget/LyricsScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1003
    iget-object v6, p0, Lcom/htc/music/lyrics/widget/LyricsScrollView;->mScroller:Lcom/htc/music/lyrics/widget/LyricsScroller;

    invoke-virtual {v6}, Lcom/htc/music/lyrics/widget/LyricsScroller;->abortAnimation()V

    .line 1005
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/lyrics/widget/LyricsScrollView;->smoothScrollBy(II)V

    .line 1018
    return-void
.end method
