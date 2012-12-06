.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;
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
    .line 800
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 803
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 805
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showSpinner(Z)V

    .line 818
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 819
    :cond_1
    :goto_1
    return-void

    .line 806
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 807
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-boolean v1, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAsyncQuerying:Z

    if-nez v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1, v5}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showSpinner(Z)V

    goto :goto_0

    .line 809
    :cond_3
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 813
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 814
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
