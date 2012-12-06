.class public Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;
.super Ljava/lang/Object;
.source "LyricsEdgeGlow.java"


# static fields
.field private static final EPSILON:F = 0.0010f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field private static final MAX_GLOW_HEIGHT:F = 3.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x5

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x5

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeGlow"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "edge"
    .parameter "glow"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    .line 104
    iput-object p1, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object p2, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 107
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 269
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 270
    .local v3, time:J
    iget-wide v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 272
    .local v2, t:F
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 274
    .local v1, interp:F
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaStart:F

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaFinish:F

    iget v7, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlpha:F

    .line 275
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleY:F

    .line 276
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaStart:F

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaFinish:F

    iget v7, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlpha:F

    .line 277
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYStart:F

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYFinish:F

    iget v7, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleY:F

    .line 279
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 280
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 282
    :pswitch_0
    iput v11, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    .line 283
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mStartTime:J

    .line 284
    iput v10, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mDuration:F

    .line 286
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlpha:F

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaStart:F

    .line 287
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleY:F

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYStart:F

    .line 288
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlpha:F

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaStart:F

    .line 289
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleY:F

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYStart:F

    .line 292
    iput v8, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaFinish:F

    .line 293
    iput v8, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYFinish:F

    .line 294
    iput v8, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaFinish:F

    .line 295
    iput v8, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYFinish:F

    goto :goto_0

    .line 298
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    .line 299
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mStartTime:J

    .line 300
    iput v10, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mDuration:F

    .line 302
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlpha:F

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaStart:F

    .line 303
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleY:F

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYStart:F

    .line 304
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlpha:F

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaStart:F

    .line 305
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleY:F

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYStart:F

    .line 308
    iput v8, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaFinish:F

    .line 309
    iput v8, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYFinish:F

    .line 310
    iput v8, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaFinish:F

    .line 311
    iput v8, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYFinish:F

    goto :goto_0

    .line 316
    :pswitch_2
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 319
    .local v0, factor:F
    :goto_1
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleY:F

    .line 322
    iput v11, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    goto :goto_0

    .line 316
    .end local v0           #factor:F
    :cond_1
    const v0, 0x7f7fffff

    goto :goto_1

    .line 325
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    const/high16 v13, 0x437f

    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 245
    invoke-direct {p0}, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->update()V

    .line 246
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    .line 247
    :cond_0
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    if-eqz v5, :cond_2

    .line 265
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v4

    .line 247
    goto :goto_0

    .line 249
    :cond_3
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 250
    .local v1, edgeHeight:I
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 252
    .local v2, glowHeight:I
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mWidth:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 254
    .local v0, distScale:F
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlpha:F

    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v13

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 257
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mWidth:I

    neg-int v6, v6

    iget v7, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mWidth:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v8, v2

    iget v9, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleY:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v0

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x4040

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 259
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlpha:F

    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v13

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 262
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mWidth:I

    int-to-float v7, v1

    iget v8, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleY:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    iget-object v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    if-nez v5, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    .line 121
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 201
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    .line 202
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 204
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mStartTime:J

    .line 205
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mDuration:F

    .line 209
    iput v3, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaStart:F

    .line 210
    iput v3, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYStart:F

    iput v3, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleY:F

    .line 213
    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaStart:F

    .line 214
    iput v3, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYStart:F

    .line 218
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaFinish:F

    .line 220
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYFinish:F

    .line 227
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYFinish:F

    .line 229
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaFinish:F

    .line 231
    return-void
.end method

.method public onPull(F)V
    .locals 11
    .parameter "deltaDistance"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40a0

    const/high16 v8, 0x3f80

    const v6, 0x3f4ccccd

    const/4 v7, 0x0

    .line 129
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 130
    .local v2, now:J
    iget v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 168
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    if-eq v4, v10, :cond_1

    .line 134
    iput v8, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleY:F

    .line 136
    :cond_1
    iput v10, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    .line 138
    iput-wide v2, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mStartTime:J

    .line 139
    const/high16 v4, 0x4327

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mDuration:F

    .line 141
    iget v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mPullDistance:F

    .line 142
    iget v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 144
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaStart:F

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlpha:F

    .line 145
    const/high16 v4, 0x3f00

    mul-float v5, v0, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYStart:F

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleY:F

    .line 148
    iget v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaStart:F

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlpha:F

    .line 152
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 153
    .local v1, glowChange:F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    iget v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 154
    neg-float v1, v1

    .line 156
    :cond_2
    iget v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    .line 157
    iput v7, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleY:F

    .line 161
    :cond_3
    const/high16 v4, 0x4040

    iget v5, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYStart:F

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleY:F

    .line 164
    iget v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlpha:F

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaFinish:F

    .line 165
    iget v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleY:F

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYFinish:F

    .line 166
    iget v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlpha:F

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaFinish:F

    .line 167
    iget v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleY:F

    iput v4, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYFinish:F

    goto/16 :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iput v2, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mPullDistance:F

    .line 176
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mState:I

    .line 181
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlpha:F

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaStart:F

    .line 182
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleY:F

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYStart:F

    .line 183
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlpha:F

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaStart:F

    .line 184
    iget v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleY:F

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYStart:F

    .line 186
    iput v2, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeAlphaFinish:F

    .line 187
    iput v2, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mEdgeScaleYFinish:F

    .line 188
    iput v2, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowAlphaFinish:F

    .line 189
    iput v2, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mGlowScaleYFinish:F

    .line 191
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mStartTime:J

    .line 192
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mDuration:F

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 111
    iput p1, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mWidth:I

    .line 112
    iput p2, p0, Lcom/htc/music/lyrics/widget/LyricsEdgeGlow;->mHeight:I

    .line 113
    return-void
.end method
