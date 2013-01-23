.class public abstract Lcom/android/camera/effect/IEffectController;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IEffectController.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V
    .locals 0
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraThread"
    .parameter "hasWorkerThread"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    .line 19
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
    .locals 0
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "hasWorkerThread"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public final setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public abstract setColorEffect(Ljava/lang/String;Z)V
.end method

.method public final setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V
    .locals 1
    .parameter "effectInfo"

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;Z)V

    .line 36
    return-void
.end method

.method public abstract setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;Z)V
.end method

.method public final setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/IEffectController;->setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;Z)V

    .line 45
    return-void
.end method

.method public abstract setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;Z)V
.end method
