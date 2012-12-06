.class public Lcom/htc/music/lyrics/widget/LyricsScroller;
.super Landroid/widget/OverScroller;
.source "LyricsScroller.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0x1f4


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 37
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsScroller;->mDuration:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 37
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsScroller;->mDuration:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V

    .line 37
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsScroller;->mDuration:I

    .line 50
    return-void
.end method


# virtual methods
.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 53
    iput p1, p0, Lcom/htc/music/lyrics/widget/LyricsScroller;->mDuration:I

    .line 54
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 57
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/music/lyrics/widget/LyricsScroller;->startScroll(IIIII)V

    .line 58
    return-void
.end method
