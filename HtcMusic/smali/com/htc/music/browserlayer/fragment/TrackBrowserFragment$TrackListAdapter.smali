.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "TrackBrowserFragment.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
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

.field private mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

.field private mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

.field mIsNowPlaying:Z

.field mMineTypeIdx:I

.field private mQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private mcurContent:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 9
    .parameter "context"
    .parameter "currentFragment"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "isnowplaying"
    .parameter "disablenowplayingindicator"

    .prologue
    .line 2178
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 2116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 2124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    .line 2130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 2132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraintIsValid:Z

    .line 2136
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mcurContent:I

    .line 2140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 2551
    new-instance v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 2179
    iput-object p2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    .line 2180
    invoke-direct {p0, p4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 2181
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIsNowPlaying:Z

    .line 2182
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 2183
    const v1, 0x7f06003d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 2184
    const v1, 0x7f06003e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 2186
    new-instance v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    .line 2189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2191
    .local v8, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 2192
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 2193
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 2201
    if-eqz p4, :cond_0

    .line 2202
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p4, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2203
    :cond_0
    new-instance v1, Lcom/htc/music/util/DlArtAsyncImageDecoder;

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/util/DlArtAsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 2207
    const v1, 0x7f020036

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDrmLockIconResId:I

    .line 2209
    return-void
.end method

.method static synthetic access$002(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2093
    iput p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDlnaMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2093
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mcurContent:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2093
    iput p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mcurContent:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 2222
    if-eqz p1, :cond_1

    .line 2223
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mTitleIdx:I

    .line 2224
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mArtistIdx:I

    .line 2225
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumIdx:I

    .line 2226
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumArtIndex:I

    .line 2228
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2229
    const-string v0, "audio_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAudioIdIdx:I

    .line 2235
    :goto_0
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumIdIdx:I

    .line 2236
    const-string v0, "album_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumKeyIdx:I

    .line 2238
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_3

    .line 2239
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 2244
    :cond_0
    :goto_1
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mMineTypeIdx:I

    .line 2245
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDataIdx:I

    .line 2247
    :cond_1
    return-void

    .line 2232
    :cond_2
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0

    .line 2240
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2241
    new-instance v0, Lcom/htc/music/widget/MusicAlphabetIndexer;

    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mTitleIdx:I

    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_1
.end method

.method private resetIndicatorScaleType(Lcom/htc/widget/HtcListItemTileImage;)V
    .locals 3
    .parameter "albumArt"

    .prologue
    .line 2478
    invoke-virtual {p1}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2479
    invoke-virtual {p1}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2480
    .local v0, indicatorBubble:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 2481
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #indicatorBubble:Landroid/view/View;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2484
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 29
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 2329
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v20

    .line 2330
    .local v20, position:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;

    .line 2332
    .local v26, vh:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2333
    .local v24, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v1, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 2334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v4, v4, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLowerSearchFilter:Ljava/lang/String;

    move-object/from16 v0, v24

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 2335
    .local v17, markedString:Ljava/lang/CharSequence;
    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 2340
    .end local v17           #markedString:Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 2341
    .local v11, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v11, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2343
    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2344
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2345
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v1, "<unknown>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2346
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2351
    :goto_1
    const-string v1, " - "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2353
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2354
    if-eqz v6, :cond_1

    const-string v1, "<unknown>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2355
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2360
    :goto_2
    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 2363
    .end local v6           #name:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v16, v0

    .line 2364
    .local v16, indicator:Lcom/htc/widget/HtcListItemImageButton;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v16, :cond_6

    .line 2366
    const/4 v15, -0x1

    .line 2367
    .local v15, id:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_3

    .line 2369
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v1, :cond_12

    .line 2371
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_11

    .line 2372
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v23

    .line 2373
    .local v23, shufflePos:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move/from16 v0, v23

    invoke-interface {v1, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 2385
    .end local v23           #shufflePos:I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v1, :cond_4

    move/from16 v0, v20

    if-eq v0, v15, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIsNowPlaying:Z

    if-nez v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    if-nez v1, :cond_13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v15, :cond_13

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2387
    :cond_5
    const v1, 0x2080089

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 2388
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 2396
    .end local v15           #id:I
    :cond_6
    :goto_4
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v22, v0

    .line 2397
    .local v22, rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v22, :cond_7

    .line 2398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2399
    const/4 v1, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 2405
    :cond_7
    :goto_5
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v21, v0

    .line 2406
    .local v21, rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isPickerMode()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 2411
    :cond_8
    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    .line 2412
    .local v12, checkBox:Lcom/htc/widget/HtcDeleteButton;
    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2414
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcDeleteButton;->setVisibility(I)V

    .line 2415
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcDeleteButton;->setTag(Ljava/lang/Object;)V

    .line 2417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2418
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcDeleteButton;->setChecked(Z)V

    .line 2425
    :cond_9
    :goto_6
    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 2426
    .local v8, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2429
    .restart local v6       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mMineTypeIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2432
    .local v18, minetype:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "<unknown>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_a
    const/16 v25, 0x1

    .line 2433
    .local v25, unknown:Z
    :goto_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2434
    .local v3, art:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2435
    .local v2, artIndex:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumKeyIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2436
    .local v7, albumKey:Ljava/lang/String;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 2437
    if-nez v25, :cond_b

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2451
    :goto_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDataIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2452
    .local v19, path:Ljava/lang/String;
    if-eqz v19, :cond_1a

    const-string v1, "content://drm/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2453
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 2454
    const/4 v1, 0x0

    move-object/from16 v0, v26

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 2455
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->resetIndicatorScaleType(Lcom/htc/widget/HtcListItemTileImage;)V

    .line 2466
    :cond_c
    :goto_9
    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v1, :cond_d

    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcRimImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 2467
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2469
    .local v9, audioId:I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2470
    .local v13, data:Landroid/os/Bundle;
    const-string v1, "audioid"

    invoke-virtual {v13, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2471
    const-string v1, "position"

    move/from16 v0, v20

    invoke-virtual {v13, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2472
    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v1, v13}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 2475
    .end local v9           #audioId:I
    .end local v13           #data:Landroid/os/Bundle;
    :cond_d
    return-void

    .line 2337
    .end local v2           #artIndex:I
    .end local v3           #art:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #albumKey:Ljava/lang/String;
    .end local v8           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v11           #builder:Ljava/lang/StringBuilder;
    .end local v12           #checkBox:Lcom/htc/widget/HtcDeleteButton;
    .end local v16           #indicator:Lcom/htc/widget/HtcListItemImageButton;
    .end local v18           #minetype:Ljava/lang/String;
    .end local v19           #path:Ljava/lang/String;
    .end local v21           #rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    .end local v22           #rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    .end local v25           #unknown:Z
    :cond_e
    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2348
    .restart local v6       #name:Ljava/lang/String;
    .restart local v11       #builder:Ljava/lang/StringBuilder;
    :cond_f
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2357
    :cond_10
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2375
    .end local v6           #name:Ljava/lang/String;
    .restart local v15       #id:I
    .restart local v16       #indicator:Lcom/htc/widget/HtcListItemImageButton;
    :cond_11
    :try_start_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    goto/16 :goto_3

    .line 2377
    :catch_0
    move-exception v14

    .line 2378
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 2381
    .end local v14           #e:Landroid/os/RemoteException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAudioId:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)I

    move-result v15

    goto/16 :goto_3

    .line 2391
    :cond_13
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 2400
    .end local v15           #id:I
    .restart local v22       #rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v27, 0x0

    cmp-long v1, v4, v27

    if-eqz v1, :cond_7

    .line 2401
    const/16 v1, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_5

    .line 2421
    .restart local v12       #checkBox:Lcom/htc/widget/HtcDeleteButton;
    .restart local v21       #rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcDeleteButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 2432
    .restart local v6       #name:Ljava/lang/String;
    .restart local v8       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v18       #minetype:Ljava/lang/String;
    :cond_16
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 2441
    .restart local v2       #artIndex:I
    .restart local v3       #art:Ljava/lang/String;
    .restart local v7       #albumKey:Ljava/lang/String;
    .restart local v25       #unknown:Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->pull(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2442
    .local v10, bitmap:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_18

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2443
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v1 .. v7}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2446
    :cond_19
    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    .line 2456
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v19       #path:Ljava/lang/String;
    :cond_1a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v18, :cond_1b

    const-string v1, "audio/x-wma-drm"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2457
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 2458
    const/4 v1, 0x0

    move-object/from16 v0, v26

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 2459
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->resetIndicatorScaleType(Lcom/htc/widget/HtcListItemTileImage;)V

    goto/16 :goto_9

    .line 2460
    :cond_1b
    move-object/from16 v0, v26

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    if-nez v1, :cond_c

    .line 2461
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    .line 2462
    const/4 v1, 0x1

    move-object/from16 v0, v26

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    goto/16 :goto_9
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 2488
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2489
    const-string v0, "[TrackBrowserFragment]"

    const-string v1, "changeCursor with a closed cursor!! could be caused by mDelaySearchHandler?"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    :cond_0
    :goto_0
    return-void

    .line 2492
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2493
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2494
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2496
    :cond_2
    if-eqz p1, :cond_3

    .line 2497
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2500
    :cond_3
    if-eqz p1, :cond_4

    .line 2503
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v1, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    .line 2505
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #setter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2302(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2508
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2509
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "section"

    .prologue
    const/4 v1, 0x0

    .line 2538
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v2, :cond_1

    move v0, v1

    .line 2544
    :cond_0
    :goto_0
    return v0

    .line 2539
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v2, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 2541
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2544
    goto :goto_0
.end method

.method public getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;
    .locals 1

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2548
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2531
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 2533
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/16 v4, 0x8

    const/4 v7, 0x0

    .line 2251
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2253
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;-><init>()V

    .line 2254
    .local v1, vh:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;
    const v2, 0x7f070020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 2255
    const v2, 0x7f070051

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcDeleteButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    .line 2256
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    if-eqz v2, :cond_0

    .line 2257
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    new-instance v3, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$1;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$1;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcDeleteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2272
    :cond_0
    const v2, 0x7f070023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 2273
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v2, :cond_1

    .line 2274
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isPickerMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2275
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 2276
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 2277
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 2280
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isPickerMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2281
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2287
    :goto_0
    const v2, 0x7f07001f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 2289
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v2, :cond_2

    .line 2290
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2293
    :cond_2
    const v2, 0x7f070021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 2294
    const v2, 0x7f070022

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRimImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 2295
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isPickerMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2296
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v2, :cond_3

    .line 2297
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 2321
    :cond_3
    :goto_1
    iput-boolean v7, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 2323
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2324
    return-object v0

    .line 2284
    :cond_4
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 2300
    :cond_5
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v3, "common_circle_outer"

    const v4, 0x208001f

    invoke-static {p1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "common_circle_pressed"

    const v5, 0x2080020

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_circle_rest"

    const v6, 0x2080021

    invoke-static {p1, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 2304
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 2305
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 2306
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 2307
    iget-object v2, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    new-instance v3, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$2;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$2;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)V

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
    .line 2582
    if-nez p2, :cond_1

    .line 2608
    :cond_0
    :goto_0
    return-void

    .line 2583
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/widget/HtcListView;

    move-result-object v5

    .line 2584
    .local v5, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 2585
    .local v2, childCount:I
    if-gtz v2, :cond_2

    .line 2586
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 2590
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v7}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v7

    invoke-virtual {v7, p1, p2, p3, p4}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->push(ILandroid/graphics/Bitmap;J)Z

    move-result v0

    .line 2591
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 2592
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 2593
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2595
    .local v6, ll:Landroid/view/View;
    if-eqz v6, :cond_3

    .line 2596
    const v7, 0x7f07001f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 2598
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_3

    .line 2599
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2601
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_3

    .line 2602
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2592
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
    .line 2515
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2516
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2518
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2523
    :goto_0
    return-object v0

    .line 2520
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2521
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 2522
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter "newFragment"

    .prologue
    .line 2212
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mFragment:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    .line 2213
    return-void
.end method
