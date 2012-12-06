.class public Lcom/htc/music/util/AsyncTaskBase$HostHandler;
.super Landroid/os/Handler;
.source "AsyncTaskBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AsyncTaskBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HostHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/AsyncTaskBase;


# direct methods
.method protected constructor <init>(Lcom/htc/music/util/AsyncTaskBase;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase$HostHandler;,"Lcom/htc/music/util/AsyncTaskBase<TT;>.HostHandler;"
    iput-object p1, p0, Lcom/htc/music/util/AsyncTaskBase$HostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 138
    .local p0, this:Lcom/htc/music/util/AsyncTaskBase$HostHandler;,"Lcom/htc/music/util/AsyncTaskBase<TT;>.HostHandler;"
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 140
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x1

    .line 142
    .local v1, success:Z
    if-eqz v0, :cond_0

    .line 143
    const-string v2, "PROCESSED_STATUS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/htc/music/util/AsyncTaskBase$HostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/music/util/AsyncTaskBase$HostHandler;->this$0:Lcom/htc/music/util/AsyncTaskBase;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mPause:Z
    invoke-static {v4}, Lcom/htc/music/util/AsyncTaskBase;->access$000(Lcom/htc/music/util/AsyncTaskBase;)Z

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/music/util/AsyncTaskBase;->processFinish(Ljava/lang/Object;ZZ)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
