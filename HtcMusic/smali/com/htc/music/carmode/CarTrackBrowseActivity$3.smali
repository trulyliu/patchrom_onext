.class Lcom/htc/music/carmode/CarTrackBrowseActivity$3;
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
    .line 449
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 453
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    const-string v1, "id"

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAudioId:I
    invoke-static {v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$500(Lcom/htc/music/carmode/CarTrackBrowseActivity;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAudioId:I
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$502(Lcom/htc/music/carmode/CarTrackBrowseActivity;I)I

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$600(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$600(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 461
    :cond_1
    return-void
.end method
