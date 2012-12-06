.class Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumArtIndex:I

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mAlbumKeyIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private mBuilder:Ljava/lang/StringBuilder;

.field mDataIdx:I

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDisableNowPlayingIndicator:Z

.field private mDrmLockIconResId:I

.field mIsNowPlaying:Z

.field mMineTypeIdx:I

.field mNotNotify:Z

.field private mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

.field private mOptions_delegate:I

.field private mOuter:I

.field private mPressed:I

.field private mRest:I

.field mTitleIdx:I

.field private mUnknownAlbum:Ljava/lang/String;

.field private mUnknownArtist:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V
    .locals 10
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "disablenowplayingindicator"

    .prologue
    .line 2425
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 2368
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIsNowPlaying:Z

    .line 2370
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 2390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 2392
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 2394
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 2396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 2400
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 2745
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    .line 2778
    new-instance v1, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;Lcom/htc/music/NowPlayingViewHelper$1;)V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 2426
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 2427
    invoke-direct {p0, p4}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 2428
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 2429
    const v1, 0x7f06003d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 2430
    const v1, 0x7f06003e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 2435
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2437
    .local v8, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 2438
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 2439
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 2442
    if-eqz p4, :cond_0

    .line 2444
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p4, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2452
    :cond_0
    :goto_0
    new-instance v1, Lcom/htc/music/util/DlArtAsyncImageDecoder;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/util/DlArtAsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 2456
    const v1, 0x7f020036

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    .line 2457
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v2, 0x7f090070

    invoke-static {v1, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mOptions_delegate:I

    .line 2458
    const-string v1, "common_circle_outer"

    const v2, 0x208001f

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mOuter:I

    .line 2459
    const-string v1, "common_circle_pressed"

    const v2, 0x2080020

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mPressed:I

    .line 2460
    const-string v1, "common_circle_rest"

    const v2, 0x2080021

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mRest:I

    .line 2461
    return-void

    .line 2445
    :catch_0
    move-exception v9

    .line 2446
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2447
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2367
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mOuter:I

    return p1
.end method

.method static synthetic access$202(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2367
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mPressed:I

    return p1
.end method

.method static synthetic access$302(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2367
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mRest:I

    return p1
.end method

.method static synthetic access$4000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 2485
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->resetColumeIndices()V

    .line 2486
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2497
    :cond_0
    :goto_0
    return-void

    .line 2488
    :cond_1
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mTitleIdx:I

    .line 2489
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mArtistIdx:I

    .line 2490
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    .line 2491
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumArtIndex:I

    .line 2492
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    .line 2493
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdIdx:I

    .line 2494
    const-string v0, "album_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumKeyIdx:I

    .line 2495
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mMineTypeIdx:I

    .line 2496
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataIdx:I

    goto :goto_0
.end method

.method private resetColumeIndices()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2474
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mTitleIdx:I

    .line 2475
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mArtistIdx:I

    .line 2476
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    .line 2477
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumArtIndex:I

    .line 2478
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    .line 2479
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdIdx:I

    .line 2480
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumKeyIdx:I

    .line 2482
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 29
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 2556
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mTitleIdx:I

    if-eq v4, v7, :cond_0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    if-eq v4, v7, :cond_0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mArtistIdx:I

    if-eq v4, v7, :cond_0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    if-ne v4, v7, :cond_2

    .line 2557
    :cond_0
    const-string v4, "[NowPlayingViewHelper]"

    const-string v7, "can\'t find mTitleIdx/mAlbumIdx/mArtistIdx/mAudioIdIdx, should be caused by cursor is null or closed!!"

    invoke-static {v4, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    :cond_1
    :goto_0
    return-void

    .line 2560
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 2561
    .local v8, position:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;

    .line 2563
    .local v24, vh:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v4, v7, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2568
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 2569
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2571
    .local v11, album:Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v4, "<unknown>"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2572
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2581
    .local v9, name:Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string v4, "<unknown>"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2582
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    :goto_2
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 2589
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #album:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v18, v0

    .line 2590
    .local v18, indicator:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v18, :cond_7

    .line 2591
    const/16 v17, -0x1

    .line 2592
    .local v17, id:I
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_6

    .line 2595
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_d

    .line 2596
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v22

    .line 2597
    .local v22, shufflePos:I
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move/from16 v0, v22

    invoke-interface {v4, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 2627
    .end local v22           #shufflePos:I
    :cond_6
    :goto_3
    move/from16 v0, v17

    if-ne v8, v0, :cond_e

    .line 2629
    const v4, 0x2080089

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 2630
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 2638
    .end local v17           #id:I
    :cond_7
    :goto_4
    move-object/from16 v0, v24

    iget-object v12, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 2639
    .local v12, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2641
    .restart local v9       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mMineTypeIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2643
    .local v20, minetype:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "<unknown>"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_8
    const/16 v23, 0x1

    .line 2644
    .local v23, unknown:Z
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2645
    .local v6, art:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumKeyIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2646
    .local v10, albumKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2647
    .local v5, albumId:I
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 2648
    if-nez v23, :cond_9

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2661
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2662
    .local v21, path:Ljava/lang/String;
    if-eqz v21, :cond_13

    const-string v4, "content://drm/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2663
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v12, v4}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 2664
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 2665
    invoke-virtual {v12}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_a

    .line 2666
    invoke-virtual {v12}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v12, v4}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2667
    .local v19, indicatorBubble:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    .line 2668
    check-cast v19, Landroid/widget/ImageView;

    .end local v19           #indicatorBubble:Landroid/view/View;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2691
    :cond_a
    :goto_7
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcRimImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2692
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2694
    .local v13, audioId:I
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 2695
    .local v15, data:Landroid/os/Bundle;
    const-string v4, "audioid"

    invoke-virtual {v15, v4, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2696
    const-string v4, "position"

    invoke-virtual {v15, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2697
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4, v15}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 2698
    new-instance v4, Landroid/view/TouchDelegate;

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I
    invoke-static/range {v25 .. v25}, Lcom/htc/music/NowPlayingViewHelper;->access$4200(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mOptions_delegate:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v27, v0

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I
    invoke-static/range {v27 .. v27}, Lcom/htc/music/NowPlayingViewHelper;->access$4200(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mScreenHeight:I
    invoke-static/range {v28 .. v28}, Lcom/htc/music/NowPlayingViewHelper;->access$4300(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v28

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v4, v7, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_0

    .line 2574
    .end local v5           #albumId:I
    .end local v6           #art:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #albumKey:Ljava/lang/String;
    .end local v12           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v13           #audioId:I
    .end local v15           #data:Landroid/os/Bundle;
    .end local v18           #indicator:Lcom/htc/widget/HtcListItemImageButton;
    .end local v20           #minetype:Ljava/lang/String;
    .end local v21           #path:Ljava/lang/String;
    .end local v23           #unknown:Z
    .restart local v11       #album:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2584
    .restart local v9       #name:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2599
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #album:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v18       #indicator:Lcom/htc/widget/HtcListItemImageButton;
    :cond_d
    :try_start_1
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v17

    goto/16 :goto_3

    .line 2601
    :catch_0
    move-exception v16

    .line 2602
    .local v16, ex:Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 2632
    .end local v16           #ex:Landroid/os/RemoteException;
    :cond_e
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 2643
    .end local v17           #id:I
    .restart local v9       #name:Ljava/lang/String;
    .restart local v12       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v20       #minetype:Ljava/lang/String;
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 2651
    .restart local v5       #albumId:I
    .restart local v6       #art:Ljava/lang/String;
    .restart local v10       #albumKey:Ljava/lang/String;
    .restart local v23       #unknown:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v4}, Lcom/htc/music/NowPlayingViewHelper;->access$2700(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->pull(I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 2652
    .local v14, bitmap:Landroid/graphics/Bitmap;
    if-eqz v14, :cond_11

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2653
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move v7, v5

    invoke-virtual/range {v4 .. v10}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 2656
    :cond_12
    invoke-virtual {v12, v14}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 2673
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .restart local v21       #path:Ljava/lang/String;
    :cond_13
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v4

    if-eqz v4, :cond_14

    if-eqz v20, :cond_14

    const-string v4, "audio/x-wma-drm"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2674
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v12, v4}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 2675
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 2676
    invoke-virtual {v12}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_a

    .line 2677
    invoke-virtual {v12}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v12, v4}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2678
    .restart local v19       #indicatorBubble:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    .line 2679
    check-cast v19, Landroid/widget/ImageView;

    .end local v19           #indicatorBubble:Landroid/view/View;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_7

    .line 2684
    :cond_14
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    if-nez v4, :cond_a

    .line 2685
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    .line 2686
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    goto/16 :goto_7
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 2716
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 2717
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2719
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2725
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 2727
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2737
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1, p1}, Lcom/htc/music/NowPlayingViewHelper;->access$602(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2739
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2740
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 2742
    :cond_2
    return-void

    .line 2720
    :catch_0
    move-exception v0

    .line 2721
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2722
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2728
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2729
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2730
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "cursor"
    .parameter "notNotify"

    .prologue
    .line 2710
    iput-boolean p2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    .line 2711
    invoke-virtual {p0, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2712
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 2771
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2775
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2767
    const/4 v0, 0x0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 2501
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2502
    .local v1, v:Landroid/view/View;
    const v3, 0x7f070012

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2509
    .local v0, iv:Landroid/widget/ImageView;
    new-instance v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V

    .line 2510
    .local v2, vh:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    const v3, 0x7f070020

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 2511
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2513
    const v3, 0x7f07001f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 2515
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v3, :cond_0

    .line 2516
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2519
    :cond_0
    const v3, 0x7f070021

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 2520
    const v3, 0x7f070022

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 2525
    iget v3, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mOuter:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mPressed:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mRest:I

    if-ne v3, v5, :cond_2

    .line 2526
    :cond_1
    const-string v3, "common_circle_outer"

    const v4, 0x208001f

    invoke-static {p1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mOuter:I

    .line 2527
    const-string v3, "common_circle_pressed"

    const v4, 0x2080020

    invoke-static {p1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mPressed:I

    .line 2528
    const-string v3, "common_circle_rest"

    const v4, 0x2080021

    invoke-static {p1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mRest:I

    .line 2531
    :cond_2
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    iget v4, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mOuter:I

    iget v5, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mPressed:I

    iget v6, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mRest:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 2532
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 2533
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x7f020024

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 2534
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 2535
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    new-instance v4, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$1;

    invoke-direct {v4, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$1;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2548
    iput-boolean v7, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 2550
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2551
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 2748
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    if-eqz v0, :cond_0

    .line 2749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    .line 2753
    :goto_0
    return-void

    .line 2752
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onContentChange()V
    .locals 0

    .prologue
    .line 2761
    invoke-super {p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->onContentChanged()V

    .line 2762
    return-void
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 8
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 2802
    if-nez p2, :cond_1

    .line 2834
    :cond_0
    :goto_0
    return-void

    .line 2803
    :cond_1
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v5, v7, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 2805
    .local v5, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 2806
    .local v2, childCount:I
    if-gtz v2, :cond_2

    .line 2807
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 2811
    :cond_2
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v7}, Lcom/htc/music/NowPlayingViewHelper;->access$2700(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v7

    invoke-virtual {v7, p1, p2, p3, p4}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->push(ILandroid/graphics/Bitmap;J)Z

    move-result v0

    .line 2812
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 2816
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 2817
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2822
    .local v6, ll:Landroid/view/View;
    if-eqz v6, :cond_3

    .line 2823
    const v7, 0x7f07001f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 2824
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_3

    .line 2825
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2827
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_3

    .line 2828
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2816
    .end local v1           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v4           #integer:Ljava/lang/Integer;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 2757
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setActivity(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 2464
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 2465
    return-void
.end method
