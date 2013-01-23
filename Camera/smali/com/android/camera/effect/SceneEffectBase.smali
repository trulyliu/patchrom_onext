.class public abstract Lcom/android/camera/effect/SceneEffectBase;
.super Lcom/android/camera/effect/EffectBase;
.source "SceneEffectBase.java"


# static fields
.field private static m_FrontCameraSceneSupportedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_MainCameraSceneSupportedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_SceneController:Lcom/android/camera/effect/ISceneController;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "name"
    .parameter "cameraActivity"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "prevEffect"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/camera/effect/SceneEffectBase;->linkToSceneController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/camera/effect/SceneEffectBase;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0}, Lcom/android/camera/effect/SceneEffectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find scene controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "nextEffect"

    .prologue
    .line 44
    return-void
.end method

.method public getCapabilities()I
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/camera/effect/SceneEffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    .line 55
    .local v1, isFrontCamera:Z
    if-nez v1, :cond_2

    .line 57
    sget-object v3, Lcom/android/camera/effect/SceneEffectBase;->m_MainCameraSceneSupportedList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 58
    sget-object v3, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    sput-object v3, Lcom/android/camera/effect/SceneEffectBase;->m_MainCameraSceneSupportedList:Ljava/util/List;

    .line 59
    :cond_0
    sget-object v2, Lcom/android/camera/effect/SceneEffectBase;->m_MainCameraSceneSupportedList:Ljava/util/List;

    .line 67
    .local v2, supportedEffects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-nez v2, :cond_4

    .line 69
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Cannot get scene supported list"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    .line 83
    :cond_1
    :goto_1
    return v0

    .line 63
    .end local v2           #supportedEffects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    sget-object v3, Lcom/android/camera/effect/SceneEffectBase;->m_FrontCameraSceneSupportedList:Ljava/util/List;

    if-nez v3, :cond_3

    .line 64
    sget-object v3, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    sput-object v3, Lcom/android/camera/effect/SceneEffectBase;->m_FrontCameraSceneSupportedList:Ljava/util/List;

    .line 65
    :cond_3
    sget-object v2, Lcom/android/camera/effect/SceneEffectBase;->m_FrontCameraSceneSupportedList:Ljava/util/List;

    .restart local v2       #supportedEffects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 74
    :cond_4
    const v0, 0x7fffffff

    .line 75
    .local v0, capabilities:I
    invoke-virtual {p0}, Lcom/android/camera/effect/SceneEffectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    and-int/lit8 v0, v0, -0x71

    .line 78
    if-nez v1, :cond_5

    .line 79
    and-int/lit8 v0, v0, -0x4

    goto :goto_1

    .line 81
    :cond_5
    and-int/lit8 v0, v0, -0xd

    goto :goto_1
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x20

    return v0
.end method

.method protected final getSceneController()Lcom/android/camera/effect/ISceneController;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/effect/SceneEffectBase;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    return-object v0
.end method

.method protected final linkToSceneController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 107
    iget-object v0, p0, Lcom/android/camera/effect/SceneEffectBase;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/SceneEffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/ISceneController;

    iput-object v0, p0, Lcom/android/camera/effect/SceneEffectBase;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    .line 110
    iget-object v0, p0, Lcom/android/camera/effect/SceneEffectBase;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public releaseCachedResources()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/SceneEffectBase;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    .line 120
    invoke-super {p0}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    .line 121
    return-void
.end method
