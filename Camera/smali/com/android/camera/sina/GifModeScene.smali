.class public final Lcom/android/camera/sina/GifModeScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "GifModeScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# static fields
.field public static final SINA_CAMERA_GIF_MODE_NAME:Ljava/lang/String; = "gifmode"


# instance fields
.field private SinaCamera_prvScene:Lcom/android/camera/effect/EffectBase;

.field private m_UI:Lcom/android/camera/sina/GifModeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 23
    const-string v0, "gifmode"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 55
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 126
    iget-object v0, p0, Lcom/android/camera/sina/GifModeScene;->m_UI:Lcom/android/camera/sina/GifModeUI;

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return v1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "Gif Mode UI"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/sina/GifModeUI;

    iput-object v0, p0, Lcom/android/camera/sina/GifModeScene;->m_UI:Lcom/android/camera/sina/GifModeUI;

    .line 129
    iget-object v0, p0, Lcom/android/camera/sina/GifModeScene;->m_UI:Lcom/android/camera/sina/GifModeUI;

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
    .line 62
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/sina/GifModeScene;->m_UI:Lcom/android/camera/sina/GifModeUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/sina/GifModeUI;->enterGifMode(Z)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to gif mode UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "nextEffect"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/camera/sina/GifModeScene;->m_UI:Lcom/android/camera/sina/GifModeUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/sina/GifModeUI;->exitGifMode(Z)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to gif mode UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x11

    return v0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isSelfTimerSupported()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
