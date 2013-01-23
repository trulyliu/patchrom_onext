.class public Lcom/android/camera/rotate/RotateLinearLayout;
.super Lcom/android/camera/widget/LinearLayout;
.source "RotateLinearLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateLinearLayout"


# instance fields
.field private invMatrix:Landroid/graphics/Matrix;

.field private mCurrentOrientation:I

.field private mTempOrientation:I

.field private newRectF:Landroid/graphics/RectF;

.field private rotMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v0, v0, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    iput v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mCurrentOrientation:I

    .line 19
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v0, v0, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    iput v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mTempOrientation:I

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->newRectF:Landroid/graphics/RectF;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v0, v0, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    iput v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mCurrentOrientation:I

    .line 19
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v0, v0, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    iput v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mTempOrientation:I

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->newRectF:Landroid/graphics/RectF;

    .line 39
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    iget-object v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 117
    invoke-super {p0, p1}, Lcom/android/camera/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 119
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 124
    const/4 v4, 0x2

    new-array v0, v4, [F

    .line 125
    .local v0, pos:[F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 126
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 127
    .local v3, y:F
    aput v2, v0, v5

    .line 128
    aput v3, v0, v6

    .line 129
    iget-object v4, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 130
    aget v4, v0, v5

    aget v5, v0, v6

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 132
    invoke-super {p0, p1}, Lcom/android/camera/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 133
    .local v1, result:Z
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 134
    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 140
    iget v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mCurrentOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v0

    .line 141
    .local v0, diff:I
    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 144
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 153
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mCurrentOrientation:I

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .parameter "location"
    .parameter "rect"

    .prologue
    .line 165
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 166
    iget-object v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->invMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 168
    iget-object v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 169
    invoke-virtual {p0, p2}, Lcom/android/camera/rotate/RotateLinearLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 171
    invoke-super {p0, p1, p2}, Lcom/android/camera/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/camera/widget/LinearLayout;->onAnimationEnd()V

    .line 208
    iget v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mTempOrientation:I

    iput v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mCurrentOrientation:I

    .line 209
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateLinearLayout;->requestLayout()V

    .line 210
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateLinearLayout;->invalidate()V

    .line 211
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mCurrentOrientation:I

    invoke-static {v0}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v6

    .line 47
    .local v6, diff:I
    rem-int/lit8 v0, v6, 0x2

    if-lez v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p5

    move v5, p4

    .line 48
    invoke-super/range {v0 .. v5}, Lcom/android/camera/widget/LinearLayout;->onLayout(ZIIII)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/camera/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 63
    iget v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mCurrentOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v0

    .line 64
    .local v0, diff:I
    rem-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_0

    .line 65
    invoke-super {p0, p2, p1}, Lcom/android/camera/widget/LinearLayout;->onMeasure(II)V

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateLinearLayout;->rotateMeasureMent()V

    .line 72
    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method protected rotateMeasureMent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    iget v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mCurrentOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v0

    .line 78
    .local v0, diff:I
    rem-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateLinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateLinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/rotate/RotateLinearLayout;->setMeasuredDimension(II)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 84
    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 107
    iget-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateLinearLayout;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 109
    return-void

    .line 87
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 88
    iget-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b4

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 92
    iget-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateLinearLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x4334

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 96
    iget-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateLinearLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateLinearLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x4387

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 100
    iget-object v1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateLinearLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 183
    iget v0, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mCurrentOrientation:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iput p1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mCurrentOrientation:I

    .line 189
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateLinearLayout;->requestLayout()V

    .line 190
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateLinearLayout;->invalidate()V

    goto :goto_0
.end method

.method public setOrientationDelay(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 176
    iput p1, p0, Lcom/android/camera/rotate/RotateLinearLayout;->mTempOrientation:I

    .line 179
    return-void
.end method

.method public final setRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 196
    iget v0, p1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-virtual {p0, v0}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    .line 197
    return-void
.end method
