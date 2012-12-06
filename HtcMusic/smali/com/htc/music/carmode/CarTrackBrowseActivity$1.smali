.class Lcom/htc/music/carmode/CarTrackBrowseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CarTrackBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarTrackBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showSpinner(Z)V

    .line 362
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$200(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 363
    :goto_1
    return-void

    .line 356
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAsyncQuerying:Z
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$100(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-virtual {v1, v3}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showSpinner(Z)V

    goto :goto_0

    .line 359
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method
