.class public Lcom/android/camera/CaptureEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "CaptureEventArgs.java"


# instance fields
.field public final cameraMode:Lcom/android/camera/CameraMode;

.field public final captureHandle:Lcom/android/camera/CaptureHandle;

.field public final failedReason:Lcom/android/camera/CaptureFailedReason;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureHandle;)V
    .locals 1
    .parameter "handle"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V
    .locals 1
    .parameter "handle"
    .parameter "failedReason"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/CaptureEventArgs;->cameraMode:Lcom/android/camera/CameraMode;

    .line 24
    iput-object p1, p0, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    .line 25
    iput-object p2, p0, Lcom/android/camera/CaptureEventArgs;->failedReason:Lcom/android/camera/CaptureFailedReason;

    .line 26
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
