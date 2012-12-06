.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
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
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 1261
    const-string v0, "[ArtistBrowserActivityExpGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnPrepareReadyEvent.onCancelIRT : CANCEL_REASON = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1236
    monitor-enter p0

    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mIsProcessingPrepareReadyEvent:Z

    if-eqz v0, :cond_1

    .line 1238
    monitor-exit p0

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mIsProcessingPrepareReadyEvent:Z

    .line 1240
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1241
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #setter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryChildItemReady:Z
    invoke-static {v0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4902(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Z)Z

    .line 1242
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1243
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1244
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5002(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1246
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1250
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->cancelAnimation()V

    .line 1251
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridView(ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 1252
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$5800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 1254
    :cond_3
    monitor-enter p0

    .line 1255
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mIsProcessingPrepareReadyEvent:Z

    .line 1256
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1240
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
