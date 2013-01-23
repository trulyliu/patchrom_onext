.class public final Lcom/android/camera/effect/ContinuousBurstScene;
.super Lcom/android/camera/effect/EffectBase;
.source "ContinuousBurstScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# instance fields
.field private m_UI:Lcom/android/camera/component/ContinuousBurstUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 19
    const-string v0, "continuous-burst"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 20
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-object v0, p0, Lcom/android/camera/effect/ContinuousBurstScene;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return v1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/ContinuousBurstScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "Continuous Burst UI"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/ContinuousBurstUI;

    iput-object v0, p0, Lcom/android/camera/effect/ContinuousBurstScene;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    .line 92
    iget-object v0, p0, Lcom/android/camera/effect/ContinuousBurstScene;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "prevEffect"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/effect/ContinuousBurstScene;->linkToComponents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/ContinuousBurstScene;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->enter()V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "nextEffect"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/effect/ContinuousBurstScene;->linkToComponents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/ContinuousBurstScene;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->exit()V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x11

    return v0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public isSelfTimerSupported()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method
