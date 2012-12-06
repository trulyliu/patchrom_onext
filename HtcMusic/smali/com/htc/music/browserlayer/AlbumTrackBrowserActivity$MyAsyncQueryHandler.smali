.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AlbumTrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAsyncQueryHandler"
.end annotation


# static fields
.field private static final GET_CHILD_CURSOR:I = 0x1

.field private static final GET_CURSOR:I = 0x0

.field private static final PLAY_ALL:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    .line 306
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 307
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 311
    packed-switch p1, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 313
    :pswitch_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 314
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle()V
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    .line 315
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const v8, 0x7f06002a

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showEmptyView(I)V

    .line 316
    if-eqz p3, :cond_0

    .line 317
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 321
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 322
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 323
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/music/widget/GroupListView;->expandAllGroups()V

    goto :goto_0

    .line 327
    :pswitch_1
    if-eqz p3, :cond_0

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 330
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .local v5, originalPosition:I
    move-object v1, p2

    .line 332
    check-cast v1, Landroid/os/Bundle;

    .line 333
    .local v1, b:Landroid/os/Bundle;
    const-string v7, "position"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 334
    .local v6, position:I
    const-string v7, "album_key"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, albumKey:Ljava/lang/String;
    const-string v7, "[AlbumTrackBrowserActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onQueryComplete][GET_CHILD_CURSOR] position="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";albumKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v3, 0x0

    .line 337
    .local v3, effectiveChild:Z
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 338
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v8

    const-string v9, "album_key"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 340
    const-string v7, "[AlbumTrackBrowserActivity]"

    const-string v8, "[onQueryComplete][GET_CHILD_CURSOR] setChildrenCursor."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v7

    invoke-virtual {v7, v6, p3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 342
    const/4 v3, 0x1

    .line 344
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 345
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/widget/GroupListView;->setVisibility(I)V

    .line 349
    :cond_3
    if-nez v3, :cond_4

    .line 350
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .end local v0           #albumKey:Ljava/lang/String;
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #effectiveChild:Z
    .end local v5           #originalPosition:I
    .end local v6           #position:I
    :pswitch_2
    move-object v2, p2

    .line 357
    check-cast v2, Landroid/os/Bundle;

    .line 358
    .local v2, bundle:Landroid/os/Bundle;
    const-string v7, "position"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 359
    .restart local v6       #position:I
    const-string v7, "force-shuffle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 360
    .local v4, forceShuffle:Z
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-static {v7, p3, v6, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 362
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->triggerPlayAllAction()V

    .line 364
    :cond_5
    if-eqz p3, :cond_0

    .line 365
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
