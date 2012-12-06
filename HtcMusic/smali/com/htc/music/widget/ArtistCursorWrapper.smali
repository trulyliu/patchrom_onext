.class public Lcom/htc/music/widget/ArtistCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ArtistCursorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArtistCursorWrapper"


# instance fields
.field private final ALBUM_ART_INDEX:I

.field private final ARTIST_ID_INDEX:I

.field private final ARTIST_INDEX:I

.field private final NUMBER_OF_ALBUMART_INDEX:I

.field private mArtistColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mColumIdxMapping:[I

.field private mCurrentPosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 9
    .parameter "albumCursor"

    .prologue
    const/4 v7, 0x0

    .line 118
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 78
    iput-object v7, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    .line 79
    iput-object v7, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistColumns:Ljava/util/ArrayList;

    .line 80
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    .line 81
    iput-object v7, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    .line 82
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->ARTIST_INDEX:I

    .line 83
    const/4 v6, 0x1

    iput v6, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->ARTIST_ID_INDEX:I

    .line 84
    const/4 v6, 0x2

    iput v6, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->ALBUM_ART_INDEX:I

    .line 85
    const/4 v6, 0x3

    iput v6, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->NUMBER_OF_ALBUMART_INDEX:I

    .line 119
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/widget/ArtistCursorWrapper;->initColumns(Landroid/database/Cursor;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 123
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "some column do not include"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 126
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    .line 128
    const-string v6, "artist_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 129
    .local v2, artistIdIdx:I
    const-string v6, "artist"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 131
    .local v3, artistIdx:I
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, albumIdIdx:I
    if-ltz v0, :cond_0

    .line 135
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    const/4 v4, 0x0

    .line 138
    .local v4, artistInfo:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    const/4 v1, -0x1

    .line 139
    .local v1, artistId:I
    const/4 v5, -0x1

    .line 140
    .local v5, newArtistId:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_5

    .line 142
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 143
    if-gez v5, :cond_3

    .line 144
    const-string v6, "ArtistCursorWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "abnormal artist id, newArtistId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_3
    if-ne v5, v1, :cond_4

    if-eqz v4, :cond_4

    .line 147
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->addAlbumId(I)V

    .line 154
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 149
    :cond_4
    new-instance v4, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;

    .end local v4           #artistInfo:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;-><init>(Ljava/lang/String;I)V

    .line 150
    .restart local v4       #artistInfo:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    move v1, v5

    .line 151
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->addAlbumId(I)V

    .line 152
    iget-object v6, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    :cond_5
    iget-object v6, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 157
    const-string v6, "ArtistCursorWrapper"

    const-string v7, "ArtistCursorWrapper constructer"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initColumns(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistColumns:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, index:I
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    .line 92
    const-string v4, "artist"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistColumns:Ljava/util/ArrayList;

    const-string v5, "artist"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v4, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aput v3, v4, v0

    .line 99
    const-string v4, "artist_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 100
    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistColumns:Ljava/util/ArrayList;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aput v2, v3, v1

    .line 114
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 96
    goto :goto_0

    .end local v0           #index:I
    .restart local v1       #index:I
    :cond_1
    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    move v2, v3

    .line 103
    goto :goto_0

    .line 91
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 365
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 366
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 368
    :cond_0
    return-void
.end method

.method public getAlbumIdArray()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v1

    .line 182
    :cond_1
    iget v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 185
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;

    .line 186
    .local v0, artistInfo:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->getAlbumIdList()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getAlbumIdArray(I)[I
    .locals 4
    .parameter "artistId"

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-object v2

    .line 164
    :cond_1
    const/4 v0, 0x0

    .line 166
    .local v0, artistInfo:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #artistInfo:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    check-cast v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;

    .line 168
    .restart local v0       #artistInfo:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    if-eqz v0, :cond_3

    iget v3, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist_id:I

    if-ne v3, p1, :cond_3

    .line 172
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->getAlbumIdList()[I

    move-result-object v2

    goto :goto_0

    .line 166
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "column"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistColumns:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 297
    const/4 v0, -0x1

    .line 299
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "column"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistColumns:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 289
    const/4 v0, -0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 4
    .parameter "column"

    .prologue
    const/4 v1, -0x1

    .line 323
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v1

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;

    .line 328
    .local v0, artistInfo:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    if-eqz v0, :cond_0

    .line 329
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 331
    :pswitch_1
    iget v1, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist_id:I

    goto :goto_0

    .line 333
    :pswitch_2
    iget v1, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->number_of_albums:I

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getLong(I)J
    .locals 5
    .parameter "column"

    .prologue
    const-wide/16 v1, -0x1

    .line 304
    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-wide v1

    .line 307
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    array-length v3, v3

    if-ge p1, v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;

    .line 309
    .local v0, artistInfo:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    if-eqz v0, :cond_0

    .line 310
    iget-object v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    aget v3, v3, p1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 312
    :pswitch_1
    iget v1, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist_id:I

    int-to-long v1, v1

    goto :goto_0

    .line 314
    :pswitch_2
    iget v1, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->number_of_albums:I

    int-to-long v1, v1

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .parameter "column"

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-object v1

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mArtistInfoList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;

    .line 347
    .local v0, artistInfo:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    if-eqz v0, :cond_0

    .line 348
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mColumIdxMapping:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    iget-object v1, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist:Ljava/lang/String;

    goto :goto_0

    .line 352
    :pswitch_1
    iget v1, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist_id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v1, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->album_art:Ljava/lang/String;

    goto :goto_0

    .line 356
    :pswitch_3
    iget v1, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->number_of_albums:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/htc/music/widget/ArtistCursorWrapper;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/htc/music/widget/ArtistCursorWrapper;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public move(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v0, 0x0

    .line 194
    iget v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    .line 195
    iget v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    if-gez v1, :cond_0

    .line 196
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    .line 203
    :goto_0
    return v0

    .line 199
    :cond_0
    iget v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/htc/music/widget/ArtistCursorWrapper;->getCount()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/htc/music/widget/ArtistCursorWrapper;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/htc/music/widget/ArtistCursorWrapper;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    .line 215
    iget v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    if-gez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    .line 218
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public moveToNext()Z
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/htc/music/widget/ArtistCursorWrapper;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/htc/music/widget/ArtistCursorWrapper;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    .line 225
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    .line 227
    :cond_0
    iget v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    .line 228
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 233
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/widget/ArtistCursorWrapper;->getCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 234
    iput p1, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 242
    iget v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    if-gt v0, v1, :cond_0

    .line 243
    iput v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    .line 244
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 246
    :cond_0
    iget v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper;->mCurrentPosition:I

    .line 247
    const/4 v0, 0x1

    goto :goto_0
.end method
