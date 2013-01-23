.class public Lcom/android/camera/RequestTakingPictureEventArgs;
.super Lcom/android/camera/event/SingleHandlerEventArgs;
.source "RequestTakingPictureEventArgs.java"


# instance fields
.field public final camera:Landroid/hardware/Camera;

.field public final cameraController:Lcom/android/camera/CameraController;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V
    .locals 0
    .parameter "camera"
    .parameter "cameraController"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/RequestTakingPictureEventArgs;->camera:Landroid/hardware/Camera;

    .line 21
    iput-object p2, p0, Lcom/android/camera/RequestTakingPictureEventArgs;->cameraController:Lcom/android/camera/CameraController;

    .line 22
    return-void
.end method
