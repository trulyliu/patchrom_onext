.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$2;
.super Ljava/lang/Object;
.source "TrackBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2307
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$2;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "clickedView"

    .prologue
    .line 2311
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2312
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "audioid"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2313
    .local v0, audioId:I
    const-string v3, "position"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2314
    .local v2, position:I
    const-string v3, "[TrackBrowserFragment]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click button, audioId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$2;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v3

    int-to-long v4, v0

    const/4 v6, 0x0

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showTrackOptions(IJZ)Z
    invoke-static {v3, v2, v4, v5, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;IJZ)Z

    .line 2316
    return-void
.end method
