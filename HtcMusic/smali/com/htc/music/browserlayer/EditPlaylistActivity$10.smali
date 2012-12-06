.class Lcom/htc/music/browserlayer/EditPlaylistActivity$10;
.super Ljava/lang/Object;
.source "EditPlaylistActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$10;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1521
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$10;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v2, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1523
    .local v0, count:I
    if-eq p1, p2, :cond_0

    if-lez v0, :cond_0

    if-ge p1, v0, :cond_0

    if-lt p2, v0, :cond_1

    .line 1524
    :cond_0
    invoke-static {}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDropListener, from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    :goto_0
    return-void

    .line 1528
    :cond_1
    invoke-static {}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$10;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsDrop:Z
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1702(Lcom/htc/music/browserlayer/EditPlaylistActivity;Z)Z

    .line 1531
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$10;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v2, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    .line 1532
    .local v1, moveItemId:Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$10;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v2, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1534
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$10;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1300(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;

    goto :goto_0
.end method
