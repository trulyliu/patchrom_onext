.class Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;
.super Landroid/os/Handler;
.source "PlaylistBrowserActivityGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 1679
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1681
    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$2500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$2600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1684
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$2700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 1685
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1688
    new-array v2, v0, [I

    .line 1689
    .local v2, list:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1690
    add-int/lit8 v4, v1, 0x1

    aput v4, v2, v1

    .line 1689
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1692
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$2900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$2800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->deleteParentItems([ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 1693
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$3100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;
    invoke-static {v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$3000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startDataSetChangeAnimation([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 1694
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle()V

    .line 1696
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1697
    .local v3, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1679
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
