.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$1;
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
    .line 2257
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "clickedView"

    .prologue
    .line 2261
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2263
    .local v0, pos:I
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2264
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lcom/htc/widget/HtcDeleteButton;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/HtcDeleteButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2265
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    :cond_0
    :goto_0
    return-void

    .line 2267
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
