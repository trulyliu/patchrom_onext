.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "AlbumTrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArtistAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private final mBuffer:Ljava/lang/StringBuilder;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field public mChildLayoutResId:I

.field private final mFormatArgs:[Ljava/lang/Object;

.field public mGroupLayoutResId:I

.field mNotNotify:Z

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private final mResources:Landroid/content/res/Resources;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 13
    .parameter
    .parameter "context"
    .parameter "cursor"
    .parameter "glayout"
    .parameter "gfrom"
    .parameter "gto"
    .parameter "clayout"
    .parameter "cfrom"
    .parameter "cto"

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 1038
    invoke-direct/range {v1 .. v9}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 1002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 1004
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1011
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    .line 1013
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    .line 1015
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    .line 1016
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenHeight:I

    .line 1286
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mNotNotify:Z

    .line 1040
    move/from16 v0, p4

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    .line 1041
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    .line 1043
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1044
    .local v12, res:Landroid/content/res/Resources;
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1045
    .local v10, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1046
    iget v1, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    .line 1047
    iget v1, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenHeight:I

    .line 1049
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1050
    .local v11, r:Landroid/content/res/Resources;
    const v1, 0x2080089

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    move-object v1, p2

    .line 1066
    check-cast v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    .line 1067
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 1068
    const v1, 0x7f0601af

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 1069
    const v1, 0x7f06003e

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1070
    const v1, 0x7f06003d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1077
    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "islast"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1454
    iget v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1458
    .local v6, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const-string v7, "title"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1459
    .local v0, TrackName:Ljava/lang/String;
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1461
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1463
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1464
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v5

    .line 1465
    .local v5, playingId:I
    const-string v7, "_id"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1466
    .local v2, currentId:I
    if-ne v5, v2, :cond_2

    .line 1467
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemIndicator:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 1472
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1473
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v8, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1475
    const-string v7, "artist"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1476
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, "<unknown>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1477
    :cond_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1483
    .local v3, data:Landroid/os/Bundle;
    const-string v7, "AudioId"

    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1484
    const-string v7, "ArtistName"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const-string v7, "TrackName"

    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    const-string v7, "AlbumName"

    const-string v8, "album"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const-string v7, "filePath"

    const-string v8, "_data"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {v7, v8, v3}, Lcom/htc/widget/HtcRimImageButton;->setTag(ILjava/lang/Object;)V

    .line 1492
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #currentId:I
    .end local v3           #data:Landroid/os/Bundle;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #playingId:I
    :cond_1
    return-void

    .line 1469
    .restart local v2       #currentId:I
    .restart local v5       #playingId:I
    :cond_2
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemIndicator:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1479
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v4       #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isexpanded"

    .prologue
    .line 1342
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1343
    .local v19, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1345
    :cond_0
    const-string v1, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1347
    .local v6, name:Ljava/lang/String;
    const-string v1, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1349
    .local v2, albumId:I
    move-object v15, v6

    .line 1350
    .local v15, displayname:Ljava/lang/String;
    const-string v1, "<unknown>"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1351
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1353
    :cond_1
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v15}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1356
    .local v12, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v12, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1359
    const-string v1, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1360
    if-eqz v6, :cond_2

    const-string v1, "<unknown>"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1361
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    :goto_0
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 1368
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1369
    :cond_4
    const-string v1, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1370
    .local v8, AlbumId:I
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1371
    .local v14, data:Landroid/os/Bundle;
    const-string v1, "AlbumId"

    invoke-virtual {v14, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1372
    const-string v1, "AlbumName"

    invoke-virtual {v14, v1, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const-string v1, "ArtistName"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {v1, v4, v14}, Lcom/htc/widget/HtcRimImageButton;->setTag(ILjava/lang/Object;)V

    .line 1377
    .end local v8           #AlbumId:I
    .end local v14           #data:Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v16, v0

    .line 1378
    .local v16, iv:Lcom/htc/widget/HtcListItemTileImage;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1382
    if-eqz v6, :cond_6

    const-string v1, "<unknown>"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    const/16 v18, 0x1

    .line 1383
    .local v18, unknown:Z
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1384
    .local v10, artIndex:I
    const-string v1, "album_art"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1386
    .local v9, art:Ljava/lang/String;
    if-nez v18, :cond_7

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 1388
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1450
    .end local v2           #albumId:I
    .end local v9           #art:Ljava/lang/String;
    .end local v15           #displayname:Ljava/lang/String;
    .end local v18           #unknown:Z
    :goto_2
    return-void

    .line 1363
    .end local v10           #artIndex:I
    .end local v16           #iv:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v2       #albumId:I
    .restart local v15       #displayname:Ljava/lang/String;
    :cond_8
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1382
    .restart local v16       #iv:Lcom/htc/widget/HtcListItemTileImage;
    :cond_9
    const/16 v18, 0x0

    goto :goto_1

    .line 1390
    .restart local v9       #art:Ljava/lang/String;
    .restart local v10       #artIndex:I
    .restart local v18       #unknown:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->pull(I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1391
    .local v11, bitmap:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1392
    :cond_b
    const-string v1, "album_art"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1394
    .local v3, albumArtpath:Ljava/lang/String;
    const-string v1, "album_key"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1396
    .local v7, albumKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v1 .. v7}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1399
    .end local v3           #albumArtpath:Ljava/lang/String;
    .end local v7           #albumKey:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1404
    .end local v2           #albumId:I
    .end local v6           #name:Ljava/lang/String;
    .end local v9           #art:Ljava/lang/String;
    .end local v10           #artIndex:I
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #builder:Ljava/lang/StringBuilder;
    .end local v15           #displayname:Ljava/lang/String;
    .end local v16           #iv:Lcom/htc/widget/HtcListItemTileImage;
    .end local v18           #unknown:Z
    :cond_d
    const-string v1, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1406
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v4, v4, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v5, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v4, v5, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1409
    .restart local v12       #builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v12, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1419
    const-string v1, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1421
    .restart local v6       #name:Ljava/lang/String;
    if-eqz v6, :cond_e

    const-string v1, "<unknown>"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1422
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    :goto_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    .line 1427
    .local v17, len:I
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    array-length v1, v1

    move/from16 v0, v17

    if-ge v1, v0, :cond_f

    .line 1428
    move/from16 v0, v17

    new-array v1, v0, [C

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    .line 1430
    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    const/4 v5, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v1, v0, v4, v5}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 1431
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    const/4 v5, 0x0

    move/from16 v0, v17

    invoke-static {v4, v5, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 1433
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v16, v0

    .line 1442
    .restart local v16       #iv:Lcom/htc/widget/HtcListItemTileImage;
    const-string v1, "album_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1444
    .restart local v10       #artIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-static {v0, v10, v1}, Lcom/htc/music/util/MusicUtils;->getCachedArtwork(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1446
    .local v13, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1424
    .end local v10           #artIndex:I
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    .end local v16           #iv:Lcom/htc/widget/HtcListItemTileImage;
    .end local v17           #len:I
    :cond_10
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1570
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1571
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$402(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1572
    return-void
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1195
    const/4 v5, 0x0

    .line 1197
    .local v5, v:Landroid/view/View;
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/SimpleCursorTreeAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1201
    :goto_0
    if-nez v5, :cond_0

    move-object/from16 v5, p4

    .line 1202
    :cond_0
    iget v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {v5, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1204
    .local v6, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v7, :cond_1

    .line 1205
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 1207
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(II)I

    move-result v4

    .line 1208
    .local v4, state:I
    packed-switch v4, :pswitch_data_0

    .line 1217
    .end local v4           #state:I
    :cond_1
    :goto_1
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v7, :cond_3

    .line 1218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1219
    .local v0, data:Landroid/os/Bundle;
    const-string v7, "groupPos"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1220
    const-string v7, "childPos"

    invoke-virtual {v0, v7, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1221
    const-string v7, "name"

    iget-object v8, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1225
    .local v2, group:Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 1226
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1227
    .local v3, index:I
    const-string v7, "index"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1230
    .end local v3           #index:I
    :cond_2
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 1232
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    new-instance v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1274
    new-instance v7, Landroid/view/TouchDelegate;

    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const v11, 0x7f090070

    invoke-static {v10, v11}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v10

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    iget v12, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenHeight:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v9, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-direct {v7, v8, v9}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 1283
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #group:Landroid/view/ViewGroup;
    :cond_3
    return-object v5

    .line 1198
    .end local v6           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :catch_0
    move-exception v1

    .line 1199
    .local v1, ex:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1210
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v4       #state:I
    .restart local v6       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :pswitch_0
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1213
    :pswitch_1
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 17
    .parameter "groupCursor"

    .prologue
    .line 1496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    const/4 v1, 0x0

    .line 1565
    :goto_0
    return-object v1

    .line 1499
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    .line 1500
    .local v14, position:I
    const-string v1, "album_key"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1502
    .local v9, albumKey:Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1503
    .local v3, b:Landroid/os/Bundle;
    const-string v1, "position"

    invoke-virtual {v3, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1504
    const-string v1, "album_key"

    invoke-virtual {v3, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const-string v1, "[AlbumTrackBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getChildrenCursor] Get cursor for child; position="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string v1, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1511
    .local v13, id:I
    const/16 v1, 0x9

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v5, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v5, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v5, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v5, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v5, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v5, v1

    .line 1518
    .local v5, cols:[Ljava/lang/String;
    const-string v8, "title COLLATE NOCASE ASC"

    .line 1519
    .local v8, mSortOrder:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1520
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1521
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "title != \'\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND album_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    const-string v1, " AND is_music>=1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowCompleteAlbumWithoutOtherType:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v11, v1

    .line 1527
    .local v11, genreId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v11, v1

    if-nez v1, :cond_1

    .line 1528
    const-string v1, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    .end local v11           #genreId:J
    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1534
    .restart local v11       #genreId:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x1

    const-string v4, "external"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v6, v7}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1539
    .end local v11           #genreId:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowCompleteAlbumWithoutOtherType:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v10

    .line 1545
    .local v10, composer:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v15

    .line 1546
    .local v15, unknown:Z
    if-eqz v15, :cond_5

    .line 1547
    const-string v1, " AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    invoke-static/range {v16 .. v16}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 1554
    .end local v10           #composer:Ljava/lang/String;
    .end local v15           #unknown:Z
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v4, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1550
    .restart local v10       #composer:Ljava/lang/String;
    .restart local v15       #unknown:Z
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND composer = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1559
    .end local v10           #composer:Ljava/lang/String;
    .end local v15           #unknown:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 1082
    const/4 v3, 0x0

    .line 1084
    .local v3, v:Landroid/view/View;
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1088
    :goto_0
    if-nez v3, :cond_0

    move-object v3, p3

    .line 1089
    :cond_0
    iget v5, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1091
    .local v4, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z
    invoke-static {v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1092
    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(I)I

    move-result v2

    .line 1093
    .local v2, state:I
    packed-switch v2, :pswitch_data_0

    .line 1147
    .end local v2           #state:I
    :goto_1
    return-object v3

    .line 1085
    .end local v4           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :catch_0
    move-exception v1

    .line 1086
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0

    .line 1095
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #state:I
    .restart local v4       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :pswitch_0
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 1096
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1099
    :pswitch_1
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 1100
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1104
    :pswitch_2
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 1105
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1109
    .end local v2           #state:I
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1110
    .local v0, data:Landroid/os/Bundle;
    const-string v5, "groupPos"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1111
    const-string v5, "childPos"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1112
    const-string v5, "name"

    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 1115
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    new-instance v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    new-instance v5, Landroid/view/TouchDelegate;

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const v9, 0x7f090070

    invoke-static {v8, v9}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenHeight:I

    invoke-direct {v6, v7, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-direct {v5, v6, v7}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_1

    .line 1093
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 1298
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1299
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V

    .line 1300
    .local v1, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v2, 0x7f07001f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1301
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1302
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1303
    const v2, 0x7f070020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 1305
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1306
    const v2, 0x7f070023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 1307
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v2, :cond_0

    .line 1308
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 1309
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 1310
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 1311
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 1312
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 1333
    :cond_0
    :goto_0
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 1334
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    .line 1336
    iget v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1337
    return-object v0

    .line 1315
    :cond_1
    const v2, 0x7f070022

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRimImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    .line 1316
    const v2, 0x7f070021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemIndicator:Lcom/htc/widget/HtcListItemImageButton;

    .line 1317
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v2, :cond_2

    .line 1318
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

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

    .line 1322
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1323
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setClickable(Z)V

    .line 1324
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 1325
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 1328
    :cond_2
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemIndicator:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v2, :cond_0

    .line 1329
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemIndicator:Lcom/htc/widget/HtcListItemImageButton;

    const v3, 0x2080089

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 1152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1153
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V

    .line 1155
    .local v1, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v2, 0x7f07001f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1156
    const v2, 0x7f070020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 1160
    const v2, 0x7f070022

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRimImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    .line 1161
    const v2, 0x7f070023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 1162
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1163
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v2, :cond_0

    .line 1164
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 1165
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 1166
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 1167
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 1168
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 1183
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1184
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1186
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 1187
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    .line 1188
    iget v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1189
    return-object v0

    .line 1171
    :cond_1
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v2, :cond_0

    .line 1172
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

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

    .line 1176
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1177
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setClickable(Z)V

    .line 1178
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 1179
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1289
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mNotNotify:Z

    if-eqz v0, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1293
    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorTreeAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getTrackCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
