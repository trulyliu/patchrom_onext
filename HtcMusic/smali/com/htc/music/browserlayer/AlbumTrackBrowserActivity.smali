.class public Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.super Lcom/htc/music/widget/GroupListActivity;
.source "AlbumTrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/widget/GroupListView$OnGroupClickListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;,
        Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;,
        Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final TAG:Ljava/lang/String; = "[AlbumTrackBrowserActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final DIALOG_FOR_DELETE:I

.field private final DIALOG_MENU_CHILD:I

.field private final DIALOG_MENU_GROUP:I

.field private final DIALOG_SET_AS_RINGTONE:I

.field private final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

.field private final DIALOG_SHARETEXT:I

.field private final DIALOG_SHARETYPE:I

.field private final DIALOG_SHARE_DRM_FILE:I

.field private final DIALOG_SHARE_NORMAL_FILE:I

.field private final PLAY_ALL:I

.field private mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumList:[I

.field private mArtist:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

.field private mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

.field mButtonClicked:Landroid/view/View$OnClickListener;

.field private mCancel:Lcom/htc/widget/HtcFooterButton;

.field private mComposer:Ljava/lang/String;

.field private mContextMenuIds:[I

.field private mContextMenuItems:[Ljava/lang/CharSequence;

.field private mContextMenuTitle:Ljava/lang/String;

.field private mCurrentChildPos:I

.field private mCurrentGroupPos:I

.field private mCurrentListItemIndex:I

.field private mDbTable:I

.field private mDecodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/MusicUtils$DecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field private mGenre:Ljava/lang/String;

.field private mGenreId:Ljava/lang/String;

.field private mGlist:Lcom/htc/music/widget/GroupListView;

.field private mIsPlayAllTriggered:Z

.field private mIsSeriveBinded:Z

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

.field private mNeedBindSerive:Z

.field private mNoChildMode:Z

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mPlaylistUri:Ljava/lang/String;

.field private mResume:Z

.field private mRevertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

.field private mSave:Lcom/htc/widget/HtcFooterButton;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedAlbumId:I

.field private mSelectedAlbumName:Ljava/lang/String;

.field private mSelectedArtistName:Ljava/lang/String;

.field private mSelectedAudioId:I

.field private mSelectedFilePath:Ljava/lang/String;

.field private mSelectedTrackName:Ljava/lang/String;

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mShareBundle:Landroid/os/Bundle;

.field private mShowCompleteAlbumWithoutOtherType:Z

.field private mShowTrackOptionsEnabled:Z

.field private mSongList:[I

.field protected osc:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Lcom/htc/music/widget/GroupListActivity;-><init>()V

    .line 92
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->PLAY_ALL:I

    .line 94
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_MENU_GROUP:I

    .line 95
    iput v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_MENU_CHILD:I

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARETYPE:I

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARETEXT:I

    .line 98
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARE_NORMAL_FILE:I

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARE_DRM_FILE:I

    .line 100
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SET_AS_RINGTONE:I

    .line 101
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

    .line 102
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_FOR_DELETE:I

    .line 136
    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    .line 138
    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    .line 140
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    .line 146
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    .line 157
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    .line 160
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareBundle:Landroid/os/Bundle;

    .line 163
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    .line 165
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByTime;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    .line 167
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 169
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 170
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    .line 182
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    .line 184
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 190
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mResume:Z

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;

    .line 194
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsPlayAllTriggered:Z

    .line 195
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowCompleteAlbumWithoutOtherType:Z

    .line 512
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 520
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->osc:Landroid/content/ServiceConnection;

    .line 561
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 1581
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    .line 1674
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowTrackOptionsEnabled:Z

    .line 1739
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2166
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$11;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    return-void
.end method

.method private IsPickerMode()Z
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1648
    :cond_0
    const/4 v0, 0x0

    .line 1651
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showTrackOptions(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/util/DlArtAsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowCompleteAlbumWithoutOtherType:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getTrackCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/widget/GroupListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuIds:[I

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mResume:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowTrackOptionsEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowTrackOptionsEnabled:Z

    return p1
.end method

.method private getAddBtnText()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, count:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    if-eqz v4, :cond_0

    .line 976
    const/4 v1, 0x0

    .line 977
    .local v1, list:[I
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    if-eqz v4, :cond_1

    .line 978
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v4}, Lcom/htc/music/widget/GroupListView;->getGroupSeclectList()[I

    move-result-object v1

    .line 981
    :goto_0
    if-nez v1, :cond_2

    move v0, v3

    .line 984
    .end local v1           #list:[I
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f060056

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f06004d

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 985
    .local v2, text:Ljava/lang/String;
    return-object v2

    .line 980
    .end local v2           #text:Ljava/lang/String;
    .restart local v1       #list:[I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v4}, Lcom/htc/music/widget/GroupListView;->getChildSeclectList()[I

    move-result-object v1

    goto :goto_0

    .line 981
    :cond_2
    array-length v0, v1

    goto :goto_1
.end method

.method private getAlbumList(Landroid/database/Cursor;)[I
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 375
    const/4 v0, 0x0

    .line 377
    .local v0, albumList:[I
    if-eqz p1, :cond_3

    .line 378
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 379
    .local v3, idCol:I
    if-gez v3, :cond_0

    .line 380
    const-string v5, "album_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 383
    :cond_0
    if-gez v3, :cond_2

    .line 403
    .end local v3           #idCol:I
    :cond_1
    :goto_0
    return-object v4

    .line 387
    .restart local v3       #idCol:I
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 388
    .local v1, count:I
    if-lez v1, :cond_1

    .line 392
    new-array v0, v1, [I

    .line 394
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 395
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 396
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v0, v2

    .line 397
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #idCol:I
    :cond_3
    move-object v4, v0

    .line 403
    goto :goto_0
.end method

.method private getTrackCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 24
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 816
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 817
    .local v22, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 818
    :cond_0
    const-string v1, "album != \'\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :goto_0
    const/4 v7, 0x0

    .line 824
    .local v7, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 825
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 826
    .local v20, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v1, v0

    new-array v7, v1, [Ljava/lang/String;

    .line 827
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v14

    .line 828
    .local v14, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 829
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move-object/from16 v0, v20

    array-length v1, v0

    move/from16 v0, v18

    if-ge v0, v1, :cond_2

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v20, v18

    invoke-static {v2}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v18

    .line 829
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 820
    .end local v7           #keywords:[Ljava/lang/String;
    .end local v14           #col:Ljava/text/Collator;
    .end local v18           #i:I
    .end local v20           #searchWords:[Ljava/lang/String;
    :cond_1
    const-string v1, "title != \'\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 832
    .restart local v7       #keywords:[Ljava/lang/String;
    .restart local v14       #col:Ljava/text/Collator;
    .restart local v18       #i:I
    .restart local v20       #searchWords:[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v20

    array-length v1, v0

    move/from16 v0, v18

    if-ge v0, v1, :cond_3

    .line 833
    const-string v1, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v1, "artist_key||"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    const-string v1, "album_key ||"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    const-string v1, "title_key LIKE ?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 840
    .end local v14           #col:Ljava/text/Collator;
    .end local v18           #i:I
    .end local v20           #searchWords:[Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 842
    .local v23, whereclause:Ljava/lang/String;
    const/16 v1, 0x8

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const-string v2, "numsongs"

    aput-object v2, v5, v1

    const/4 v1, 0x4

    const-string v2, "minyear"

    aput-object v2, v5, v1

    const/4 v1, 0x5

    const-string v2, "maxyear"

    aput-object v2, v5, v1

    const/4 v1, 0x6

    const-string v2, "album_art"

    aput-object v2, v5, v1

    const/4 v1, 0x7

    const-string v2, "album_key"

    aput-object v2, v5, v1

    .line 848
    .local v5, cols:[Ljava/lang/String;
    const/16 v1, 0x8

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v10, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v10, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v10, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v10, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v10, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v10, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v10, v1

    .line 855
    .local v10, cursorCols:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 856
    .local v19, ret:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 857
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 858
    new-instance v22, Ljava/lang/StringBuilder;

    .end local v22           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .restart local v22       #where:Ljava/lang/StringBuilder;
    const-string v1, "album != \'\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    if-eqz p1, :cond_4

    .line 862
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "album COLLATE NOCASE ASC"

    .end local v7           #keywords:[Ljava/lang/String;
    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :goto_3
    return-object v19

    .line 864
    .restart local v7       #keywords:[Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "album COLLATE NOCASE ASC"

    .end local v7           #keywords:[Ljava/lang/String;
    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto :goto_3

    .line 870
    .restart local v7       #keywords:[Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_6

    .line 871
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v1, "external"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "album COLLATE NOCASE ASC"

    .end local v7           #keywords:[Ljava/lang/String;
    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 874
    .restart local v7       #keywords:[Ljava/lang/String;
    :cond_6
    const-string v1, "external"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "album COLLATE NOCASE ASC"

    .end local v7           #keywords:[Ljava/lang/String;
    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto :goto_3

    .line 881
    .restart local v7       #keywords:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 883
    .local v16, genreId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v16, v1

    if-nez v1, :cond_8

    .line 891
    const-string v1, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :goto_4
    if-eqz p1, :cond_9

    .line 907
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "album COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 901
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 910
    :cond_9
    sget-object v4, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "album COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_3

    .line 918
    .end local v16           #genreId:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 919
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 920
    .local v15, composer:Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v21

    .line 921
    .local v21, unknown:Z
    if-eqz v21, :cond_b

    .line 922
    const-string v1, " AND _id IN (SELECT distinct album_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    :goto_5
    if-eqz p1, :cond_c

    .line 931
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "album COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 927
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id IN (SELECT distinct album_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 934
    :cond_c
    sget-object v4, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "album COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_3

    .line 947
    .end local v15           #composer:Ljava/lang/String;
    .end local v21           #unknown:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND album_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    :cond_e
    const-string v1, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "title COLLATE NOCASE ASC"

    move-object/from16 v8, p0

    move-object v12, v7

    invoke-static/range {v8 .. v13}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_3
.end method

.method private playAllAction(IZ)V
    .locals 12
    .parameter "position"
    .parameter "forceShuffle"

    .prologue
    const/4 v2, 0x2

    .line 407
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v3, bundle:Landroid/os/Bundle;
    const-string v0, "position"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    const-string v0, "force-shuffle"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/htc/music/util/ContentUtils;->getTracksForGenre(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;I)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 414
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowCompleteAlbumWithoutOtherType:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAlbumList(Landroid/database/Cursor;)[I

    move-result-object v5

    .line 416
    .local v5, list:[I
    if-eqz v5, :cond_0

    array-length v0, v5

    if-lez v0, :cond_0

    .line 417
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    sget-object v4, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    move-object v0, p0

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/ContentUtils;->getTracksByAlbumList(Landroid/content/Context;Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;[II)Landroid/database/Cursor;

    goto :goto_0

    .line 420
    .end local v5           #list:[I
    :cond_3
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    sget-object v9, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    if-ne v0, v2, :cond_4

    const/4 v11, 0x1

    :goto_1
    move v7, v2

    move-object v8, v3

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/ContentUtils;->getTracksForArtist(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 423
    :cond_5
    const-string v0, "[AlbumTrackBrowserActivity]"

    const-string v1, "[playAllAction] Select items but no match"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1636
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 1644
    :goto_0
    return-void

    .line 1637
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1639
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1640
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1642
    :cond_1
    const v0, 0x7f06005c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 5

    .prologue
    .line 2086
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    iget v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-static {p0, v2, v3}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2088
    .local v0, canShare:I
    packed-switch v0, :pswitch_data_0

    .line 2101
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2102
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2104
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 2091
    :pswitch_0
    const-string v2, "[AlbumTrackBrowserActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normal file case, Audio Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    goto :goto_0

    .line 2096
    :pswitch_1
    const-string v2, "[AlbumTrackBrowserActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD DRM case, Audio Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    goto :goto_0

    .line 2088
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 2078
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareBundle:Landroid/os/Bundle;

    .line 2081
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    .line 2082
    return-void
.end method

.method private showTrackOptions(Ljava/lang/String;III)V
    .locals 9
    .parameter "name"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "index"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1677
    iput p2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCurrentGroupPos:I

    .line 1678
    iput p3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCurrentChildPos:I

    .line 1679
    iput p4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCurrentListItemIndex:I

    .line 1681
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuTitle:Ljava/lang/String;

    .line 1683
    if-ltz p3, :cond_0

    .line 1685
    new-array v2, v8, [Ljava/lang/CharSequence;

    const v3, 0x7f060049

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f06004a

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f060046

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x2040214

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x4

    const v4, 0x2040216

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x204020f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuItems:[Ljava/lang/CharSequence;

    .line 1693
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuIds:[I

    .line 1702
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumList:[I

    .line 1703
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSongList:[I

    .line 1705
    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    .line 1737
    :goto_0
    return-void

    .line 1708
    :cond_0
    new-array v2, v7, [Ljava/lang/CharSequence;

    const v3, 0x7f060049

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f06004a

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x204020f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuItems:[Ljava/lang/CharSequence;

    .line 1713
    new-array v2, v7, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuIds:[I

    .line 1719
    const/4 v1, 0x0

    .line 1720
    .local v1, cursor:Landroid/database/Cursor;
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v0, v5

    const-string v2, "album_id"

    aput-object v2, v0, v4

    .line 1723
    .local v0, ccols:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1724
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/htc/music/util/ContentUtils;->getTracksForGenre(Landroid/content/Context;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 1729
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1730
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumList:[I

    .line 1731
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSongList:[I

    .line 1732
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1733
    const/4 v1, 0x0

    .line 1735
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    goto :goto_0

    .line 1725
    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1726
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/htc/music/util/ContentUtils;->getTracksForArtist(Landroid/content/Context;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 1693
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 1713
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public init()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const v4, 0x7f030009

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 602
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    invoke-direct {p0, v0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getTrackCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 604
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 605
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setContentView(I)V

    .line 610
    :goto_0
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 611
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v12}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 619
    :cond_1
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcFooter;

    .line 620
    .local v10, footerView:Lcom/htc/widget/HtcFooter;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 622
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    .line 623
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20800c1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f060056

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 628
    .local v11, zero:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 629
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 634
    :goto_1
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    .line 635
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x2040152

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 636
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20800a3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 637
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    .end local v11           #zero:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->hideEmptyErrorView()V

    .line 647
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle()V

    .line 655
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    new-array v8, v2, [Ljava/lang/String;

    new-array v9, v2, [I

    move-object v1, p0

    move-object v2, p0

    move v7, v4

    invoke-direct/range {v0 .. v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    .line 659
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 660
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    .line 661
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p0}, Lcom/htc/music/widget/GroupListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 662
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p0}, Lcom/htc/music/widget/GroupListView;->setOnGroupClickListener(Lcom/htc/music/widget/GroupListView$OnGroupClickListener;)V

    .line 663
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p0}, Lcom/htc/music/widget/GroupListView;->setOnChildClickListener(Lcom/htc/music/widget/GroupListView$OnChildClickListener;)V

    .line 664
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, v12}, Lcom/htc/music/widget/GroupListView;->setFastScrollEnabled(Z)V

    .line 665
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, v12}, Lcom/htc/music/widget/GroupListView;->setTextFilterEnabled(Z)V

    .line 666
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/GroupListView;->setChoiceMode(I)V

    .line 667
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/GroupListView;->setPickerMode(Z)V

    .line 668
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/GroupListView;->setVisibility(I)V

    .line 669
    return-void

    .line 607
    .end local v10           #footerView:Lcom/htc/widget/HtcFooter;
    :cond_3
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 631
    .restart local v10       #footerView:Lcom/htc/widget/HtcFooter;
    .restart local v11       #zero:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public isBypass()Z
    .locals 1

    .prologue
    .line 2128
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 2033
    packed-switch p1, :pswitch_data_0

    .line 2067
    :cond_0
    :goto_0
    return-void

    .line 2035
    :pswitch_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 2036
    const-string v4, "playlist"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2038
    .local v2, playlist:I
    const/4 v3, -0x1

    .line 2039
    .local v3, type:I
    const/4 v0, -0x1

    .line 2040
    .local v0, currentId:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2041
    const/4 v3, 0x2

    .line 2042
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2050
    :goto_1
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v4, :cond_3

    .line 2052
    const/4 v4, 0x1

    new-array v1, v4, [I

    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    aput v4, v1, v6

    .line 2053
    .local v1, list:[I
    int-to-long v4, v2

    invoke-static {p0, v1, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 2043
    .end local v1           #list:[I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2044
    const/4 v3, 0x1

    .line 2045
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 2047
    :cond_2
    const-string v4, "[AlbumTrackBrowserActivity]"

    const-string v5, "Add to playlist, the type has some problems"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2057
    :cond_3
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowCompleteAlbumWithoutOtherType:Z

    if-eqz v4, :cond_4

    .line 2058
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    .line 2062
    .restart local v1       #list:[I
    :goto_2
    int-to-long v4, v2

    invoke-static {p0, v1, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 2060
    .end local v1           #list:[I
    :cond_4
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    iget v5, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v4, v3, v0, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v1

    .restart local v1       #list:[I
    goto :goto_2

    .line 2033
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onChildClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IIJI)Z
    .locals 8
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"
    .parameter "absPos"

    .prologue
    .line 748
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    if-eqz v6, :cond_0

    .line 749
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 751
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f060056

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 752
    .local v5, zero:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 753
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 759
    .end local v5           #zero:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 761
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v6, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {p2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 762
    .local v4, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(II)I

    move-result v1

    .line 763
    .local v1, checkState:I
    packed-switch v1, :pswitch_data_0

    .line 773
    :goto_1
    invoke-virtual {p1}, Lcom/htc/music/widget/GroupListView;->getFirstVisiblePosition()I

    move-result v3

    .line 774
    .local v3, start:I
    move v2, p7

    .local v2, i:I
    :goto_2
    if-lt v2, v3, :cond_1

    .line 776
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/music/widget/GroupListView;->IsGroup(I)Z

    move-result v0

    .line 779
    .local v0, bGroup:Z
    if-eqz v0, :cond_3

    .line 780
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(I)I

    move-result v1

    .line 781
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v6

    sub-int v7, v2, v3

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/GroupListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v7, v7, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    check-cast v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 783
    .restart local v4       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    packed-switch v1, :pswitch_data_1

    .line 797
    :goto_3
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v6}, Lcom/htc/widget/HtcCheckBox;->invalidate()V

    .line 812
    .end local v0           #bGroup:Z
    .end local v1           #checkState:I
    .end local v2           #i:I
    .end local v3           #start:I
    .end local v4           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_1
    :goto_4
    const/4 v6, 0x1

    return v6

    .line 755
    .restart local v5       #zero:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 765
    .end local v5           #zero:Ljava/lang/String;
    .restart local v1       #checkState:I
    .restart local v4       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :pswitch_0
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 768
    :pswitch_1
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 785
    .restart local v0       #bGroup:Z
    .restart local v2       #i:I
    .restart local v3       #start:I
    :pswitch_2
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 786
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 789
    :pswitch_3
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 790
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 793
    :pswitch_4
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 794
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 774
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 810
    .end local v0           #bGroup:Z
    .end local v1           #checkState:I
    .end local v2           #i:I
    .end local v3           #start:I
    .end local v4           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_4
    sub-int v6, p7, p3

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->playAllAction(IZ)V

    goto :goto_4

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 783
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 586
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 588
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v2, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 590
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 591
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 592
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    .line 593
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenHeight:I

    .line 595
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 199
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setVolumeControlStream(I)V

    .line 203
    if-eqz p1, :cond_1

    .line 204
    const-string v0, "genreid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    .line 205
    const-string v0, "genre"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 206
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 207
    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 208
    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 209
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    .line 210
    const-string v0, "albumid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 211
    const-string v0, "nochildmode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    .line 212
    const-string v0, "dbTable"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    .line 213
    const-string v0, "showcompletealbum"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowCompleteAlbumWithoutOtherType:Z

    .line 228
    :goto_0
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->enableSearch()V

    .line 245
    :cond_0
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v8, dlArtFilter:Landroid/content/IntentFilter;
    const-string v0, "action_complete_one_download"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v0, "action_revert_current_album"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 253
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 254
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 255
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 257
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncQueryHandler:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$MyAsyncQueryHandler;

    .line 258
    new-instance v0, Lcom/htc/music/util/DlArtAsyncImageDecoder;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object v1, p0

    move-object v2, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/DlArtAsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 260
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->init()V

    .line 261
    return-void

    .line 215
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v8           #dlArtFilter:Landroid/content/IntentFilter;
    .end local v9           #f:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 216
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "genreid"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    .line 217
    const-string v0, "genre"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 218
    const-string v0, "composer"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 219
    const-string v0, "playlisturi"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 220
    const-string v0, "artistid"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 221
    const-string v0, "artist"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    .line 222
    const-string v0, "albumid"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 223
    const-string v0, "nochildmode"

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    .line 224
    const-string v0, "dbTable"

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    .line 225
    const-string v0, "showcompletealbum"

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowCompleteAlbumWithoutOtherType:Z

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const/16 v12, 0x13

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1747
    packed-switch p1, :pswitch_data_0

    .line 1876
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 1750
    :pswitch_0
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuItems:[Ljava/lang/CharSequence;

    new-instance v9, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$7;

    invoke-direct {v9, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1761
    .local v0, d:Landroid/app/Dialog;
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1764
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_1
    new-array v3, v9, [Ljava/lang/CharSequence;

    const v7, 0x7f0600cd

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    const v7, 0x7f0600ce

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v11

    .line 1769
    .local v3, items:[Ljava/lang/CharSequence;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$8;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$8;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v7, v3, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .local v6, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v0, v6

    .line 1786
    goto :goto_0

    .line 1791
    .end local v3           #items:[Ljava/lang/CharSequence;
    .end local v6           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareBundle:Landroid/os/Bundle;

    invoke-static {v7, v8}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1795
    :pswitch_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1796
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v7

    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v5

    .local v5, shareNormaldialog:Landroid/app/Dialog;
    move-object v0, v5

    .line 1800
    goto :goto_0

    .line 1803
    .end local v5           #shareNormaldialog:Landroid/app/Dialog;
    :pswitch_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1804
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v7

    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-static {v7, v8, v9, v11}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v4

    .local v4, shareDRMDialog:Landroid/app/Dialog;
    move-object v0, v4

    .line 1808
    goto :goto_0

    .line 1811
    .end local v4           #shareDRMDialog:Landroid/app/Dialog;
    :pswitch_5
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    if-eqz v7, :cond_0

    .line 1812
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060093

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v11

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060095

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    .line 1818
    .restart local v3       #items:[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v7, v3, v12}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1821
    .end local v3           #items:[Ljava/lang/CharSequence;
    :pswitch_6
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    if-eqz v7, :cond_0

    .line 1822
    new-array v3, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060093

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v11

    .line 1827
    .restart local v3       #items:[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v7, v3, v12}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1830
    .end local v3           #items:[Ljava/lang/CharSequence;
    :pswitch_7
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1832
    const v7, 0x7f06000e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1833
    .local v2, f:Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1834
    .local v1, desc:Ljava/lang/String;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x2040214

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    new-instance v9, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$10;

    invoke-direct {v9, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$10;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    new-instance v9, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$9;

    invoke-direct {v9, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$9;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 7
    .parameter "playlistName"

    .prologue
    .line 1893
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v4, :cond_0

    .line 1894
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1895
    .local v1, id:I
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    aput v6, v4, v5

    int-to-long v5, v1

    invoke-static {p0, v4, v5, v6}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 1918
    .end local v1           #id:I
    :goto_0
    return-void

    .line 1899
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1900
    const/4 v3, 0x2

    .line 1901
    .local v3, type:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1910
    .local v0, currentId:I
    :goto_1
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowCompleteAlbumWithoutOtherType:Z

    if-eqz v4, :cond_3

    .line 1911
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v2

    .line 1915
    .local v2, list:[I
    :goto_2
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1916
    .restart local v1       #id:I
    int-to-long v4, v1

    invoke-static {p0, v2, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1902
    .end local v0           #currentId:I
    .end local v1           #id:I
    .end local v2           #list:[I
    .end local v3           #type:I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1903
    const/4 v3, 0x1

    .line 1904
    .restart local v3       #type:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #currentId:I
    goto :goto_1

    .line 1906
    .end local v0           #currentId:I
    .end local v3           #type:I
    :cond_2
    const-string v4, "[AlbumTrackBrowserActivity]"

    const-string v5, "Add to playlist, the type has some problems"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1913
    .restart local v0       #currentId:I
    .restart local v3       #type:I
    :cond_3
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    iget v5, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v4, v3, v0, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v2

    .restart local v2       #list:[I
    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 265
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 267
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const/16 v0, 0x9

    const v1, 0x7f060006

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 269
    const/16 v0, 0x1b

    const v1, 0x7f060007

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 272
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 445
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 446
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 447
    .local v0, currentCursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 448
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v0           #currentCursor:Landroid/database/Cursor;
    :cond_0
    move-object v2, v3

    .line 454
    check-cast v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 456
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 459
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v2}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->quit()V

    .line 466
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 469
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-virtual {v2}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->clear()V

    .line 471
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onDestroy()V

    .line 472
    return-void

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "[AlbumTrackBrowserActivity]"

    const-string v4, "[onDestroy] unregisterReceiver(mDlArtReceiver)"

    invoke-static {v2, v4, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onGroupClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IJI)Z
    .locals 8
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"
    .parameter "absPos"

    .prologue
    .line 673
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    if-eqz v6, :cond_0

    .line 674
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 675
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f060056

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 676
    .local v5, zero:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 677
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 684
    .end local v5           #zero:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v6, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {p2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 685
    .local v4, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 686
    if-eqz v4, :cond_1

    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-nez v6, :cond_3

    .line 687
    :cond_1
    const/4 v6, 0x1

    .line 742
    :goto_1
    return v6

    .line 679
    .end local v4           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    .restart local v5       #zero:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 689
    .end local v5           #zero:Ljava/lang/String;
    .restart local v4       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(I)I

    move-result v1

    .line 690
    .local v1, checkState:I
    packed-switch v1, :pswitch_data_0

    .line 700
    :goto_2
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v6}, Lcom/htc/widget/HtcCheckBox;->invalidate()V

    .line 704
    invoke-virtual {p1}, Lcom/htc/music/widget/GroupListView;->getLastVisiblePosition()I

    move-result v2

    .line 705
    .local v2, end:I
    if-lt p6, v2, :cond_4

    .line 706
    const/4 v6, 0x1

    goto :goto_1

    .line 692
    .end local v2           #end:I
    :pswitch_0
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 693
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 696
    :pswitch_1
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 697
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 709
    .restart local v2       #end:I
    :cond_4
    add-int/lit8 v3, p6, 0x1

    .local v3, i:I
    :goto_3
    if-gt v3, v2, :cond_6

    .line 711
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/htc/music/widget/GroupListView;->IsGroup(I)Z

    move-result v0

    .line 714
    .local v0, bGroup:Z
    if-nez v0, :cond_6

    .line 715
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v6

    add-int/lit8 v7, p6, 0x1

    sub-int v7, v3, v7

    invoke-virtual {v6, p3, v7}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(II)I

    move-result v1

    .line 716
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v6

    invoke-virtual {p1}, Lcom/htc/music/widget/GroupListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/GroupListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v7, v7, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    check-cast v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 718
    .restart local v4       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    packed-switch v1, :pswitch_data_1

    .line 709
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 720
    :pswitch_2
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 721
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_4

    .line 724
    :pswitch_3
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 725
    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_4

    .line 740
    .end local v0           #bGroup:Z
    .end local v1           #checkState:I
    .end local v2           #end:I
    .end local v3           #i:I
    :cond_5
    sub-int v6, p6, p3

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->playAllAction(IZ)V

    .line 742
    :cond_6
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 718
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 12
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1924
    const/4 v6, -0x1

    .line 1925
    .local v6, type:I
    const/4 v3, -0x1

    .line 1926
    .local v3, currentId:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1927
    const/4 v6, 0x2

    .line 1928
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1936
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 2028
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onHtcContextItemSelected(I)Z

    move-result v7

    :cond_0
    :goto_1
    return v7

    .line 1929
    :cond_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1930
    const/4 v6, 0x1

    .line 1931
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 1933
    :cond_2
    const-string v9, "[AlbumTrackBrowserActivity]"

    const-string v10, "Add to playlist, the type has some problems"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1938
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1939
    const/16 v8, 0x25a

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    goto :goto_1

    .line 1941
    :cond_3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1942
    .local v5, intent:Landroid/content/Intent;
    const-class v9, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v5, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1943
    const-string v9, "pickermode"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1945
    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v9, :cond_4

    .line 1947
    new-array v0, v7, [I

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    aput v9, v0, v8

    .line 1948
    .local v0, addToPlaylistData:[I
    const-string v8, "AddToPlaylistData"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1949
    invoke-virtual {p0, v5, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1953
    .end local v0           #addToPlaylistData:[I
    :cond_4
    iget-boolean v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowCompleteAlbumWithoutOtherType:Z

    if-eqz v8, :cond_5

    .line 1954
    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v8}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    .line 1958
    .restart local v0       #addToPlaylistData:[I
    :goto_2
    const-string v8, "AddToPlaylistData"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1959
    invoke-virtual {p0, v5, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1956
    .end local v0           #addToPlaylistData:[I
    :cond_5
    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v8, v6, v3, v9}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v0

    .restart local v0       #addToPlaylistData:[I
    goto :goto_2

    .line 1965
    .end local v0           #addToPlaylistData:[I
    .end local v5           #intent:Landroid/content/Intent;
    :sswitch_1
    :try_start_0
    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v8, :cond_6

    .line 1966
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 1967
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v9, 0x4

    iget v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-interface {v8, v9, v10}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1977
    :catch_0
    move-exception v4

    .line 1978
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1969
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_1
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 1970
    iget-boolean v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowCompleteAlbumWithoutOtherType:Z

    if-eqz v8, :cond_7

    .line 1971
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-interface {v8, v9, v10, v11}, Lcom/htc/music/IMediaPlaybackService;->addToQueueByDbTable(III)V

    goto/16 :goto_1

    .line 1973
    :cond_7
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    iget v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-interface {v8, v9, v6, v3, v10}, Lcom/htc/music/IMediaPlaybackService;->addToQueueForMultiConditionsByDbTable(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1983
    :sswitch_2
    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v8, :cond_9

    .line 1984
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-static {p0, v8, v9}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1986
    .local v1, canShare:I
    if-eq v1, v7, :cond_8

    .line 1987
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1990
    :cond_8
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 1993
    .end local v1           #canShare:I
    :cond_9
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1998
    :sswitch_3
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    if-nez v9, :cond_a

    .line 1999
    new-instance v9, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    .line 2002
    :cond_a
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_c

    :cond_b
    move v7, v8

    .line 2003
    goto/16 :goto_1

    .line 2005
    :cond_c
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 2007
    .local v2, currentAudioType:I
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-virtual {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->setAudioId(I)V

    .line 2008
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 2009
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v8, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->setAudioType(I)V

    .line 2010
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v8, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->useAsRingtone(Z)V

    goto/16 :goto_1

    .line 2015
    .end local v2           #currentAudioType:I
    :sswitch_4
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    goto/16 :goto_1

    .line 2019
    :sswitch_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2021
    .restart local v5       #intent:Landroid/content/Intent;
    const-class v8, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v5, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2022
    const-string v8, "track"

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2023
    const/4 v8, -0x2

    invoke-virtual {p0, v5, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1936
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0xa -> :sswitch_4
        0xd -> :sswitch_1
        0x10 -> :sswitch_5
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 13
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 2133
    if-nez p2, :cond_1

    .line 2134
    const-string v10, "[AlbumTrackBrowserActivity]"

    const-string v11, "onImageDecoded: bitmap is null"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2137
    :cond_1
    const-string v10, "[AlbumTrackBrowserActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onImageDecoded: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    .line 2139
    .local v7, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v4

    .line 2140
    .local v4, childCount:I
    if-gtz v4, :cond_2

    .line 2141
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 2144
    :cond_2
    const/4 v8, 0x0

    .line 2145
    .local v8, path:Ljava/lang/String;
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v10, v0

    if-lez v10, :cond_3

    const/4 v10, 0x0

    aget-object v10, p5, v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    aget-object v10, p5, v10

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 2146
    const/4 v10, 0x0

    aget-object v8, p5, v10

    .end local v8           #path:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 2148
    .restart local v8       #path:Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    move-wide/from16 v0, p3

    invoke-virtual {v10, p1, p2, v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->push(ILandroid/graphics/Bitmap;J)Z

    move-result v2

    .line 2149
    .local v2, addToCache:Z
    if-eqz v2, :cond_0

    .line 2150
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 2151
    invoke-virtual {v7, v5}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 2152
    .local v9, viewGroup:Landroid/view/ViewGroup;
    if-eqz v9, :cond_4

    .line 2153
    const v10, 0x7f07001f

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    .line 2154
    .local v3, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v3, :cond_4

    .line 2155
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2156
    .local v6, integer:Ljava/lang/Integer;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, p1, :cond_4

    .line 2157
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2158
    invoke-virtual {v3, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2150
    .end local v3           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v6           #integer:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 283
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 293
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 285
    :sswitch_0
    invoke-direct {p0, v2, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->playAllAction(IZ)V

    goto :goto_0

    .line 289
    :sswitch_1
    invoke-direct {p0, v2, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->playAllAction(IZ)V

    goto :goto_0

    .line 283
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 578
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onPause()V

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mResume:Z

    .line 580
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1881
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/GroupListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1882
    packed-switch p1, :pswitch_data_0

    .line 1888
    .end local p2
    :goto_0
    return-void

    .line 1885
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1882
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 543
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onResume()V

    .line 545
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle()V

    .line 546
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 549
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mResume:Z

    .line 551
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->updateAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/DlArtAsyncImageDecoder;)V

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->revertAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/MemoryCacheBitmapByTime;)V

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 559
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 432
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v0, "genre"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "artist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "albumid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "nochildmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 440
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 441
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 478
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 479
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    const-string v0, "[AlbumTrackBrowserActivity]"

    const-string v1, "onStart, Fail to bind service."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.music.metachanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 487
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onStart()V

    .line 488
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 492
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 494
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    .line 496
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 497
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 499
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsPlayAllTriggered:Z

    if-nez v1, :cond_1

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsPlayAllTriggered:Z

    .line 509
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onStop()V

    .line 510
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AlbumTrackBrowserActivity]"

    const-string v2, "[onStop] unregisterReceiver(mNowPlayingListener)."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 1627
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1628
    return-void
.end method

.method protected triggerPlayAllAction()V
    .locals 3

    .prologue
    .line 2190
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsPlayAllTriggered:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    :goto_0
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->triggerPlayAllAction()V

    .line 2196
    return-void

    .line 2192
    :catch_0
    move-exception v0

    .line 2193
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AlbumTrackBrowserActivity]"

    const-string v2, "[preparePlayAllAction] unregisterReceiver(mNowPlayingListener)."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
