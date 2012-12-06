.class Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MPAsyncQueryHandler"
.end annotation


# instance fields
.field private final CHECK_LOCAL_HAS_SONG:I

.field private final CHECK_LOCAL_HAS_SONG_FOR_INIT:I

.field private final GET_ALBM_ART_PATH:I

.field private final GET_FIRST_TRACK_INFO:I

.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/music/MiniPlayer;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "cr"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    .line 743
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 734
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->CHECK_LOCAL_HAS_SONG:I

    .line 736
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->GET_FIRST_TRACK_INFO:I

    .line 738
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->GET_ALBM_ART_PATH:I

    .line 740
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->CHECK_LOCAL_HAS_SONG_FOR_INIT:I

    .line 744
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 748
    const-string v6, "[MiniPlayer]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onQueryComplete] token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    packed-switch p1, :pswitch_data_0

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 752
    :pswitch_0
    if-eqz p3, :cond_2

    .line 753
    iget-object v6, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    iput-boolean v5, v6, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 754
    const-string v5, "[MiniPlayer]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onQueryComplete] cursor.getCount()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 760
    :goto_1
    const-string v5, "[MiniPlayer]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onQueryComplete] loadTrackFail="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-boolean v7, v7, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-boolean v5, v5, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-eqz v5, :cond_0

    .line 762
    iget-object v6, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v7, v5, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-boolean v5, v5, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    if-eqz v5, :cond_3

    const v5, 0x7f0600d7

    :goto_2
    invoke-virtual {v7, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 764
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v5, v5, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v5, :cond_0

    .line 765
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v5, v5, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    invoke-virtual {v5, v9}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 757
    :cond_2
    iget-object v6, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iput-boolean v5, v6, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    goto :goto_1

    .line 762
    :cond_3
    const/high16 v5, 0x7f06

    goto :goto_2

    .line 772
    :pswitch_1
    if-eqz p3, :cond_7

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_7

    .line 773
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 774
    const-string v5, "artist"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, artistName:Ljava/lang/String;
    const-string v5, "title"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 776
    .local v4, trackName:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v5, v2, v4}, Lcom/htc/music/MiniPlayer;->updateTrackInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {p3}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 779
    .local v3, dlAlbumArtPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 780
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v5, v3}, Lcom/htc/music/MiniPlayer;->updateThumb(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    .end local v2           #artistName:Ljava/lang/String;
    .end local v3           #dlAlbumArtPath:Ljava/lang/String;
    .end local v4           #trackName:Ljava/lang/String;
    :cond_4
    :goto_3
    if-eqz p3, :cond_0

    .line 794
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 782
    .restart local v2       #artistName:Ljava/lang/String;
    .restart local v3       #dlAlbumArtPath:Ljava/lang/String;
    .restart local v4       #trackName:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v5, "album_id"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 784
    .local v1, albumID:I
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {}, Lcom/htc/music/MiniPlayer;->access$600()[Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v5, v6, v7, v1}, Lcom/htc/music/util/ContentUtils;->getAlbum(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 793
    .end local v1           #albumID:I
    .end local v2           #artistName:Ljava/lang/String;
    .end local v3           #dlAlbumArtPath:Ljava/lang/String;
    .end local v4           #trackName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz p3, :cond_6

    .line 794
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5

    .line 787
    :cond_7
    :try_start_2
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 788
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v5, v5, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v5, :cond_4

    .line 789
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v5, v5, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 801
    :pswitch_2
    if-eqz p3, :cond_8

    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_8

    .line 802
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 803
    const-string v5, "album_art"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, albumArtPath:Ljava/lang/String;
    const-string v5, "[MiniPlayer]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onQueryComplete] Update album art path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v5, v0}, Lcom/htc/music/MiniPlayer;->updateThumb(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 808
    .end local v0           #albumArtPath:Ljava/lang/String;
    :cond_8
    if-eqz p3, :cond_0

    .line 809
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 808
    :catchall_1
    move-exception v5

    if-eqz p3, :cond_9

    .line 809
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v5

    .line 815
    :pswitch_3
    const-string v5, "[MiniPlayer]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onQueryComplete] loadTrackFail="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-boolean v7, v7, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    if-eqz p3, :cond_a

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_b

    .line 817
    :cond_a
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v5, v10}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 818
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v5, v5, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    if-eqz v5, :cond_b

    .line 819
    iget-object v5, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v5, v5, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/music/widget/MiniPlayer2LineText;

    invoke-virtual {v5, v9}, Lcom/htc/music/widget/MiniPlayer2LineText;->setSecondaryTextVisibility(I)V

    .line 822
    :cond_b
    if-eqz p3, :cond_0

    .line 823
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
