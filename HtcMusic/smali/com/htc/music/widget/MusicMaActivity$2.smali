.class Lcom/htc/music/widget/MusicMaActivity$2;
.super Landroid/os/Handler;
.source "MusicMaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicMaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicMaActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 605
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 646
    :goto_0
    return-void

    .line 608
    :sswitch_0
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/music/widget/MusicMaActivity;->access$400(Lcom/htc/music/widget/MusicMaActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/music/widget/MusicMaActivity;->access$400(Lcom/htc/music/widget/MusicMaActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 610
    :cond_0
    const-string v2, "[MusicMaActivity]"

    const-string v3, "mbufferdialog dismiss"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 612
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 613
    .local v1, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v2}, Lcom/htc/music/widget/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 616
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v2}, Lcom/htc/music/widget/MusicMaActivity;->onDeletionCompleted()V

    goto :goto_0

    .line 619
    :sswitch_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Lcom/htc/music/widget/MusicMaActivity;->access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 620
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Lcom/htc/music/widget/MusicMaActivity;->access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    .line 623
    :cond_2
    const/4 v0, 0x0

    .line 624
    .local v0, dms:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->getCurDms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 627
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v2}, Lcom/htc/music/widget/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->switchToPush(Landroid/content/Context;)Z

    .line 632
    :goto_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #calls: Lcom/htc/music/widget/MusicMaActivity;->launchPlayer()V
    invoke-static {v2}, Lcom/htc/music/widget/MusicMaActivity;->access$600(Lcom/htc/music/widget/MusicMaActivity;)V

    goto :goto_0

    .line 629
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v2}, Lcom/htc/music/widget/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->switchToDmc(Landroid/content/Context;)Z

    goto :goto_1

    .line 637
    .end local v0           #dms:Ljava/lang/String;
    :sswitch_2
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    const/16 v3, 0x2b04

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/MusicMaActivity;->showDialog(I)V

    goto :goto_0

    .line 642
    :sswitch_3
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    const/16 v3, 0x2b03

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/MusicMaActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 605
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x36b1 -> :sswitch_1
        0x36b2 -> :sswitch_2
        0x36b3 -> :sswitch_3
    .end sparse-switch
.end method
