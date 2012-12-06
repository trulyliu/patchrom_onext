.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;
.super Ljava/lang/Object;
.source "ArtistBrowserActivityExpGrid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->showDeleteDialog()V
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
    .line 931
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

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

    .line 933
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 934
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    move-result-object v1

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 935
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "go delete : type 1"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    .line 957
    :goto_0
    return-void

    .line 938
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v1

    if-nez v1, :cond_1

    .line 939
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "go delete : type 2"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3302(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 941
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v2

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3402(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;I)I

    .line 942
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    goto :goto_0

    .line 944
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 945
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "go delete : type 3"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4002(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 947
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v2

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4102(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;I)I

    .line 948
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    goto :goto_0

    .line 952
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 953
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 954
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 955
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 956
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
