.class Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "CarTrackBrowseActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarTrackBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;,
        Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

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

.field private mDrmLockIconResId:I

.field private mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

.field mMineTypeIdx:I

.field private mQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private mcurContent:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/carmode/CarTrackBrowseActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 725
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 670
    iput-object v8, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    .line 676
    iput-object v8, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 678
    iput-boolean v6, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 682
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mcurContent:I

    .line 684
    iput-object v8, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 996
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;

    invoke-direct {v0, p0, v8}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;Lcom/htc/music/carmode/CarTrackBrowseActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 726
    iput-object p2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    .line 727
    invoke-direct {p0, p4}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 728
    const v0, 0x7f06003d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 729
    const v0, 0x7f06003e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 731
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    .line 734
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 736
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 737
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 738
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 743
    if-eqz p4, :cond_0

    .line 744
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p4, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 745
    :cond_0
    new-instance v0, Lcom/htc/music/util/DlArtAsyncImageDecoder;

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/DlArtAsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 749
    const v0, 0x7f020036

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDrmLockIconResId:I

    .line 750
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 759
    if-eqz p1, :cond_0

    .line 760
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mTitleIdx:I

    .line 761
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mArtistIdx:I

    .line 762
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumIdx:I

    .line 763
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumArtIndex:I

    .line 765
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAudioIdIdx:I

    .line 767
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumIdIdx:I

    .line 768
    const-string v0, "album_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumKeyIdx:I

    .line 770
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 776
    :goto_0
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mMineTypeIdx:I

    .line 777
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDataIdx:I

    .line 779
    :cond_0
    return-void

    .line 773
    :cond_1
    new-instance v0, Lcom/htc/music/widget/MusicAlphabetIndexer;

    iget v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mTitleIdx:I

    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 25
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 828
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;

    .line 830
    .local v22, vh:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v2, v2, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v6, v6, Landroid/database/CharArrayBuffer;->data:[C

    const/16 v23, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v6, v0, v1}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v6, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mLowerSearchFilter:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 834
    .local v17, markedString:Ljava/lang/CharSequence;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 840
    .end local v17           #markedString:Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 841
    .local v10, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v10, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 843
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 844
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 845
    .local v7, name:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v2, "<unknown>"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 846
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :goto_1
    const-string v2, " - "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 854
    if-eqz v7, :cond_1

    const-string v2, "<unknown>"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 855
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 860
    .local v14, len:I
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v2, v2

    if-ge v2, v14, :cond_2

    .line 861
    new-array v2, v14, [C

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 863
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v14, v5, v6}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 864
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v5, 0x0

    invoke-static {v2, v5, v14}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v16

    .line 865
    .local v16, line2:Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 868
    .end local v7           #name:Ljava/lang/String;
    .end local v14           #len:I
    .end local v16           #line2:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 870
    .local v12, indicator:Lcom/htc/widget/HtcListItemImageButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAudioId:I
    invoke-static {v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$500(Lcom/htc/music/carmode/CarTrackBrowseActivity;)I

    move-result v11

    .line 872
    .local v11, id:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v11, :cond_a

    .line 873
    const v2, 0x7f020014

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 874
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 880
    :goto_3
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v20, v0

    .line 881
    .local v20, tileImgAlbumArt:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 884
    .restart local v7       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mMineTypeIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 887
    .local v18, minetype:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "<unknown>"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_4
    const/16 v21, 0x1

    .line 888
    .local v21, unknown:Z
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 889
    .local v4, art:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 890
    .local v3, artIndex:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumKeyIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 891
    .local v8, albumKey:Ljava/lang/String;
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 892
    if-nez v21, :cond_5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 906
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDataIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 907
    .local v19, path:Ljava/lang/String;
    if-eqz v19, :cond_f

    const-string v2, "content://drm/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 908
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDrmLockIconResId:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 909
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 910
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_6

    .line 911
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 912
    .local v13, indicatorBubble:Landroid/view/View;
    instance-of v2, v13, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 913
    check-cast v13, Landroid/widget/ImageView;

    .end local v13           #indicatorBubble:Landroid/view/View;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 934
    :cond_6
    :goto_6
    return-void

    .line 836
    .end local v3           #artIndex:I
    .end local v4           #art:Ljava/lang/String;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #albumKey:Ljava/lang/String;
    .end local v10           #builder:Ljava/lang/StringBuilder;
    .end local v11           #id:I
    .end local v12           #indicator:Lcom/htc/widget/HtcListItemImageButton;
    .end local v18           #minetype:Ljava/lang/String;
    .end local v19           #path:Ljava/lang/String;
    .end local v20           #tileImgAlbumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v21           #unknown:Z
    :cond_7
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v5, 0x0

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v6, v6, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v2, v5, v6}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v15

    .line 837
    .local v15, line1:Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v15}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 848
    .end local v15           #line1:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v10       #builder:Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 857
    :cond_9
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 876
    .end local v7           #name:Ljava/lang/String;
    .restart local v11       #id:I
    .restart local v12       #indicator:Lcom/htc/widget/HtcListItemImageButton;
    :cond_a
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 887
    .restart local v7       #name:Ljava/lang/String;
    .restart local v18       #minetype:Ljava/lang/String;
    .restart local v20       #tileImgAlbumArt:Lcom/htc/widget/HtcListItemTileImage;
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 896
    .restart local v3       #artIndex:I
    .restart local v4       #art:Ljava/lang/String;
    .restart local v8       #albumKey:Ljava/lang/String;
    .restart local v21       #unknown:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$1000(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->pull(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 897
    .local v9, bitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 898
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move v5, v3

    invoke-virtual/range {v2 .. v8}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 901
    :cond_e
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 918
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v19       #path:Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v18, :cond_10

    const-string v2, "audio/x-wma-drm"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 919
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDrmLockIconResId:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 920
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 921
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_6

    .line 922
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 923
    .restart local v13       #indicatorBubble:Landroid/view/View;
    instance-of v2, v13, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 924
    check-cast v13, Landroid/widget/ImageView;

    .end local v13           #indicatorBubble:Landroid/view/View;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_6

    .line 929
    :cond_10
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    if-nez v2, :cond_6

    .line 930
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    .line 931
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    goto/16 :goto_6
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$700(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 939
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$700(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$700(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 942
    :cond_0
    if-eqz p1, :cond_1

    .line 943
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 946
    :cond_1
    if-eqz p1, :cond_2

    .line 949
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 951
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #setter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$702(Lcom/htc/music/carmode/CarTrackBrowseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 952
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->updateOptionsMenu()V

    .line 953
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 954
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 956
    :cond_3
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "section"

    .prologue
    const/4 v1, 0x0

    .line 983
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v2, :cond_1

    move v0, v1

    .line 989
    :cond_0
    :goto_0
    return v0

    .line 984
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v2, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 986
    .local v0, pos:I
    const-string v2, "title COLLATE NOCASE ASC"

    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 989
    goto :goto_0
.end method

.method public getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 993
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    const-string v0, "title COLLATE NOCASE ASC"

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 978
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 783
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 784
    .local v5, v:Landroid/view/View;
    instance-of v7, v5, Lcom/htc/widget/HtcListItem;

    if-eqz v7, :cond_1

    move-object v3, v5

    .line 785
    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 786
    .local v3, item:Lcom/htc/widget/HtcListItem;
    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    .line 787
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v1

    .line 788
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 789
    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 790
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    if-eqz v7, :cond_0

    .line 791
    check-cast v0, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0, v9}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 788
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 796
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/htc/widget/HtcListItem;
    :cond_1
    const v7, 0x7f070012

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 803
    .local v4, iv:Landroid/widget/ImageView;
    new-instance v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v6, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)V

    .line 804
    .local v6, vh:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;
    const v7, 0x7f070020

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 806
    iget-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 808
    const v7, 0x7f07001f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 810
    iget-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v7, :cond_2

    .line 811
    iget-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v8, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 812
    iget-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItemTileImage;->setDarkMode(Z)V

    .line 815
    :cond_2
    const v7, 0x7f070021

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 817
    new-instance v7, Landroid/database/CharArrayBuffer;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 818
    const/16 v7, 0xc8

    new-array v7, v7, [C

    iput-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 819
    iput-boolean v10, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->isSetIndicatorNull:Z

    .line 821
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 822
    return-object v5
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 8
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1025
    if-nez p2, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v7, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$1200(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v5

    .line 1027
    .local v5, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 1028
    .local v2, childCount:I
    if-gtz v2, :cond_2

    .line 1029
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1033
    :cond_2
    iget-object v7, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v7}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$1000(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v7

    invoke-virtual {v7, p1, p2, p3, p4}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->push(ILandroid/graphics/Bitmap;J)Z

    move-result v0

    .line 1034
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 1035
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 1036
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1038
    .local v6, ll:Landroid/view/View;
    if-eqz v6, :cond_3

    .line 1039
    const v7, 0x7f07001f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 1041
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_3

    .line 1042
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1044
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_3

    .line 1045
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1035
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
    .line 960
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 968
    :goto_0
    return-object v0

    .line 965
    :cond_2
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$400(Lcom/htc/music/carmode/CarTrackBrowseActivity;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 966
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 967
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method
