.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArtistQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1591
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1592
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 1596
    const-string v1, "[CarLocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@ ArtistQueryHandler, onQueryComplete(), token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCurrentSearchToken:I
    invoke-static {v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$5000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1598
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1599
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1604
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1605
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1606
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1607
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$302(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1610
    :cond_3
    if-eqz p3, :cond_4

    .line 1611
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    new-instance v2, Lcom/htc/music/widget/ArtistCursorWrapper;

    invoke-direct {v2, p3}, Lcom/htc/music/widget/ArtistCursorWrapper;-><init>(Landroid/database/Cursor;)V

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$302(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1614
    :cond_4
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iput-boolean v4, v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1616
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1618
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorIdIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$602(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 1620
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorArtistIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$702(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 1624
    :cond_5
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$5100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1625
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1626
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$5100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1628
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->handleProgress(Z)V
    invoke-static {v1, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$5200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Z)V

    goto :goto_0
.end method
