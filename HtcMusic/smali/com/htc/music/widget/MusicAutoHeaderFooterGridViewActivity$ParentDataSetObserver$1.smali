.class Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->showMessageView(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "showMessageView"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->hideEmptyErrorView()V

    .line 1156
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    goto :goto_0
.end method
