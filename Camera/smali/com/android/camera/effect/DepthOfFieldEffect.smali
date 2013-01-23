.class public final Lcom/android/camera/effect/DepthOfFieldEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "DepthOfFieldEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# static fields
.field private static final DEFAULT_RADIUS:I


# instance fields
.field private m_Center:Landroid/graphics/PointF;

.field private m_Radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x400199999999999aL

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/android/camera/effect/DepthOfFieldEffect;->DEFAULT_RADIUS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "cameraActivity"

    .prologue
    const/high16 v1, 0x3f00

    .line 23
    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    .line 16
    sget v0, Lcom/android/camera/effect/DepthOfFieldEffect;->DEFAULT_RADIUS:I

    iput v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Radius:I

    .line 24
    return-void
.end method

.method private getGpuEffectParameters(Landroid/graphics/PointF;I)Lcom/android/camera/effect/GpuEffectParameters;
    .locals 7
    .parameter "center"
    .parameter "radius"

    .prologue
    .line 51
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 52
    .local v2, x:I
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 53
    .local v3, y:I
    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    add-int v4, v2, p2

    const/4 v6, 0x1

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    return-object v0
.end method


# virtual methods
.method protected getAppliedGpuEffectInfo()Lcom/android/camera/effect/GpuEffectInfo;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v7, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v8, "2_dof"

    const/4 v0, 0x2

    new-array v9, v0, [Lcom/android/camera/effect/GpuEffectParameters;

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/16 v2, 0x64

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v9, v3

    iget-object v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Radius:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/DepthOfFieldEffect;->getGpuEffectParameters(Landroid/graphics/PointF;I)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v0

    aput-object v0, v9, v6

    invoke-direct {v7, v8, v9}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    return-object v7
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Radius:I

    return v0
.end method

.method protected resetParametersOverride()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/effect/DepthOfFieldEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->setCenter(Landroid/graphics/PointF;)V

    .line 73
    sget v0, Lcom/android/camera/effect/DepthOfFieldEffect;->DEFAULT_RADIUS:I

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->setRadius(I)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 78
    sget v0, Lcom/android/camera/effect/DepthOfFieldEffect;->DEFAULT_RADIUS:I

    iput v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Radius:I

    goto :goto_0
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1
    .parameter "center"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/effect/DepthOfFieldEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Radius:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->getGpuEffectParameters(Landroid/graphics/PointF;I)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public setRadius(I)V
    .locals 1
    .parameter "radius"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Radius:I

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/effect/DepthOfFieldEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/DepthOfFieldEffect;->getGpuEffectParameters(Landroid/graphics/PointF;I)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)Z

    .line 100
    :cond_0
    return-void
.end method
