.class Lcom/htc/music/dlna/DmpMusicPlayer$4;
.super Landroid/content/BroadcastReceiver;
.source "DmpMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmpMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/dlna/DmpMusicPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/dlna/DmpMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3492
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$4;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3495
    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3496
    .local v2, name:Ljava/lang/String;
    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3497
    .local v0, a2dpOn:I
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mA2DPReceiver.onReceive(): a2dpOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3499
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$4;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2600(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$4;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mUriPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$5500(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$4;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mUriPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$5500(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3500
    const/4 v1, 0x0

    .line 3501
    .local v1, isPlaying:Z
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$4;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2600(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3502
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$4;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2600(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->isPlaying()Z

    move-result v1

    .line 3503
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mA2DPReceiver.onReceive(): mPlayer.isPlaying() == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    :goto_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 3509
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$4;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    const-string v4, "mA2DPReceiver.onReceive()"

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->resetPlayerForWirelessConnect(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$5600(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V

    .line 3518
    .end local v1           #isPlaying:Z
    :cond_0
    :goto_1
    return-void

    .line 3505
    .restart local v1       #isPlaying:Z
    :cond_1
    const-string v3, "[DmpMusicPlayer]"

    const-string v4, "mA2DPReceiver.onReceive(): mPlayer.isInitialized() == false"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3512
    :cond_2
    if-eqz v1, :cond_0

    .line 3513
    const-string v3, "[DmpMusicPlayer]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mA2DPReceiver, a2dpOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPlaying is true!, BT headset is disconnected, pause it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$4;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->pause()V

    goto :goto_1
.end method
