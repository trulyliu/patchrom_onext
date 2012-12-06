.class Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;
.super Ljava/lang/Object;
.source "GenreBrowserActivityExpGrid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x2

    .line 875
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 876
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    move-result-object v1

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    const-string v1, "[GenreBrowserActivityExpGrid]"

    const-string v2, "go delete : type 1"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    .line 899
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v1

    if-nez v1, :cond_1

    .line 881
    const-string v1, "[GenreBrowserActivityExpGrid]"

    const-string v2, "go delete : type 2"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3302(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 883
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v2

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3402(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;I)I

    .line 884
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    goto :goto_0

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 887
    const-string v1, "[GenreBrowserActivityExpGrid]"

    const-string v2, "go delete : type 3"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4002(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 889
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v2

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4102(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;I)I

    .line 890
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    goto :goto_0

    .line 894
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 895
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 896
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 897
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 898
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
