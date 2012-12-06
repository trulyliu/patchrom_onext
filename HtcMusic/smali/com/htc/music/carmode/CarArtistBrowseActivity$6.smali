.class Lcom/htc/music/carmode/CarArtistBrowseActivity$6;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
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
.method constructor <init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 1053
    const-string v0, "[CarArtistBrowseActivity]"

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

    .line 1054
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1028
    monitor-enter p0

    .line 1029
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mIsProcessingPrepareReadyEvent:Z

    if-eqz v0, :cond_1

    .line 1030
    monitor-exit p0

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mIsProcessingPrepareReadyEvent:Z

    .line 1032
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1033
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    #setter for: Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryChildItemReady:Z
    invoke-static {v0, v2}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->access$202(Lcom/htc/music/carmode/CarArtistBrowseActivity;Z)Z

    .line 1034
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->access$300(Lcom/htc/music/carmode/CarArtistBrowseActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->access$300(Lcom/htc/music/carmode/CarArtistBrowseActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1036
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->access$302(Lcom/htc/music/carmode/CarArtistBrowseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v0, :cond_3

    .line 1042
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->cancelAnimation()V

    .line 1043
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    iget-object v2, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v2, v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridView(ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V

    .line 1044
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 1046
    :cond_3
    monitor-enter p0

    .line 1047
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mIsProcessingPrepareReadyEvent:Z

    .line 1048
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1032
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
