.class public Lcom/htc/music/widget/CategorySwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategorySwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/CategorySwitcherAdapter$1;,
        Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;,
        Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CATEGORY_ALBUM_BROWSE_TAG:Ljava/lang/String; = "AlbumBrowserTabPlugin"

.field public static final CATEGORY_ARTIST_BROWSE_TAG:Ljava/lang/String; = "ArtistBrowserTabPlugin"

.field public static final CATEGORY_DLNA_TAG:Ljava/lang/String; = "DlnaBrowserTabPlugin"

.field public static final CATEGORY_FOLDER_BROWSE_TAG:Ljava/lang/String; = "FolderBrowserTabPlugin"

.field public static final CATEGORY_GENRES_BROWSE_TAG:Ljava/lang/String; = "genreBrowserTabPlugin"

.field public static final CATEGORY_PLAYLISTS_BROWSE_TAG:Ljava/lang/String; = "PlaylistBrowserTabPlugin"

.field public static final CATEGORY_SONGS_BROWSE_TAG:Ljava/lang/String; = "TrackBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[CategorySwitcherAdapter]"


# instance fields
.field protected mEditModePlaylistUri:Ljava/lang/String;

.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/util/SourceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/widget/CategorySwitcherAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "editModePlaylistUri"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 54
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 56
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    .line 68
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/widget/CategorySwitcherAdapter;->initialSourceItems(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x6

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 79
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v4, intent:Landroid/content/Intent;
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/artistalbumexpgrid"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v7, "dbTable"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    new-instance v1, Lcom/htc/music/util/SourceItem;

    const-string v7, "ArtistBrowserTabPlugin"

    invoke-direct {v1, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 90
    .local v1, artistSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f060016

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 93
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "com.htc.media/album"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-class v7, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v7, "dbTable"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    new-instance v0, Lcom/htc/music/util/SourceItem;

    const-string v7, "AlbumBrowserTabPlugin"

    invoke-direct {v0, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 103
    .local v0, albumSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f060019

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 106
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 107
    .restart local v4       #intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v7, "dbTable"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 114
    const-string v7, "pickermode"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v7, "IsFragment"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    :cond_0
    new-instance v6, Lcom/htc/music/util/SourceItem;

    const-string v7, "TrackBrowserTabPlugin"

    invoke-direct {v6, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 118
    .local v6, trackSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f06001c

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 121
    const/4 v5, 0x0

    .line 122
    .local v5, playlistSource:Lcom/htc/music/util/SourceItem;
    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 123
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 124
    .restart local v4       #intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 125
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    new-instance v5, Lcom/htc/music/util/SourceItem;

    .end local v5           #playlistSource:Lcom/htc/music/util/SourceItem;
    const-string v7, "PlaylistBrowserTabPlugin"

    invoke-direct {v5, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 129
    .restart local v5       #playlistSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f060020

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 133
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 134
    .restart local v4       #intent:Landroid/content/Intent;
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/genreexpgrid"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v7, "dbTable"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    new-instance v3, Lcom/htc/music/util/SourceItem;

    const-string v7, "genreBrowserTabPlugin"

    invoke-direct {v3, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 142
    .local v3, genreSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f060024

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 146
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 147
    .restart local v4       #intent:Landroid/content/Intent;
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/foldergrid"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v7, "dbTable"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    new-instance v2, Lcom/htc/music/util/SourceItem;

    const-string v7, "FolderBrowserTabPlugin"

    invoke-direct {v2, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 155
    .local v2, folderSource:Lcom/htc/music/util/SourceItem;
    const v7, 0x7f060027

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 157
    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 158
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableFolderView(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 159
    new-array v7, v12, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v7, v10

    aput-object v0, v7, v9

    aput-object v6, v7, v11

    aput-object v5, v7, v13

    const/4 v8, 0x4

    aput-object v3, v7, v8

    const/4 v8, 0x5

    aput-object v2, v7, v8

    iput-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 198
    :goto_0
    return-void

    .line 169
    :cond_2
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v7, v10

    aput-object v0, v7, v9

    aput-object v6, v7, v11

    aput-object v5, v7, v13

    const/4 v8, 0x4

    aput-object v3, v7, v8

    iput-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    goto :goto_0

    .line 180
    :cond_3
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableFolderView(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 181
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v7, v10

    aput-object v0, v7, v9

    aput-object v6, v7, v11

    aput-object v3, v7, v13

    const/4 v8, 0x4

    aput-object v2, v7, v8

    iput-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    goto :goto_0

    .line 190
    :cond_4
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v7, v10

    aput-object v0, v7, v9

    aput-object v6, v7, v11

    aput-object v3, v7, v13

    iput-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 210
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 211
    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 220
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 221
    :cond_0
    const-wide/16 v0, -0x1

    .line 224
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
    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v1, v0

    .line 282
    :goto_1
    return-object v1

    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 230
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v2, v2

    if-gt v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 254
    :goto_0
    return-object v2

    .line 234
    :cond_1
    if-nez p2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v4, 0x7f030046

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 236
    new-instance v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter$1;)V

    .line 240
    .local v0, holder:Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    const v2, 0x7f070042

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 241
    iget-object v2, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x2030016

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 242
    iget-object v2, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 244
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 247
    .end local v0           #holder:Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;

    .line 248
    .restart local v0       #holder:Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v2, p1

    .line 252
    .local v1, item:Lcom/htc/music/util/SourceItem;
    iget-object v2, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v2, p2

    .line 254
    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
