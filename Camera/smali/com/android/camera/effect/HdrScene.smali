.class public final Lcom/android/camera/effect/HdrScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "HdrScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# instance fields
.field private m_HdrUI:Lcom/android/camera/component/HdrUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 19
    const-string v0, "hdr"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 20
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 69
    iget-object v0, p0, Lcom/android/camera/effect/HdrScene;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return v1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/HdrScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "HDR UI"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/HdrUI;

    iput-object v0, p0, Lcom/android/camera/effect/HdrScene;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    .line 72
    iget-object v0, p0, Lcom/android/camera/effect/HdrScene;->m_HdrUI:Lcom/android/camera/component/HdrUI;

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
    .line 28
    invoke-direct {p0}, Lcom/android/camera/effect/HdrScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/camera/effect/HdrScene;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    invoke-virtual {v0}, Lcom/android/camera/component/HdrUI;->enterHdrMode()V

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to HDR UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "nextEffect"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/effect/HdrScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/HdrScene;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    invoke-virtual {v0}, Lcom/android/camera/component/HdrUI;->exitHdrMode()V

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to HDR UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x51

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method
