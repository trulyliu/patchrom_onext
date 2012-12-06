.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;
.super Landroid/os/Handler;
.source "DmsDetailBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "workHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 810
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    .line 811
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 812
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 816
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 821
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "contentID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, contentID:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 824
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-interface {v3, v4, v5, v0, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    :catch_0
    move-exception v1

    .line 828
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 830
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsStop:Z
    invoke-static {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 831
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 832
    .local v2, msg2:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "contentID"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 816
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
