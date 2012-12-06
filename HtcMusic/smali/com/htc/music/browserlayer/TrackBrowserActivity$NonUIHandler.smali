.class final Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;
.super Landroid/os/Handler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 4314
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 4315
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4316
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 4321
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 4374
    :goto_0
    return-void

    .line 4324
    :pswitch_0
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFolderId:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDrmFolderId:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/htc/music/util/ContentUtils;->getTracksForFolder(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4326
    .local v2, filesCursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4327
    .local v0, audioWhere:Ljava/lang/StringBuilder;
    const-string v6, "title != \'\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4328
    const-string v6, " AND is_music>=1"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4329
    const-string v6, " AND _id IN("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4331
    if-eqz v2, :cond_3

    .line 4332
    const-string v6, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4333
    .local v4, idColumnIdx:I
    if-ltz v4, :cond_2

    .line 4334
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 4335
    .local v1, count:I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4336
    const-string v6, "[TrackBrowserActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filesCursor count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", idColumnIdx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 4339
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4341
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v1, :cond_0

    .line 4342
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4344
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4338
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4347
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4348
    const/4 v2, 0x0

    .line 4361
    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4363
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 4364
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 4365
    .local v5, message:Landroid/os/Message;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4366
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 4351
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #message:Landroid/os/Message;
    :cond_2
    const-string v6, "[TrackBrowserActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal idColumnIdx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4352
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4353
    const/4 v2, 0x0

    .line 4354
    goto/16 :goto_0

    .line 4358
    .end local v4           #idColumnIdx:I
    :cond_3
    const-string v6, "[TrackBrowserActivity]"

    const-string v7, "filesCursor is null!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4369
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #idColumnIdx:I
    :cond_4
    const-string v6, "[TrackBrowserActivity]"

    const-string v7, "Get folder songs, mUiHandler is null!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4321
    nop

    :pswitch_data_0
    .packed-switch 0x1f8bb
        :pswitch_0
    .end packed-switch
.end method
