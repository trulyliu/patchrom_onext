.class public Lcom/android/camera/sina/HTCCameraAssistant;
.super Ljava/lang/Object;
.source "HTCCameraAssistant.java"


# static fields
.field public static final MSG_TYPE_CAPTURE_UI_VISIBLE:I = 0x1

.field private static sCameraAssistant:Lcom/android/camera/sina/HTCCameraAssistant;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/sina/HTCCameraAssistant;->sCameraAssistant:Lcom/android/camera/sina/HTCCameraAssistant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getInst()Lcom/android/camera/sina/HTCCameraAssistant;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/android/camera/sina/HTCCameraAssistant;->sCameraAssistant:Lcom/android/camera/sina/HTCCameraAssistant;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lcom/android/camera/sina/HTCCameraAssistant;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/android/camera/sina/HTCCameraAssistant;->sCameraAssistant:Lcom/android/camera/sina/HTCCameraAssistant;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/android/camera/sina/HTCCameraAssistant;

    invoke-direct {v0}, Lcom/android/camera/sina/HTCCameraAssistant;-><init>()V

    sput-object v0, Lcom/android/camera/sina/HTCCameraAssistant;->sCameraAssistant:Lcom/android/camera/sina/HTCCameraAssistant;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/android/camera/sina/HTCCameraAssistant;->sCameraAssistant:Lcom/android/camera/sina/HTCCameraAssistant;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setCaptureUIVisible(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 45
    .local v0, captureUI:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 46
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 34
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/sina/HTCCameraAssistant;->setCaptureUIVisible(Landroid/os/Message;)V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
