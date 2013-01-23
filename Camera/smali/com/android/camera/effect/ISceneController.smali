.class public abstract Lcom/android/camera/effect/ISceneController;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "ISceneController.java"


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
.method public final setScene(Ljava/lang/String;)V
    .locals 1
    .parameter "scene"

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public abstract setScene(Ljava/lang/String;Z)V
.end method
