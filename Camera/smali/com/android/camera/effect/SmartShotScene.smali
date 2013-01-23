.class public Lcom/android/camera/effect/SmartShotScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "SmartShotScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# instance fields
.field private m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 20
    const-string v0, "smartshot"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 21
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v0, p0, Lcom/android/camera/effect/SmartShotScene;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return v1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/SmartShotScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "Smart Shot UI"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/SmartShotUI;

    iput-object v0, p0, Lcom/android/camera/effect/SmartShotScene;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    .line 77
    iget-object v0, p0, Lcom/android/camera/effect/SmartShotScene;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

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
    .line 29
    invoke-direct {p0}, Lcom/android/camera/effect/SmartShotScene;->linkToComponents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to smartshot UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/SmartShotScene;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    invoke-virtual {v0}, Lcom/android/camera/component/SmartShotUI;->enterSmartShotMode()V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "nextEffect"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/camera/effect/SmartShotScene;->linkToComponents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to smart shot UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/SmartShotScene;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    invoke-virtual {v0}, Lcom/android/camera/component/SmartShotUI;->exitSmartShotMode()V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x11

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
