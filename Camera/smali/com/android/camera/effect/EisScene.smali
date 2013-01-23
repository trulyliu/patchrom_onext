.class public final Lcom/android/camera/effect/EisScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "EisScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# instance fields
.field private m_EisUI:Lcom/android/camera/component/EisUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 20
    const-string v0, "EIS Scene"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 21
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 53
    iget-object v0, p0, Lcom/android/camera/effect/EisScene;->m_EisUI:Lcom/android/camera/component/EisUI;

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return v1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EisScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/android/camera/component/EisUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/EisUI;

    iput-object v0, p0, Lcom/android/camera/effect/EisScene;->m_EisUI:Lcom/android/camera/component/EisUI;

    .line 56
    iget-object v0, p0, Lcom/android/camera/effect/EisScene;->m_EisUI:Lcom/android/camera/component/EisUI;

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
    invoke-direct {p0}, Lcom/android/camera/effect/EisScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/camera/effect/EisScene;->m_EisUI:Lcom/android/camera/component/EisUI;

    invoke-virtual {v0}, Lcom/android/camera/component/EisUI;->enterEisMode()V

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to Eis UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "nextEffect"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/effect/EisScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/camera/effect/EisScene;->m_EisUI:Lcom/android/camera/component/EisUI;

    invoke-virtual {v0}, Lcom/android/camera/component/EisUI;->exitEisMode()V

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to Eis UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x51

    return v0
.end method
