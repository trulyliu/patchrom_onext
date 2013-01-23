.class public Lcom/android/camera/CameraDeviceEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "CameraDeviceEventArgs.java"


# instance fields
.field public final camera:Landroid/hardware/Camera;

.field public final cameraController:Lcom/android/camera/CameraController;

.field public final cameraHandle:Lcom/android/camera/Handle;

.field public final openFailedReason:Lcom/android/camera/CameraOpenFailedReason;


# direct methods
.method public constructor <init>(Lcom/android/camera/Handle;)V
    .locals 1
    .parameter "cameraHandle"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V
    .locals 1
    .parameter "cameraHandle"
    .parameter "camera"
    .parameter "cameraController"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/android/camera/CameraDeviceEventArgs;->camera:Landroid/hardware/Camera;

    .line 34
    iput-object p3, p0, Lcom/android/camera/CameraDeviceEventArgs;->cameraController:Lcom/android/camera/CameraController;

    .line 35
    iput-object p1, p0, Lcom/android/camera/CameraDeviceEventArgs;->cameraHandle:Lcom/android/camera/Handle;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraDeviceEventArgs;->openFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V
    .locals 1
    .parameter "cameraHandle"
    .parameter "openFailedReason"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/camera/CameraDeviceEventArgs;->camera:Landroid/hardware/Camera;

    .line 27
    iput-object v0, p0, Lcom/android/camera/CameraDeviceEventArgs;->cameraController:Lcom/android/camera/CameraController;

    .line 28
    iput-object p1, p0, Lcom/android/camera/CameraDeviceEventArgs;->cameraHandle:Lcom/android/camera/Handle;

    .line 29
    iput-object p2, p0, Lcom/android/camera/CameraDeviceEventArgs;->openFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    .line 30
    return-void
.end method
