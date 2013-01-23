.class public Lcom/android/camera/CameraParamsSetupEventArgs;
.super Lcom/android/camera/CameraDeviceEventArgs;
.source "CameraParamsSetupEventArgs.java"


# instance fields
.field private m_IsParameterChanged:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V
    .locals 0
    .parameter "handle"
    .parameter "camera"
    .parameter "controller"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final isParameterChanged()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/camera/CameraParamsSetupEventArgs;->m_IsParameterChanged:Z

    return v0
.end method

.method public final notifyParameterChanged()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraParamsSetupEventArgs;->m_IsParameterChanged:Z

    .line 34
    return-void
.end method
