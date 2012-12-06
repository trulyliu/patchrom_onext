.class Lcom/htc/music/carmode/CarArtistBrowseActivity$7;
.super Landroid/os/Handler;
.source "CarArtistBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarArtistBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-boolean v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v1, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1064
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryChildItemReady:Z
    invoke-static {v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->access$200(Lcom/htc/music/carmode/CarArtistBrowseActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1065
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1069
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 1071
    .local v0, thread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1072
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThreadEvent;->onProcessEventIRT()V

    goto :goto_0
.end method
