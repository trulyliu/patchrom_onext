.class public final Lcom/android/camera/effect/DotsEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "DotsEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# instance fields
.field private m_DotSize:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 18
    const-string v0, "dots"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 11
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/camera/effect/DotsEffect;->m_DotSize:I

    .line 19
    return-void
.end method

.method private getDotSizeParameters(I)Lcom/android/camera/effect/GpuEffectParameters;
    .locals 7
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/4 v6, 0x1

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    return-object v0
.end method


# virtual methods
.method protected getAppliedGpuEffectInfo()Lcom/android/camera/effect/GpuEffectInfo;
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v1, "5_dots"

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/effect/GpuEffectParameters;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/effect/DotsEffect;->m_DotSize:I

    invoke-direct {p0, v4}, Lcom/android/camera/effect/DotsEffect;->getDotSizeParameters(I)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    return-object v0
.end method

.method public getDotSize()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/effect/DotsEffect;->m_DotSize:I

    return v0
.end method

.method protected resetParametersOverride()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 54
    invoke-virtual {p0}, Lcom/android/camera/effect/DotsEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/camera/effect/DotsEffect;->setDotSize(I)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iput v1, p0, Lcom/android/camera/effect/DotsEffect;->m_DotSize:I

    goto :goto_0
.end method

.method public setDotSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/effect/DotsEffect;->m_DotSize:I

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/effect/DotsEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/camera/effect/DotsEffect;->getDotSizeParameters(I)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/DotsEffect;->setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)Z

    .line 68
    :cond_0
    return-void
.end method
