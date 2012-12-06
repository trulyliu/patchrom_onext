.class Lcom/htc/music/widget/MusicMaActivity$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 873
    iput-object p1, p0, Lcom/htc/music/widget/MusicMaActivity$4;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 877
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.music.triggerplayinlibrary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    const-string v1, "[MusicMaActivity]"

    const-string v2, "Receiver, get TRIGGER_PLAY_IN_LIBRARY"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$4;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #calls: Lcom/htc/music/widget/MusicMaActivity;->handleTVReadyToPlay()V
    invoke-static {v1}, Lcom/htc/music/widget/MusicMaActivity;->access$200(Lcom/htc/music/widget/MusicMaActivity;)V

    .line 883
    :cond_0
    return-void
.end method
