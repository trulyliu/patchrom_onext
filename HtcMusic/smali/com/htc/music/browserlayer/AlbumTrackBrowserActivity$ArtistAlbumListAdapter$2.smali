.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;
.super Ljava/lang/Object;
.source "AlbumTrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 1234
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v8, v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowTrackOptionsEnabled:Z
    invoke-static {v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1235
    const-string v8, "[AlbumTrackBrowserActivity]"

    const-string v9, "[getChildView][onClick] mShowTrackOptionsEnabled = false."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :goto_0
    return-void

    .line 1238
    :cond_0
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v8, v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const/4 v9, 0x0

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowTrackOptionsEnabled:Z
    invoke-static {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$902(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Z)Z

    .line 1240
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1241
    .local v1, data:Landroid/os/Bundle;
    const-string v8, "groupPos"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1242
    .local v3, groupPos:I
    const-string v8, "childPos"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1243
    .local v0, childPos:I
    const-string v8, "name"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1244
    .local v6, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1245
    .local v5, lastParent:Landroid/view/ViewGroup;
    if-eqz v5, :cond_1

    instance-of v8, v5, Lcom/htc/widget/HtcListView;

    if-nez v8, :cond_1

    .line 1246
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1247
    .local v7, parent:Landroid/view/ViewGroup;
    :goto_1
    if-eqz v7, :cond_1

    instance-of v8, v7, Lcom/htc/widget/HtcListView;

    if-nez v8, :cond_1

    .line 1248
    move-object v5, v7

    .line 1249
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .end local v7           #parent:Landroid/view/ViewGroup;
    check-cast v7, Landroid/view/ViewGroup;

    .restart local v7       #parent:Landroid/view/ViewGroup;
    goto :goto_1

    .line 1253
    .end local v7           #parent:Landroid/view/ViewGroup;
    :cond_1
    const/4 v4, -0x1

    .line 1254
    .local v4, index:I
    if-eqz v5, :cond_2

    .line 1255
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1256
    .restart local v7       #parent:Landroid/view/ViewGroup;
    if-eqz v7, :cond_2

    instance-of v8, v7, Lcom/htc/widget/HtcListView;

    if-eqz v8, :cond_2

    .line 1257
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1262
    .end local v7           #parent:Landroid/view/ViewGroup;
    :cond_2
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v8, v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1263
    .local v2, data2:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v8, v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const-string v9, "AudioId"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I
    invoke-static {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1002(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)I

    .line 1264
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v8, v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const/4 v9, -0x1

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I
    invoke-static {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1102(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)I

    .line 1265
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v8, v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const-string v9, "AlbumName"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1202(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1266
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v8, v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const-string v9, "ArtistName"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1302(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1267
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v8, v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const-string v9, "TrackName"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1702(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1268
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v8, v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const-string v9, "filePath"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1802(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1269
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
    invoke-static {v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->access$1400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 1270
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
    invoke-static {v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->access$1400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-result-object v8

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showTrackOptions(Ljava/lang/String;III)V
    invoke-static {v8, v6, v3, v0, v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;III)V

    goto/16 :goto_0
.end method
