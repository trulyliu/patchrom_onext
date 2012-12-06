.class Lcom/htc/music/carmode/CarNowPlayingActivity$21;
.super Landroid/content/BroadcastReceiver;
.source "CarNowPlayingActivity.java"


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
    .line 1858
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$21;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1861
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1874
    :cond_0
    :goto_0
    return-void

    .line 1865
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1866
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$21;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->checkCurrentStorateState()Z
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3900(Lcom/htc/music/carmode/CarNowPlayingActivity;)Z

    .line 1867
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$21;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1868
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$21;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1869
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$21;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1872
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$21;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
