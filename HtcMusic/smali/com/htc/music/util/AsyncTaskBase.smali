.class public abstract Lcom/htc/music/util/AsyncTaskBase;
.super Ljava/lang/Object;
.source "AsyncTaskBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;,
        Lcom/htc/music/util/AsyncTaskBase$HostHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x0L

.field private static final PROCESS:I = 0x0

.field private static final PROCESSED:I = 0x1

.field private static final PROCESSED_STATUS:Ljava/lang/String; = "PROCESSED_STATUS"

.field private static final QUIT:I = 0x2

.field private static final THREAD_NAME:Ljava/lang/String; = "AsyncTaskThread"


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/music/util/AsyncTaskBase",
            "<TT;>.HostHandler;"
        }
    .end annotation
.end field

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mNonHostHandler:Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/music/util/AsyncTaskBase",
            "<TT;>.NonHostHandler;"
        }
    .end annotation
.end field

.field private mPause:Z

.field protected mSyncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase;,"Lcom/htc/music/util/AsyncTaskBase<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mSyncObject:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mPause:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mHandlerThread:Landroid/os/HandlerThread;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/util/AsyncTaskBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mPause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/music/util/AsyncTaskBase;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/music/util/AsyncTaskBase;->getTask()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/util/AsyncTaskBase;)Lcom/htc/music/util/AsyncTaskBase$HostHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    return-object v0
.end method

.method private getTask()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase;,"Lcom/htc/music/util/AsyncTaskBase<TT;>;"
    const/4 v0, 0x0

    .line 127
    .local v0, task:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/htc/music/util/AsyncTaskBase;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/util/AsyncTaskBase;->removePriorTask()Ljava/lang/Object;

    move-result-object v0

    .line 129
    monitor-exit v2

    .line 130
    return-object v0

    .line 129
    .end local v0           #task:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase;,"Lcom/htc/music/util/AsyncTaskBase<TT;>;"
    .local p1, task:Ljava/lang/Object;,"TT;"
    const/4 v4, 0x0

    .line 63
    iget-object v2, p0, Lcom/htc/music/util/AsyncTaskBase;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 65
    .local v0, indexOfTask:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mNonHostHandler:Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mNonHostHandler:Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;

    invoke-virtual {v1, v4}, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    :cond_0
    :goto_1
    return-void

    .line 68
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v0           #indexOfTask:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 76
    .restart local v0       #indexOfTask:I
    :cond_2
    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mNonHostHandler:Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 111
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase;,"Lcom/htc/music/util/AsyncTaskBase<TT;>;"
    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTaskSize()I
    .locals 1

    .prologue
    .line 117
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase;,"Lcom/htc/music/util/AsyncTaskBase<TT;>;"
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .parameter "threadName"

    .prologue
    .line 28
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase;,"Lcom/htc/music/util/AsyncTaskBase<TT;>;"
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mHandlerThread:Landroid/os/HandlerThread;

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;

    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;-><init>(Lcom/htc/music/util/AsyncTaskBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mNonHostHandler:Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;

    .line 36
    return-void

    .line 31
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncTaskThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mHandlerThread:Landroid/os/HandlerThread;

    goto :goto_0
.end method

.method public initHostHandler()V
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase;,"Lcom/htc/music/util/AsyncTaskBase<TT;>;"
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncTaskBase$HostHandler;-><init>(Lcom/htc/music/util/AsyncTaskBase;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    .line 42
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase;,"Lcom/htc/music/util/AsyncTaskBase<TT;>;"
    const/4 v1, 0x1

    .line 98
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mPause:Z

    if-ne v0, v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mPause:Z

    goto :goto_0
.end method

.method protected abstract processFinish(Ljava/lang/Object;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)V"
        }
    .end annotation
.end method

.method protected abstract processTask(Ljava/lang/Object;Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation
.end method

.method public quit()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase;,"Lcom/htc/music/util/AsyncTaskBase<TT;>;"
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mNonHostHandler:Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mNonHostHandler:Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/music/util/AsyncTaskBase;->resume()V

    .line 86
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 88
    iput-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mHandlerThread:Landroid/os/HandlerThread;

    .line 89
    iput-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mNonHostHandler:Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/util/AsyncTaskBase$HostHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    :cond_1
    return-void
.end method

.method protected abstract removePriorTask()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 103
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase;,"Lcom/htc/music/util/AsyncTaskBase<TT;>;"
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mPause:Z

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mPause:Z

    .line 105
    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 107
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
