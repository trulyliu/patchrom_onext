.class Lcom/htc/music/carmode/CarNowPlayingActivity$10;
.super Ljava/lang/Object;
.source "CarNowPlayingActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "classname"
    .parameter "obj"

    .prologue
    const/16 v5, 0x14

    .line 1031
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected classname= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,IBinder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    .line 1035
    .local v1, service:Lcom/htc/music/IMediaPlaybackService;
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1036
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1037
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 1039
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1040
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1041
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1044
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "onServiceConnected finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "classname"

    .prologue
    const/16 v2, 0x15

    .line 1048
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1055
    :cond_1
    return-void
.end method
