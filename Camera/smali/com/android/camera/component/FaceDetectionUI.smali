.class public final Lcom/android/camera/component/FaceDetectionUI;
.super Lcom/android/camera/component/UIComponent;
.source "FaceDetectionUI.java"


# static fields
.field static final MSG_FACE_UPDATED:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Face Detection UI"


# instance fields
.field private m_Controller:Lcom/android/camera/component/FaceDetectionController;

.field private m_IsStarted:Z


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 28
    const-string v0, "Face Detection UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 29
    return-void
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/camera/component/FaceDetectionUI;->m_Controller:Lcom/android/camera/component/FaceDetectionController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 73
    :cond_0
    :goto_0
    return v3

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/FaceDetectionUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "Face Detection Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/FaceDetectionController;

    iput-object v0, p0, Lcom/android/camera/component/FaceDetectionUI;->m_Controller:Lcom/android/camera/component/FaceDetectionController;

    .line 68
    iget-object v0, p0, Lcom/android/camera/component/FaceDetectionUI;->m_Controller:Lcom/android/camera/component/FaceDetectionController;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/component/FaceDetectionUI;->m_Controller:Lcom/android/camera/component/FaceDetectionController;

    iget-object v1, p0, Lcom/android/camera/component/FaceDetectionUI;->m_Controller:Lcom/android/camera/component/FaceDetectionController;

    const/16 v2, 0x2711

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/FaceDetectionController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 71
    goto :goto_0
.end method

.method private onFaceUpdated([Lcom/android/camera/FaceInfo;)V
    .locals 1
    .parameter "faces"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/camera/component/FaceDetectionUI;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 84
    :cond_0
    return-void
.end method

.method private startFaceDetection()V
    .locals 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/component/FaceDetectionUI;->m_IsStarted:Z

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/FaceDetectionUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startFaceDetection() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/FaceDetectionUI;->m_Controller:Lcom/android/camera/component/FaceDetectionController;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/FaceDetectionUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/FaceDetectionUI;->m_IsStarted:Z

    goto :goto_0
.end method

.method private stopFaceDetection()V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/camera/component/FaceDetectionUI;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/FaceDetectionUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopFaceDetection() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/FaceDetectionUI;->m_Controller:Lcom/android/camera/component/FaceDetectionController;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/FaceDetectionUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/FaceDetectionUI;->m_IsStarted:Z

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 46
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/android/camera/FaceInfo;

    check-cast v0, [Lcom/android/camera/FaceInfo;

    invoke-direct {p0, v0}, Lcom/android/camera/component/FaceDetectionUI;->onFaceUpdated([Lcom/android/camera/FaceInfo;)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 58
    return-void
.end method
