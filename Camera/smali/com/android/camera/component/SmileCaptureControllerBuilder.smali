.class final Lcom/android/camera/component/SmileCaptureControllerBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "SmileCaptureControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/component/SmileCaptureController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Smile-Capture Controller"

    invoke-direct {p0, v0}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/component/SmileCaptureControllerBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/SmileCaptureController;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/SmileCaptureController;
    .locals 1
    .parameter "cameraThread"

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/component/SmileCaptureController;

    invoke-direct {v0, p1}, Lcom/android/camera/component/SmileCaptureController;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method
