.class public Lcom/htc/music/util/FloatUtils;
.super Ljava/lang/Object;
.source "FloatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/FloatUtils$Vector3f;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED:F = 4.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method

.method public static final animate(FFF)F
    .locals 1
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 25
    const/high16 v0, 0x4080

    mul-float/2addr p2, v0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/htc/music/util/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    return v0
.end method

.method public static final animate(Lcom/htc/music/util/FloatUtils$Vector3f;Lcom/htc/music/util/FloatUtils$Vector3f;F)V
    .locals 2
    .parameter "animVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 50
    const/high16 v0, 0x4080

    mul-float/2addr p2, v0

    .line 51
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    invoke-static {v0, v1, p2}, Lcom/htc/music/util/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    .line 52
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    invoke-static {v0, v1, p2}, Lcom/htc/music/util/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    .line 53
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    invoke-static {v0, v1, p2}, Lcom/htc/music/util/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    .line 54
    return-void
.end method

.method private static final animateAfterFactoringSpeed(FFF)F
    .locals 3
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 156
    cmpl-float v1, p0, p1

    if-nez v1, :cond_1

    .line 170
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 158
    .restart local p1
    :cond_1
    sub-float v1, p1, p0

    mul-float/2addr v1, p2

    add-float v0, p0, v1

    .line 159
    .local v0, newVal:F
    sub-float v1, v0, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 161
    cmpl-float v1, v0, p0

    if-eqz v1, :cond_0

    .line 165
    cmpl-float v1, p0, p1

    if-lez v1, :cond_2

    cmpg-float v1, v0, p1

    if-ltz v1, :cond_0

    .line 167
    :cond_2
    cmpg-float v1, p0, p1

    if-gez v1, :cond_3

    cmpl-float v1, v0, p1

    if-gtz v1, :cond_0

    :cond_3
    move p1, v0

    .line 170
    goto :goto_0
.end method

.method public static final animateWithMaxSpeed(FFFF)F
    .locals 3
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"
    .parameter "maxSpeed"

    .prologue
    .line 30
    move v1, p1

    .line 31
    .local v1, newTargetVal:F
    sub-float v0, v1, p0

    .line 32
    .local v0, delta:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p3

    if-lez v2, :cond_0

    .line 33
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, p3

    add-float v1, p0, v2

    .line 35
    :cond_0
    const/high16 v2, 0x4080

    mul-float/2addr p2, v2

    .line 36
    invoke-static {p0, v1, p2}, Lcom/htc/music/util/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v2

    return v2
.end method

.method public static final boundsContainsPoint(FFFFFF)Z
    .locals 1
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 149
    cmpg-float v0, p4, p0

    if-ltz v0, :cond_0

    cmpl-float v0, p4, p1

    if-gtz v0, :cond_0

    cmpg-float v0, p5, p2

    if-ltz v0, :cond_0

    cmpl-float v0, p5, p3

    if-lez v0, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final clamp(FFF)F
    .locals 1
    .parameter "val"
    .parameter "minVal"
    .parameter "maxVal"

    .prologue
    .line 102
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 107
    .end local p1
    :goto_0
    return p1

    .line 104
    .restart local p1
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 105
    goto :goto_0

    :cond_1
    move p1, p0

    .line 107
    goto :goto_0
.end method

.method public static final clamp(III)I
    .locals 0
    .parameter "val"
    .parameter "minVal"
    .parameter "maxVal"

    .prologue
    .line 122
    if-ge p0, p1, :cond_0

    .line 127
    .end local p1
    :goto_0
    return p1

    .line 124
    .restart local p1
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    .line 125
    goto :goto_0

    :cond_1
    move p1, p0

    .line 127
    goto :goto_0
.end method

.method public static final clampMax(FF)F
    .locals 1
    .parameter "val"
    .parameter "maxVal"

    .prologue
    .line 82
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 85
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method public static final clampMin(FF)F
    .locals 1
    .parameter "val"
    .parameter "minVal"

    .prologue
    .line 66
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 69
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method public static final max(FF)F
    .locals 1
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 176
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 179
    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    move p0, p1

    goto :goto_0
.end method
