.class public Lcom/htc/music/NpCategory;
.super Ljava/lang/Object;
.source "NpCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CATEGORY_ALBUM:S = 0x8s

.field public static final CATEGORY_ALLALBUM:S = 0xcs

.field public static final CATEGORY_ALLARTIST:S = 0x5s

.field public static final CATEGORY_ALLCOMPOSER:S = 0x13s

.field public static final CATEGORY_ALLGENRE:S = 0x11s

.field public static final CATEGORY_ALLPLAYLIST:S = 0x16s

.field public static final CATEGORY_ALLSONG:S = 0x0s

.field public static final CATEGORY_ARTIST:S = 0x2s

.field public static final CATEGORY_ARTIST_ALBUM:S = 0xbs

.field public static final CATEGORY_ARTIST_ALLALBUM:S = 0xfs

.field public static final CATEGORY_COMPOSER:S = 0x12s

.field public static final CATEGORY_COMPOSER_ALBUM:S = 0xas

.field public static final CATEGORY_COMPOSER_ALLALBUM:S = 0xes

.field public static final CATEGORY_COMPOSER_ALLARTIST:S = 0x7s

.field public static final CATEGORY_COMPOSER_ARTIST:S = 0x4s

.field public static final CATEGORY_DONT_REFRESH:S = 0x15s

.field public static final CATEGORY_GENRE:S = 0x10s

.field public static final CATEGORY_GENRE_ALBUM:S = 0x9s

.field public static final CATEGORY_GENRE_ALLALBUM:S = 0xds

.field public static final CATEGORY_GENRE_ALLARTIST:S = 0x6s

.field public static final CATEGORY_GENRE_ARTIST:S = 0x3s

.field public static final CATEGORY_PLAYLIST:S = 0x14s

.field public static final CATEGORY_PURCHASED:S = 0x1s

.field public static final CATEGORY_UNDEFINED:S = -0x1s

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/music/NpCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "[NpCategory]"


# instance fields
.field private mAlbumId:I

.field private mArtistId:I

.field private mCategory:S

.field private mComposer:Ljava/lang/StringBuilder;

.field private mGenreId:I

.field private mPlaylistId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 492
    new-instance v0, Lcom/htc/music/NpCategory$1;

    invoke-direct {v0}, Lcom/htc/music/NpCategory$1;-><init>()V

    sput-object v0, Lcom/htc/music/NpCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 506
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 508
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "[NpCategory]"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/music/NpCategory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/music/NpCategory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 3
    .parameter "category"

    .prologue
    const/4 v2, -0x1

    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    .line 131
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 136
    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 137
    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 138
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 140
    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 141
    return-void

    .line 134
    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public constructor <init>(SIIILjava/lang/String;I)V
    .locals 3
    .parameter "category"
    .parameter "artistId"
    .parameter "albumId"
    .parameter "genreId"
    .parameter "composer"
    .parameter "playlistId"

    .prologue
    const/4 v2, -0x1

    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    .line 145
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 150
    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 151
    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 152
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 154
    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 156
    invoke-virtual {p0, p2}, Lcom/htc/music/NpCategory;->setArtistId(I)Lcom/htc/music/NpCategory;

    .line 157
    invoke-virtual {p0, p3}, Lcom/htc/music/NpCategory;->setAlbumId(I)Lcom/htc/music/NpCategory;

    .line 158
    invoke-virtual {p0, p4}, Lcom/htc/music/NpCategory;->setGenreId(I)Lcom/htc/music/NpCategory;

    .line 159
    invoke-virtual {p0, p5}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 160
    invoke-virtual {p0, p6}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    .line 161
    return-void

    .line 148
    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "category"
    .parameter "artistId"
    .parameter "albumId"
    .parameter "genreId"
    .parameter "composer"
    .parameter "playlistId"

    .prologue
    const/4 v2, -0x1

    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    .line 165
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 170
    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 171
    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 172
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 174
    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 176
    invoke-virtual {p0, p2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 177
    invoke-virtual {p0, p3}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 178
    invoke-virtual {p0, p4}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 179
    invoke-virtual {p0, p5}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 180
    invoke-virtual {p0, p6}, Lcom/htc/music/NpCategory;->setPlaylistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 181
    return-void

    .line 168
    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    return v0
.end method

.method public getArtistId()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    return v0
.end method

.method public getCategory()S
    .locals 1

    .prologue
    .line 442
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenreId()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    return v0
.end method

.method public getPlaylistId()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    return v0
.end method

.method public query(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 26
    .parameter "context"

    .prologue
    .line 525
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v3, 0x16

    if-gt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    .line 526
    :cond_0
    const/4 v11, 0x0

    .line 842
    :cond_1
    :goto_0
    return-object v11

    .line 529
    :cond_2
    const/4 v11, 0x0

    .line 530
    .local v11, c:Landroid/database/Cursor;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v24, where:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 532
    .local v7, cols:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 533
    .local v10, sortOrder:Ljava/lang/String;
    const/4 v6, 0x0

    .line 535
    .local v6, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    packed-switch v2, :pswitch_data_0

    .line 826
    :pswitch_0
    const-string v2, "[NpCategory]"

    const-string v3, "There is something wrong in NpCategory.query()."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :goto_1
    if-nez v10, :cond_3

    .line 829
    const-string v10, "title COLLATE NOCASE ASC"

    .line 831
    :cond_3
    if-nez v6, :cond_4

    .line 832
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 834
    :cond_4
    if-nez v7, :cond_5

    .line 835
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .end local v7           #cols:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v7, v2

    .line 837
    .restart local v7       #cols:[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 838
    const/16 v24, 0x0

    .line 839
    const/4 v10, 0x0

    .line 840
    const/4 v6, 0x0

    .line 841
    const/4 v7, 0x0

    .line 842
    goto :goto_0

    .line 537
    :pswitch_1
    const-string v2, "title != \'\' AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 541
    :pswitch_2
    const-string v2, "title != \'\' AND is_music>1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 545
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_6

    .line 546
    const/4 v11, 0x0

    goto :goto_0

    .line 548
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 552
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_8

    .line 553
    :cond_7
    const/4 v11, 0x0

    goto :goto_0

    .line 555
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 559
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    .line 560
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 562
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 566
    :pswitch_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v10, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 570
    goto/16 :goto_1

    .line 573
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_b

    .line 574
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 576
    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v10, "title_key"

    .line 578
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 579
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_1

    .line 581
    :cond_c
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 586
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_e

    .line 587
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 589
    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v10, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 594
    goto/16 :goto_1

    .line 597
    :pswitch_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_f

    .line 598
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 600
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 602
    goto/16 :goto_1

    .line 605
    :pswitch_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_11

    .line 606
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 608
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 610
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 614
    :goto_2
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 615
    goto/16 :goto_1

    .line 612
    :cond_12
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 618
    :pswitch_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_14

    .line 619
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 621
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 624
    goto/16 :goto_1

    .line 627
    :pswitch_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_16

    .line 628
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 630
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 633
    goto/16 :goto_1

    .line 636
    :pswitch_d
    const-string v2, "title != \'\' AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    .line 640
    goto/16 :goto_1

    .line 643
    :pswitch_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_17

    .line 644
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 646
    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    const-string v10, "title_key"

    .line 648
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 649
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_1

    .line 651
    :cond_18
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 656
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1a

    .line 657
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 659
    :cond_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    .line 664
    goto/16 :goto_1

    .line 667
    :pswitch_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_1b

    .line 668
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 670
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    .line 674
    goto/16 :goto_1

    .line 677
    :pswitch_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_1c

    .line 678
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 680
    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    .line 682
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 686
    :goto_3
    const-string v10, "title_key"

    .line 687
    goto/16 :goto_1

    .line 684
    :cond_1d
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 690
    :pswitch_12
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v25, whereClause:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "album_id"

    aput-object v5, v4, v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "title"

    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #cols:[Ljava/lang/String;
    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 699
    .local v22, results:Landroid/database/Cursor;
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 704
    .local v16, genres:Landroid/database/Cursor;
    if-eqz v22, :cond_1e

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_22

    :cond_1e
    if-eqz v16, :cond_1f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_22

    .line 706
    :cond_1f
    if-eqz v22, :cond_20

    .line 707
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 708
    const/16 v22, 0x0

    .line 710
    :cond_20
    if-eqz v16, :cond_21

    .line 711
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 712
    const/16 v16, 0x0

    .line 714
    :cond_21
    const/16 v25, 0x0

    .line 715
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 718
    :cond_22
    if-nez v16, :cond_25

    const/16 v19, 0x0

    .line 719
    .local v19, len:I
    :goto_4
    if-eqz v22, :cond_23

    .line 720
    add-int/lit8 v19, v19, 0x1

    .line 721
    move-object/from16 v11, v22

    .line 724
    :cond_23
    move/from16 v0, v19

    new-array v15, v0, [Landroid/database/Cursor;

    .line 725
    .local v15, cursors:[Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 726
    .local v23, start:I
    if-eqz v22, :cond_24

    .line 727
    const/4 v2, 0x0

    aput-object v22, v15, v2

    .line 728
    add-int/lit8 v23, v23, 0x1

    .line 730
    :cond_24
    if-eqz v16, :cond_27

    .line 731
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 732
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 733
    .local v12, colidx:I
    move/from16 v18, v23

    .local v18, i:I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_26

    .line 734
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 735
    .local v17, gid:I
    const-string v2, "external"

    move/from16 v0, v17

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "album_id"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 739
    .local v14, cursor:Landroid/database/Cursor;
    aput-object v14, v15, v18

    .line 740
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 733
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 718
    .end local v12           #colidx:I
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v15           #cursors:[Landroid/database/Cursor;
    .end local v17           #gid:I
    .end local v18           #i:I
    .end local v19           #len:I
    .end local v23           #start:I
    :cond_25
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v19

    goto :goto_4

    .line 742
    .restart local v12       #colidx:I
    .restart local v15       #cursors:[Landroid/database/Cursor;
    .restart local v18       #i:I
    .restart local v19       #len:I
    .restart local v23       #start:I
    :cond_26
    new-instance v11, Landroid/database/MergeCursor;

    .end local v11           #c:Landroid/database/Cursor;
    invoke-direct {v11, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 744
    .restart local v11       #c:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 745
    const/16 v16, 0x0

    .line 746
    const/16 v25, 0x0

    .line 747
    goto/16 :goto_0

    .line 749
    .end local v12           #colidx:I
    .end local v18           #i:I
    :cond_27
    const/16 v25, 0x0

    .line 750
    if-eqz v22, :cond_28

    .line 751
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 752
    const/16 v22, 0x0

    .line 754
    :cond_28
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 759
    .end local v15           #cursors:[Landroid/database/Cursor;
    .end local v16           #genres:Landroid/database/Cursor;
    .end local v19           #len:I
    .end local v22           #results:Landroid/database/Cursor;
    .end local v23           #start:I
    .end local v25           #whereClause:Ljava/lang/StringBuilder;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #cols:[Ljava/lang/String;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2a

    .line 760
    :cond_29
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 762
    :cond_2a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 766
    :pswitch_14
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string v10, "composer COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 769
    goto/16 :goto_1

    .line 772
    :pswitch_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_2b

    .line 773
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 775
    :cond_2b
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .end local v7           #cols:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "audio_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v7, v2

    .line 779
    .restart local v7       #cols:[Ljava/lang/String;
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 780
    const-string v2, "title != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const-string v10, "play_order"

    .line 782
    goto/16 :goto_1

    .line 785
    :pswitch_16
    const/4 v2, 0x2

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio_id"

    aput-object v3, v13, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v13, v2

    .line 789
    .end local v7           #cols:[Ljava/lang/String;
    .local v13, cols:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 792
    .local v4, colsPlaylist:[Ljava/lang/String;
    const/16 v20, 0x0

    .line 793
    .local v20, playlistCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 794
    .restart local v15       #cursors:[Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 796
    .restart local v19       #len:I
    :try_start_0
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    .end local v6           #uri:Landroid/net/Uri;
    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 799
    if-eqz v20, :cond_2d

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2d

    .line 800
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 801
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 802
    const-string v2, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 803
    .restart local v12       #colidx:I
    move/from16 v0, v19

    new-array v15, v0, [Landroid/database/Cursor;

    .line 804
    const/16 v18, 0x0

    .end local v10           #sortOrder:Ljava/lang/String;
    .restart local v18       #i:I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2c

    .line 805
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 806
    .local v21, plid:I
    const-string v2, "external"

    move/from16 v0, v21

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "title_key"

    move-object/from16 v5, p1

    move-object v7, v13

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    aput-object v2, v15, v18

    .line 810
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 804
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 812
    .end local v21           #plid:I
    :cond_2c
    new-instance v11, Landroid/database/MergeCursor;

    .end local v11           #c:Landroid/database/Cursor;
    invoke-direct {v11, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    .restart local v11       #c:Landroid/database/Cursor;
    if-eqz v20, :cond_1

    .line 819
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 820
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #colidx:I
    .end local v18           #i:I
    :goto_7
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 815
    .restart local v10       #sortOrder:Ljava/lang/String;
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_2d
    const/4 v11, 0x0

    .line 818
    .end local v11           #c:Landroid/database/Cursor;
    if-eqz v20, :cond_1

    .line 819
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 818
    .end local v10           #sortOrder:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_2e

    .line 819
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 820
    const/16 v20, 0x0

    .line 818
    :cond_2e
    throw v2

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method public reset(S)Lcom/htc/music/NpCategory;
    .locals 4
    .parameter "category"

    .prologue
    const/4 v3, -0x1

    .line 191
    if-lt p1, v3, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_2

    .line 192
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 197
    :goto_0
    iput v3, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 198
    iput v3, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 199
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 200
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 203
    :cond_1
    iput v3, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 204
    return-object p0

    .line 195
    :cond_2
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public setAlbumId(I)Lcom/htc/music/NpCategory;
    .locals 6
    .parameter "albumId"

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 267
    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-object p0

    .line 270
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    .line 271
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 284
    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    goto :goto_0

    .line 272
    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 273
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 274
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    .line 275
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 276
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 277
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 278
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v4, :cond_0

    goto :goto_1
.end method

.method public setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "albumId"

    .prologue
    .line 295
    if-nez p1, :cond_1

    .line 307
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 298
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 300
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 301
    .local v1, localAlbumId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setAlbumId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 302
    .end local v1           #localAlbumId:I
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArtistId(I)Lcom/htc/music/NpCategory;
    .locals 7
    .parameter "artistId"

    .prologue
    const/16 v6, 0xf

    const/16 v5, 0xb

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 213
    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-object p0

    .line 216
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    .line 217
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 233
    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    goto :goto_0

    .line 218
    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 219
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 220
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    .line 221
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 222
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 223
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 224
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 225
    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 226
    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v6, :cond_0

    goto :goto_1
.end method

.method public setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "artistId"

    .prologue
    .line 244
    if-nez p1, :cond_1

    .line 256
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 247
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 249
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 250
    .local v1, localArtistId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setArtistId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 251
    .end local v1           #localArtistId:I
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 7
    .parameter "composer"

    .prologue
    const/16 v6, 0x12

    const/16 v5, 0xe

    const/16 v4, 0xa

    const/4 v3, 0x7

    const/4 v2, 0x4

    .line 367
    if-nez p1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-object p0

    .line 370
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 373
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_4

    .line 374
    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 390
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 375
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 376
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 377
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 378
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 379
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 380
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 381
    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    .line 382
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 383
    :cond_8
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v6, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v3, :cond_0

    goto :goto_1
.end method

.method public setGenreId(I)Lcom/htc/music/NpCategory;
    .locals 7
    .parameter "genreId"

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xd

    const/16 v4, 0x9

    const/4 v3, 0x6

    const/4 v2, 0x3

    .line 319
    const/4 v0, -0x2

    if-gt p1, v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-object p0

    .line 322
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    .line 323
    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 339
    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    goto :goto_0

    .line 324
    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 325
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 326
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 327
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 328
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 329
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 330
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 331
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 332
    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v6, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v5, :cond_0

    goto :goto_1
.end method

.method public setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "genreId"

    .prologue
    .line 344
    if-nez p1, :cond_1

    .line 356
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 347
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 349
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 350
    .local v1, localGenreId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setGenreId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 351
    .end local v1           #localGenreId:I
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPlaylistId(I)Lcom/htc/music/NpCategory;
    .locals 2
    .parameter "playlistId"

    .prologue
    const/16 v1, 0x14

    .line 404
    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-object p0

    .line 407
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_2

    .line 408
    iput-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 414
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    goto :goto_0

    .line 409
    :cond_2
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v1, :cond_0

    goto :goto_1
.end method

.method public setPlaylistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "playlistId"

    .prologue
    .line 425
    if-nez p1, :cond_1

    .line 437
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 428
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 430
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 431
    .local v1, localPlaylistId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 432
    .end local v1           #localPlaylistId:I
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ArtistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AlbumId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GenreId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Composer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlaylistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ArtistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AlbumId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GenreId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlaylistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 480
    :try_start_0
    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "[NpCategory]"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
