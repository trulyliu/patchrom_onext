.class final Lcom/android/camera/debug/CameraThreadMonitor;
.super Lcom/android/camera/debug/ICameraThreadMonitor;
.source "CameraThreadMonitor.java"


# static fields
.field private static final MSG_CHECK_CAMERA_THREAD:I = 0x2711

.field private static final MSG_RESPONSE_FROM_CAMERA_THREAD:I = 0x2712

.field static final NAME:Ljava/lang/String; = "Camera Thread Monitor"

.field private static final THREAD_CHECK_INTERVAL:J = 0xbb8L


# instance fields
.field private final m_CheckCameraThreadRunnable:Ljava/lang/Runnable;

.field private m_LastBlockedPosition:[Ljava/lang/StackTraceElement;

.field private m_PendingResponses:I


# direct methods
.method protected constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 43
    const-string v0, "Camera Thread Monitor"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/debug/ICameraThreadMonitor;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    .line 28
    new-instance v0, Lcom/android/camera/debug/CameraThreadMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/debug/CameraThreadMonitor$1;-><init>(Lcom/android/camera/debug/CameraThreadMonitor;)V

    iput-object v0, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_CheckCameraThreadRunnable:Ljava/lang/Runnable;

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/debug/CameraThreadMonitor;->disableMessageLogs()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/debug/CameraThreadMonitor;Lcom/android/camera/component/Component;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/debug/CameraThreadMonitor;->sendMessage(Lcom/android/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/debug/CameraThreadMonitor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkCameraThreadState()V
    .locals 11

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/camera/debug/CameraThreadMonitor;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 54
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {p0}, Lcom/android/camera/debug/CameraThreadMonitor;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 55
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "checkCameraThreadState() - Pending response : "

    iget v10, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_PendingResponses:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    :cond_0
    iget v8, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_PendingResponses:I

    if-lez v8, :cond_5

    .line 59
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 60
    .local v0, blockedPosition:[Ljava/lang/StackTraceElement;
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "checkCameraThreadState() - Camera thread is busy or blocked"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace([Ljava/lang/StackTraceElement;)V

    .line 64
    iget v8, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_PendingResponses:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 67
    const/4 v4, 0x1

    .line 68
    .local v4, isBlockedInSamePosition:Z
    iget-object v8, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_LastBlockedPosition:[Ljava/lang/StackTraceElement;

    array-length v8, v8

    array-length v9, v0

    if-ne v8, v9, :cond_8

    .line 70
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v0

    if-ge v3, v8, :cond_2

    .line 72
    iget-object v8, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_LastBlockedPosition:[Ljava/lang/StackTraceElement;

    aget-object v6, v8, v3

    .line 73
    .local v6, oldElement:Ljava/lang/StackTraceElement;
    aget-object v5, v0, v3

    .line 74
    .local v5, newElement:Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    if-ne v8, v9, :cond_1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 78
    :cond_1
    const/4 v4, 0x0

    .line 87
    .end local v3           #i:I
    .end local v5           #newElement:Ljava/lang/StackTraceElement;
    .end local v6           #oldElement:Ljava/lang/StackTraceElement;
    :cond_2
    :goto_1
    if-eqz v4, :cond_b

    .line 89
    sget-object v7, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->BlockedInUnknownPosition:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    .line 90
    .local v7, state:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    array-length v8, v0

    if-ge v3, v8, :cond_3

    .line 92
    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, className:Ljava/lang/String;
    const-string v8, "android.hardware.Camera"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 95
    sget-object v7, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->BlockedInCameraDriver:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    .line 104
    .end local v2           #className:Ljava/lang/String;
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/android/camera/debug/ICameraThreadMonitor;->cameraThreadState:Lcom/android/camera/property/Property;

    iget-object v9, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v8, v9, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .end local v3           #i:I
    .end local v4           #isBlockedInSamePosition:Z
    .end local v7           #state:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;
    :cond_4
    :goto_4
    iput-object v0, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_LastBlockedPosition:[Ljava/lang/StackTraceElement;

    .line 113
    .end local v0           #blockedPosition:[Ljava/lang/StackTraceElement;
    :cond_5
    iget-object v8, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_CheckCameraThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v8}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 114
    iget v8, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_PendingResponses:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_PendingResponses:I

    .line 121
    :cond_6
    :goto_5
    return-void

    .line 70
    .restart local v0       #blockedPosition:[Ljava/lang/StackTraceElement;
    .restart local v3       #i:I
    .restart local v4       #isBlockedInSamePosition:Z
    .restart local v5       #newElement:Ljava/lang/StackTraceElement;
    .restart local v6       #oldElement:Ljava/lang/StackTraceElement;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v3           #i:I
    .end local v5           #newElement:Ljava/lang/StackTraceElement;
    .end local v6           #oldElement:Ljava/lang/StackTraceElement;
    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    .line 98
    .restart local v2       #className:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v7       #state:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;
    :cond_9
    const-string v8, "android.media.MediaRecorder"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 100
    sget-object v7, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->BlockedInMediaRecorder:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    .line 101
    goto :goto_3

    .line 90
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 107
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #i:I
    .end local v7           #state:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;
    :cond_b
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "checkCameraThreadState() - Camera thread is busy"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 117
    .end local v0           #blockedPosition:[Ljava/lang/StackTraceElement;
    .end local v4           #isBlockedInSamePosition:Z
    :cond_c
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "checkCameraThreadState() - Cannot check camera thread"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v8, p0, Lcom/android/camera/debug/ICameraThreadMonitor;->cameraThreadState:Lcom/android/camera/property/Property;

    sget-object v9, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->Running:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    invoke-virtual {v8, v9}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 119
    iget-object v8, p0, Lcom/android/camera/debug/ICameraThreadMonitor;->cameraThreadState:Lcom/android/camera/property/Property;

    iget-object v9, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->Unknown:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method private onCameraThreadResponsed()V
    .locals 3

    .prologue
    .line 178
    iget v0, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_PendingResponses:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/debug/CameraThreadMonitor;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCameraThreadResponsed() - Pending response : "

    iget v2, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_PendingResponses:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    :cond_1
    iget v0, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_PendingResponses:I

    if-lez v0, :cond_3

    .line 182
    iget v0, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_PendingResponses:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_PendingResponses:I

    .line 183
    iget v0, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_PendingResponses:I

    if-nez v0, :cond_2

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/debug/CameraThreadMonitor;->m_LastBlockedPosition:[Ljava/lang/StackTraceElement;

    .line 188
    :cond_2
    :goto_0
    return-void

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCameraThreadResponsed() - Invalid response"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 3

    .prologue
    .line 130
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/debug/CameraThreadMonitor;->removeMessages(I)V

    .line 131
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/debug/CameraThreadMonitor;->removeMessages(I)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/debug/ICameraThreadMonitor;->isMonitoring:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    invoke-super {p0}, Lcom/android/camera/debug/ICameraThreadMonitor;->deinitializeOverride()V

    .line 136
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-super {p0, p1}, Lcom/android/camera/debug/ICameraThreadMonitor;->handleMessage(Landroid/os/Message;)V

    .line 157
    :goto_0
    return-void

    .line 147
    :pswitch_0
    const/16 v0, 0x2711

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/camera/debug/CameraThreadMonitor;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    .line 148
    invoke-direct {p0}, Lcom/android/camera/debug/CameraThreadMonitor;->checkCameraThreadState()V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/debug/CameraThreadMonitor;->onCameraThreadResponsed()V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/camera/debug/ICameraThreadMonitor;->initializeOverride()V

    .line 169
    const/16 v0, 0x2711

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/camera/debug/CameraThreadMonitor;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    .line 170
    iget-object v0, p0, Lcom/android/camera/debug/ICameraThreadMonitor;->isMonitoring:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    return-void
.end method
