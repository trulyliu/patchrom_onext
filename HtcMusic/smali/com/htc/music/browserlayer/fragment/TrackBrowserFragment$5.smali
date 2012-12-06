.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    const-string v1, "id"

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAudioId:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAudioId:I
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1402(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)I

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;->sendEmptyMessage(I)Z

    .line 1141
    :cond_1
    return-void
.end method
