.class Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;
.super Ljava/lang/Object;
.source "AlbumDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

.field final synthetic val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1849
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    iput-object p2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "clickedView"

    .prologue
    .line 1852
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;
    invoke-static {v1, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$102(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1853
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 1854
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->showTrackOptions()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 1855
    return-void
.end method
