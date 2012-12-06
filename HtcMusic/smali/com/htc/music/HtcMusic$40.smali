.class Lcom/htc/music/HtcMusic$40;
.super Landroid/content/BroadcastReceiver;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 6871
    iput-object p1, p0, Lcom/htc/music/HtcMusic$40;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6875
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6877
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.music.triggerplayinlibrary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6878
    const-string v1, "[HtcMusic]"

    const-string v2, "Receiver, get TRIGGER_PLAY_IN_LIBRARY"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6880
    iget-object v1, p0, Lcom/htc/music/HtcMusic$40;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v1, v1, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic$40;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_0

    .line 6881
    iget-object v1, p0, Lcom/htc/music/HtcMusic$40;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 6882
    iget-object v1, p0, Lcom/htc/music/HtcMusic$40;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateTitle()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$2200(Lcom/htc/music/HtcMusic;)V

    .line 6885
    :cond_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$40;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$300(Lcom/htc/music/HtcMusic;)V

    .line 6887
    :cond_1
    return-void
.end method
