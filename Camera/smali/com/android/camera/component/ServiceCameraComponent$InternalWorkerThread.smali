.class final Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;
.super Lcom/android/camera/WorkerThread;
.source "ServiceCameraComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ServiceCameraComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalWorkerThread"
.end annotation


# instance fields
.field private volatile m_Owner:Lcom/android/camera/component/ServiceCameraComponent;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/ServiceCameraComponent;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/component/ServiceCameraComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Worker Thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_Owner:Lcom/android/camera/component/ServiceCameraComponent;

    .line 31
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_Owner:Lcom/android/camera/component/ServiceCameraComponent;

    .line 41
    .local v1, owner:Lcom/android/camera/component/ServiceCameraComponent;
    if-eqz v1, :cond_2

    .line 45
    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/ServiceCameraComponent;->access$000(Lcom/android/camera/component/ServiceCameraComponent;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, tag:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/camera/component/ServiceCameraComponent;->isMessageLogsEnabled()Z

    move-result v2

    .line 47
    .local v2, printMessageLogs:Z
    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v4, v5}, Lcom/android/camera/debug/Debugger;->getMessageName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, msgName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message (Async) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/camera/component/ServiceCameraComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 59
    if-eqz v2, :cond_0

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message (Async) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - end"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v0           #msgName:Ljava/lang/String;
    .end local v2           #printMessageLogs:Z
    .end local v3           #tag:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/android/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    .line 67
    return-void

    .line 53
    .restart local v2       #printMessageLogs:Z
    .restart local v3       #tag:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #msgName:Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v0           #msgName:Ljava/lang/String;
    .end local v2           #printMessageLogs:Z
    .end local v3           #tag:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/WorkerThread;->TAG:Ljava/lang/String;

    const-string v5, "No owner, skip message"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onEnter()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_Owner:Lcom/android/camera/component/ServiceCameraComponent;

    .line 76
    .local v0, owner:Lcom/android/camera/component/ServiceCameraComponent;
    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread$1;-><init>(Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;Lcom/android/camera/component/ServiceCameraComponent;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ServiceCameraComponent;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ServiceCameraComponent;->access$200(Lcom/android/camera/component/ServiceCameraComponent;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot notify owner that worker thread is started"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_Owner:Lcom/android/camera/component/ServiceCameraComponent;

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;->exit()V

    .line 99
    return-void
.end method
