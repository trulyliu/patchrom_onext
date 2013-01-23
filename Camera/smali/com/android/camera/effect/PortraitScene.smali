.class public final Lcom/android/camera/effect/PortraitScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "PortraitScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 12
    const-string v0, "portrait"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "prevEffect"

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/camera/effect/PortraitScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/effect/PortraitScene$1;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/PortraitScene$1;-><init>(Lcom/android/camera/effect/PortraitScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 30
    invoke-super {p0, p1}, Lcom/android/camera/effect/SceneEffectBase;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 31
    return-void
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "nextEffect"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/camera/effect/PortraitScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/effect/PortraitScene$2;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/PortraitScene$2;-><init>(Lcom/android/camera/effect/PortraitScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 48
    invoke-super {p0, p1}, Lcom/android/camera/effect/SceneEffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 49
    return-void
.end method
