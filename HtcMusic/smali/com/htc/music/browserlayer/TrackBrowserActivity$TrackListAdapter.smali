.class Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

.field private mAlbumArtIndex:I

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mAlbumKeyIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mDataIdx:I

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDisableNowPlayingIndicator:Z

.field private mDlnaMode:I

.field private mDrmLockIconResId:I

.field private mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

.field mIsNowPlaying:Z

.field mMineTypeIdx:I

.field private mOptions_delegate:I

.field private mOuter:I

.field private mPressed:I

.field private mQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

.field private mRest:I

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "isnowplaying"
    .parameter "disablenowplayingindicator"

    .prologue
    .line 3543
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 3468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 3476
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 3482
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 3484
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 3490
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 3957
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;Lcom/htc/music/browserlayer/TrackBrowserActivity$1;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 3544
    iput-object p2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 3545
    invoke-direct {p0, p4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 3546
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    .line 3547
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 3548
    const v1, 0x7f06003d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 3549
    const v1, 0x7f06003e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 3551
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    .line 3554
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3556
    .local v8, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 3557
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 3558
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 3563
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    .line 3565
    if-eqz p4, :cond_0

    .line 3566
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p4, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3567
    :cond_0
    new-instance v1, Lcom/htc/music/util/DlArtAsyncImageDecoder;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/util/DlArtAsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 3571
    const v1, 0x7f020036

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    .line 3573
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v1, :cond_1

    .line 3574
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1102(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 3576
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const v2, 0x7f090070

    invoke-static {v1, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mOptions_delegate:I

    .line 3577
    const-string v1, "common_circle_outer"

    const v2, 0x208001f

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mOuter:I

    .line 3578
    const-string v1, "common_circle_pressed"

    const v2, 0x2080020

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mPressed:I

    .line 3579
    const-string v1, "common_circle_rest"

    const v2, 0x2080021

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mRest:I

    .line 3580
    return-void
.end method

.method static synthetic access$002(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3445
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mOuter:I

    return p1
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3445
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mPressed:I

    return p1
.end method

.method static synthetic access$202(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3445
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mRest:I

    return p1
.end method

.method static synthetic access$302(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3445
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3445
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3445
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 3593
    if-eqz p1, :cond_1

    .line 3594
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    .line 3595
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    .line 3596
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    .line 3597
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumArtIndex:I

    .line 3599
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3600
    const-string v0, "audio_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    .line 3606
    :goto_0
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    .line 3607
    const-string v0, "album_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumKeyIdx:I

    .line 3609
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_3

    .line 3610
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 3614
    :cond_0
    :goto_1
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mMineTypeIdx:I

    .line 3615
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataIdx:I

    .line 3617
    :cond_1
    return-void

    .line 3603
    :cond_2
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0

    .line 3611
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3612
    new-instance v0, Lcom/htc/music/widget/MusicAlphabetIndexer;

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 32
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 3711
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 3712
    .local v8, position:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isEditMode()Z

    move-result v20

    .line 3713
    .local v20, isEditMode:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 3714
    .local v12, audioId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 3716
    .local v27, vh:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v4, v4, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 3717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v4, v7, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 3718
    .local v21, markedString:Ljava/lang/CharSequence;
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 3723
    .end local v21           #markedString:Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 3724
    .local v14, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v14, v4, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3726
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 3727
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3728
    .local v9, name:Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v4, "<unknown>"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3729
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3734
    :goto_1
    const-string v4, " - "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3736
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3737
    if-eqz v9, :cond_1

    const-string v4, "<unknown>"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3738
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3742
    :goto_2
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 3745
    .end local v9           #name:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v18, v0

    .line 3747
    .local v18, indicator:Lcom/htc/widget/HtcListItemImageButton;
    if-nez v20, :cond_6

    if-eqz v18, :cond_6

    .line 3748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAudioId:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v17

    .line 3770
    .local v17, id:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_12

    .line 3771
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v4, :cond_4

    move/from16 v0, v17

    if-eq v8, v0, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    if-nez v4, :cond_11

    move/from16 v0, v17

    if-ne v12, v0, :cond_11

    .line 3773
    :cond_5
    const v4, 0x2080089

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3774
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3784
    .end local v17           #id:I
    :cond_6
    :goto_3
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v25, v0

    .line 3785
    .local v25, rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v25, :cond_7

    .line 3786
    if-eqz v20, :cond_13

    .line 3787
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3805
    :cond_7
    :goto_4
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v24, v0

    .line 3806
    .local v24, rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 3807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 3811
    :cond_8
    move-object/from16 v0, v27

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    .line 3812
    .local v15, checkBox:Lcom/htc/widget/HtcDeleteButton;
    if-eqz v15, :cond_9

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 3814
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/htc/widget/HtcDeleteButton;->setVisibility(I)V

    .line 3815
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/htc/widget/HtcDeleteButton;->setTag(Ljava/lang/Object;)V

    .line 3817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3818
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/htc/widget/HtcDeleteButton;->setChecked(Z)V

    .line 3825
    :cond_9
    :goto_5
    move-object/from16 v0, v27

    iget-object v11, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 3826
    .local v11, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3829
    .restart local v9       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mMineTypeIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 3832
    .local v22, minetype:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "<unknown>"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_a
    const/16 v26, 0x1

    .line 3833
    .local v26, unknown:Z
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3834
    .local v6, art:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3835
    .local v5, artIndex:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumKeyIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3836
    .local v10, albumKey:Ljava/lang/String;
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 3837
    if-nez v26, :cond_b

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3851
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 3852
    .local v23, path:Ljava/lang/String;
    if-eqz v23, :cond_19

    const-string v4, "content://drm/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 3853
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v11, v4}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 3854
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 3855
    invoke-virtual {v11}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_c

    .line 3856
    invoke-virtual {v11}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v11, v4}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 3857
    .local v19, indicatorBubble:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_c

    .line 3858
    check-cast v19, Landroid/widget/ImageView;

    .end local v19           #indicatorBubble:Landroid/view/View;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3881
    :cond_c
    :goto_8
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v4, :cond_d

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcRimImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    .line 3882
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 3883
    .local v16, data:Landroid/os/Bundle;
    const-string v4, "audioid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3884
    const-string v4, "position"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3885
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 3886
    new-instance v4, Landroid/view/TouchDelegate;

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I
    invoke-static/range {v28 .. v28}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mOptions_delegate:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I
    invoke-static/range {v30 .. v30}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenHeight:I
    invoke-static/range {v31 .. v31}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v31

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v4, v7, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 3895
    .end local v16           #data:Landroid/os/Bundle;
    :cond_d
    return-void

    .line 3720
    .end local v5           #artIndex:I
    .end local v6           #art:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #albumKey:Ljava/lang/String;
    .end local v11           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v14           #builder:Ljava/lang/StringBuilder;
    .end local v15           #checkBox:Lcom/htc/widget/HtcDeleteButton;
    .end local v18           #indicator:Lcom/htc/widget/HtcListItemImageButton;
    .end local v22           #minetype:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    .end local v24           #rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    .end local v25           #rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    .end local v26           #unknown:Z
    :cond_e
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3731
    .restart local v9       #name:Ljava/lang/String;
    .restart local v14       #builder:Ljava/lang/StringBuilder;
    :cond_f
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 3740
    :cond_10
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 3776
    .end local v9           #name:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v18       #indicator:Lcom/htc/widget/HtcListItemImageButton;
    :cond_11
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 3779
    :cond_12
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 3793
    .end local v17           #id:I
    .restart local v25       #rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v4, v28, v30

    if-eqz v4, :cond_7

    .line 3795
    const/16 v4, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 3821
    .restart local v15       #checkBox:Lcom/htc/widget/HtcDeleteButton;
    .restart local v24       #rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    :cond_14
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/htc/widget/HtcDeleteButton;->setChecked(Z)V

    goto/16 :goto_5

    .line 3832
    .restart local v9       #name:Ljava/lang/String;
    .restart local v11       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v22       #minetype:Ljava/lang/String;
    :cond_15
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 3840
    .restart local v5       #artIndex:I
    .restart local v6       #art:Ljava/lang/String;
    .restart local v10       #albumKey:Ljava/lang/String;
    .restart local v26       #unknown:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->pull(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 3841
    .local v13, bitmap:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_17

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3842
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move v7, v5

    invoke-virtual/range {v4 .. v10}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 3845
    :cond_18
    invoke-virtual {v11, v13}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 3863
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .restart local v23       #path:Ljava/lang/String;
    :cond_19
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v22, :cond_1a

    const-string v4, "audio/x-wma-drm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3864
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v11, v4}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 3865
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 3866
    invoke-virtual {v11}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_c

    .line 3867
    invoke-virtual {v11}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v11, v4}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 3868
    .restart local v19       #indicatorBubble:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_c

    .line 3869
    check-cast v19, Landroid/widget/ImageView;

    .end local v19           #indicatorBubble:Landroid/view/View;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_8

    .line 3874
    :cond_1a
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    if-nez v4, :cond_c

    .line 3875
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    .line 3876
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    goto/16 :goto_8
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 3899
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 3900
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3901
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3903
    :cond_0
    if-eqz p1, :cond_1

    .line 3904
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3907
    :cond_1
    if-eqz p1, :cond_2

    .line 3910
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    .line 3912
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1002(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3913
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateOptionsMenu()V

    .line 3914
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3915
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 3917
    :cond_3
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "section"

    .prologue
    const/4 v1, 0x0

    .line 3944
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v2, :cond_1

    move v0, v1

    .line 3950
    :cond_0
    :goto_0
    return v0

    .line 3945
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v2, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 3947
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 3950
    goto :goto_0
.end method

.method public getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;
    .locals 1

    .prologue
    .line 3589
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 3954
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3935
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3937
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 3939
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 3621
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3628
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    .line 3629
    .local v1, vh:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    const v2, 0x7f070020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 3630
    const v2, 0x7f070051

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcDeleteButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    .line 3631
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    if-eqz v2, :cond_0

    .line 3632
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    new-instance v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcDeleteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3649
    :cond_0
    const v2, 0x7f070023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 3650
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v2, :cond_1

    .line 3651
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3652
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 3653
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 3654
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 3657
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3658
    :cond_2
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 3664
    :goto_0
    const v2, 0x7f07001f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 3666
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v2, :cond_3

    .line 3667
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3670
    :cond_3
    const v2, 0x7f070021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 3671
    const v2, 0x7f070022

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRimImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 3672
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3673
    :cond_4
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v2, :cond_5

    .line 3674
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 3702
    :cond_5
    :goto_1
    iput-boolean v6, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 3704
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3705
    return-object v0

    .line 3661
    :cond_6
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 3677
    :cond_7
    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mOuter:I

    if-eq v2, v4, :cond_8

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mPressed:I

    if-eq v2, v4, :cond_8

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mRest:I

    if-ne v2, v4, :cond_9

    .line 3678
    :cond_8
    const-string v2, "common_circle_outer"

    const v3, 0x208001f

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mOuter:I

    .line 3679
    const-string v2, "common_circle_pressed"

    const v3, 0x2080020

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mPressed:I

    .line 3680
    const-string v2, "common_circle_rest"

    const v3, 0x2080021

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mRest:I

    .line 3683
    :cond_9
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    iget v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mOuter:I

    iget v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mPressed:I

    iget v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mRest:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 3684
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 3685
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 3686
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 3687
    iget-object v2, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    new-instance v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$2;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$2;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 8
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 3982
    if-nez p2, :cond_1

    .line 4008
    :cond_0
    :goto_0
    return-void

    .line 3983
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v5

    .line 3984
    .local v5, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 3985
    .local v2, childCount:I
    if-gtz v2, :cond_2

    .line 3986
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 3990
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v7}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v7

    invoke-virtual {v7, p1, p2, p3, p4}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->push(ILandroid/graphics/Bitmap;J)Z

    move-result v0

    .line 3991
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 3992
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 3993
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3995
    .local v6, ll:Landroid/view/View;
    if-eqz v6, :cond_3

    .line 3996
    const v7, 0x7f07001f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 3998
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_3

    .line 3999
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4001
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_3

    .line 4002
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3992
    .end local v1           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v4           #integer:Ljava/lang/Integer;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 3921
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3922
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3924
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3929
    :goto_0
    return-object v0

    .line 3926
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$900(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3927
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 3928
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 3583
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 3584
    return-void
.end method
