.class Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;
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
    .line 1704
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    iput-object p2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 1708
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->showAlbumOptions()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 1709
    return-void
.end method
