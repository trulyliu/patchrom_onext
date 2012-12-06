.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;
.super Landroid/os/Handler;
.source "ArtistBrowserActivityExpGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1268
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1272
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryChildItemReady:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1273
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1277
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$6000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-object v1, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    if-eqz v1, :cond_0

    .line 1278
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$6100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 1279
    .local v0, thread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-object v1, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1280
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-object v1, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThreadEvent;->onProcessEventIRT()V

    goto :goto_0
.end method
