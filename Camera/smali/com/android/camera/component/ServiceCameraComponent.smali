.class public abstract Lcom/android/camera/component/ServiceCameraComponent;
.super Lcom/android/camera/component/CameraCompoment;
.source "ServiceCameraComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;
    }
.end annotation


# instance fields
.field private m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V
    .locals 6
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraThread"
    .parameter "hasWorkerThread"

    .prologue
    .line 116
    invoke-virtual {p3}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    .line 117
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V
    .locals 1
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "cameraThread"
    .parameter "hasWorkerThread"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    .line 121
    if-eqz p5, :cond_0

    .line 123
    new-instance v0, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;-><init>(Lcom/android/camera/component/ServiceCameraComponent;)V

    iput-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 124
    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;->start()V

    .line 126
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
    .locals 6
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "hasWorkerThread"

    .prologue
    .line 112
    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ServiceCameraComponent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ServiceCameraComponent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/component/ServiceCameraComponent;->notifyWorkerThreadRunning()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ServiceCameraComponent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private notifyWorkerThreadRunning()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/camera/component/ServiceCameraComponent;->onWorkerThreadRunning()V

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;->release()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/android/camera/component/CameraCompoment;->deinitializeOverride()V

    .line 143
    return-void
.end method

.method protected final getWorkerThread()Lcom/android/camera/WorkerThread;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    return-object v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 157
    return-void
.end method

.method protected final hasAsyncMessages(I)Z
    .locals 3
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v1, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 165
    .local v1, workerThread:Lcom/android/camera/WorkerThread;
    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 168
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 170
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    return v2
.end method

.method protected final isWorkerThreadRunning()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 179
    .local v0, workerThread:Lcom/android/camera/WorkerThread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onWorkerThreadRunning()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method protected final removeAsyncMessages(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 203
    .local v1, workerThread:Lcom/android/camera/WorkerThread;
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 206
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method protected final removeAsyncMessages(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 213
    .local v1, workerThread:Lcom/android/camera/WorkerThread;
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 216
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 219
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method protected final sendAsyncMessage(I)Z
    .locals 8
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 226
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IIILjava/lang/Object;)Z
    .locals 8
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 238
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IIILjava/lang/Object;JZ)Z
    .locals 5
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delayMillis"
    .parameter "isUnique"

    .prologue
    const/4 v3, 0x0

    .line 243
    iget-object v2, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 244
    .local v2, workerThread:Lcom/android/camera/WorkerThread;
    if-nez v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v3

    .line 246
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 247
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 254
    .local v1, msg:Landroid/os/Message;
    if-eqz p7, :cond_2

    .line 255
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-gtz v3, :cond_3

    .line 257
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    goto :goto_0
.end method

.method protected final sendAsyncMessage(IJ)Z
    .locals 8
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    const/4 v2, 0x0

    .line 230
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-wide v5, p2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IZ)Z
    .locals 8
    .parameter "what"
    .parameter "isUnique"

    .prologue
    const/4 v2, 0x0

    .line 234
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method
