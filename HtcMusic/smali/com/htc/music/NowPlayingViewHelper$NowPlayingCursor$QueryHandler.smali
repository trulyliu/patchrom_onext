.class Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;


# direct methods
.method public constructor <init>(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    .line 2235
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2236
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .parameter "token"
    .parameter "nowPlaying"
    .parameter "cursor"

    .prologue
    .line 2241
    if-nez p2, :cond_1

    .line 2242
    const-string v13, "[NowPlayingViewHelper]"

    const-string v14, "now playing list is null"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 2246
    .restart local p2
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    check-cast p2, [I

    .end local p2
    check-cast p2, [I

    move-object/from16 v0, p2

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    invoke-static {v13, v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2802(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;[I)[I

    .line 2247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2800(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)[I

    move-result-object v14

    array-length v14, v14

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2902(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;I)I

    .line 2248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2900(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)I

    move-result v13

    if-eqz v13, :cond_0

    .line 2252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3000(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 2253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3000(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    const/4 v14, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3002(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2257
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    iget-object v14, v14, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v0, p3

    #calls: Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v14, v0}, Lcom/htc/music/NowPlayingViewHelper;->access$3100(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v14

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3002(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3000(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_3

    .line 2259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    const/4 v14, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2902(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;I)I

    goto :goto_0

    .line 2263
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryContentObserver:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3200(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryDataSetObserver:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3300(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 2264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryContentObserver:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3200(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/ContentObserver;

    .line 2265
    .local v6, o:Landroid/database/ContentObserver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    invoke-virtual {v13, v6}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 2267
    .end local v6           #o:Landroid/database/ContentObserver;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryDataSetObserver:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3300(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/DataSetObserver;

    .line 2268
    .local v6, o:Landroid/database/DataSetObserver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    invoke-virtual {v13, v6}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2269
    if-eqz v6, :cond_5

    .line 2270
    invoke-virtual {v6}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_2

    .line 2274
    .end local v6           #o:Landroid/database/DataSetObserver;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryContentObserver:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3200(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 2275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    const/4 v14, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryContentObserver:Ljava/util/ArrayList;
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3202(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2276
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryDataSetObserver:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3300(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 2277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    const/4 v14, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryDataSetObserver:Ljava/util/ArrayList;
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3302(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2280
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3000(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 2281
    .local v10, size:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    new-array v14, v10, [I

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3402(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;[I)[I

    .line 2282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3000(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3000(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Landroid/database/Cursor;

    move-result-object v13

    const-string v14, "_id"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2285
    .local v1, colidx:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v10, :cond_8

    .line 2286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3400(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3000(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    aput v14, v13, v4

    .line 2287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3000(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 2285
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2291
    :cond_8
    if-nez v10, :cond_a

    .line 2292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    const/4 v14, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2902(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;I)I

    .line 2293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    iget-object v13, v13, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->clearQueue()Z
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$1600(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2294
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    iget-object v13, v13, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->launchMusicBrowser()V
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$1700(Lcom/htc/music/NowPlayingViewHelper;)V

    goto/16 :goto_0

    .line 2297
    :cond_9
    const-string v13, "[NowPlayingViewHelper]"

    const-string v14, "onQueryComplete, Fail to clearQueue."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2308
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    const/4 v14, -0x1

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mPos:I
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3502(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;I)I

    .line 2309
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    const/4 v14, -0x1

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mRowIdColumnIndex:I
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3602(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;I)I

    .line 2310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    const/4 v14, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentRowID:Ljava/lang/Long;
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3702(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;Ljava/lang/Long;)Ljava/lang/Long;

    .line 2311
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    invoke-virtual {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->moveToFirst()Z

    .line 2312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    const/4 v14, -0x1

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3802(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;I)I

    .line 2320
    const/4 v8, 0x0

    .line 2321
    .local v8, removeTrackCount:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2800(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)[I

    move-result-object v13

    array-length v13, v13

    new-array v11, v13, [I

    .line 2323
    .local v11, trackIds:[I
    const/4 v9, 0x0

    .line 2324
    .local v9, removed:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2800(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)[I

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v4, v13, -0x1

    :goto_4
    if-ltz v4, :cond_c

    .line 2325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2800(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)[I

    move-result-object v13

    aget v12, v13, v4

    .line 2326
    .local v12, trackid:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3400(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)[I

    move-result-object v13

    invoke-static {v13, v12}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    .line 2327
    .local v2, crsridx:I
    if-gez v2, :cond_b

    .line 2332
    aput v12, v11, v8

    .line 2333
    add-int/lit8 v8, v8, 0x1

    .line 2324
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 2337
    .end local v2           #crsridx:I
    .end local v12           #trackid:I
    :cond_c
    if-lez v8, :cond_d

    .line 2338
    new-array v7, v8, [I

    .line 2339
    .local v7, removePosition:[I
    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v7

    invoke-static {v11, v13, v7, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3900(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v13

    invoke-interface {v13, v7}, Lcom/htc/music/IMediaPlaybackService;->removeTracksReduceBroadcast([I)I

    move-result v13

    add-int/2addr v9, v13

    .line 2343
    .end local v7           #removePosition:[I
    :cond_d
    if-lez v9, :cond_e

    .line 2344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3900(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v14

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v14

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2802(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;[I)[I

    .line 2345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2800(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)[I

    move-result-object v14

    array-length v14, v14

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2902(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;I)I

    .line 2346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2900(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)I

    move-result v13

    if-nez v13, :cond_e

    .line 2347
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    const/4 v14, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$3402(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;[I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2351
    .end local v9           #removed:I
    .end local v11           #trackIds:[I
    :catch_0
    move-exception v3

    .line 2352
    .local v3, ex:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    const/4 v14, 0x0

    new-array v14, v14, [I

    #setter for: Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    invoke-static {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->access$2802(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;[I)[I

    .line 2355
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    iget-object v13, v13, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    invoke-virtual {v13, v14}, Lcom/htc/music/NowPlayingViewHelper;->init(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method
