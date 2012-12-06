.class public Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;
.super Landroid/os/Handler;
.source "AsyncTaskBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AsyncTaskBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NonHostHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/AsyncTaskBase;


# direct methods
.method public constructor <init>(Lcom/htc/music/util/AsyncTaskBase;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 151
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;,"Lcom/htc/music/util/AsyncTaskBase<TT;>.NonHostHandler;"
    iput-object p1, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    .line 152
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 153
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;,"Lcom/htc/music/util/AsyncTaskBase<TT;>.NonHostHandler;"
    const/4 v10, 0x0

    .line 157
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 163
    :pswitch_0
    const/4 v3, 0x1

    .line 166
    .local v3, success:Z
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    #calls: Lcom/htc/music/util/AsyncTaskBase;->getTask()Ljava/lang/Object;
    invoke-static {v5}, Lcom/htc/music/util/AsyncTaskBase;->access$100(Lcom/htc/music/util/AsyncTaskBase;)Ljava/lang/Object;

    move-result-object v4

    .line 167
    .local v4, task:Ljava/lang/Object;,"TT;"
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/htc/music/util/AsyncTaskBase;->processTask(Ljava/lang/Object;Landroid/os/Bundle;)Z

    move-result v3

    .line 169
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;
    invoke-static {v5}, Lcom/htc/music/util/AsyncTaskBase;->access$200(Lcom/htc/music/util/AsyncTaskBase;)Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 170
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;
    invoke-static {v5}, Lcom/htc/music/util/AsyncTaskBase;->access$200(Lcom/htc/music/util/AsyncTaskBase;)Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Lcom/htc/music/util/AsyncTaskBase$HostHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 171
    .local v2, newMsg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "PROCESSED_STATUS"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 174
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;
    invoke-static {v5}, Lcom/htc/music/util/AsyncTaskBase;->access$200(Lcom/htc/music/util/AsyncTaskBase;)Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/music/util/AsyncTaskBase$HostHandler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #newMsg:Landroid/os/Message;
    :cond_1
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    iget-object v6, v5, Lcom/htc/music/util/AsyncTaskBase;->mSyncObject:Ljava/lang/Object;

    monitor-enter v6

    .line 178
    :cond_2
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mPause:Z
    invoke-static {v5}, Lcom/htc/music/util/AsyncTaskBase;->access$000(Lcom/htc/music/util/AsyncTaskBase;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    iget-object v5, v5, Lcom/htc/music/util/AsyncTaskBase;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;
    invoke-static {v5}, Lcom/htc/music/util/AsyncTaskBase;->access$200(Lcom/htc/music/util/AsyncTaskBase;)Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 183
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;
    invoke-static {v5}, Lcom/htc/music/util/AsyncTaskBase;->access$200(Lcom/htc/music/util/AsyncTaskBase;)Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/htc/music/util/AsyncTaskBase$HostHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;
    invoke-static {v5}, Lcom/htc/music/util/AsyncTaskBase;->access$200(Lcom/htc/music/util/AsyncTaskBase;)Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/htc/music/util/AsyncTaskBase$HostHandler;->removeMessages(I)V

    .line 186
    :cond_3
    iget-object v5, p0, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mHostHandler:Lcom/htc/music/util/AsyncTaskBase$HostHandler;
    invoke-static {v5}, Lcom/htc/music/util/AsyncTaskBase;->access$200(Lcom/htc/music/util/AsyncTaskBase;)Lcom/htc/music/util/AsyncTaskBase$HostHandler;

    move-result-object v5

    const/4 v7, 0x2

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v7, v8, v9}, Lcom/htc/music/util/AsyncTaskBase$HostHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 190
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_4
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    if-eqz v3, :cond_5

    .line 198
    invoke-virtual {p0, v10}, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 199
    const-wide/16 v5, 0x0

    invoke-virtual {p0, v10, v5, v6}, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 202
    :cond_5
    invoke-virtual {p0, v10}, Lcom/htc/music/util/AsyncTaskBase$NonHostHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
