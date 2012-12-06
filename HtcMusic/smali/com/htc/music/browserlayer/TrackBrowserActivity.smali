.class public Lcom/htc/music/browserlayer/TrackBrowserActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x258

.field private static final ANIMATION_START_OFFSET:I = 0xc8

.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field private static final DIALOG_SHARETEXT:I = 0x5

.field private static final DIALOG_SHARETYPE:I = 0x4

.field private static final DIALOG_SHARE_DRM_FILE:I = 0x7

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0x6

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field private static final INVALIDATE_LISTVIEW:I = 0x1

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x2

.field private static final START_ASYNC_QUERY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[TrackBrowserActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final ADD_SONGS:I

.field private final CHANGE_ORDER:I

.field private final CLEAR_PLAYLIST:I

.field private final DELETE_SONGS:I

.field private final DIALOG_SET_AS_RINGTONE:I

.field private final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

.field private final EDIT_PLAYLIST:I

.field private final GET_FOLDER_SONGS:I

.field private final PLAY_ALL:I

.field private final Q_ALL:I

.field private final Q_SELECTED:I

.field private final REMOVE:I

.field private final RENAME_PLAYLIST:I

.field private final SAVE_AS_PLAYLIST:I

.field private final SEARCH:I

.field private final SELECT_ALL:I

.field private final SETTING:I

.field private final SET_RINGTONE:I

.field private final SHARE:I

.field private final SHARE_PLUGIN:I

.field private final UNSELECT_ALL:I

.field private final UPLOAD:I

.field private mActivity_height:I

.field private mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAlbumId:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field private mAudioId:I

.field private mButtonPanel:Lcom/htc/widget/HtcFooter;

.field private mComposer:Ljava/lang/String;

.field private mCountTemplate:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentDetails:Landroid/content/ContentValues;

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

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

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeletedOneRow:Z

.field private mDescription:Ljava/lang/String;

.field mDestroyed:Z

.field private mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field private mDlnaMode:I

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field private mDrmFolderId:Ljava/lang/String;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mEditMode:Z

.field private mFilter:Ljava/lang/String;

.field private mFolderId:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field private mIsDrmList:Z

.field public mIsNowPlayinglist:Z

.field private mIsPlayAllTriggered:Z

.field private mLibraryListener:Landroid/view/View$OnClickListener;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

.field private mMsg:Ljava/lang/String;

.field private mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

.field private mNeedBindService:Z

.field private volatile mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

.field private volatile mNonUILooper:Landroid/os/Looper;

.field private mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mPickerMode:I

.field mPlaybackServiceConnected:Z

.field private mPlaylistAudioId:[I

.field private mPlaylistContent:[I

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mQueueTitle_height:I

.field private mReScanHandler:Landroid/os/Handler;

.field private mRecentPlayedListener:Landroid/content/BroadcastReceiver;

.field private mRecentPlayedPlaylist:Z

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

.field private mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectedId:J

.field private mSelectedPlaylistId:Ljava/lang/String;

.field private mSelectedPlaylistName:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mShareBundle:Landroid/os/Bundle;

.field private mShowPlayerPanel:Z

.field private mShuffleMode:I

.field private mSortOrder:Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

.field private preSearchTime:J

.field private prevScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 244
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 113
    const/16 v0, 0x1a

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->Q_SELECTED:I

    .line 115
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->Q_ALL:I

    .line 117
    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SAVE_AS_PLAYLIST:I

    .line 119
    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->PLAY_ALL:I

    .line 121
    iput v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->CLEAR_PLAYLIST:I

    .line 123
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->REMOVE:I

    .line 125
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SEARCH:I

    .line 128
    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->ADD_SONGS:I

    .line 130
    const/16 v0, 0x22

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DELETE_SONGS:I

    .line 132
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->CHANGE_ORDER:I

    .line 134
    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->RENAME_PLAYLIST:I

    .line 136
    const/16 v0, 0x25

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SELECT_ALL:I

    .line 138
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->UNSELECT_ALL:I

    .line 140
    const/16 v0, 0x27

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DIALOG_SET_AS_RINGTONE:I

    .line 142
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

    .line 144
    const/16 v0, 0x29

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->EDIT_PLAYLIST:I

    .line 146
    const/16 v0, 0x2a

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SHARE_PLUGIN:I

    .line 148
    const/16 v0, 0x2b

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->UPLOAD:I

    .line 150
    const/16 v0, 0x2c

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SETTING:I

    .line 152
    const/16 v0, 0x2d

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SHARE:I

    .line 154
    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SET_RINGTONE:I

    .line 171
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 173
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    .line 185
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 187
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapterSent:Z

    .line 220
    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    .line 222
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    .line 227
    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I

    .line 228
    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenHeight:I

    .line 229
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mResume:Z

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;

    .line 233
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPlayAllTriggered:Z

    .line 241
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->prevScrollState:I

    .line 268
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNeedBindService:Z

    .line 546
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 617
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    .line 758
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 785
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 797
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    .line 1176
    const/16 v0, 0x4ce

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivity_height:I

    .line 1177
    const/16 v0, 0x40

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle_height:I

    .line 1244
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 1260
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 1394
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 1417
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 1442
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 3026
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$16;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$16;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLibraryListener:Landroid/view/View$OnClickListener;

    .line 4266
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    .line 4268
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    .line 4269
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    .line 4275
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 4277
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    .line 4278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    .line 4279
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$19;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$19;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    .line 4295
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 4299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    .line 4303
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-direct {v0, v4}, Lcom/htc/music/util/MemoryCacheBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    .line 4305
    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    .line 4308
    const v0, 0x1f8bb

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->GET_FOLDER_SONGS:I

    .line 4494
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    .line 4573
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareBundle:Landroid/os/Bundle;

    .line 4590
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    .line 245
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAudioId:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/music/browserlayer/TrackBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAudioId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mResume:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/TrackBrowserActivity;IJZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions(IJZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFolderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDrmFolderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onClickMusicStore()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->hideHtcContextMenu()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 10
    .parameter "uri"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    .line 1787
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1789
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 1790
    .local v5, status:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 1791
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 1833
    :cond_0
    :goto_0
    return-void

    .line 1792
    :cond_1
    if-nez v5, :cond_4

    .line 1793
    invoke-static {v4, p1, v8}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 1794
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_2

    .line 1795
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v7, p2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 1797
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->triggerPlayAllAction()V

    goto :goto_0

    .line 1800
    :cond_2
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    .line 1801
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 1802
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    goto :goto_0

    .line 1804
    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v7, p2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 1806
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->triggerPlayAllAction()V

    goto :goto_0

    .line 1811
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1812
    .local v3, intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1813
    const-string v7, "drmtargettomain"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1816
    const/4 v2, 0x0

    .line 1818
    .local v2, id_idx:I
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v7, :cond_5

    .line 1819
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "audio_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1825
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1826
    .local v6, trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1831
    :goto_2
    const/4 v7, -0x2

    invoke-virtual {p0, v3, v7}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1822
    .end local v6           #trackId:Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1

    .line 1827
    :catch_0
    move-exception v1

    .line 1828
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1829
    .restart local v6       #trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 4534
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 4535
    return-void
.end method

.method private createNonUiThread()V
    .locals 3

    .prologue
    .line 4718
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[TrackBrowserActivity]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4719
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4720
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    .line 4721
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    .line 4722
    return-void
.end method

.method private destroyNonUiThread()V
    .locals 2

    .prologue
    .line 4725
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    if-eqz v0, :cond_0

    .line 4726
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4728
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 4729
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 4730
    :cond_1
    return-void
.end method

.method private getListSizeTitle(I)Ljava/lang/String;
    .locals 4
    .parameter "iListSize"

    .prologue
    .line 4649
    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4650
    .local v0, szTitle:Ljava/lang/String;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4651
    :cond_0
    const v1, 0x7f06001f

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4653
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "%1s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4654
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4658
    :goto_0
    return-object v1

    .line 4657
    :cond_2
    const-string v1, "[TrackBrowserActivity]"

    const-string v2, "getListSizeTitle(), Can\'t find String htc_all_tracks_title_counts or htc_all_tracks_title_one!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4658
    const-string v1, ""

    goto :goto_0
.end method

.method private getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 2808
    const/16 v19, 0x0

    .line 2809
    .local v19, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 2810
    const-string v3, "title COLLATE NOCASE ASC"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 2811
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 2812
    .local v24, where:Ljava/lang/StringBuilder;
    const-string v3, "title != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2815
    const/4 v9, 0x0

    .line 2816
    .local v9, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2830
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    .line 2831
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    .line 2832
    const-string v3, " AND "

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    const-string v3, "title LIKE ?"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2836
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2838
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND album_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2842
    const-string v3, "track"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 2845
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 2846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND artist_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v13, v3

    .line 2850
    .local v13, genreId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v13, v3

    if-nez v3, :cond_7

    .line 2851
    const-string v3, " AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    const-string v3, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    if-eqz p1, :cond_6

    .line 2854
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    const/16 v19, 0x0

    .line 3016
    .end local v13           #genreId:J
    :cond_3
    :goto_1
    if-eqz v19, :cond_4

    if-eqz p1, :cond_4

    .line 3017
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 3020
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 3022
    :cond_4
    return-object v19

    .line 2809
    .end local v9           #keywords:[Ljava/lang/String;
    .end local v24           #where:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2858
    .restart local v9       #keywords:[Ljava/lang/String;
    .restart local v13       #genreId:J
    .restart local v24       #where:Ljava/lang/StringBuilder;
    :cond_6
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto :goto_1

    .line 2862
    :cond_7
    const-string v3, " AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    if-eqz p1, :cond_8

    .line 2864
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "external"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v3, v6, v7}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2868
    :cond_8
    const-string v3, "external"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto :goto_1

    .line 2870
    .end local v13           #genreId:J
    :cond_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v3, v4, :cond_e

    .line 2871
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 2872
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_3

    .line 2873
    if-eqz p2, :cond_c

    .line 2874
    const/16 v17, 0x0

    .line 2876
    .local v17, nowplaying:[I
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v17

    .line 2877
    const-string v3, " AND _id IN ("

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2878
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v15, v3, :cond_b

    .line 2879
    aget v3, v17, v15

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2880
    move-object/from16 v0, v17

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v15, v3, :cond_a

    .line 2881
    const-string v3, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2878
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2884
    :cond_b
    const-string v3, ")"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2885
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    goto/16 :goto_1

    .line 2893
    .end local v15           #i:I
    .end local v17           #nowplaying:[I
    :cond_c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v21

    .line 2894
    .local v21, status:Ljava/lang/String;
    const-string v3, "mounted"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2895
    new-instance v19, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    .end local v19           #ret:Landroid/database/Cursor;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .restart local v19       #ret:Landroid/database/Cursor;
    goto/16 :goto_1

    .line 2898
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2902
    .end local v21           #status:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v3, :cond_15

    .line 2903
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v3, :cond_10

    .line 2905
    const-string v3, "play_order"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 2907
    if-eqz p1, :cond_f

    .line 2908
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "external"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2918
    :cond_f
    const-string v3, "external"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_1

    .line 2927
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 2928
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_3

    .line 2929
    const/16 v18, 0x0

    .line 2931
    .local v18, recentPlayed:[I
    :try_start_1
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v18

    .line 2932
    const-string v3, " AND _id IN ("

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_3
    move-object/from16 v0, v18

    array-length v3, v0

    if-ge v15, v3, :cond_12

    .line 2934
    aget v3, v18, v15

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2935
    move-object/from16 v0, v18

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v15, v3, :cond_11

    .line 2936
    const-string v3, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 2939
    :cond_12
    const-string v3, ")"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2940
    const-string v3, " AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2941
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 2943
    .local v22, tempCursor:Landroid/database/Cursor;
    if-eqz v22, :cond_14

    .line 2944
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v22

    .line 2945
    if-eqz v22, :cond_13

    .line 2946
    new-instance v20, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;-><init>(Landroid/database/Cursor;[ILcom/htc/music/browserlayer/TrackBrowserActivity$1;)V

    .end local v19           #ret:Landroid/database/Cursor;
    .local v20, ret:Landroid/database/Cursor;
    move-object/from16 v19, v20

    .end local v20           #ret:Landroid/database/Cursor;
    .restart local v19       #ret:Landroid/database/Cursor;
    goto/16 :goto_1

    .line 2948
    :cond_13
    const-string v3, "[TrackBrowserActivity]"

    const-string v4, "Recently played cursor became null after joinAlbumArt."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2953
    .end local v15           #i:I
    .end local v22           #tempCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 2954
    .local v12, ex:Landroid/os/RemoteException;
    const-string v3, "[TrackBrowserActivity]"

    const-string v4, "getTrackCursor - (null != mSelectedPlaylistId && !mRecentPlayedPlaylist)."

    invoke-static {v3, v4, v12}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2951
    .end local v12           #ex:Landroid/os/RemoteException;
    .restart local v15       #i:I
    .restart local v22       #tempCursor:Landroid/database/Cursor;
    :cond_14
    :try_start_2
    const-string v3, "[TrackBrowserActivity]"

    const-string v4, "Recently played cursor is null."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 2959
    .end local v15           #i:I
    .end local v18           #recentPlayed:[I
    .end local v22           #tempCursor:Landroid/database/Cursor;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFolderId:Ljava/lang/String;

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDrmFolderId:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 2961
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    if-eqz v3, :cond_17

    .line 2962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    const v4, 0x1f8bb

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 2963
    .local v16, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2966
    .end local v16           #msg:Landroid/os/Message;
    :cond_17
    const-string v3, "[TrackBrowserActivity]"

    const-string v4, "get track cursor, mNonUIHandler is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2969
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v3, :cond_19

    .line 2970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND album_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2971
    const-string v3, "track"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 2973
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 2974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND artist_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 2977
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 2978
    .local v11, composer:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v23

    .line 2979
    .local v23, unknown:Z
    if-eqz v23, :cond_1c

    .line 2980
    const-string v3, " AND "

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    invoke-static/range {v24 .. v24}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 2990
    .end local v11           #composer:Ljava/lang/String;
    .end local v23           #unknown:Z
    :cond_1b
    :goto_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v3, v4, :cond_1e

    .line 2995
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2996
    const-string v3, " AND (is_music>1 OR mime_type = \'audio/x-wma-drm\' )"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3002
    :goto_5
    if-eqz p1, :cond_1f

    .line 3003
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3005
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2984
    .restart local v11       #composer:Ljava/lang/String;
    .restart local v23       #unknown:Z
    :cond_1c
    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND composer = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2998
    .end local v11           #composer:Ljava/lang/String;
    .end local v23           #unknown:Z
    :cond_1d
    const-string v3, " AND is_music>1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3000
    :cond_1e
    const-string v3, " AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3007
    :cond_1f
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_1

    .line 2889
    .restart local v17       #nowplaying:[I
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "c"

    .prologue
    .line 4249
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->joinAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private moveItem(Z)V
    .locals 13
    .parameter "up"

    .prologue
    .line 1661
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 1662
    .local v3, curcount:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v4

    .line 1663
    .local v4, curpos:I
    if-eqz p1, :cond_0

    const/4 v10, 0x1

    if-lt v4, v10, :cond_1

    :cond_0
    if-nez p1, :cond_2

    add-int/lit8 v10, v3, -0x1

    if-lt v4, v10, :cond_2

    .line 1705
    :cond_1
    :goto_0
    return-void

    .line 1667
    :cond_2
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v10, v10, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v10, :cond_6

    .line 1668
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    .line 1669
    .local v1, c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    if-eqz p1, :cond_4

    add-int/lit8 v10, v4, -0x1

    :goto_1
    invoke-virtual {v1, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->moveItem(II)V

    .line 1670
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v10, :cond_3

    .line 1671
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 1673
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1674
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 1675
    if-eqz p1, :cond_5

    .line 1676
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 1669
    :cond_4
    add-int/lit8 v10, v4, 0x1

    goto :goto_1

    .line 1678
    :cond_5
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 1681
    .end local v1           #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    :cond_6
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "play_order"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1683
    .local v2, colidx:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1684
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1685
    .local v5, currentplayidx:I
    const-string v10, "external"

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 1686
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1687
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "_id=?"

    .line 1688
    .local v8, where:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    .line 1689
    .local v9, wherearg:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1690
    .local v6, res:Landroid/content/ContentResolver;
    if-eqz p1, :cond_7

    .line 1691
    const-string v10, "play_order"

    add-int/lit8 v11, v5, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1692
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1693
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1694
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1701
    :goto_2
    const-string v10, "play_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1702
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1703
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1696
    :cond_7
    const-string v10, "play_order"

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1697
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1698
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1699
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method private notifyProperty(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 4382
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 4383
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4385
    .local v0, i:Landroid/content/Intent;
    const-string v1, "duration"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "length"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4387
    const-string v1, "trackname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4388
    const-string v1, "artistname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "artist"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4389
    const-string v1, "albumname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4390
    const-string v1, "genre"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "genre"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4391
    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "composer"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4392
    const-string v1, "location"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4394
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 4396
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onClickMusicStore()V
    .locals 8

    .prologue
    .line 4597
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4599
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "vfmusic://"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4646
    :goto_0
    return-void

    .line 4601
    :catch_0
    move-exception v0

    .line 4602
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[TrackBrowserActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4604
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isOrangeStoreCase()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4605
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 4607
    .local v2, locale:Ljava/util/Locale;
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4609
    :cond_1
    const-string v3, "http://m.musicstore.orange.fr"

    .line 4615
    .local v3, strLink:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4617
    :catch_1
    move-exception v0

    .line 4618
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[TrackBrowserActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4610
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #strLink:Ljava/lang/String;
    :cond_2
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    .line 4611
    const-string v3, "http://mobile.orange.ch/MusicStore"

    .restart local v3       #strLink:Ljava/lang/String;
    goto :goto_1

    .line 4613
    .end local v3           #strLink:Ljava/lang/String;
    :cond_3
    const-string v3, "http://m.musicstore.orange.co.uk"

    .restart local v3       #strLink:Ljava/lang/String;
    goto :goto_1

    .line 4620
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #strLink:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isTelstraStoreCase()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4621
    const-string v4, "http://waprd.telstra.com/redirect?target=music-g"

    .line 4623
    .local v4, strURL:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 4625
    :catch_2
    move-exception v0

    .line 4626
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[TrackBrowserActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4628
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #strURL:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/CustomizeSetting;->isAmazonStoreCase(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4629
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchAmazonIntent()Landroid/content/Intent;

    move-result-object v1

    .line 4631
    .local v1, intent:Landroid/content/Intent;
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 4632
    :catch_3
    move-exception v0

    .line 4633
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[TrackBrowserActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4634
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->forceReloadAmazonSetting()V

    goto/16 :goto_0

    .line 4636
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/CustomizeSetting;->isVerizonStoreCase(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4637
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVerizonMODIntent()Landroid/content/Intent;

    move-result-object v1

    .line 4639
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 4640
    :catch_4
    move-exception v0

    .line 4641
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[TrackBrowserActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4644
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    const-string v5, "[TrackBrowserActivity]"

    const-string v6, "there is no music store available, but image button is visible."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onCreate_Local(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x2

    const v4, 0x2080001

    const/4 v8, 0x0

    const/4 v13, 0x1

    .line 359
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 360
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCountTemplate:Ljava/lang/String;

    .line 362
    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setVolumeControlStream(I)V

    .line 364
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFolderId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDrmFolderId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->createNonUiThread()V

    .line 368
    :cond_1
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v13

    const-string v1, "title_key"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 377
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v13

    const-string v1, "title_key"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "play_order"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 392
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_6

    .line 393
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 394
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 395
    .local v12, listContentLayout:Landroid/view/ViewGroup;
    if-eqz v12, :cond_2

    .line 396
    const-string v0, "common_app_bkg"

    invoke-static {p0, v0, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v13}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v0, :cond_4

    .line 403
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 404
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 447
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 448
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_d

    .line 449
    const-string v0, "[TrackBrowserActivity]"

    const-string v1, "[onCreate_Local] mTrackList = getListView() is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_5
    :goto_1
    return-void

    .line 407
    .end local v12           #listContentLayout:Landroid/view/ViewGroup;
    :cond_6
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_7

    .line 408
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 409
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 410
    .restart local v12       #listContentLayout:Landroid/view/ViewGroup;
    if-eqz v12, :cond_4

    .line 411
    const-string v0, "common_app_bkg"

    invoke-static {p0, v0, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 413
    .end local v12           #listContentLayout:Landroid/view/ViewGroup;
    :cond_7
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_9

    .line 414
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 415
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 420
    :goto_2
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 421
    .restart local v12       #listContentLayout:Landroid/view/ViewGroup;
    if-eqz v12, :cond_4

    .line 422
    const-string v0, "common_app_bkg"

    invoke-static {p0, v0, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 417
    .end local v12           #listContentLayout:Landroid/view/ViewGroup;
    :cond_8
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto :goto_2

    .line 425
    :cond_9
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 426
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 428
    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 429
    .restart local v12       #listContentLayout:Landroid/view/ViewGroup;
    if-eqz v12, :cond_a

    .line 430
    const-string v0, "common_app_bkg"

    invoke-static {p0, v0, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 443
    :cond_a
    :goto_3
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_4

    .line 444
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v13}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    goto/16 :goto_0

    .line 433
    .end local v12           #listContentLayout:Landroid/view/ViewGroup;
    :cond_b
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 434
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 435
    .restart local v12       #listContentLayout:Landroid/view/ViewGroup;
    if-eqz v12, :cond_c

    .line 436
    const-string v0, "common_app_bkg"

    invoke-static {p0, v0, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 438
    :cond_c
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v0, :cond_a

    .line 439
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 440
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    goto :goto_3

    .line 452
    :cond_d
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 455
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_15

    .line 456
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_e

    .line 457
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 458
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 459
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    .line 461
    :cond_e
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 482
    :cond_f
    :goto_4
    const/4 v11, 0x0

    .line 483
    .local v11, hideSelected:Z
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    if-eq v0, v13, :cond_10

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    if-ne v0, v6, :cond_11

    .line 484
    :cond_10
    const/4 v11, 0x1

    .line 488
    :cond_11
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_17

    .line 489
    const v3, 0x7f030021

    .line 496
    .local v3, layout:I
    :goto_5
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v4, 0x0

    new-array v5, v8, [Ljava/lang/String;

    new-array v6, v8, [I

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v2, :cond_12

    if-eqz v11, :cond_13

    :cond_12
    move v8, v13

    :cond_13
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 504
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$302(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I

    .line 506
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 509
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 513
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initPlayerPanel()V

    .line 514
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initButtonsPanel()V

    .line 516
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 517
    .local v10, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v0, "file"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 523
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-eqz v0, :cond_14

    .line 524
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.music.recentplayedchanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 527
    :cond_14
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 528
    .local v9, dlArtFilter:Landroid/content/IntentFilter;
    const-string v0, "action_complete_one_download"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v0, "action_revert_current_album"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 532
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v13, v0, :cond_19

    .line 533
    const v0, 0x7f06008b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSearchHint(I)V

    .line 537
    :goto_6
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_5

    .line 538
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->enableSearch()V

    goto/16 :goto_1

    .line 463
    .end local v3           #layout:I
    .end local v9           #dlArtFilter:Landroid/content/IntentFilter;
    .end local v10           #f:Landroid/content/IntentFilter;
    .end local v11           #hideSelected:Z
    :cond_15
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v4, 0x2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v4, 0x3

    cmp-long v0, v0, v4

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v4, 0x4

    cmp-long v0, v0, v4

    if-nez v0, :cond_f

    .line 465
    :cond_16
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    goto/16 :goto_4

    .line 490
    .restart local v11       #hideSelected:Z
    :cond_17
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-eqz v0, :cond_18

    .line 491
    const v3, 0x7f030009

    .restart local v3       #layout:I
    goto/16 :goto_5

    .line 493
    .end local v3           #layout:I
    :cond_18
    const v3, 0x7f03000e

    .restart local v3       #layout:I
    goto/16 :goto_5

    .line 536
    .restart local v9       #dlArtFilter:Landroid/content/IntentFilter;
    .restart local v10       #f:Landroid/content/IntentFilter;
    :cond_19
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSearchHint(I)V

    goto :goto_6
.end method

.method private onDestroy_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 637
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 639
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 641
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 643
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 652
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 654
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 655
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 658
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->quit()V

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->clear()V

    .line 663
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 664
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 669
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 670
    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 672
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->destroyNonUiThread()V

    .line 678
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 679
    return-void
.end method

.method private onHtcContextItemSelected_Local(I)Z
    .locals 14
    .parameter "id"

    .prologue
    .line 1469
    sparse-switch p1, :sswitch_data_0

    .line 1586
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v10

    :goto_0
    return v10

    .line 1472
    :sswitch_0
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v12, "_data"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1474
    .local v8, path:Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v10, "content://drm/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1476
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    iget-wide v12, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 1483
    :cond_0
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 1478
    :cond_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-static {p0, v10, v11}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 1480
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->triggerPlayAllAction()V

    goto :goto_1

    .line 1487
    .end local v8           #path:Ljava/lang/String;
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1488
    const/16 v10, 0x25a

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 1499
    :goto_2
    const/4 v10, 0x1

    goto :goto_0

    .line 1491
    :cond_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1493
    .local v7, intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v7, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1494
    const-string v10, "pickermode"

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1495
    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v10, 0x0

    iget-wide v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v11, v11

    aput v11, v0, v10

    .line 1496
    .local v0, addToPlaylistData:[I
    const-string v10, "AddToPlaylistData"

    invoke-virtual {v7, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1497
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1503
    .end local v0           #addToPlaylistData:[I
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_2
    const-string v10, "[TrackBrowserActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ADD_TO_QUEUE, mSelectedId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :try_start_0
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v11, 0x4

    iget-wide v12, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v12, v12

    invoke-interface {v10, v11, v12}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1506
    :catch_0
    move-exception v4

    .line 1507
    .local v4, e:Landroid/os/RemoteException;
    const-string v10, "[TrackBrowserActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1513
    .end local v4           #e:Landroid/os/RemoteException;
    :sswitch_3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 1514
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1518
    :sswitch_4
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1519
    .restart local v7       #intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v7, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1520
    const-string v10, "track"

    iget-wide v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1522
    const/4 v10, -0x2

    invoke-virtual {p0, v7, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1523
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1527
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_5
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v12, "_data"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1530
    .restart local v8       #path:Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 1531
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1533
    :cond_4
    invoke-static {p0, v8}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1535
    .local v1, currentAudioType:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v10, :cond_5

    .line 1536
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    iget-wide v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioId(I)V

    .line 1537
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    invoke-virtual {v10, v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 1538
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    invoke-virtual {v10, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioType(I)V

    .line 1539
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->useAsRingtone(Z)V

    .line 1542
    :cond_5
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1546
    .end local v1           #currentAudioType:I
    .end local v8           #path:Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->doSearch()V

    .line 1547
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1551
    :sswitch_7
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->chooseShareType()V

    .line 1552
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1556
    :sswitch_8
    iget-wide v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v6

    .line 1557
    .local v6, index:I
    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/String;

    .line 1558
    .local v3, dataPathArray:[Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v2

    .line 1559
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_6

    .line 1560
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1561
    const/4 v10, 0x0

    const-string v11, "_data"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .line 1562
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1563
    const/4 v2, 0x0

    .line 1565
    :cond_6
    new-instance v9, Ljava/lang/String;

    const-string v10, "com.htc.vmm.service.VMMEngineService"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1567
    .local v9, szAction:Ljava/lang/String;
    :try_start_1
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "upload"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1573
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1568
    :catch_1
    move-exception v5

    .line 1570
    .local v5, ex:Ljava/lang/SecurityException;
    const-string v10, "[TrackBrowserActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "We do not have permission to start the service :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1469
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_5
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
        0xd -> :sswitch_2
        0x10 -> :sswitch_4
        0x15 -> :sswitch_8
        0x20 -> :sswitch_6
        0x2d -> :sswitch_7
    .end sparse-switch
.end method

.method private onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 551
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNeedBindService:Z

    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 553
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 609
    :goto_0
    return-void

    .line 557
    :cond_0
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 560
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_1

    .line 561
    const v3, 0x7f030021

    .line 568
    .local v3, layout:I
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_4

    .line 570
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v10, :cond_3

    :goto_2
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 578
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 580
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 581
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 600
    :goto_3
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 605
    :goto_4
    :try_start_1
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAudioId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 606
    :catch_0
    move-exception v9

    .line 607
    .local v9, ex:Landroid/os/RemoteException;
    const-string v0, "[TrackBrowserActivity]"

    const-string v1, "Remote exception in getAudioId"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    .end local v3           #layout:I
    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_1
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-eqz v0, :cond_2

    .line 563
    const v3, 0x7f030009

    .restart local v3       #layout:I
    goto :goto_1

    .line 565
    .end local v3           #layout:I
    :cond_2
    const v3, 0x7f03000e

    .restart local v3       #layout:I
    goto :goto_1

    :cond_3
    move v8, v2

    .line 570
    goto :goto_2

    .line 583
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 590
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 591
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_3

    .line 594
    :cond_5
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 595
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_3

    .line 601
    :catch_1
    move-exception v9

    .line 602
    .restart local v9       #ex:Landroid/os/RemoteException;
    const-string v0, "[TrackBrowserActivity]"

    const-string v1, "Remote exception in getCurrentMode"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private removeItem()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 1621
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1622
    .local v1, curcount:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v2

    .line 1623
    .local v2, curpos:I
    if-eqz v1, :cond_0

    if-gez v2, :cond_1

    .line 1658
    .end local v2           #curpos:I
    :cond_0
    :goto_0
    return-void

    .line 1627
    .restart local v2       #curpos:I
    :cond_1
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v8, v7, :cond_3

    .line 1633
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v7

    if-eq v2, v7, :cond_2

    .line 1634
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1638
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 1639
    .local v6, v:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1641
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v7, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 1642
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1643
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0

    .line 1646
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1647
    .local v0, colidx:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1648
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1649
    .local v3, id:J
    const-string v7, "external"

    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 1650
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1651
    add-int/lit8 v1, v1, -0x1

    .line 1652
    if-nez v1, :cond_4

    .line 1653
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 1655
    :cond_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-ge v2, v1, :cond_5

    .end local v2           #curpos:I
    :goto_2
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .restart local v2       #curpos:I
    :cond_5
    move v2, v1

    goto :goto_2

    .line 1636
    .end local v0           #colidx:I
    .end local v3           #id:J
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private removePlaylistItem(I)V
    .locals 10
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1370
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1372
    .local v5, v:Landroid/view/View;
    :try_start_0
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v6

    if-eq p1, v6, :cond_0

    .line 1373
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :cond_0
    :goto_0
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1381
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v6, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v6, :cond_1

    .line 1382
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v6, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 1390
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1391
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1392
    return-void

    .line 1375
    :catch_0
    move-exception v1

    .line 1377
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    goto :goto_0

    .line 1384
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1385
    .local v0, colidx:I
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1386
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1387
    .local v2, id:J
    const-string v6, "external"

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1388
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setTitle()V
    .locals 28

    .prologue
    .line 976
    const/16 v18, 0x0

    .line 977
    .local v18, fancyName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_1

    .line 978
    const v2, 0x7f060009

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1149
    :cond_0
    :goto_0
    if-eqz v18, :cond_20

    .line 1150
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1154
    :goto_1
    return-void

    .line 979
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 981
    const v2, 0x7f06005c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 982
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_1

    .line 984
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f06001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 986
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v2, v3, :cond_4

    .line 987
    const v2, 0x7f060028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 988
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 990
    .local v12, albunId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_5

    .line 991
    const v2, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 993
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 994
    .local v24, numresults:I
    :goto_2
    if-lez v24, :cond_0

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 997
    .local v23, idx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "artist_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist_id"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1012
    .local v5, where:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1016
    .local v16, cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_7

    .line 1017
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v24

    if-eq v2, v0, :cond_6

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1021
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->deactivate()V

    .line 1023
    :cond_7
    if-eqz v18, :cond_8

    const-string v2, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1024
    :cond_8
    const v2, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .line 993
    .end local v5           #where:Ljava/lang/String;
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v23           #idx:I
    .end local v24           #numresults:I
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 1028
    .end local v12           #albunId:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1030
    .local v14, artistId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-nez v2, :cond_b

    .line 1031
    const v2, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .line 1033
    :cond_b
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "artist"

    aput-object v3, v8, v2

    .line 1036
    .local v8, cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1039
    .restart local v16       #cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_0

    .line 1040
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_c

    .line 1041
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1042
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1043
    const-string v2, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1044
    const v2, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1046
    :cond_c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1050
    .end local v8           #cols:[Ljava/lang/String;
    .end local v14           #artistId:J
    .end local v16           #cursor:Landroid/database/Cursor;
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v2, v3, :cond_10

    .line 1051
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 1052
    const v2, 0x7f060015

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    goto/16 :goto_0

    .line 1053
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_f

    .line 1054
    const v2, 0x7f060009

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    goto/16 :goto_0

    .line 1056
    :cond_f
    const v2, 0x7f060014

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    goto/16 :goto_0

    .line 1058
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 1060
    const-string v27, ""

    .line 1061
    .local v27, secondary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_11

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 1063
    .local v21, iCount:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListSizeTitle(I)Ljava/lang/String;

    move-result-object v27

    .line 1066
    .end local v21           #iCount:I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v2, :cond_16

    .line 1067
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    .line 1069
    .restart local v8       #cols:[Ljava/lang/String;
    const-wide/16 v25, 0x0

    .line 1071
    .local v25, playlistId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    .line 1072
    .local v22, id:Ljava/lang/Long;
    if-eqz v22, :cond_12

    .line 1073
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v25

    .line 1079
    .end local v22           #id:Ljava/lang/Long;
    :cond_12
    :goto_3
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1082
    .restart local v16       #cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_14

    .line 1083
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_13

    .line 1084
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1085
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1088
    :cond_13
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1089
    const/16 v16, 0x0

    .line 1092
    :cond_14
    if-eqz v18, :cond_15

    .line 1093
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1095
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCategorySecondaryTitleVisible(Z)V

    .line 1096
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSecondaryTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1075
    .end local v16           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v17

    .line 1076
    .local v17, ex:Ljava/lang/Exception;
    const-string v2, "[TrackBrowserActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(null != mSelectedPlaylistId), ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1100
    .end local v17           #ex:Ljava/lang/Exception;
    .restart local v16       #cursor:Landroid/database/Cursor;
    :cond_15
    const-string v2, "[TrackBrowserActivity]"

    const-string v3, "setTitle(), fancyName is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1104
    .end local v8           #cols:[Ljava/lang/String;
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v25           #playlistId:J
    :cond_16
    const v2, 0x7f0600c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setMainTitle(Ljava/lang/String;)V

    .line 1105
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSecondaryTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1108
    .end local v27           #secondary:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 1110
    .local v19, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v19, v2

    if-nez v2, :cond_18

    .line 1111
    const v2, 0x7f060040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .line 1113
    :cond_18
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    .line 1116
    .restart local v8       #cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1119
    .restart local v16       #cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_0

    .line 1120
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_19

    .line 1121
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1122
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1125
    :cond_19
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1129
    .end local v8           #cols:[Ljava/lang/String;
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v19           #genreId:J
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const v2, 0x7f06003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    :goto_4
    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_4

    .line 1132
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFolderId:Ljava/lang/String;

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDrmFolderId:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 1133
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFolderName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1135
    const-string v27, " "

    .line 1136
    .restart local v27       #secondary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1e

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 1138
    .restart local v21       #iCount:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListSizeTitle(I)Ljava/lang/String;

    move-result-object v27

    .line 1140
    .end local v21           #iCount:I
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSecondaryTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1144
    .end local v27           #secondary:Ljava/lang/String;
    :cond_1f
    const v2, 0x7f06001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1145
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCategorySecondaryTitleVisible(Z)V

    goto/16 :goto_1

    .line 1152
    :cond_20
    const v2, 0x7f06001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(I)V

    goto/16 :goto_1
.end method

.method private shareMusicFile()V
    .locals 8

    .prologue
    .line 4538
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4540
    .local v4, path:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 4541
    const-string v5, "[TrackBrowserActivity]"

    const-string v6, "can\'t get share file path"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4568
    :goto_0
    return-void

    .line 4544
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "file://"

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4545
    .local v3, newPath:Ljava/lang/StringBuffer;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4546
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4547
    const/4 v3, 0x0

    .line 4549
    iget-wide v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v0, v5

    .line 4550
    .local v0, audioId:I
    invoke-static {p0, v4, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 4552
    .local v1, canShare:I
    packed-switch v1, :pswitch_data_0

    .line 4565
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060081

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4566
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4555
    .end local v2           #message:Ljava/lang/String;
    :pswitch_0
    const-string v5, "[TrackBrowserActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "normal file case, Audio Path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4556
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showNewDialog(I)V

    goto :goto_0

    .line 4560
    :pswitch_1
    const-string v5, "[TrackBrowserActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SD DRM case, Audio Path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4561
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showNewDialog(I)V

    goto :goto_0

    .line 4552
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
    .line 4582
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareBundle:Landroid/os/Bundle;

    .line 4585
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showNewDialog(I)V

    .line 4586
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    if-eqz v0, :cond_0

    .line 2801
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 2803
    :cond_0
    return-void
.end method

.method private showTrackOptions(IJZ)Z
    .locals 8
    .parameter "position"
    .parameter "id"
    .parameter "bLongClick"

    .prologue
    .line 1943
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    .line 1945
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1947
    const/4 v2, 0x0

    .line 1949
    .local v2, id_idx:I
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v5, :cond_0

    .line 1950
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "audio_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1956
    :goto_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1960
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "album"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 1962
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "artist"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 1964
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "title"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 1972
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v5, :cond_1

    .line 1973
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f060046

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f060057

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1980
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v5, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 2140
    .local v3, ids:[I
    :goto_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v5, v4, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 2141
    const/4 v5, 0x1

    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :goto_3
    return v5

    .line 1953
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto/16 :goto_0

    .line 1957
    :catch_0
    move-exception v1

    .line 1958
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    iput-wide p2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    goto/16 :goto_1

    .line 1987
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-eqz v5, :cond_3

    .line 1989
    if-eqz p4, :cond_2

    .line 1990
    const/4 v5, 0x0

    goto :goto_3

    .line 1992
    :cond_2
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f060046

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1998
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x4

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_2

    .line 2005
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 2006
    .local v0, dlnaMode:I
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2007
    if-nez v0, :cond_5

    .line 2009
    if-eqz p4, :cond_4

    .line 2010
    const/4 v5, 0x0

    goto :goto_3

    .line 2012
    :cond_4
    const/16 v5, 0x8

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f06004a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f060008

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x7f060046

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2026
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/16 v5, 0x8

    new-array v3, v5, [I

    fill-array-data v3, :array_2

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 2042
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_5
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f060008

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f060046

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2055
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_3

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 2071
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_6
    if-nez v0, :cond_8

    .line 2073
    if-eqz p4, :cond_7

    .line 2074
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 2076
    :cond_7
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f06004a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f060046

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2089
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_4

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 2104
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_8
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f060048

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f060046

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2116
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_5

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 1980
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 1998
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2026
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2055
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2089
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2116
    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private stopRefreshMiniPlayer(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 4733
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 4734
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v1, :cond_0

    .line 4735
    check-cast v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->stopRefreshMiniPlayer(Z)V

    .line 4737
    :cond_0
    return-void
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 689
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    return-void

    .line 690
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method canRewind()Z
    .locals 1

    .prologue
    .line 4253
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 4254
    const/4 v0, 0x0

    .line 4256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public categoryRightAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2596
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2598
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->triggerPlayAllAction()V

    .line 2600
    :cond_0
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1601
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1604
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1617
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1606
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_0

    .line 1609
    :sswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_0

    .line 1612
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->removeItem()V

    goto :goto_0

    .line 1604
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method doSearch()V
    .locals 3

    .prologue
    .line 1590
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 1591
    .local v0, rootContext:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    return-void
.end method

.method getCheckedItemCount()I
    .locals 4

    .prologue
    .line 1724
    const/4 v0, 0x0

    .line 1726
    .local v0, count:I
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v3, :cond_1

    .line 1727
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1737
    :cond_0
    return v0

    .line 1728
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_0

    .line 1729
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1730
    .local v2, items:Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_0

    .line 1731
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1732
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1733
    add-int/lit8 v0, v0, 0x1

    .line 1731
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    .line 1836
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1838
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1839
    const-string v0, "MM-dd-yyyy"

    .line 1840
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HH:mm:ss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1841
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getPickerMode()J
    .locals 2

    .prologue
    .line 4186
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 17
    .parameter "newCursor"

    .prologue
    .line 830
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-nez v13, :cond_1

    .line 831
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_0

    .line 832
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v13, :cond_2

    .line 838
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 840
    :cond_2
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-nez v13, :cond_3

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;

    if-eqz v13, :cond_4

    .line 842
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 848
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v13, :cond_5

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDatabaseError()V

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->closeContextMenu()V

    .line 852
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    const-wide/16 v15, 0x3e8

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 844
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    .line 845
    .local v3, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v13, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 859
    .end local v3           #c:Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-nez v13, :cond_6

    .line 862
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 863
    const v13, 0x7f06002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showEmptyView(I)V

    .line 865
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v13, :cond_0

    .line 866
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCategoryRightBtn(Z)V

    goto :goto_0

    .line 872
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->hideEmptyErrorView()V

    .line 874
    const v13, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 875
    .local v11, listView:Landroid/view/View;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_11

    .line 876
    :cond_7
    const v13, 0x7f030031

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 877
    const v13, 0x7f07003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 878
    .local v10, listContentLayout:Landroid/view/ViewGroup;
    if-eqz v10, :cond_8

    .line 879
    const-string v13, "common_app_bkg"

    const v14, 0x2080001

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 882
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 883
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v13, :cond_9

    .line 884
    const-string v13, "[TrackBrowserActivity]"

    const-string v14, "[init] mTrackList = getListView() is null!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 887
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v13

    const-wide/16 v15, 0x2

    cmp-long v13, v13, v15

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v13

    const-wide/16 v15, 0x3

    cmp-long v13, v13, v15

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v13

    const-wide/16 v15, 0x4

    cmp-long v13, v13, v15

    if-nez v13, :cond_b

    .line 889
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 892
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v13, :cond_10

    .line 893
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v13, v13, Lcom/htc/widget/HtcReorderListView;

    if-eqz v13, :cond_c

    .line 894
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v13, Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v13, Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 897
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 902
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initPlayerPanel()V

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initButtonsPanel()V

    .line 908
    .end local v10           #listContentLayout:Landroid/view/ViewGroup;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 914
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v13, v14, :cond_13

    .line 916
    const/4 v4, 0x0

    .line 917
    .local v4, cur:I
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    .line 918
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v12

    .line 919
    .local v12, shufflePos:I
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13, v12}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v4

    .line 923
    .end local v12           #shufflePos:I
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.htc.music.metachanged"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v4           #cur:I
    :goto_5
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v13, v14, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 944
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v13, :cond_0

    .line 945
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v13

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    .line 946
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v14, "_id"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 949
    .local v9, keyidx:I
    const/4 v8, -0x1

    .line 950
    .local v8, keyAudioIdidx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v14, "audio_id"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 952
    const/4 v13, -0x1

    if-le v8, v13, :cond_e

    .line 953
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v13

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    .line 956
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 957
    const/4 v5, 0x0

    .line 958
    .local v5, i:I
    const/4 v2, -0x1

    .line 959
    .local v2, audioId:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-nez v13, :cond_0

    .line 960
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 961
    .local v6, id:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    aput v6, v13, v5

    .line 962
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    if-eqz v13, :cond_f

    .line 963
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 964
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    aput v2, v13, v5

    .line 967
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 968
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_6

    .line 899
    .end local v2           #audioId:I
    .end local v5           #i:I
    .end local v6           #id:I
    .end local v8           #keyAudioIdidx:I
    .end local v9           #keyidx:I
    .restart local v10       #listContentLayout:Landroid/view/ViewGroup;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 900
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto/16 :goto_2

    .line 905
    .end local v10           #listContentLayout:Landroid/view/ViewGroup;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    goto/16 :goto_3

    .line 921
    .restart local v4       #cur:I
    :cond_12
    :try_start_1
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto/16 :goto_4

    .line 928
    .end local v4           #cur:I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "artistid"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 929
    .local v7, key:Ljava/lang/String;
    if-eqz v7, :cond_14

    .line 930
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v14, "artist_id"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 931
    .restart local v9       #keyidx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 932
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-nez v13, :cond_14

    .line 933
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, artist:Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 935
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    .line 941
    .end local v1           #artist:Ljava/lang/String;
    .end local v9           #keyidx:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.htc.music.metachanged"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 938
    .restart local v1       #artist:Ljava/lang/String;
    .restart local v9       #keyidx:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    .line 925
    .end local v1           #artist:Ljava/lang/String;
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #keyidx:I
    .restart local v4       #cur:I
    :catch_0
    move-exception v13

    goto/16 :goto_5
.end method

.method initButtonsPanel()V
    .locals 6

    .prologue
    .line 4128
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 4133
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v3

    .line 4134
    .local v3, parent:Landroid/app/Activity;
    if-eqz v3, :cond_4

    .line 4135
    instance-of v4, v3, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    if-eqz v4, :cond_3

    .line 4136
    check-cast v3, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    .end local v3           #parent:Landroid/app/Activity;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->enableFooterButtonPanel(Z)Lcom/htc/widget/HtcFooter;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    .line 4156
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const v5, 0x7f07001c

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 4157
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040145

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 4158
    const v4, 0x20800a7

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 4159
    new-instance v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$17;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$17;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4166
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const v5, 0x7f07001b

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 4167
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040152

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 4168
    const v4, 0x20800a3

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 4169
    new-instance v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4182
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    .line 4183
    return-void

    .line 4138
    .restart local v3       #parent:Landroid/app/Activity;
    :cond_3
    const-string v4, "[TrackBrowserActivity]"

    const-string v5, "try to init panel with parent exist, but parent is not AddPlaylistTabActivity!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4147
    :cond_4
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    if-nez v4, :cond_1

    .line 4149
    const v4, 0x7f070040

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 4150
    .local v2, btnViewStub:Landroid/view/ViewStub;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 4151
    const v4, 0x7f070041

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcFooter;

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    goto :goto_0

    .line 4176
    .end local v2           #btnViewStub:Landroid/view/ViewStub;
    .end local v3           #parent:Landroid/app/Activity;
    :cond_5
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    if-eqz v4, :cond_2

    .line 4178
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    goto :goto_1
.end method

.method public initListPos()V
    .locals 4

    .prologue
    .line 4400
    const/4 v0, 0x0

    .line 4402
    .local v0, cur:I
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 4403
    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4404
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4408
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    .line 4409
    return-void

    .line 4405
    :catch_0
    move-exception v1

    .line 4406
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method initPlayerPanel()V
    .locals 0

    .prologue
    .line 4013
    return-void
.end method

.method public isBypass()Z
    .locals 1

    .prologue
    .line 4713
    const/4 v0, 0x1

    return v0
.end method

.method isEditMode()Z
    .locals 1

    .prologue
    .line 4190
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method isPickerMode()Z
    .locals 4

    .prologue
    .line 4194
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 31
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 2605
    sparse-switch p1, :sswitch_data_0

    .line 2797
    :cond_0
    :goto_0
    return-void

    .line 2607
    :sswitch_0
    if-nez p2, :cond_1

    .line 2608
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 2610
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 2617
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 2618
    .local v23, uri:Landroid/net/Uri;
    if-eqz v23, :cond_0

    .line 2619
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v14, v0, [I

    .line 2620
    .local v14, list:[I
    const/16 v25, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v26

    aput v26, v14, v25

    .line 2621
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 2622
    .local v16, playlist:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 2627
    .end local v14           #list:[I
    .end local v16           #playlist:I
    .end local v23           #uri:Landroid/net/Uri;
    :sswitch_2
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v14

    .line 2629
    .restart local v14       #list:[I
    const-string v25, "playlist"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2630
    .restart local v16       #playlist:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 2638
    .end local v14           #list:[I
    .end local v16           #playlist:I
    :sswitch_3
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2639
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 2640
    .local v15, name:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 2641
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    goto/16 :goto_0

    .line 2647
    .end local v15           #name:Ljava/lang/String;
    :sswitch_4
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2648
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 2649
    .restart local v15       #name:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 2650
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    goto/16 :goto_0

    .line 2655
    .end local v15           #name:Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 2656
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 2661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 2662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    .line 2663
    const-string v25, "[TrackBrowserActivity]"

    const-string v26, "Bad! I don\'t want to see this!"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const-string v26, "_id"

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 2668
    .local v13, keyidx:I
    const/4 v12, -0x1

    .line 2670
    .local v12, keyAudioIdidx:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const-string v26, "audio_id"

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 2674
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2675
    const/4 v5, -0x1

    .line 2676
    .local v5, audioId:I
    const/4 v9, 0x0

    .line 2677
    .local v9, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v25

    if-nez v25, :cond_0

    .line 2678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2679
    .local v11, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    aput v11, v25, v9

    .line 2680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    if-lez v12, :cond_3

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    aput v5, v25, v9

    .line 2684
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 2685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 2672
    .end local v5           #audioId:I
    .end local v9           #i:I
    .end local v11           #id:I
    :catch_0
    move-exception v8

    .local v8, ex:Ljava/lang/Exception;
    const/4 v12, -0x1

    goto :goto_1

    .line 2691
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v12           #keyAudioIdidx:I
    .end local v13           #keyidx:I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 2692
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 2694
    .local v17, resolver:Landroid/content/ContentResolver;
    const-string v25, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "playlist_id="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    goto/16 :goto_0

    .line 2714
    .end local v17           #resolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v25

    goto/16 :goto_0

    .line 2700
    :cond_5
    const-string v25, "[TrackBrowserActivity]"

    const-string v26, "using old logic!! this could need a lot of time"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    new-instance v24, Landroid/content/ContentValues;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Landroid/content/ContentValues;-><init>(I)V

    .line 2702
    .local v24, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 2703
    .restart local v17       #resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_0

    .line 2704
    const-string v25, "play_order"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2706
    const-string v25, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    const-string v26, "_id=?"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v29, v0

    aget v29, v29, v9

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2703
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2721
    .end local v9           #i:I
    .end local v17           #resolver:Landroid/content/ContentResolver;
    .end local v24           #values:Landroid/content/ContentValues;
    :sswitch_6
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2722
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v14, v0, [I

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    aput v26, v14, v25

    .line 2725
    .restart local v14       #list:[I
    const-string v25, "playlist"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2726
    .restart local v16       #playlist:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 2732
    .end local v14           #list:[I
    .end local v16           #playlist:I
    :sswitch_7
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2733
    const-string v25, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 2734
    .local v19, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v14

    .line 2735
    .restart local v14       #list:[I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v14}, Lcom/htc/music/util/MusicUtils;->deletePlaylistTrack(Landroid/content/Context;J[I)V

    .line 2736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 2743
    .end local v14           #list:[I
    .end local v19           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_8
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getTabActivityResult(Landroid/content/Context;I)I

    move-result p2

    .line 2744
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2745
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v19

    .line 2746
    .restart local v19       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v14

    .line 2747
    .restart local v14       #list:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 2748
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 2753
    .end local v14           #list:[I
    .end local v19           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2754
    const-string v25, "[TrackBrowserActivity]"

    const-string v26, "receive set contact ringtone activity result"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    move-object/from16 v18, p3

    .line 2756
    .local v18, resultIntent:Landroid/content/Intent;
    new-instance v20, Lcom/htc/music/browserlayer/TrackBrowserActivity$15;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$15;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Intent;)V

    .line 2766
    .local v20, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v22, Ljava/lang/Thread;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2767
    .local v22, thread:Ljava/lang/Thread;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2771
    .end local v18           #resultIntent:Landroid/content/Intent;
    .end local v20           #setContactRingtoneRunnable:Ljava/lang/Runnable;
    .end local v22           #thread:Ljava/lang/Thread;
    :sswitch_a
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2772
    const-string v25, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 2773
    .restart local v19       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_0

    .line 2776
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2777
    .local v10, iCount:I
    new-array v7, v10, [Ljava/lang/String;

    .line 2778
    .local v7, dataPathArray:[Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    if-ge v9, v10, :cond_7

    .line 2779
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v6

    .line 2780
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 2781
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2782
    const-string v25, "_data"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v7, v9

    .line 2783
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2778
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2787
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_7
    new-instance v21, Ljava/lang/String;

    const-string v25, "com.htc.vmm.service.VMMEngineService"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2789
    .local v21, szAction:Ljava/lang/String;
    :try_start_2
    new-instance v25, Landroid/content/Intent;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v26, "upload"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2790
    :catch_2
    move-exception v8

    .line 2792
    .local v8, ex:Ljava/lang/SecurityException;
    const-string v25, "[TrackBrowserActivity]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "We do not have permission to start the service :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2605
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
        0x13 -> :sswitch_9
        0x1c -> :sswitch_2
        0x21 -> :sswitch_8
        0x22 -> :sswitch_7
        0x23 -> :sswitch_5
        0x24 -> :sswitch_4
        0x29 -> :sswitch_3
        0x2b -> :sswitch_a
    .end sparse-switch
.end method

.method onCancelClick()V
    .locals 6

    .prologue
    .line 4113
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v2, :cond_1

    .line 4114
    const-string v2, "[TrackBrowserActivity]"

    const-string v3, "[onCancelClick] mTrackList == null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4125
    :cond_0
    :goto_0
    return-void

    .line 4118
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 4119
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 4120
    .local v1, items:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4121
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 4120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4123
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 351
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 352
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 353
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I

    .line 354
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenHeight:I

    .line 355
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 314
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 315
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 316
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I

    .line 317
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenHeight:I

    .line 319
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "albumid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 323
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "artistid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 324
    const-string v3, "isnowplayinglist"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    .line 325
    const-string v3, "playlist"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    .line 326
    const-string v3, "isrecentplayedplaylist"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    .line 327
    const-string v3, "genreid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 328
    const-string v3, "folderid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFolderId:Ljava/lang/String;

    .line 329
    const-string v3, "folder"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFolderName:Ljava/lang/String;

    .line 330
    const-string v3, "drmfolderid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDrmFolderId:Ljava/lang/String;

    .line 331
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 332
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    .line 334
    :cond_0
    const-string v3, "isshowplayerpanel"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    .line 335
    const-string v3, "composer"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 336
    const-string v3, "isdrmlist"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    .line 337
    const-string v3, "description"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    .line 338
    const-string v3, "pickermode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    .line 339
    const-string v3, "playlisturi"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 341
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onCreate_Local(Landroid/os/Bundle;)V

    .line 343
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    .line 344
    .local v2, rootContext:Landroid/app/Activity;
    new-instance v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    invoke-direct {v3, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    .line 346
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .parameter "id"
    .parameter "args"

    .prologue
    .line 2158
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 2159
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    move-object v1, p0

    .line 2160
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2307
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v8

    :goto_0
    return-object v8

    .line 2163
    :sswitch_0
    const v9, 0x7f06000e

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2164
    .local v3, f:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2165
    .local v2, desc:Ljava/lang/String;
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x2040214

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040009

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto :goto_0

    .line 2201
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #f:Ljava/lang/String;
    :sswitch_1
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f060054

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto :goto_0

    .line 2209
    :sswitch_2
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$13;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$13;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040009

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$12;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$12;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 2226
    :sswitch_3
    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f060093

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f060094

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const v10, 0x7f060095

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 2231
    .local v4, items:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v9, :cond_1

    .line 2232
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/16 v10, 0x13

    invoke-virtual {v9, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 2235
    :cond_1
    const-string v9, "[TrackBrowserActivity]"

    const-string v10, "mRingToneHelper is null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    .end local v4           #items:[Ljava/lang/CharSequence;
    :sswitch_4
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f060093

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f060094

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 2244
    .restart local v4       #items:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v9, :cond_2

    .line 2245
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/16 v10, 0x13

    invoke-virtual {v9, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 2248
    :cond_2
    const-string v9, "[TrackBrowserActivity]"

    const-string v10, "mRingToneHelper is null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    .end local v4           #items:[Ljava/lang/CharSequence;
    :sswitch_5
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f0600cd

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f0600ce

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 2258
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/htc/music/browserlayer/TrackBrowserActivity$14;

    invoke-direct {v10, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$14;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 2274
    .local v8, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 2281
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v8           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareBundle:Landroid/os/Bundle;

    invoke-static {v9, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v8

    goto/16 :goto_0

    .line 2286
    :sswitch_7
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v9, :cond_3

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2287
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2288
    .local v0, activity:Landroid/app/Activity;
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2289
    .local v5, path:Ljava/lang/String;
    iget-wide v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v9, v9

    const/4 v10, 0x0

    invoke-static {v0, v9, v5, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v7

    .local v7, shareNormaldialog:Landroid/app/Dialog;
    move-object v8, v7

    .line 2293
    goto/16 :goto_0

    .line 2297
    .end local v0           #activity:Landroid/app/Activity;
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #shareNormaldialog:Landroid/app/Dialog;
    :sswitch_8
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v9, :cond_4

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2298
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2299
    .restart local v0       #activity:Landroid/app/Activity;
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2300
    .restart local v5       #path:Ljava/lang/String;
    iget-wide v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v9, v9

    const/4 v10, 0x1

    invoke-static {v0, v9, v5, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v6

    .local v6, shareDRMDialog:Landroid/app/Dialog;
    move-object v8, v6

    .line 2304
    goto/16 :goto_0

    .line 2160
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x27 -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 5
    .parameter "playlistName"

    .prologue
    .line 2312
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 2313
    .local v0, id:I
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v3, v3

    aput v3, v1, v2

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 2314
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/16 v8, 0x1d

    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2343
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2344
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_2

    .line 2346
    :cond_0
    const/16 v0, 0x25

    const v1, 0x204014f

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2348
    const/16 v0, 0x26

    const v1, 0x2040150

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2375
    :cond_1
    :goto_0
    return v6

    .line 2349
    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 2352
    const v0, 0x7f060006

    invoke-interface {p1, v5, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2353
    const v0, 0x7f060007

    invoke-interface {p1, v5, v8, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2354
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2355
    const/16 v0, 0x2b

    const v1, 0x7f060008

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2357
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2359
    const/16 v0, 0x2c

    const v1, 0x2040218

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 2361
    :cond_4
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v6, v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_5
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_1

    .line 2364
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v6, v0, :cond_6

    .line 2365
    const/16 v0, 0x23

    const v1, 0x7f060009

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2366
    const/16 v0, 0x1c

    const v1, 0x7f060049

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2367
    const/16 v0, 0x2c

    const v1, 0x2040218

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 2368
    :cond_6
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v0, :cond_1

    .line 2369
    const v0, 0x7f060006

    invoke-interface {p1, v5, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2370
    const v0, 0x7f060007

    invoke-interface {p1, v5, v8, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2371
    const/16 v0, 0x29

    const v1, 0x7f060087

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    .line 622
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onDestroy_Local()V

    .line 624
    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    .line 626
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 630
    :cond_0
    const-string v0, "[TrackBrowserActivity]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1464
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onHtcContextItemSelected_Local(I)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1848
    const-string v3, "[TrackBrowserActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick, position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1927
    :cond_0
    :goto_0
    return-void

    .line 1854
    :cond_1
    iput p3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    .line 1855
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 1856
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    .line 1858
    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_4

    .line 1859
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 1860
    .local v1, holder:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    if-eqz v1, :cond_3

    .line 1861
    iget-object v0, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 1862
    .local v0, chb:Lcom/htc/widget/HtcCheckBox;
    if-eqz v0, :cond_2

    .line 1863
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p3}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 1865
    :cond_2
    const-string v3, "[TrackBrowserActivity]"

    const-string v4, "Activity onListItemClick, chb is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1868
    .end local v0           #chb:Lcom/htc/widget/HtcCheckBox;
    :cond_3
    const-string v3, "[TrackBrowserActivity]"

    const-string v4, "Activity onListItemClick, holder is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1872
    .end local v1           #holder:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    :cond_4
    const-string v3, "[TrackBrowserActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity onListItemClick, v: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTrackList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1876
    :cond_5
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v3, :cond_0

    .line 1880
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1882
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_7

    const-string v3, "content://drm/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1883
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, p3, p4, p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 1924
    :cond_6
    :goto_1
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v3, :cond_0

    .line 1925
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->invalidate()V

    goto/16 :goto_0

    .line 1898
    :cond_7
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v3, p3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1900
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->triggerPlayAllAction()V

    goto :goto_1
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1932
    const/4 v0, 0x0

    .line 1933
    .local v0, result:Z
    const-string v1, "TrackBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1936
    const/4 v1, 0x1

    invoke-direct {p0, p3, p4, p5, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions(IJZ)Z

    move-result v0

    .line 1939
    :cond_0
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 2445
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 2591
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    :sswitch_0
    return v4

    .line 2447
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->categoryRightAction()Z

    goto :goto_0

    .line 2467
    :sswitch_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    .line 2468
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 2470
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->triggerPlayAllAction()V

    goto :goto_0

    .line 2476
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2478
    .local v1, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2479
    const-string v5, "pickermode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2480
    const/16 v5, 0x1c

    invoke-virtual {p0, v1, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2485
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_4
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearQueue()V

    goto :goto_0

    .line 2489
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2490
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "playlisturi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/external/audio/playlists/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2492
    const-class v5, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2494
    const/16 v5, 0x21

    invoke-virtual {p0, v1, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2498
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2499
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2500
    const-string v5, "playlist"

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2501
    const-string v5, "pickermode"

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2502
    const/16 v5, 0x22

    invoke-virtual {p0, v1, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2506
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_7
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2507
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v6, "com.htc.media/track"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2508
    const-string v5, "playlist"

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2509
    const-string v5, "isnowplayinglist"

    iget-boolean v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2511
    const/16 v5, 0x23

    invoke-virtual {p0, v1, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2516
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2517
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2518
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 2519
    const-string v5, "playlistname"

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2520
    :cond_1
    const-string v5, "playlist"

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2521
    const/16 v5, 0x29

    invoke-virtual {p0, v1, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2532
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_9
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v5, :cond_3

    .line 2533
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 2534
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 2535
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2534
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2538
    :cond_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v5, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2542
    .end local v0           #i:I
    .end local v3           #size:I
    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v5, :cond_4

    .line 2543
    const-string v5, "[TrackBrowserActivity]"

    const-string v6, "[onOptionsItemSelected][SELECT_ALL] mTrackList == null."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2547
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 2548
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v0, v4}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 2547
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2551
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    goto/16 :goto_0

    .line 2555
    .end local v0           #i:I
    :sswitch_a
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v5, :cond_6

    .line 2556
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 2557
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v5, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2561
    :cond_6
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v5, :cond_7

    .line 2562
    const-string v5, "[TrackBrowserActivity]"

    const-string v6, "[onOptionsItemSelected][UNSELECT_ALL] mTrackList == null."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2566
    :cond_7
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 2567
    .local v2, items:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 2568
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 2567
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2570
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    goto/16 :goto_0

    .line 2574
    .end local v0           #i:I
    .end local v2           #items:Landroid/util/SparseBooleanArray;
    :sswitch_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2575
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "albumid"

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2576
    const-string v5, "artistid"

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2577
    const-string v5, "genreid"

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2578
    const-string v5, "pickermode"

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2579
    const-class v5, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2580
    const/16 v5, 0x2b

    invoke-virtual {p0, v1, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2585
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_c
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2586
    .restart local v1       #intent:Landroid/content/Intent;
    const/4 v5, -0x2

    invoke-virtual {p0, v1, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2445
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x1c -> :sswitch_3
        0x1d -> :sswitch_1
        0x1e -> :sswitch_4
        0x21 -> :sswitch_5
        0x22 -> :sswitch_6
        0x23 -> :sswitch_7
        0x24 -> :sswitch_0
        0x25 -> :sswitch_9
        0x26 -> :sswitch_a
        0x29 -> :sswitch_8
        0x2b -> :sswitch_b
        0x2c -> :sswitch_c
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 735
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 740
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 741
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 743
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->clear()V

    .line 745
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    .line 749
    :cond_1
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mResume:Z

    .line 750
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->stopRefreshMiniPlayer(Z)V

    .line 751
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 752
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 2318
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2319
    packed-switch p1, :pswitch_data_0

    .line 2333
    .end local p2
    :goto_0
    :pswitch_0
    return-void

    .line 2322
    .restart local p2
    :pswitch_1
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2323
    .local v1, f:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2324
    .local v0, desc:Ljava/lang/String;
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2327
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #f:Ljava/lang/String;
    .restart local p2
    :pswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2330
    .restart local p2
    :pswitch_3
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    .line 2381
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2382
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v7, :cond_0

    .line 2383
    const/16 v7, 0x23

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2384
    .local v3, item:Landroid/view/MenuItem;
    const/16 v7, 0x1c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2385
    const/4 v7, 0x1

    .line 2439
    :goto_0
    return v7

    .line 2389
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_0
    const/4 v6, 0x0

    .line 2390
    .local v6, num_tracks:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_1

    .line 2391
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2394
    :cond_1
    const/4 v7, 0x1

    if-eq v6, v7, :cond_c

    const/4 v4, 0x1

    .line 2395
    .local v4, not_one_song:Z
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_d

    if-lez v6, :cond_d

    const/4 v2, 0x1

    .line 2398
    .local v2, enabled:Z
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v7, :cond_4

    .line 2400
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getCheckedItemCount()I

    move-result v0

    .line 2401
    .local v0, checkedCount:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v7, :cond_e

    const/4 v1, 0x0

    .line 2402
    .local v1, count:I
    :goto_3
    const/16 v7, 0x25

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2403
    .restart local v3       #item:Landroid/view/MenuItem;
    if-eqz v3, :cond_3

    .line 2404
    if-eqz v2, :cond_f

    if-eq v1, v0, :cond_f

    const/4 v7, 0x1

    :goto_4
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2405
    :cond_3
    const/16 v7, 0x26

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2406
    if-eqz v3, :cond_4

    .line 2407
    if-eqz v2, :cond_10

    if-lez v0, :cond_10

    const/4 v7, 0x1

    :goto_5
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2413
    .end local v0           #checkedCount:I
    .end local v1           #count:I
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_4
    const/16 v7, 0x9

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2414
    .restart local v3       #item:Landroid/view/MenuItem;
    if-eqz v3, :cond_5

    .line 2415
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2416
    :cond_5
    const/16 v7, 0x1d

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2417
    if-eqz v3, :cond_6

    .line 2418
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2419
    :cond_6
    const/16 v7, 0x1c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2420
    if-eqz v3, :cond_7

    .line 2421
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2422
    :cond_7
    const/16 v7, 0x23

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2423
    if-eqz v3, :cond_8

    .line 2424
    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v7, v8, :cond_11

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-nez v7, :cond_11

    const/4 v7, 0x1

    :goto_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2425
    .local v5, nowplayingSearch:Ljava/lang/Boolean;
    if-eqz v2, :cond_12

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_12

    if-eqz v4, :cond_12

    const/4 v7, 0x1

    :goto_7
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2427
    .end local v5           #nowplayingSearch:Ljava/lang/Boolean;
    :cond_8
    const/16 v7, 0x22

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2428
    if-eqz v3, :cond_9

    .line 2429
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2430
    :cond_9
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2431
    const/16 v7, 0x2b

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2432
    if-eqz v3, :cond_a

    .line 2433
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2435
    :cond_a
    const/16 v7, 0x2c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2436
    if-eqz v3, :cond_b

    .line 2437
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2439
    :cond_b
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2394
    .end local v2           #enabled:Z
    .end local v3           #item:Landroid/view/MenuItem;
    .end local v4           #not_one_song:Z
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2395
    .restart local v4       #not_one_song:Z
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2401
    .restart local v0       #checkedCount:I
    .restart local v2       #enabled:Z
    :cond_e
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto/16 :goto_3

    .line 2404
    .restart local v1       #count:I
    .restart local v3       #item:Landroid/view/MenuItem;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 2407
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 2424
    .end local v0           #checkedCount:I
    .end local v1           #count:I
    :cond_11
    const/4 v7, 0x0

    goto :goto_6

    .line 2425
    .restart local v5       #nowplayingSearch:Ljava/lang/Boolean;
    :cond_12
    const/4 v7, 0x0

    goto :goto_7
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 697
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 699
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 701
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 717
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V

    .line 720
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 721
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mResume:Z

    .line 723
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDecodeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->updateAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/DlArtAsyncImageDecoder;)V

    .line 726
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 727
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRevertList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->revertAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/MemoryCacheBitmapByTime;)V

    .line 729
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_5

    .line 730
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 731
    :cond_5
    return-void
.end method

.method public onSaveClick()V
    .locals 19

    .prologue
    .line 4016
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v15, :cond_9

    .line 4018
    const/4 v9, 0x0

    .line 4019
    .local v9, nowPlayingArray:[I
    const/4 v2, 0x0

    .line 4021
    .local v2, deleteArray:[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v15, v15, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v15, :cond_1

    .line 4022
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    .line 4023
    .local v1, c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v15}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 4025
    :try_start_0
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v15, :cond_0

    .line 4026
    const-string v15, "[TrackBrowserActivity]"

    const-string v16, "[onSaveClick][mEditMode][mTrackCursor instanceof NowPlayingCursor][null == MusicUtils.sService] Can do noting."

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4110
    .end local v1           #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    .end local v2           #deleteArray:[I
    .end local v9           #nowPlayingArray:[I
    :goto_0
    return-void

    .line 4030
    .restart local v1       #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    .restart local v2       #deleteArray:[I
    .restart local v9       #nowPlayingArray:[I
    :cond_0
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->getNowPlayingQueue()[I

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/htc/music/IMediaPlaybackService;->syncNowPlayingQueue([I)V

    .line 4031
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    if-nez v15, :cond_3

    .line 4032
    const-string v15, "[TrackBrowserActivity]"

    const-string v16, "[onSaveClick][mEditMode][mTrackCursor instanceof NowPlayingCursor][null == mMap] Can do noting."

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4074
    :catch_0
    move-exception v15

    .line 4082
    .end local v1           #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    :cond_1
    :goto_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 4083
    .local v7, intent:Landroid/content/Intent;
    const-string v15, "NOW_PLAYING_LIST"

    invoke-virtual {v7, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4084
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 4109
    .end local v2           #deleteArray:[I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #nowPlayingArray:[I
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 4036
    .restart local v1       #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    .restart local v2       #deleteArray:[I
    .restart local v9       #nowPlayingArray:[I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 4037
    .local v14, totalCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    if-ne v14, v15, :cond_7

    .line 4038
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/16 v16, 0x0

    add-int/lit8 v17, v14, -0x1

    invoke-interface/range {v15 .. v17}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    .line 4051
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v15, :cond_5

    .line 4055
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 4059
    :cond_5
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v9

    .line 4061
    if-eqz v9, :cond_6

    array-length v15, v9

    if-nez v15, :cond_1

    .line 4062
    :cond_6
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 4064
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 4065
    .restart local v7       #intent:Landroid/content/Intent;
    const-class v15, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4066
    const/high16 v15, 0x2400

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4067
    const-string v15, "KeepHistory"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4068
    const-string v15, "RemoveStoreHistory"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4069
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4075
    .end local v7           #intent:Landroid/content/Intent;
    .end local v14           #totalCount:I
    :catch_1
    move-exception v3

    .line 4076
    .local v3, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 4039
    .end local v3           #ex:Ljava/lang/NullPointerException;
    .restart local v14       #totalCount:I
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 4040
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 4041
    .local v12, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v13

    .line 4043
    .local v13, temp:[Ljava/lang/Object;
    array-length v15, v13

    new-array v2, v15, [I

    .line 4044
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    array-length v15, v13

    if-ge v4, v15, :cond_8

    .line 4045
    aget-object v15, v13, v4

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v2, v4

    .line 4046
    const-string v15, "[TrackBrowserActivity]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "delete position = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget v17, v2, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4044
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4049
    :cond_8
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v15, v2}, Lcom/htc/music/IMediaPlaybackService;->removeQueueTracks([I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 4086
    .end local v1           #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    .end local v2           #deleteArray:[I
    .end local v4           #i:I
    .end local v9           #nowPlayingArray:[I
    .end local v12           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v13           #temp:[Ljava/lang/Object;
    .end local v14           #totalCount:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 4087
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4088
    .local v11, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v15}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v8

    .line 4089
    .local v8, items:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v16, "_id"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 4090
    .local v6, idx:I
    const/4 v5, 0x0

    .line 4091
    .local v5, id:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    if-ge v4, v15, :cond_b

    .line 4092
    invoke-virtual {v8, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 4093
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {v8, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v16

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4094
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    long-to-int v5, v15

    .line 4095
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4091
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4099
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 4100
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v15, "playlisturi"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4101
    .local v10, playlisturi:Ljava/lang/String;
    if-nez v10, :cond_c

    .line 4102
    const-string v15, "selectedlist"

    invoke-virtual {v7, v15, v11}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4107
    :goto_6
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 4104
    :cond_c
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/music/util/MusicUtils;->setTabActivityResult(Landroid/content/Context;I)V

    .line 4105
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/htc/music/util/MusicUtils;->setTabActivitySelectedId(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_6
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 809
    const-string v0, "selectedtrack"

    iget-wide v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 810
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v0, "albumid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v0, "isnowplayinglist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 813
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v0, "isrecentplayedplaylist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 815
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v0, "folderid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFolderId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v0, "folder"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v0, "drmfolderid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDrmFolderId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v0, "editmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 820
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v0, "isdrmlist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 822
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v0, "pickermode"

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 824
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v0, "isshowplayerpanel"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 826
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 827
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 4241
    move v1, p2

    .line 4242
    .local v1, start:I
    add-int v0, p2, p3

    .line 4243
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4244
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->setVisibleRange(II)V

    .line 4246
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4207
    packed-switch p2, :pswitch_data_0

    .line 4234
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4235
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->prevScrollState:I

    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->TRACK_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    invoke-static {p2, v0, v1}, Lcom/htc/music/util/ProfilerPerformanceUtils;->profilerLibsScrolling(IILcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->prevScrollState:I

    .line 4237
    :cond_1
    return-void

    .line 4209
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->stopRefreshMiniPlayer(Z)V

    .line 4210
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 4211
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 4212
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4213
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 4217
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->stopRefreshMiniPlayer(Z)V

    .line 4218
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 4219
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(Z)V

    .line 4220
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4221
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 4225
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->stopRefreshMiniPlayer(Z)V

    .line 4226
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_4

    .line 4227
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 4228
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4229
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    goto/16 :goto_0

    .line 4207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 4199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    .line 4200
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    .line 4201
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4204
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 542
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 543
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    .line 615
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNeedBindService:Z

    .line 251
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 252
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onStart_Local()V

    .line 253
    return-void
.end method

.method protected onStart_Local()V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v1, v2, :cond_0

    .line 261
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 272
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 276
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNeedBindService:Z

    .line 278
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onStop_Local()V

    .line 280
    return-void
.end method

.method protected onStop_Local()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 283
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPlayAllTriggered:Z

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v0, v1, :cond_2

    .line 286
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPlayAllTriggered:Z

    .line 297
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mOuter:I
    invoke-static {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$002(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I

    .line 299
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mPressed:I
    invoke-static {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$102(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I

    .line 300
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mRest:I
    invoke-static {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$202(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I

    .line 302
    :cond_1
    return-void

    .line 288
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public play(I)V
    .locals 3
    .parameter "listItemPos"

    .prologue
    .line 4414
    if-gez p1, :cond_1

    .line 4429
    :cond_0
    :goto_0
    return-void

    .line 4417
    :cond_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 4419
    move v0, p1

    .line 4421
    .local v0, realPos:I
    :try_start_0
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4422
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1}, Lcom/htc/music/IMediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v0

    .line 4424
    :cond_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v0}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 4425
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4426
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected resetBackground()V
    .locals 2

    .prologue
    .line 1158
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_0

    .line 1159
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1164
    :goto_0
    return-void

    .line 1163
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetBackground()V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 0
    .parameter "setEnable"

    .prologue
    .line 4709
    return-void
.end method

.method public showProperty(I)V
    .locals 6
    .parameter "listItemPos"

    .prologue
    .line 4433
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4434
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4436
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4437
    .local v2, trackName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4439
    .local v0, artistName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 4441
    const-string v3, "duration"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "length"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4443
    const-string v3, "trackname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4444
    const-string v3, "artistname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "artist"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4445
    const-string v3, "albumname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4446
    const-string v3, "genre"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "genre"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4447
    const-string v3, "composer"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "composer"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4448
    const-string v3, "location"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4462
    :goto_0
    const/4 v3, -0x2

    invoke-virtual {p0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4463
    return-void

    .line 4451
    :cond_0
    const-string v3, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4453
    const-string v3, "trackname"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4454
    const-string v3, "artistname"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4455
    const-string v3, "albumname"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4456
    const-string v3, "genre"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4457
    const-string v3, "composer"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4458
    const-string v3, "location"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected triggerPlayAllAction()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4740
    const-string v0, "Songs"

    invoke-static {v1, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 4742
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v1, v0, :cond_0

    .line 4743
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4747
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPlayAllTriggered:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4752
    :goto_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->triggerPlayAllAction()V

    .line 4753
    return-void

    .line 4745
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4748
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method updateButtonCounter()V
    .locals 10

    .prologue
    const v9, 0x7f07001c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1741
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 1784
    :goto_0
    return-void

    .line 1744
    :cond_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCountTemplate:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    if-nez v5, :cond_2

    .line 1745
    :cond_1
    const-string v3, "[TrackBrowserActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCountTemplate/mButtonPanel is null!! mButtonPanel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mCountTemplate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCountTemplate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1750
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getCheckedItemCount()I

    move-result v1

    .line 1752
    .local v1, count:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCountTemplate:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1753
    .local v2, text:Ljava/lang/String;
    iget v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1755
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1756
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez v1, :cond_3

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f060056

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1759
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 1756
    goto :goto_1

    .line 1763
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :pswitch_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1764
    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    if-lez v1, :cond_4

    :goto_2
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f060008

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1767
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 1764
    goto :goto_2

    .line 1774
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f060057

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1775
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1776
    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    const v5, 0x20800a6

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 1777
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    if-lez v1, :cond_5

    :goto_3
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    move v3, v4

    goto :goto_3

    .line 1753
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
