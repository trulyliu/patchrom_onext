.class Lcom/htc/music/AudioPreview$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field private mAudioPreview:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/AudioPreview;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/htc/music/AudioPreview;)V
    .locals 1
    .parameter "cr"
    .parameter "audioPreview"

    .prologue
    .line 431
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/AudioPreview$QueryHandler;->mAudioPreview:Ljava/lang/ref/WeakReference;

    .line 432
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview$QueryHandler;->mAudioPreview:Ljava/lang/ref/WeakReference;

    .line 433
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 437
    iget-object v7, p0, Lcom/htc/music/AudioPreview$QueryHandler;->mAudioPreview:Ljava/lang/ref/WeakReference;

    if-nez v7, :cond_1

    .line 438
    if-eqz p3, :cond_0

    .line 439
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v7, p0, Lcom/htc/music/AudioPreview$QueryHandler;->mAudioPreview:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/AudioPreview;

    .line 444
    .local v3, audioPreview:Lcom/htc/music/AudioPreview;
    if-nez v3, :cond_2

    .line 445
    if-eqz p3, :cond_0

    .line 446
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 450
    :cond_2
    if-eqz p3, :cond_9

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 452
    const-string v7, "title"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 454
    .local v6, titleIdx:I
    const-string v7, "artist"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 456
    .local v2, artistIdx:I
    const-string v7, "_id"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 457
    .local v4, idIdx:I
    const-string v7, "album_id"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, albumIdIdx:I
    if-ltz v4, :cond_3

    .line 461
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    #setter for: Lcom/htc/music/AudioPreview;->mMediaId:J
    invoke-static {v3, v7, v8}, Lcom/htc/music/AudioPreview;->access$102(Lcom/htc/music/AudioPreview;J)J

    .line 464
    :cond_3
    if-ltz v6, :cond_8

    .line 465
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, title:Ljava/lang/String;
    #getter for: Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/htc/music/AudioPreview;->access$200(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    if-ltz v2, :cond_4

    .line 468
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, artist:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 470
    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    .end local v1           #artist:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_4
    :goto_1
    if-ltz v0, :cond_5

    .line 481
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    #setter for: Lcom/htc/music/AudioPreview;->mAlbumID:I
    invoke-static {v3, v7}, Lcom/htc/music/AudioPreview;->access$402(Lcom/htc/music/AudioPreview;I)I

    .line 482
    #getter for: Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/AudioPreview;->access$500(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$NonUiHandler;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 483
    #getter for: Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/AudioPreview;->access$500(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$NonUiHandler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/music/AudioPreview$NonUiHandler;->sendEmptyMessage(I)Z

    .line 491
    .end local v0           #albumIdIdx:I
    .end local v2           #artistIdx:I
    .end local v4           #idIdx:I
    .end local v6           #titleIdx:I
    :cond_5
    :goto_2
    if-eqz p3, :cond_6

    .line 492
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_6
    invoke-virtual {v3}, Lcom/htc/music/AudioPreview;->setNames()V

    goto :goto_0

    .line 472
    .restart local v0       #albumIdIdx:I
    .restart local v1       #artist:Ljava/lang/String;
    .restart local v2       #artistIdx:I
    .restart local v4       #idIdx:I
    .restart local v5       #title:Ljava/lang/String;
    .restart local v6       #titleIdx:I
    :cond_7
    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f06003d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 478
    .end local v1           #artist:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_8
    const-string v7, "[AudioPreview]"

    const-string v8, "Cursor had no names for us"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 488
    .end local v0           #albumIdIdx:I
    .end local v2           #artistIdx:I
    .end local v4           #idIdx:I
    .end local v6           #titleIdx:I
    :cond_9
    const-string v7, "[AudioPreview]"

    const-string v8, "empty cursor"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
