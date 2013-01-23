.class public Lcom/android/camera/CaptureHandle;
.super Lcom/android/camera/SessionHandle;
.source "CaptureHandle.java"


# instance fields
.field public final cameraMode:Lcom/android/camera/CameraMode;

.field public final captureTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraMode;)V
    .locals 3
    .parameter "cameraMode"

    .prologue
    .line 18
    const-string v0, "Capture"

    invoke-direct {p0, v0}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    .line 20
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/camera/SessionHandle;->creationTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/camera/CaptureHandle;->captureTime:Ljava/util/Date;

    .line 21
    return-void
.end method
