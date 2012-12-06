.class public Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.super Lcom/htc/music/widget/fragment/MusicListFragment;
.source "TrackBrowserFragment.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;
    }
.end annotation


# static fields
.field private static final DIALOG_CREATE_PLAYLIST:I = 0x8

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

.field private static final TAG:Ljava/lang/String; = "[TrackBrowserFragment]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final ADD_SONGS:I

.field private final CHANGE_ORDER:I

.field private final CLEAR_PLAYLIST:I

.field private final DELETE_SONGS:I

.field private final DIALOG_SET_AS_RINGTONE:I

.field private final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

.field private final EDIT_PLAYLIST:I

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

.field mActivityMainTitle:Ljava/lang/String;

.field mActivitySecondaryTitle:Ljava/lang/String;

.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAlbumId:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field private mAudioId:I

.field private mButtonPanel:Lcom/htc/widget/HtcFooter;

.field private mComposer:Ljava/lang/String;

.field private mCountTemplate:Ljava/lang/String;

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

.field private mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mDlnaServiceConn:Z

.field private mFilter:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field private mIsDrmList:Z

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

.field private mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

.field private mMsg:Ljava/lang/String;

.field private mNeedBindService:Z

.field private mNotifyCallback:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;

.field private mPickerMode:I

.field mPlaybackServiceConnected:Z

.field private mPlaylistAudioId:[I

.field private mPlaylistContent:[I

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRecentPlayedListener:Landroid/content/BroadcastReceiver;

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

.field private mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPlaylistId:Ljava/lang/String;

.field private mSelectedPlaylistName:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mShowPlayerPanel:Z

.field private mSortOrder:Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

.field private mcurDMR:Ljava/lang/String;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;-><init>()V

    .line 102
    const/16 v0, 0x1a

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->Q_SELECTED:I

    .line 104
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->Q_ALL:I

    .line 106
    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SAVE_AS_PLAYLIST:I

    .line 108
    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->PLAY_ALL:I

    .line 110
    iput v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->CLEAR_PLAYLIST:I

    .line 112
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->REMOVE:I

    .line 114
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SEARCH:I

    .line 117
    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->ADD_SONGS:I

    .line 119
    const/16 v0, 0x22

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DELETE_SONGS:I

    .line 121
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->CHANGE_ORDER:I

    .line 123
    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->RENAME_PLAYLIST:I

    .line 125
    const/16 v0, 0x25

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SELECT_ALL:I

    .line 127
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->UNSELECT_ALL:I

    .line 129
    const/16 v0, 0x27

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DIALOG_SET_AS_RINGTONE:I

    .line 131
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

    .line 133
    const/16 v0, 0x29

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->EDIT_PLAYLIST:I

    .line 135
    const/16 v0, 0x2a

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SHARE_PLUGIN:I

    .line 137
    const/16 v0, 0x2b

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->UPLOAD:I

    .line 139
    const/16 v0, 0x2c

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SETTING:I

    .line 141
    const/16 v0, 0x2d

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SHARE:I

    .line 143
    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SET_RINGTONE:I

    .line 153
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z

    .line 159
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    .line 161
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapterSent:Z

    .line 184
    iput v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    .line 186
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mcurDMR:Ljava/lang/String;

    .line 188
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaServiceConn:Z

    .line 190
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 192
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    .line 198
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-direct {v0, v3}, Lcom/htc/music/util/MemoryCacheBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mResume:Z

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDecodeList:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRevertList:Ljava/util/ArrayList;

    .line 226
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNeedBindService:Z

    .line 432
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    .line 525
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNotifyCallback:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;

    .line 622
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDestroyed:Z

    .line 776
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 800
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 822
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    .line 835
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    .line 1129
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 2785
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShowPlayerPanel:Z

    .line 2787
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    .line 2788
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    .line 2794
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    .line 2795
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    .line 2796
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    .line 2798
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLowerSearchFilter:Ljava/lang/String;

    .line 2800
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    .line 2801
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->preSearchTime:J

    .line 2802
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDelaySearchHandler:Landroid/os/Handler;

    .line 2815
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAsyncQuerying:Z

    .line 2843
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4
    .parameter "launchIntent"

    .prologue
    const/16 v3, 0x1e

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;-><init>()V

    .line 102
    const/16 v0, 0x1a

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->Q_SELECTED:I

    .line 104
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->Q_ALL:I

    .line 106
    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SAVE_AS_PLAYLIST:I

    .line 108
    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->PLAY_ALL:I

    .line 110
    iput v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->CLEAR_PLAYLIST:I

    .line 112
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->REMOVE:I

    .line 114
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SEARCH:I

    .line 117
    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->ADD_SONGS:I

    .line 119
    const/16 v0, 0x22

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DELETE_SONGS:I

    .line 121
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->CHANGE_ORDER:I

    .line 123
    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->RENAME_PLAYLIST:I

    .line 125
    const/16 v0, 0x25

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SELECT_ALL:I

    .line 127
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->UNSELECT_ALL:I

    .line 129
    const/16 v0, 0x27

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DIALOG_SET_AS_RINGTONE:I

    .line 131
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

    .line 133
    const/16 v0, 0x29

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->EDIT_PLAYLIST:I

    .line 135
    const/16 v0, 0x2a

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SHARE_PLUGIN:I

    .line 137
    const/16 v0, 0x2b

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->UPLOAD:I

    .line 139
    const/16 v0, 0x2c

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SETTING:I

    .line 141
    const/16 v0, 0x2d

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SHARE:I

    .line 143
    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->SET_RINGTONE:I

    .line 153
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z

    .line 159
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    .line 161
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapterSent:Z

    .line 184
    iput v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    .line 186
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mcurDMR:Ljava/lang/String;

    .line 188
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaServiceConn:Z

    .line 190
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 192
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    .line 198
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-direct {v0, v3}, Lcom/htc/music/util/MemoryCacheBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mResume:Z

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDecodeList:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRevertList:Ljava/util/ArrayList;

    .line 226
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNeedBindService:Z

    .line 432
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    .line 525
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNotifyCallback:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;

    .line 622
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDestroyed:Z

    .line 776
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 800
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$2;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 822
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$3;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    .line 835
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$4;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    .line 1129
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$5;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 2785
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShowPlayerPanel:Z

    .line 2787
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    .line 2788
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    .line 2794
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    .line 2795
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    .line 2796
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    .line 2798
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLowerSearchFilter:Ljava/lang/String;

    .line 2800
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    .line 2801
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->preSearchTime:J

    .line 2802
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDelaySearchHandler:Landroid/os/Handler;

    .line 2815
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAsyncQuerying:Z

    .line 2843
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    .line 209
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIntent:Landroid/content/Intent;

    .line 210
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mResume:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/util/MemoryCacheBitmapByTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAudioId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAudioId:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;IJZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showTrackOptions(IJZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListSizeTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mcurDMR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDecodeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRevertList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 10
    .parameter "uri"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    .line 1274
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1276
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 1277
    .local v5, status:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 1278
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    .line 1314
    :goto_0
    return-void

    .line 1279
    :cond_0
    if-nez v5, :cond_3

    .line 1280
    invoke-static {v4, p1, v9}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 1281
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 1282
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7, v8, p2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    goto :goto_0

    .line 1284
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMsg:Ljava/lang/String;

    .line 1285
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMsg:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1286
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V

    goto :goto_0

    .line 1288
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7, v8, p2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    goto :goto_0

    .line 1292
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1293
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1294
    const-string v7, "drmtargettomain"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1297
    const/4 v2, 0x0

    .line 1299
    .local v2, id_idx:I
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 1300
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "audio_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1306
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1307
    .local v6, trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :goto_2
    const/4 v7, -0x2

    invoke-virtual {p0, v3, v7}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1303
    .end local v6           #trackId:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1

    .line 1308
    :catch_0
    move-exception v1

    .line 1309
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1310
    .restart local v6       #trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private getActivityTitle()Ljava/lang/String;
    .locals 18

    .prologue
    .line 1969
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1970
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_1

    const/4 v12, 0x0

    .line 2090
    :cond_0
    :goto_0
    return-object v12

    .line 1971
    :cond_1
    const/4 v12, 0x0

    .line 1972
    .local v12, fancyName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v2, v4, v16

    if-eqz v2, :cond_2

    .line 1974
    const v2, 0x7f06005c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1975
    const-string v12, ""

    goto :goto_0

    .line 1976
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f06001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2087
    :cond_3
    :goto_1
    if-nez v12, :cond_0

    .line 2088
    const v2, 0x7f06001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 1978
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    if-ne v2, v4, :cond_5

    .line 1979
    const v2, 0x7f060028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 1980
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1982
    .local v7, albunId:J
    const-wide/16 v4, -0x1

    cmp-long v2, v7, v4

    if-nez v2, :cond_6

    .line 1983
    const v2, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 1985
    :cond_6
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "album"

    aput-object v4, v3, v2

    .line 1988
    .local v3, cols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v3, v4, v5}, Lcom/htc/music/util/ContentUtils;->getAlbum(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v11

    .line 1989
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 1990
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1991
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1992
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1993
    const-string v2, "<unknown>"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1994
    const v2, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1997
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2001
    .end local v3           #cols:[Ljava/lang/String;
    .end local v7           #albunId:J
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 2002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 2003
    .local v9, artistId:J
    const-wide/16 v4, -0x1

    cmp-long v2, v9, v4

    if-nez v2, :cond_9

    .line 2004
    const v2, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2006
    :cond_9
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "artist"

    aput-object v4, v3, v2

    .line 2009
    .restart local v3       #cols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v3, v4, v5}, Lcom/htc/music/util/ContentUtils;->getArtist(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v11

    .line 2011
    .restart local v11       #cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 2012
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_a

    .line 2013
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2014
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2015
    const-string v2, "<unknown>"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2016
    const v2, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2018
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 2022
    .end local v3           #cols:[Ljava/lang/String;
    .end local v9           #artistId:J
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2023
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v3, v2

    .line 2024
    .restart local v3       #cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2030
    .restart local v11       #cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_d

    .line 2031
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_c

    .line 2032
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2033
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    .line 2035
    :cond_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2036
    const/4 v11, 0x0

    .line 2039
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 2041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_e

    .line 2042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 2043
    .local v15, iCount:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListSizeTitle(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    .line 2046
    .end local v15           #iCount:I
    :cond_e
    const-string v12, ""

    goto/16 :goto_0

    .line 2049
    .end local v3           #cols:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 2050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 2051
    .local v13, genreId:J
    const-wide/16 v4, -0x1

    cmp-long v2, v13, v4

    if-nez v2, :cond_10

    .line 2052
    const v2, 0x7f060040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2054
    :cond_10
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v3, v2

    .line 2057
    .restart local v3       #cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2060
    .restart local v11       #cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 2061
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_11

    .line 2062
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2063
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2065
    :cond_11
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 2069
    .end local v3           #cols:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v13           #genreId:J
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 2070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x7f06003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2
    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    goto :goto_2

    .line 2082
    :cond_14
    const v2, 0x7f06001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 2084
    const-string v12, ""

    goto/16 :goto_0
.end method

.method private getListSizeTitle(I)Ljava/lang/String;
    .locals 4
    .parameter "iListSize"

    .prologue
    .line 2910
    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2911
    .local v0, szTitle:Ljava/lang/String;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2912
    :cond_0
    const v1, 0x7f06001f

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2914
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "%1s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2915
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2919
    :goto_0
    return-object v1

    .line 2918
    :cond_2
    const-string v1, "[TrackBrowserFragment]"

    const-string v2, "getListSizeTitle(), Can\'t find String htc_all_tracks_title_counts or htc_all_tracks_title_one!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    const-string v1, ""

    goto :goto_0
.end method

.method private getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 1837
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1838
    .local v4, activity:Landroid/app/Activity;
    if-nez v4, :cond_1

    const/16 v20, 0x0

    .line 1965
    .end local v4           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v20

    .line 1839
    .restart local v4       #activity:Landroid/app/Activity;
    :cond_1
    const/16 v20, 0x0

    .line 1840
    .local v20, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAsyncQuerying:Z

    .line 1841
    const-string v2, "title COLLATE NOCASE ASC"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    .line 1842
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1843
    .local v22, where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    const/4 v8, 0x0

    .line 1847
    .local v8, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1848
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 1849
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 1850
    const-string v2, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    const-string v2, "title LIKE ?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    const-string v2, "track"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    .line 1863
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .line 1868
    .local v18, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-nez v2, :cond_7

    .line 1869
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    if-eqz p1, :cond_6

    .line 1872
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .end local v4           #activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    const/16 v20, 0x0

    .line 1959
    .end local v18           #genreId:J
    :goto_2
    if-eqz v20, :cond_0

    if-eqz p1, :cond_0

    .line 1960
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->init(Landroid/database/Cursor;)V

    .line 1963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1840
    .end local v8           #keywords:[Ljava/lang/String;
    .end local v22           #where:Ljava/lang/StringBuilder;
    .restart local v4       #activity:Landroid/app/Activity;
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1876
    .restart local v8       #keywords:[Ljava/lang/String;
    .restart local v18       #genreId:J
    .restart local v22       #where:Ljava/lang/StringBuilder;
    :cond_6
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto :goto_2

    .line 1880
    :cond_7
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    if-eqz p1, :cond_8

    .line 1882
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move-object v15, v8

    invoke-virtual/range {v9 .. v16}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1886
    :cond_8
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto/16 :goto_2

    .line 1888
    .end local v18           #genreId:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1890
    const-string v2, "play_order"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    .line 1892
    if-eqz p1, :cond_a

    .line 1893
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move-object v15, v8

    invoke-virtual/range {v9 .. v16}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 1903
    :cond_a
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto/16 :goto_2

    .line 1912
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 1913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    const-string v2, "track"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    .line 1916
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND artist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1921
    .local v17, composer:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v21

    .line 1922
    .local v21, unknown:Z
    if-eqz v21, :cond_f

    .line 1923
    const-string v2, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1924
    invoke-static/range {v22 .. v22}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 1933
    .end local v17           #composer:Ljava/lang/String;
    .end local v21           #unknown:Z
    :cond_e
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    if-ne v2, v3, :cond_11

    .line 1938
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1939
    const-string v2, " AND (is_music>1 OR mime_type = \'audio/x-wma-drm\' )"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    :goto_4
    if-eqz p1, :cond_12

    .line 1946
    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move-object v15, v8

    invoke-virtual/range {v9 .. v16}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 1927
    .restart local v17       #composer:Ljava/lang/String;
    .restart local v21       #unknown:Z
    :cond_f
    const-string v2, "\'"

    const-string v3, "\'\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND composer = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1941
    .end local v17           #composer:Ljava/lang/String;
    .end local v21           #unknown:Z
    :cond_10
    const-string v2, " AND is_music>1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1943
    :cond_11
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1950
    :cond_12
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto/16 :goto_2
.end method

.method private initialUI()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 358
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v11}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 364
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_2

    .line 365
    const-string v0, "[TrackBrowserFragment]"

    const-string v1, "[initialUI] mTrackList = getListView() is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1
    :goto_0
    return-void

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 369
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 372
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 384
    :cond_4
    const/4 v10, 0x0

    .line 385
    .local v10, hideSelected:Z
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    if-eq v0, v11, :cond_5

    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    if-ne v0, v5, :cond_6

    .line 386
    :cond_5
    const/4 v10, 0x1

    .line 389
    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-nez v0, :cond_8

    .line 390
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03000a

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v2, :cond_7

    if-eqz v10, :cond_9

    :cond_7
    move v8, v11

    :goto_1
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    .line 398
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I

    #setter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDlnaMode:I
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$002(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;I)I

    .line 400
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 402
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle()V

    .line 403
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 408
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initPlayerPanel()V

    .line 409
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initButtonsPanel()V

    .line 411
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 412
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 418
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    if-ne v11, v0, :cond_a

    .line 419
    const v0, 0x7f06008b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setSearchHint(I)V

    .line 423
    :goto_2
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    if-nez v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->enableSearch()V

    goto/16 :goto_0

    .end local v9           #f:Landroid/content/IntentFilter;
    :cond_9
    move v8, v7

    .line 390
    goto :goto_1

    .line 422
    .restart local v9       #f:Landroid/content/IntentFilter;
    :cond_a
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setSearchHint(I)V

    goto :goto_2
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "c"

    .prologue
    .line 2776
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/music/util/MusicUtils;->joinAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private moveItem(Z)V
    .locals 14
    .parameter "up"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1192
    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1193
    .local v2, curcount:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v3

    .line 1194
    .local v3, curpos:I
    if-eqz p1, :cond_0

    if-lt v3, v13, :cond_1

    :cond_0
    if-nez p1, :cond_2

    add-int/lit8 v9, v2, -0x1

    if-lt v3, v9, :cond_2

    .line 1222
    :cond_1
    :goto_0
    return-void

    .line 1198
    :cond_2
    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v10, "play_order"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1200
    .local v1, colidx:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v9, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1201
    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1202
    .local v4, currentplayidx:I
    const-string v9, "external"

    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 1203
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1204
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "_id=?"

    .line 1205
    .local v7, where:Ljava/lang/String;
    new-array v8, v13, [Ljava/lang/String;

    .line 1206
    .local v8, wherearg:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1207
    .local v5, res:Landroid/content/ContentResolver;
    if-eqz p1, :cond_3

    .line 1208
    const-string v9, "play_order"

    add-int/lit8 v10, v4, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1209
    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 1210
    invoke-virtual {v5, v0, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1211
    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1218
    :goto_1
    const-string v9, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1219
    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 1220
    invoke-virtual {v5, v0, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1213
    :cond_3
    const-string v9, "play_order"

    add-int/lit8 v10, v4, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1214
    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 1215
    invoke-virtual {v5, v0, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1216
    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method private onCreate_Local(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 316
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 317
    const v2, 0x7f06004d

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCountTemplate:Ljava/lang/String;

    .line 318
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 320
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "title_key"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v5

    const-string v3, "album"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "album_id"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "artist"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "artist_id"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "album_key"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;

    .line 329
    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "title_key"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v5

    const-string v3, "album"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "album_id"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "artist"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "artist_id"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "play_order"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "audio_id"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "album_key"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 344
    const v2, 0x7f03002c

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setContentView(I)V

    .line 346
    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 347
    .local v1, listContentLayout:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "common_app_bkg"

    const v4, 0x2080001

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 351
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 352
    .local v0, dlArtFilter:Landroid/content/IntentFilter;
    const-string v2, "action_complete_one_download"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v2, "action_revert_current_album"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    return-void
.end method

.method private onDestroy_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 655
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 657
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 659
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 661
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 663
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 666
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 675
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 676
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 679
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 680
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->quit()V

    .line 685
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 686
    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    .line 692
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onDestroy()V

    .line 693
    return-void

    .line 667
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1332
    const-string v3, "[TrackBrowserFragment]"

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

    .line 1334
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1338
    :cond_1
    iput p3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPosition:I

    .line 1339
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 1340
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    .line 1342
    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_4

    .line 1343
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;

    .line 1344
    .local v1, holder:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;
    if-eqz v1, :cond_3

    .line 1345
    iget-object v0, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 1346
    .local v0, chb:Lcom/htc/widget/HtcCheckBox;
    if-eqz v0, :cond_2

    .line 1347
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p3}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 1349
    :cond_2
    const-string v3, "[TrackBrowserFragment]"

    const-string v4, "onListItemClick, chb is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1352
    .end local v0           #chb:Lcom/htc/widget/HtcCheckBox;
    :cond_3
    const-string v3, "[TrackBrowserFragment]"

    const-string v4, "onListItemClick, holder is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1356
    .end local v1           #holder:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;
    :cond_4
    const-string v3, "[TrackBrowserFragment]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick, v: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTrackList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    :cond_5
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1363
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_6

    const-string v3, "content://drm/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1364
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, p3, p4, p5}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->checkDrmFile(Landroid/net/Uri;IJ)V

    goto :goto_0

    .line 1370
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v3, v4, p3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    goto/16 :goto_0
.end method

.method private onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1380
    const/4 v0, 0x0

    return v0
.end method

.method private onPause_Local()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 759
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 765
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 767
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->clear()V

    .line 769
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    .line 773
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onPause()V

    .line 774
    return-void
.end method

.method private onResume_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 727
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onResume()V

    .line 729
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 731
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 747
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showSpinner(Z)V

    .line 750
    :cond_2
    return-void
.end method

.method private onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 2750
    packed-switch p2, :pswitch_data_0

    .line 2773
    :cond_0
    :goto_0
    return-void

    .line 2752
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 2753
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 2754
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isFragmentResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 2759
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 2760
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequery(Z)V

    .line 2761
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isFragmentResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2762
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 2766
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 2767
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 2768
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2769
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 2750
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 438
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNeedBindService:Z

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    .line 482
    :goto_0
    return-void

    .line 444
    :cond_0
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    .line 445
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-nez v0, :cond_2

    .line 447
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f03000a

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_1

    :goto_1
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    .line 455
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 457
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle()V

    .line 458
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 477
    :goto_2
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAudioId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v9

    .line 479
    .local v9, ex:Landroid/os/RemoteException;
    const-string v0, "[TrackBrowserFragment]"

    const-string v1, "Remote exception in getAudioId"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_1
    move v8, v7

    .line 447
    goto :goto_1

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    .line 467
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 468
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->init(Landroid/database/Cursor;)V

    goto :goto_2

    .line 471
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle()V

    .line 472
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_2
.end method

.method private removeItem()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1171
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1172
    .local v1, curcount:I
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v2

    .line 1173
    .local v2, curpos:I
    if-eqz v1, :cond_0

    if-gez v2, :cond_1

    .line 1189
    .end local v2           #curpos:I
    :cond_0
    :goto_0
    return-void

    .line 1178
    .restart local v2       #curpos:I
    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1179
    .local v0, colidx:I
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1180
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1181
    .local v3, id:J
    const-string v6, "external"

    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 1182
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1183
    add-int/lit8 v1, v1, -0x1

    .line 1184
    if-nez v1, :cond_2

    .line 1185
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1187
    :cond_2
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-ge v2, v1, :cond_3

    .end local v2           #curpos:I
    :goto_1
    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .restart local v2       #curpos:I
    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private setTitle()V
    .locals 22

    .prologue
    .line 996
    const/16 v16, 0x0

    .line 997
    .local v16, fancyName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 999
    .local v19, numresults:I
    :goto_0
    if-lez v19, :cond_3

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1002
    .local v18, idx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

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

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist_id"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1017
    .local v5, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "album"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1021
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_1

    .line 1022
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v19

    if-eq v2, v0, :cond_0

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1026
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    .line 1028
    :cond_1
    if-eqz v16, :cond_2

    const-string v2, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1029
    :cond_2
    const v2, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1121
    .end local v5           #where:Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v18           #idx:I
    .end local v19           #numresults:I
    :cond_3
    :goto_1
    if-eqz v16, :cond_12

    .line 1122
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 1126
    :goto_2
    return-void

    .line 998
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1032
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1034
    .local v12, artistId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_6

    .line 1035
    const v2, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 1037
    :cond_6
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "artist"

    aput-object v3, v8, v2

    .line 1040
    .local v8, cols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v2, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1043
    .restart local v14       #cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 1044
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1045
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1046
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1047
    const-string v2, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1048
    const v2, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1050
    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1054
    .end local v8           #cols:[Ljava/lang/String;
    .end local v12           #artistId:J
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1055
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    .line 1057
    .restart local v8       #cols:[Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 1059
    .local v20, playlistId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 1060
    .local v17, id:Ljava/lang/Long;
    if-eqz v17, :cond_9

    .line 1061
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    .line 1068
    .end local v17           #id:Ljava/lang/Long;
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1071
    .restart local v14       #cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_b

    .line 1072
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_a

    .line 1073
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1074
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1077
    :cond_a
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1078
    const/4 v14, 0x0

    .line 1081
    :cond_b
    if-eqz v16, :cond_c

    .line 1082
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistName:Ljava/lang/String;

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1084
    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1064
    .end local v14           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .line 1065
    .local v15, ex:Ljava/lang/Exception;
    const-string v2, "[TrackBrowserFragment]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(null != mSelectedPlaylistId), ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1088
    .end local v15           #ex:Ljava/lang/Exception;
    .restart local v14       #cursor:Landroid/database/Cursor;
    :cond_c
    const-string v2, "[TrackBrowserFragment]"

    const-string v3, "setTitle(), fancyName is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1091
    .end local v8           #cols:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v20           #playlistId:J
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1092
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    .line 1095
    .restart local v8       #cols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1098
    .restart local v14       #cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 1099
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_e

    .line 1100
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1101
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1104
    :cond_e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1107
    .end local v8           #cols:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    if-ne v2, v3, :cond_10

    .line 1108
    const v2, 0x7f060028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 1109
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_11

    .line 1111
    const v2, 0x7f06005c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1112
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1116
    :cond_11
    const v2, 0x7f06001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1117
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1124
    :cond_12
    const v2, 0x7f06001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(I)V

    goto/16 :goto_2
.end method

.method private showTrackOptions(IJZ)Z
    .locals 1
    .parameter "position"
    .parameter "id"
    .parameter "bLongClick"

    .prologue
    .line 1385
    const/4 v0, 0x1

    return v0
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 704
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1150
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1153
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1167
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1155
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->moveItem(Z)V

    goto :goto_0

    .line 1158
    :sswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->moveItem(Z)V

    goto :goto_0

    .line 1161
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->removeItem()V

    goto :goto_0

    .line 1153
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method getCheckedItemCount()I
    .locals 4

    .prologue
    .line 1225
    const/4 v0, 0x0

    .line 1227
    .local v0, count:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_1

    .line 1228
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1229
    .local v2, items:Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_1

    .line 1230
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1231
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1232
    add-int/lit8 v0, v0, 0x1

    .line 1230
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1236
    .end local v1           #i:I
    .end local v2           #items:Landroid/util/SparseBooleanArray;
    :cond_1
    return v0
.end method

.method getDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1319
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1320
    const-string v0, "MM-dd-yyyy"

    .line 1321
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

    .line 1322
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getPickerMode()J
    .locals 2

    .prologue
    .line 2710
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 14
    .parameter "newCursor"

    .prologue
    .line 862
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-nez v10, :cond_1

    .line 863
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_0

    .line 864
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 870
    const-string v10, "[TrackBrowserFragment]"

    const-string v11, "changeCursor with a closed cursor!! could be caused by mDelaySearchHandler?"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 874
    :cond_2
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eq v10, p1, :cond_0

    .line 878
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v10, :cond_3

    .line 879
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 881
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    .line 882
    .local v2, c:Landroid/database/Cursor;
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v10, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 884
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-nez v10, :cond_4

    .line 886
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDatabaseError()V

    .line 887
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mReScanHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 891
    :cond_4
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_6

    .line 892
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    if-nez v10, :cond_5

    .line 893
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivityTitle()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    .line 896
    :cond_5
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    .line 897
    const v10, 0x7f06002a

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showEmptyView(I)V

    goto :goto_0

    .line 902
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->hideEmptyErrorView()V

    .line 904
    const v10, 0x102000a

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 905
    .local v9, listView:Landroid/view/View;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_10

    .line 906
    :cond_7
    const v10, 0x7f030031

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setContentView(I)V

    .line 907
    const v10, 0x7f07003b

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 908
    .local v8, listContentLayout:Landroid/view/ViewGroup;
    if-eqz v8, :cond_8

    .line 909
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "common_app_bkg"

    const v12, 0x2080001

    invoke-static {v10, v11, v12}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 912
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 913
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v10, :cond_9

    .line 914
    const-string v10, "[TrackBrowserFragment]"

    const-string v11, "[init] mTrackList = getListView() is null!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 917
    :cond_9
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v10

    const-wide/16 v12, 0x2

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v10

    const-wide/16 v12, 0x3

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v10

    const-wide/16 v12, 0x4

    cmp-long v10, v10, v12

    if-nez v10, :cond_b

    .line 919
    :cond_a
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 921
    :cond_b
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 922
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 924
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initPlayerPanel()V

    .line 925
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initButtonsPanel()V

    .line 930
    .end local v8           #listContentLayout:Landroid/view/ViewGroup;
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivityTitle()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    .line 934
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    if-eqz v10, :cond_11

    .line 935
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    .line 947
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "artistid"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 948
    .local v5, key:Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 949
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "artist_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 950
    .local v7, keyidx:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 951
    :goto_3
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_d

    .line 952
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, artist:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 954
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setSelection(I)V

    .line 960
    .end local v0           #artist:Ljava/lang/String;
    .end local v7           #keyidx:I
    :cond_d
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.htc.music.metachanged"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 962
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 963
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v10, :cond_0

    .line 964
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    .line 965
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 968
    .restart local v7       #keyidx:I
    const/4 v6, -0x1

    .line 969
    .local v6, keyAudioIdidx:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "audio_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 971
    const/4 v10, -0x1

    if-le v6, v10, :cond_e

    .line 972
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    .line 975
    :cond_e
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 976
    const/4 v3, 0x0

    .line 977
    .local v3, i:I
    const/4 v1, -0x1

    .line 978
    .local v1, audioId:I
    :goto_4
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_0

    .line 979
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 980
    .local v4, id:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    aput v4, v10, v3

    .line 981
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    if-eqz v10, :cond_f

    .line 982
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 983
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    aput v1, v10, v3

    .line 986
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 987
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 927
    .end local v1           #audioId:I
    .end local v3           #i:I
    .end local v4           #id:I
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #keyAudioIdidx:I
    .end local v7           #keyidx:I
    :cond_10
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    goto/16 :goto_1

    .line 937
    :cond_11
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    if-nez v10, :cond_c

    .line 938
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setMainTitle(Ljava/lang/String;)V

    .line 939
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivitySecondaryTitle:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setSecondaryTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 957
    .restart local v0       #artist:Ljava/lang/String;
    .restart local v5       #key:Ljava/lang/String;
    .restart local v7       #keyidx:I
    :cond_12
    iget-object v10, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3
.end method

.method initButtonsPanel()V
    .locals 5

    .prologue
    .line 2661
    iget v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 2665
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 2666
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_1

    .line 2667
    instance-of v3, v2, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 2668
    check-cast v3, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->enableFooterButtonPanel(Z)Lcom/htc/widget/HtcFooter;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    .line 2674
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    if-nez v3, :cond_3

    .line 2675
    const-string v3, "[TrackBrowserFragment]"

    const-string v4, "AddPlaylistTabActivity return null mButtonPanel!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    .end local v2           #parent:Landroid/app/Activity;
    :goto_1
    return-void

    .line 2670
    .restart local v2       #parent:Landroid/app/Activity;
    :cond_2
    const-string v3, "[TrackBrowserFragment]"

    const-string v4, "try to init panel with parent exist, but parent is not AddPlaylistTabActivity!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2680
    :cond_3
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 2681
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v3, 0x2040145

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 2682
    const v3, 0x20800a7

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 2683
    new-instance v3, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2690
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const v4, 0x7f07001b

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 2691
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v3, 0x2040152

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 2692
    const v3, 0x20800a3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 2693
    new-instance v3, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;

    invoke-direct {v3, p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2706
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    .end local v2           #parent:Landroid/app/Activity;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    goto :goto_1

    .line 2700
    :cond_5
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    if-eqz v3, :cond_4

    .line 2702
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    goto :goto_2
.end method

.method initPlayerPanel()V
    .locals 0

    .prologue
    .line 2613
    return-void
.end method

.method isEditMode()Z
    .locals 1

    .prologue
    .line 2714
    const/4 v0, 0x0

    return v0
.end method

.method isPickerMode()Z
    .locals 4

    .prologue
    .line 2718
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

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
    .locals 32
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1615
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 1616
    .local v5, activity:Landroid/app/Activity;
    if-nez v5, :cond_1

    .line 1832
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1618
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1740
    :sswitch_1
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1741
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v15, v0, [I

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedId:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    aput v27, v15, v26

    .line 1744
    .local v15, list:[I
    const-string v26, "playlist"

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1745
    .local v17, playlist:I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v5, v15, v0, v1}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1620
    .end local v15           #list:[I
    .end local v17           #playlist:I
    :sswitch_2
    if-nez p2, :cond_2

    .line 1621
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1623
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 1630
    :sswitch_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 1631
    .local v24, uri:Landroid/net/Uri;
    if-eqz v24, :cond_0

    .line 1632
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v15, v0, [I

    .line 1633
    .restart local v15       #list:[I
    const/16 v26, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v27

    aput v27, v15, v26

    .line 1634
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1635
    .restart local v17       #playlist:I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v5, v15, v0, v1}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 1640
    .end local v15           #list:[I
    .end local v17           #playlist:I
    .end local v24           #uri:Landroid/net/Uri;
    :sswitch_4
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v15

    .line 1642
    .restart local v15       #list:[I
    const-string v26, "playlist"

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1643
    .restart local v17       #playlist:I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v5, v15, v0, v1}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLowerSearchFilter:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 1651
    .end local v15           #list:[I
    .end local v17           #playlist:I
    :sswitch_5
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1652
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 1653
    .local v16, name:Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 1654
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    .line 1655
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityMainTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 1661
    .end local v16           #name:Ljava/lang/String;
    :sswitch_6
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1662
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 1670
    .restart local v16       #name:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 1674
    .end local v16           #name:Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1675
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    .line 1682
    const-string v26, "[TrackBrowserFragment]"

    const-string v27, "Bad! I don\'t want to see this!"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    const-string v27, "_id"

    invoke-interface/range {v26 .. v27}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1687
    .local v14, keyidx:I
    const/4 v13, -0x1

    .line 1689
    .local v13, keyAudioIdidx:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    const-string v27, "audio_id"

    invoke-interface/range {v26 .. v27}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1693
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1694
    const/4 v6, -0x1

    .line 1695
    .local v6, audioId:I
    const/4 v10, 0x0

    .line 1696
    .local v10, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v26

    if-nez v26, :cond_0

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1698
    .local v12, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    move-object/from16 v26, v0

    aput v12, v26, v10

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    if-lez v13, :cond_4

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    move-object/from16 v26, v0

    aput v6, v26, v10

    .line 1703
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1691
    .end local v6           #audioId:I
    .end local v10           #i:I
    .end local v12           #id:I
    :catch_0
    move-exception v9

    .local v9, ex:Ljava/lang/Exception;
    const/4 v13, -0x1

    goto :goto_1

    .line 1710
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v13           #keyAudioIdidx:I
    .end local v14           #keyidx:I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 1711
    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 1713
    .local v18, resolver:Landroid/content/ContentResolver;
    const-string v26, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    invoke-static/range {v26 .. v28}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "playlist_id="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistAudioId:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    move/from16 v3, v29

    invoke-static {v5, v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    goto/16 :goto_0

    .line 1733
    .end local v18           #resolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v26

    goto/16 :goto_0

    .line 1719
    :cond_6
    const-string v26, "[TrackBrowserFragment]"

    const-string v27, "using old logic!! this could need a lot of time"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    new-instance v25, Landroid/content/ContentValues;

    const/16 v26, 0x1

    invoke-direct/range {v25 .. v26}, Landroid/content/ContentValues;-><init>(I)V

    .line 1721
    .local v25, values:Landroid/content/ContentValues;
    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 1722
    .restart local v18       #resolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_0

    .line 1723
    const-string v26, "play_order"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1725
    const-string v26, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    invoke-static/range {v26 .. v28}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v26

    const-string v27, "_id=?"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistContent:[I

    move-object/from16 v30, v0

    aget v30, v30, v10

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1722
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1751
    .end local v10           #i:I
    .end local v18           #resolver:Landroid/content/ContentResolver;
    .end local v25           #values:Landroid/content/ContentValues;
    :sswitch_8
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1752
    const-string v26, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1753
    .local v20, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v20 .. v20}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v15

    .line 1754
    .restart local v15       #list:[I
    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2, v15}, Lcom/htc/music/util/MusicUtils;->deletePlaylistTrack(Landroid/content/Context;J[I)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 1762
    .end local v15           #list:[I
    .end local v20           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lcom/htc/music/util/MusicUtils;->getTabActivityResult(Landroid/content/Context;I)I

    move-result p2

    .line 1763
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1764
    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1765
    .restart local v20       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v20 .. v20}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v15

    .line 1766
    .restart local v15       #list:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-static {v5, v15, v0, v1}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 1767
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->init(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 1772
    .end local v15           #list:[I
    .end local v20           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_a
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1773
    const-string v26, "[TrackBrowserFragment]"

    const-string v27, "receive set contact ringtone activity result"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    move-object/from16 v19, p3

    .line 1775
    .local v19, resultIntent:Landroid/content/Intent;
    new-instance v21, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$6;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/content/Intent;)V

    .line 1786
    .local v21, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v23, Ljava/lang/Thread;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1787
    .local v23, thread:Ljava/lang/Thread;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1791
    .end local v19           #resultIntent:Landroid/content/Intent;
    .end local v21           #setContactRingtoneRunnable:Ljava/lang/Runnable;
    .end local v23           #thread:Ljava/lang/Thread;
    :sswitch_b
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1792
    const-string v26, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1793
    .restart local v20       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_0

    .line 1796
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1797
    .local v11, iCount:I
    new-array v8, v11, [Ljava/lang/String;

    .line 1798
    .local v8, dataPathArray:[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    if-ge v10, v11, :cond_8

    .line 1799
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    invoke-static {v5, v0}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v7

    .line 1800
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 1801
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1802
    const-string v26, "_data"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v8, v10

    .line 1803
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1798
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1807
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_8
    new-instance v22, Ljava/lang/String;

    const-string v26, "com.htc.vmm.service.VMMEngineService"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1809
    .local v22, szAction:Ljava/lang/String;
    :try_start_2
    new-instance v26, Landroid/content/Intent;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v27, "upload"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1810
    :catch_2
    move-exception v9

    .line 1811
    .local v9, ex:Ljava/lang/SecurityException;
    const-string v26, "[TrackBrowserFragment]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "We do not have permission to start the service :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1618
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_3
        0xb -> :sswitch_2
        0x13 -> :sswitch_a
        0x1c -> :sswitch_4
        0x21 -> :sswitch_9
        0x22 -> :sswitch_8
        0x23 -> :sswitch_7
        0x24 -> :sswitch_6
        0x29 -> :sswitch_5
        0x2b -> :sswitch_b
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method onCancelClick()V
    .locals 6

    .prologue
    .line 2646
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v2, :cond_1

    .line 2647
    const-string v2, "[TrackBrowserFragment]"

    const-string v3, "[onCancelClick] mTrackList == null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    :cond_0
    :goto_0
    return-void

    .line 2651
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2652
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 2653
    .local v1, items:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2654
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 2653
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2656
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 312
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 262
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 263
    const-string v2, "albumid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    .line 264
    const-string v2, "artistid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    .line 265
    const-string v2, "playlist"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    .line 266
    const-string v2, "genreid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    .line 268
    const-string v2, "isshowplayerpanel"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShowPlayerPanel:Z

    .line 269
    const-string v2, "composer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    .line 270
    const-string v2, "isdrmlist"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    .line 271
    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDescription:Ljava/lang/String;

    .line 272
    const-string v2, "pickermode"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    .line 273
    const-string v2, "playlisturi"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistUri:Ljava/lang/String;

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onCreate_Local(Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 287
    .local v1, rootContext:Landroid/app/Activity;
    new-instance v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    invoke-direct {v2, p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    .line 289
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v8, 0x7f060006

    const/16 v7, 0x1d

    const/16 v6, 0x9

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1409
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/fragment/MusicListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1410
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1411
    const/16 v0, 0x25

    const v1, 0x204014f

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1413
    const/16 v0, 0x26

    const v1, 0x2040150

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1417
    invoke-interface {p1, v5, v6, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1418
    const v0, 0x7f060007

    invoke-interface {p1, v5, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1419
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1420
    const/16 v0, 0x2b

    const v1, 0x7f060008

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1422
    :cond_2
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    const/16 v0, 0x2c

    const v1, 0x2040218

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1426
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1427
    invoke-interface {p1, v5, v6, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1428
    const v0, 0x7f060007

    invoke-interface {p1, v5, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1431
    const/16 v0, 0x29

    const v1, 0x7f060087

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 293
    const-string v1, "[TrackBrowserFragment]"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/fragment/MusicListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initialUI()V

    .line 296
    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 626
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDestroyed:Z

    .line 628
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onDestroy_Local()V

    .line 630
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNotifyCallback:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    .line 646
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    if-eqz v1, :cond_1

    .line 647
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mUiHandler:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;

    invoke-virtual {v1, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 650
    :cond_1
    const-string v1, "[TrackBrowserFragment]"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 300
    const-string v0, "[TrackBrowserFragment]"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onDestroyView()V

    .line 304
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->clear()V

    .line 305
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDecodeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRevertList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1327
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 1328
    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1376
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1490
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1491
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1609
    :goto_0
    return v4

    .line 1495
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1609
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 1497
    :sswitch_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v0, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)I

    move v4, v5

    .line 1498
    goto :goto_0

    .line 1503
    :sswitch_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 1504
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v0, v4}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)I

    :cond_1
    move v4, v5

    .line 1506
    goto :goto_0

    .line 1509
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1511
    .local v2, intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1512
    const-string v4, "pickermode"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1513
    const/16 v4, 0x1c

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v5

    .line 1514
    goto :goto_0

    .line 1518
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearQueue()V

    move v4, v5

    .line 1519
    goto :goto_0

    .line 1522
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1523
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "playlisturi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/external/audio/playlists/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    const-class v4, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1527
    const/16 v4, 0x21

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v5

    .line 1528
    goto :goto_0

    .line 1531
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1532
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1533
    const-string v4, "playlist"

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    const-string v4, "pickermode"

    const/4 v6, 0x3

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1535
    const/16 v4, 0x22

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v5

    .line 1536
    goto/16 :goto_0

    .line 1539
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_6
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1540
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v7, "com.htc.media/track"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1541
    const-string v6, "playlist"

    iget-object v7, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1542
    const-string v6, "isnowplayinglist"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1544
    const/16 v4, 0x23

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v5

    .line 1546
    goto/16 :goto_0

    .line 1549
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1550
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1551
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1552
    const-string v4, "playlistname"

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistName:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1553
    :cond_2
    const-string v4, "playlist"

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1554
    const/16 v4, 0x29

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v5

    .line 1555
    goto/16 :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_8
    move v4, v5

    .line 1562
    goto/16 :goto_0

    .line 1565
    :sswitch_9
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v4, :cond_3

    .line 1566
    const-string v4, "[TrackBrowserFragment]"

    const-string v6, "[onOptionsItemSelected][SELECT_ALL] mTrackList == null."

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1567
    goto/16 :goto_0

    .line 1570
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1571
    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v1, v5}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 1570
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1574
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    move v4, v5

    .line 1576
    goto/16 :goto_0

    .line 1579
    .end local v1           #i:I
    :sswitch_a
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v6, :cond_5

    .line 1580
    const-string v4, "[TrackBrowserFragment]"

    const-string v6, "[onOptionsItemSelected][UNSELECT_ALL] mTrackList == null."

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1581
    goto/16 :goto_0

    .line 1584
    :cond_5
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 1585
    .local v3, items:Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 1586
    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 1585
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1588
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateButtonCounter()V

    move v4, v5

    .line 1589
    goto/16 :goto_0

    .line 1592
    .end local v1           #i:I
    .end local v3           #items:Landroid/util/SparseBooleanArray;
    :sswitch_b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1593
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "albumid"

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1594
    const-string v4, "artistid"

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1595
    const-string v4, "genreid"

    iget-object v6, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    const-string v4, "pickermode"

    const/4 v6, 0x4

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1597
    const-class v4, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1598
    const/16 v4, 0x2b

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v5

    .line 1599
    goto/16 :goto_0

    .line 1603
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_c
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1604
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v4, -0x2

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v5

    .line 1605
    goto/16 :goto_0

    .line 1495
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_0
        0x1e -> :sswitch_3
        0x21 -> :sswitch_4
        0x22 -> :sswitch_5
        0x23 -> :sswitch_6
        0x24 -> :sswitch_8
        0x25 -> :sswitch_9
        0x26 -> :sswitch_a
        0x29 -> :sswitch_7
        0x2b -> :sswitch_b
        0x2c -> :sswitch_c
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onPause_Local()V

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mResume:Z

    .line 756
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1438
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1440
    const/4 v5, 0x0

    .line 1441
    .local v5, num_tracks:I
    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    .line 1442
    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 1445
    :cond_0
    if-eq v5, v6, :cond_a

    move v4, v6

    .line 1446
    .local v4, not_one_song:Z
    :goto_0
    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_b

    if-lez v5, :cond_b

    move v2, v6

    .line 1449
    .local v2, enabled:Z
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 1450
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getCheckedItemCount()I

    move-result v0

    .line 1451
    .local v0, checkedCount:I
    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    if-nez v8, :cond_c

    move v1, v7

    .line 1452
    .local v1, count:I
    :goto_2
    const/16 v8, 0x25

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1453
    .local v3, item:Landroid/view/MenuItem;
    if-eqz v3, :cond_1

    .line 1454
    if-eqz v2, :cond_d

    if-eq v1, v0, :cond_d

    move v8, v6

    :goto_3
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1455
    :cond_1
    const/16 v8, 0x26

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1456
    if-eqz v3, :cond_2

    .line 1457
    if-eqz v2, :cond_e

    if-lez v0, :cond_e

    move v8, v6

    :goto_4
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1460
    .end local v0           #checkedCount:I
    .end local v1           #count:I
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_2
    const/16 v8, 0x9

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1461
    .restart local v3       #item:Landroid/view/MenuItem;
    if-eqz v3, :cond_3

    .line 1462
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1463
    :cond_3
    const/16 v8, 0x1d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1464
    if-eqz v3, :cond_4

    .line 1465
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1466
    :cond_4
    const/16 v8, 0x1c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1467
    if-eqz v3, :cond_5

    .line 1468
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1469
    :cond_5
    const/16 v8, 0x23

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1470
    if-eqz v3, :cond_6

    .line 1471
    if-eqz v2, :cond_f

    if-eqz v4, :cond_f

    :goto_5
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1473
    :cond_6
    const/16 v6, 0x22

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1474
    if-eqz v3, :cond_7

    .line 1475
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1476
    :cond_7
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1477
    const/16 v6, 0x2b

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1478
    if-eqz v3, :cond_8

    .line 1479
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1481
    :cond_8
    const/16 v6, 0x2c

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1482
    if-eqz v3, :cond_9

    .line 1483
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1486
    :cond_9
    return-void

    .end local v2           #enabled:Z
    .end local v3           #item:Landroid/view/MenuItem;
    .end local v4           #not_one_song:Z
    :cond_a
    move v4, v7

    .line 1445
    goto/16 :goto_0

    .restart local v4       #not_one_song:Z
    :cond_b
    move v2, v7

    .line 1446
    goto/16 :goto_1

    .line 1451
    .restart local v0       #checkedCount:I
    .restart local v2       #enabled:Z
    :cond_c
    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto/16 :goto_2

    .restart local v1       #count:I
    .restart local v3       #item:Landroid/view/MenuItem;
    :cond_d
    move v8, v7

    .line 1454
    goto :goto_3

    :cond_e
    move v8, v7

    .line 1457
    goto :goto_4

    .end local v0           #checkedCount:I
    .end local v1           #count:I
    :cond_f
    move v6, v7

    .line 1471
    goto :goto_5
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onResume_Local()V

    .line 713
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle()V

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mResume:Z

    .line 716
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDecodeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDecodeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDecodeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->updateAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/DlArtAsyncImageDecoder;)V

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRevertList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRevertList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRevertList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->revertAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/MemoryCacheBitmapByTime;)V

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->notifyDataSetChanged()V

    .line 724
    :cond_2
    return-void
.end method

.method public onSaveClick()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 2616
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2617
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 2643
    :goto_0
    return-void

    .line 2619
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 2620
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2621
    .local v7, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    .line 2622
    .local v5, items:Landroid/util/SparseBooleanArray;
    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2623
    .local v3, idx:I
    const/4 v2, 0x0

    .line 2624
    .local v2, id:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 2625
    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2626
    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2627
    iget-object v8, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v2, v8

    .line 2628
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2624
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2632
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2633
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "playlisturi"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2634
    .local v6, playlisturi:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 2635
    const-string v8, "selectedlist"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2640
    :goto_2
    invoke-virtual {p0, v12, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setResult(ILandroid/content/Intent;)V

    .line 2642
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #idx:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #items:Landroid/util/SparseBooleanArray;
    .end local v6           #playlisturi:Ljava/lang/String;
    .end local v7           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2637
    .restart local v1       #i:I
    .restart local v2       #id:I
    .restart local v3       #idx:I
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #items:Landroid/util/SparseBooleanArray;
    .restart local v6       #playlisturi:Ljava/lang/String;
    .restart local v7       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {v0, v12}, Lcom/htc/music/util/MusicUtils;->setTabActivityResult(Landroid/content/Context;I)V

    .line 2638
    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->setTabActivitySelectedId(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 847
    const-string v0, "selectedtrack"

    iget-wide v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 848
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v0, "albumid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v0, "isdrmlist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsDrmList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 854
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v0, "pickermode"

    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 856
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v0, "isshowplayerpanel"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mShowPlayerPanel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 858
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 859
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 2737
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V

    .line 2738
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 2731
    const-string v0, "[TrackBrowserFragment]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V

    .line 2733
    return-void
.end method

.method public onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 2741
    move v1, p2

    .line 2742
    .local v1, start:I
    add-int v0, p2, p3

    .line 2743
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2744
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->setVisibleRange(II)V

    .line 2746
    :cond_0
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 2723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->preSearchTime:J

    .line 2724
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mFilter:Ljava/lang/String;

    .line 2725
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2728
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 428
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 429
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 488
    const-string v0, "[TrackBrowserFragment]"

    const-string v1, "receive service disconnected!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 490
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onStart()V

    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNeedBindService:Z

    .line 223
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 224
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->onStop()V

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPlaybackServiceConnected:Z

    .line 244
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mNeedBindService:Z

    .line 247
    return-void

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateButtonCounter()V
    .locals 9

    .prologue
    const v8, 0x7f07001c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1242
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCountTemplate:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getCheckedItemCount()I

    move-result v1

    .line 1248
    .local v1, count:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCountTemplate:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1249
    .local v2, text:Ljava/lang/String;
    iget v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mPickerMode:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1251
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1252
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez v1, :cond_2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f060056

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1255
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1252
    goto :goto_1

    .line 1262
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f060057

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1263
    iget-object v5, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1264
    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    if-lez v1, :cond_3

    :goto_2
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_2

    .line 1249
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
