.class public abstract Lcom/android/camera/effect/GpuEffectBase;
.super Lcom/android/camera/effect/EffectBase;
.source "GpuEffectBase.java"


# instance fields
.field private final m_ColorEffectName:Ljava/lang/String;

.field private final m_EffectInfo:Lcom/android/camera/effect/GpuEffectInfo;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "name"
    .parameter "cameraActivity"

    .prologue
    .line 22
    const-string v0, "none"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;Lcom/android/camera/effect/GpuEffectInfo;)V

    .line 23
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/GpuEffectInfo;)V
    .locals 1
    .parameter "name"
    .parameter "cameraActivity"
    .parameter "effectInfo"

    .prologue
    .line 26
    const-string v0, "none"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;Lcom/android/camera/effect/GpuEffectInfo;)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;Lcom/android/camera/effect/GpuEffectInfo;)V
    .locals 0
    .parameter "name"
    .parameter "cameraActivity"
    .parameter "colorEffectName"
    .parameter "effectInfo"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 31
    iput-object p3, p0, Lcom/android/camera/effect/GpuEffectBase;->m_ColorEffectName:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/android/camera/effect/GpuEffectBase;->m_EffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    .line 33
    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 4
    .parameter "prevEffect"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->getEffectController()Lcom/android/camera/effect/IEffectController;

    move-result-object v0

    .line 42
    .local v0, controller:Lcom/android/camera/effect/IEffectController;
    if-eqz v0, :cond_0

    .line 44
    iget-object v2, p0, Lcom/android/camera/effect/GpuEffectBase;->m_ColorEffectName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->getAppliedGpuEffectInfo()Lcom/android/camera/effect/GpuEffectInfo;

    move-result-object v1

    .line 46
    .local v1, effectInfo:Lcom/android/camera/effect/GpuEffectInfo;
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    .line 51
    .end local v1           #effectInfo:Lcom/android/camera/effect/GpuEffectInfo;
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v1       #effectInfo:Lcom/android/camera/effect/GpuEffectInfo;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "nextEffect"

    .prologue
    .line 58
    return-void
.end method

.method protected getAppliedGpuEffectInfo()Lcom/android/camera/effect/GpuEffectInfo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_EffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 2

    .prologue
    .line 73
    const/16 v0, 0x2a

    .line 74
    .local v0, notSupportedCapabilities:I
    const v1, 0x7fffffd5

    return v1
.end method

.method protected prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 0
    .parameter "prevEffect"
    .parameter "flags"

    .prologue
    .line 83
    if-eq p1, p0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->resetParametersOverride()V

    .line 85
    :cond_0
    return-void
.end method

.method protected final setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)Z
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p1, :cond_0

    .line 94
    const-string v2, "parameters"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 109
    :goto_0
    return v1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->isApplied()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->getEffectController()Lcom/android/camera/effect/IEffectController;

    move-result-object v0

    .line 100
    .local v0, controller:Lcom/android/camera/effect/IEffectController;
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/IEffectController;->setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)V

    .line 103
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "setGpuEffectParameters() - No effect controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v0           #controller:Lcom/android/camera/effect/IEffectController;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "setGpuEffectParameters() - Effect is not applied"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
