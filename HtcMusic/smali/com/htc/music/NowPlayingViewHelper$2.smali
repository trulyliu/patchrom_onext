.class Lcom/htc/music/NowPlayingViewHelper$2;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 693
    const-string v1, "[NowPlayingViewHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I
    invoke-static {v1, p3}, Lcom/htc/music/NowPlayingViewHelper;->access$702(Lcom/htc/music/NowPlayingViewHelper;I)I

    .line 701
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "content://drm/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 704
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    #calls: Lcom/htc/music/NowPlayingViewHelper;->checkDrmFile(Landroid/net/Uri;IJ)V
    invoke-static {v1, v2, p3, p4, p5}, Lcom/htc/music/NowPlayingViewHelper;->access$800(Lcom/htc/music/NowPlayingViewHelper;Landroid/net/Uri;IJ)V

    .line 713
    :goto_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->resetNowIndicator()V

    .line 715
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$900(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 716
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$900(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 708
    :cond_2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$2;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    goto :goto_1

    .line 718
    :cond_3
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "onListItemClick_Local(), listAdapter is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
