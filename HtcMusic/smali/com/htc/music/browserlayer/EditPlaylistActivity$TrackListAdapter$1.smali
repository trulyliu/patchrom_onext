.class Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;
.super Ljava/lang/Object;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "clickedView"

    .prologue
    .line 1164
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1165
    .local v1, value:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 1166
    invoke-static {}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "can\'t get clickedView tag!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1169
    .restart local p1
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1170
    .local v0, position:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;
    invoke-static {v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$1100(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/EditPlaylistActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;
    invoke-static {v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$1100(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/EditPlaylistActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;
    invoke-static {v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$1100(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/EditPlaylistActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;
    invoke-static {v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$1100(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/EditPlaylistActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    check-cast p1, Lcom/htc/widget/HtcDeleteButton;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/HtcDeleteButton;->isChecked()Z

    move-result v3

    iput-boolean v3, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    goto :goto_0
.end method
