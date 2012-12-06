.class public Lcom/htc/music/carmode/CategorySwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategorySwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CategorySwitcherAdapter$1;,
        Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;,
        Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CATEGORY_ALBUM_BROWSE_TAG:Ljava/lang/String; = "AlbumBrowserTabPlugin"

.field public static final CATEGORY_ARTIST_BROWSE_TAG:Ljava/lang/String; = "ArtistBrowserTabPlugin"

.field public static final CATEGORY_FOLDER_BROWSE_TAG:Ljava/lang/String; = "FolderBrowserTabPlugin"

.field public static final CATEGORY_GENRE_BROWSE_TAG:Ljava/lang/String; = "GenreBrowserTabPlugin"

.field public static final CATEGORY_PLAYLISTS_BROWSE_TAG:Ljava/lang/String; = "PlaylistBrowserTabPlugin"

.field public static final CATEGORY_SONGS_BROWSE_TAG:Ljava/lang/String; = "TrackBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[CategorySwitcherAdapter]"


# instance fields
.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/util/SourceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 41
    iput-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 48
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 51
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->initialSourceItems(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 55
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v4, intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/carmode/CarArtistBrowseActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 57
    new-instance v1, Lcom/htc/music/util/SourceItem;

    const-string v7, "ArtistBrowserTabPlugin"

    invoke-direct {v1, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 59
    .local v1, artistSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f060016

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 61
    const v7, 0x7f060016

    iput v7, v1, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 63
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.PICK"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v4       #intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 67
    new-instance v0, Lcom/htc/music/util/SourceItem;

    const-string v7, "AlbumBrowserTabPlugin"

    invoke-direct {v0, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 69
    .local v0, albumSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f060019

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 71
    const v7, 0x7f060019

    iput v7, v0, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 73
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 74
    .restart local v4       #intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    new-instance v6, Lcom/htc/music/util/SourceItem;

    const-string v7, "TrackBrowserTabPlugin"

    invoke-direct {v6, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 77
    .local v6, trackSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f06001c

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 79
    const v7, 0x7f06001c

    iput v7, v6, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 81
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 82
    .restart local v4       #intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 83
    new-instance v5, Lcom/htc/music/util/SourceItem;

    const-string v7, "PlaylistBrowserTabPlugin"

    invoke-direct {v5, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 85
    .local v5, playlistSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f060020

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 88
    const v7, 0x7f060020

    iput v7, v5, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 91
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 92
    .restart local v4       #intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/carmode/CarGenreBrowseActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    new-instance v3, Lcom/htc/music/util/SourceItem;

    const-string v7, "GenreBrowserTabPlugin"

    invoke-direct {v3, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 95
    .local v3, genreSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f060024

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 97
    const v7, 0x7f060024

    iput v7, v3, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 100
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 101
    .restart local v4       #intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/carmode/CarFolderBrowseActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    new-instance v2, Lcom/htc/music/util/SourceItem;

    const-string v7, "FolderBrowserTabPlugin"

    invoke-direct {v2, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 104
    .local v2, folderSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f060027

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 106
    const v7, 0x7f060027

    iput v7, v2, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 108
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableFolderView(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    const/4 v7, 0x6

    new-array v7, v7, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v7, v8

    aput-object v0, v7, v9

    aput-object v6, v7, v10

    aput-object v5, v7, v11

    aput-object v3, v7, v12

    const/4 v8, 0x5

    aput-object v2, v7, v8

    iput-object v7, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v7, v8

    aput-object v0, v7, v9

    aput-object v6, v7, v10

    aput-object v5, v7, v11

    aput-object v3, v7, v12

    iput-object v7, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 127
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 136
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 137
    :cond_0
    const-wide/16 v0, -0x1

    .line 140
    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;
    .locals 3
    .parameter "tag"

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v1, v0

    .line 193
    :goto_1
    return-object v1

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 145
    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v5, v5

    if-gt v5, p1, :cond_1

    :cond_0
    move-object v5, v6

    .line 181
    :goto_0
    return-object v5

    .line 149
    :cond_1
    if-nez p2, :cond_5

    .line 150
    iget-object v5, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v7, 0x7f030015

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v5, p2

    .line 152
    check-cast v5, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    .line 154
    new-instance v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;

    invoke-direct {v2, p0, v6}, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/carmode/CategorySwitcherAdapter;Lcom/htc/music/carmode/CategorySwitcherAdapter$1;)V

    .line 159
    .local v2, holder:Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;
    const v5, 0x7f070042

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 161
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 162
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    instance-of v5, v5, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    if-eqz v5, :cond_2

    .line 163
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-interface {v5, v8}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 164
    :cond_2
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItem2LineText;->getChildCount()I

    move-result v1

    .line 165
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 166
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItem2LineText;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    if-eqz v5, :cond_3

    .line 168
    check-cast v0, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0, v8}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 165
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 171
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    .end local v1           #count:I
    .end local v2           #holder:Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;
    .end local v3           #i:I
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;

    .line 175
    .restart local v2       #holder:Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v5, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v4, v5, p1

    .line 179
    .local v4, item:Lcom/htc/music/util/SourceItem;
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v6, v4, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v5, p2

    .line 181
    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method
