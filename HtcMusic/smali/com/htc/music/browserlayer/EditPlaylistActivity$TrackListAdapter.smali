.class Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

.field private mAlbumArtIndex:I

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mAlbumKeyIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDisableNowPlayingIndicator:Z

.field private mDrmLockIconResId:I

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field mIsNowPlaying:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mTitleIdx:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/EditPlaylistActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
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
    .line 1097
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1009
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    .line 1013
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1015
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 1019
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 1098
    iput-object p2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    .line 1099
    invoke-direct {p0, p4}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1100
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mIsNowPlaying:Z

    .line 1101
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 1103
    new-instance v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 1106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1108
    .local v8, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1109
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1110
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1114
    new-instance v1, Lcom/htc/music/util/DlArtAsyncImageDecoder;

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/util/DlArtAsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 1118
    const v1, 0x7f020036

    iput v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDrmLockIconResId:I

    .line 1119
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/EditPlaylistActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1130
    if-eqz p1, :cond_0

    .line 1131
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mTitleIdx:I

    .line 1132
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mArtistIdx:I

    .line 1133
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumIdx:I

    .line 1134
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumIdIdx:I

    .line 1135
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumArtIndex:I

    .line 1136
    const-string v0, "album_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumKeyIdx:I

    .line 1152
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1196
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 1197
    .local v5, position:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;

    .line 1199
    .local v16, vh:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1201
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v1, v4, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v12

    .line 1202
    .local v12, line1:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v12}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1211
    .local v9, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v9, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1214
    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1215
    .local v11, iv:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1216
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v1, "<unknown>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v15, 0x1

    .line 1217
    .local v15, unknown:Z
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1218
    .local v2, artIndex:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1219
    .local v3, art:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumKeyIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1220
    .local v7, albumKey:Ljava/lang/String;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1221
    if-nez v15, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1236
    :goto_1
    const-string v1, "_data"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1237
    .local v14, path:Ljava/lang/String;
    const-string v1, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1238
    .local v13, minetype:Ljava/lang/String;
    if-eqz v14, :cond_8

    const-string v1, "content://drm/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1239
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 1240
    invoke-virtual {v11}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    .line 1241
    invoke-virtual {v11}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1242
    .local v10, indicatorBubble:Landroid/view/View;
    instance-of v1, v10, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1243
    check-cast v10, Landroid/widget/ImageView;

    .end local v10           #indicatorBubble:Landroid/view/View;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1262
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_3

    .line 1263
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget-boolean v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcDeleteButton;->setChecked(Z)V

    .line 1265
    :cond_3
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcDeleteButton;->setTag(Ljava/lang/Object;)V

    .line 1276
    return-void

    .line 1216
    .end local v2           #artIndex:I
    .end local v3           #art:Ljava/lang/String;
    .end local v7           #albumKey:Ljava/lang/String;
    .end local v13           #minetype:Ljava/lang/String;
    .end local v14           #path:Ljava/lang/String;
    .end local v15           #unknown:Z
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1224
    .restart local v2       #artIndex:I
    .restart local v3       #art:Ljava/lang/String;
    .restart local v7       #albumKey:Ljava/lang/String;
    .restart local v15       #unknown:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$600(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->pull(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1225
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1227
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move v4, v2

    invoke-virtual/range {v1 .. v7}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1230
    :cond_7
    invoke-virtual {v11, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 1248
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v13       #minetype:Ljava/lang/String;
    .restart local v14       #path:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v13, :cond_9

    const-string v1, "audio/x-wma-drm"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1249
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 1250
    invoke-virtual {v11}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    .line 1251
    invoke-virtual {v11}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1252
    .restart local v10       #indicatorBubble:Landroid/view/View;
    instance-of v1, v10, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1253
    check-cast v10, Landroid/widget/ImageView;

    .end local v10           #indicatorBubble:Landroid/view/View;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_2

    .line 1259
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1200(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #setter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1202(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1282
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1283
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1285
    :cond_0
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "section"

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1313
    :goto_0
    return v0

    .line 1312
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 1313
    .local v0, pos:I
    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1317
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 1306
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1156
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1158
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)V

    .line 1159
    .local v1, vh:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;
    const v2, 0x7f070051

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcDeleteButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    .line 1160
    iget-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    new-instance v3, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcDeleteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    const v2, 0x7f07001f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1178
    iget-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1179
    const v2, 0x7f070020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 1180
    iget-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_0

    .line 1181
    iget-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1184
    :cond_0
    const v2, 0x7f070021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 1186
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 1187
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 1189
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1190
    return-object v0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 9
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1043
    if-nez p2, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    .line 1047
    .local v5, listView:Lcom/htc/widget/HtcListView;
    if-nez v5, :cond_2

    .line 1048
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1051
    :cond_2
    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 1052
    .local v2, childCount:I
    if-lez v2, :cond_3

    if-eqz p5, :cond_3

    array-length v7, p5

    const/4 v8, 0x1

    if-ge v7, v8, :cond_4

    .line 1053
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1057
    :cond_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v7}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$600(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v7

    invoke-virtual {v7, p1, p2, p3, p4}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->push(ILandroid/graphics/Bitmap;J)Z

    move-result v0

    .line 1058
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 1061
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 1063
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1064
    .local v6, ll:Landroid/view/View;
    if-nez v6, :cond_6

    .line 1061
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1068
    :cond_6
    const v7, 0x7f07001f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 1069
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_5

    .line 1072
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1073
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_5

    .line 1074
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 1289
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1290
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1292
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1297
    :goto_0
    return-object v0

    .line 1294
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1300(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;

    move-result-object v0

    .line 1295
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1296
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    .line 1123
    return-void
.end method
