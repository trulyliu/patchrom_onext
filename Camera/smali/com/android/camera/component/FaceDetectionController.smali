.class public final Lcom/android/camera/component/FaceDetectionController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "FaceDetectionController.java"


# static fields
.field static final MSG_LINK_UI:I = 0x2711

.field static final MSG_START_FACE_DETECTION:I = 0x2712

.field static final MSG_STOP_FACE_DETECTION:I = 0x2713

.field public static final NAME:Ljava/lang/String; = "Face Detection Controller"


# instance fields
.field private m_IsStarted:Z

.field private m_UI:Lcom/android/camera/component/FaceDetectionUI;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 28
    const-string v0, "Face Detection Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 29
    return-void
.end method

.method private startFaceDetection()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/camera/component/FaceDetectionController;->m_IsStarted:Z

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/FaceDetectionController;->m_IsStarted:Z

    goto :goto_0
.end method

.method private stopFaceDetection()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/camera/component/FaceDetectionController;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/FaceDetectionController;->m_IsStarted:Z

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

    .line 52
    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 55
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/component/FaceDetectionUI;

    iput-object v0, p0, Lcom/android/camera/component/FaceDetectionController;->m_UI:Lcom/android/camera/component/FaceDetectionUI;

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/FaceDetectionController;->startFaceDetection()V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/FaceDetectionController;->stopFaceDetection()V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
