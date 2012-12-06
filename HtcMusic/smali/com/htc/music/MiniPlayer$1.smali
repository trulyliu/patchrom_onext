.class Lcom/htc/music/MiniPlayer$1;
.super Landroid/content/BroadcastReceiver;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MiniPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, action:Ljava/lang/String;
    const-string v1, "[MiniPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mini player receiver :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mStopRefreshMiniPlayer:Z
    invoke-static {v1}, Lcom/htc/music/MiniPlayer;->access$000(Lcom/htc/music/MiniPlayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const-string v1, "[MiniPlayer]"

    const-string v2, "Skipped META_CHANGED action and handle it later"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/MiniPlayer;->mSavedAction:Z
    invoke-static {v1, v2}, Lcom/htc/music/MiniPlayer;->access$102(Lcom/htc/music/MiniPlayer;Z)Z

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    #calls: Lcom/htc/music/MiniPlayer;->handleAction(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/htc/music/MiniPlayer;->access$200(Lcom/htc/music/MiniPlayer;Ljava/lang/String;)V

    goto :goto_0
.end method
