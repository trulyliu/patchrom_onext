.class Lcom/htc/music/DRMActionActivity$1;
.super Landroid/os/Handler;
.source "DRMActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DRMActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DRMActionActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/DRMActionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 153
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/DRMActionActivity;->mShowToast:Z
    invoke-static {v2, v3}, Lcom/htc/music/DRMActionActivity;->access$202(Lcom/htc/music/DRMActionActivity;Z)Z

    .line 156
    new-instance v0, Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;-><init>(Lcom/htc/music/DRMActionActivity;Lcom/htc/music/DRMActionActivity$1;)V

    .line 157
    .local v0, UpdateDRM:Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 158
    .local v1, updatedthread:Ljava/lang/Thread;
    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INIT message: Updated Thread start..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 162
    .end local v0           #UpdateDRM:Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;
    .end local v1           #updatedthread:Ljava/lang/Thread;
    :pswitch_1
    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpdateInfo message: called"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/htc/music/DRMActionActivity;->UpdateInfo(I)V

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cancel progress dialog."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/htc/music/DRMActionActivity;->access$500(Lcom/htc/music/DRMActionActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/htc/music/DRMActionActivity;->access$500(Lcom/htc/music/DRMActionActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/htc/music/DRMActionActivity;->access$500(Lcom/htc/music/DRMActionActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
