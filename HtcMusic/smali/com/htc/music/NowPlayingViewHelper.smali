.class public Lcom/htc/music/NowPlayingViewHelper;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;,
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;,
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;,
        Lcom/htc/music/NowPlayingViewHelper$EditTextWatcher;
    }
.end annotation


# static fields
.field protected static final ADD_NOW_PLAYING_TO_LIST:I = 0x65

.field protected static final CHANGE_NOW_PLAYING_ORDER:I = 0x66

.field protected static final CLEAR_QUEUE:I = 0x67

.field protected static final CREATE:I = 0x1

.field protected static final DESTROY:I = 0x0

.field public static final DIALOG_ALBUM_CREATE_PLAYLIST:I = 0xc

.field public static final DIALOG_CLEAR_QUEUE:I = 0xa

.field public static final DIALOG_CREATE_PLAYLIST:I = 0xb

.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field public static final DIALOG_SET_AS_RINGTONE:I = 0x8

.field public static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0x9

.field public static final DIALOG_SHARETEXT:I = 0x5

.field public static final DIALOG_SHARETYPE:I = 0x4

.field public static final DIALOG_SHARE_DRM_FILE:I = 0x7

.field public static final DIALOG_SHARE_NORMAL_FILE:I = 0x6

.field protected static final PAUSE:I = 0x4

.field protected static final RESUME:I = 0x3

.field protected static final SETTING:I = 0x68

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x66

.field protected static final START:I = 0x2

.field protected static final STOP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "[NowPlayingViewHelper]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field protected mActivityStatus:I

.field private mAdapterSent:Z

.field private mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

.field private mAudioId:I

.field protected mContext:Landroid/app/Activity;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field private mCurrentDetails:Landroid/content/ContentValues;

.field private mCurrentPosition:I

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

.field private mDeletedOneRow:Z

.field private mDialog:Landroid/app/Dialog;

.field private mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field protected mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private final mHandler:Landroid/os/Handler;

.field private mHtcContextMenuIds:[I

.field private mHtcContextMenuItems:[Ljava/lang/CharSequence;

.field private mHtcContextMenuTitle:Ljava/lang/String;

.field private mIsEnhancerExist:Z

.field private mIsNeedToUpdateProperty:Z

.field private mIsQueueChanged:Z

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

.field private mMsg:Ljava/lang/String;

.field private mNeedBindService:Z

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

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

.field private mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
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

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mPlaybackServiceConnected:Z

.field private mPlaylistContent:[I

.field private mReScanHandler:Landroid/os/Handler;

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

.field private mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mShareBundle:Landroid/os/Bundle;

.field private mShuffleMode:I

.field private mSortOrder:Ljava/lang/String;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mStopped:Z

.field private mTrackCursor:Landroid/database/Cursor;

.field private mUnknownAlbumName:Ljava/lang/String;

.field private mUnknownArtistName:Ljava/lang/String;

.field protected mViewGroup:Landroid/view/ViewGroup;

.field protected mcurDMR:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mStopped:Z

    .line 85
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    .line 87
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 88
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 91
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 93
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mcurDMR:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 96
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    .line 98
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    .line 102
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mAdapterSent:Z

    .line 104
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    .line 107
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByTime;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    .line 113
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 115
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    .line 117
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    .line 119
    iput v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    .line 120
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z

    .line 121
    iput v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 123
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    .line 125
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 127
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    .line 129
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 130
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    .line 131
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareBundle:Landroid/os/Bundle;

    .line 138
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    .line 139
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    .line 141
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I

    .line 142
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenHeight:I

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mResume:Z

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDecodeList:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRevertList:Ljava/util/ArrayList;

    .line 204
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNeedBindService:Z

    .line 607
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaybackServiceConnected:Z

    .line 690
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$2;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$2;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 778
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    .line 779
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    .line 781
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    .line 782
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    .line 783
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    .line 785
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    .line 1285
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    .line 1333
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$14;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$14;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    .line 1672
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 1673
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 1780
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$15;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$15;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    .line 1794
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$16;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$16;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 1834
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$17;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$17;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 1857
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$18;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$18;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 2841
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$19;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$19;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 154
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    .line 156
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/NowPlayingViewHelper;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->clearQueue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->launchMusicBrowser()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/NowPlayingViewHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mAudioId:I

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/music/NowPlayingViewHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAudioId:I

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/music/NowPlayingViewHelper;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDecodeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRevertList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mResume:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/MemoryCacheBitmapByTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/htc/music/NowPlayingViewHelper;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions(IJ)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/music/NowPlayingViewHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/NowPlayingViewHelper;Landroid/net/Uri;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/NowPlayingViewHelper;->checkDrmFile(Landroid/net/Uri;IJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    return-object v0
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 10
    .parameter "uri"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    .line 1455
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1457
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v7, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 1458
    .local v5, status:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 1459
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1491
    :goto_0
    return-void

    .line 1460
    :cond_0
    if-nez v5, :cond_3

    .line 1461
    invoke-static {v4, p1, v9}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 1462
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 1463
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7, v8, p2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    goto :goto_0

    .line 1465
    :cond_1
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v7, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    .line 1466
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1468
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    .line 1470
    :cond_2
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7, v8, p2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    goto :goto_0

    .line 1474
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1475
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v8, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1476
    const-string v7, "drmtargettomain"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1479
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1481
    .local v2, id_idx:I
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1482
    .local v6, trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    .end local v2           #id_idx:I
    :goto_1
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1483
    .end local v6           #trackId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1484
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1485
    .restart local v6       #trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 1354
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1355
    return-void
.end method

.method private clearQueue()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2856
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v5, :cond_0

    .line 2857
    const-string v5, "[NowPlayingViewHelper]"

    const-string v6, "clearQueue, MusicUtils.sService is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    :goto_0
    return v4

    .line 2862
    :cond_0
    :try_start_0
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v3

    .line 2863
    .local v3, queueSize:I
    new-array v2, v3, [I

    .line 2864
    .local v2, list:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 2865
    aput v1, v2, v1

    .line 2864
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2868
    :cond_1
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 2869
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5, v2}, Lcom/htc/music/IMediaPlaybackService;->removeQueueTracks([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2870
    const/4 v4, 0x1

    goto :goto_0

    .line 2871
    .end local v1           #i:I
    .end local v2           #list:[I
    .end local v3           #queueSize:I
    :catch_0
    move-exception v0

    .line 2873
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getTrackCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 1649
    const/4 v0, 0x0

    .line 1650
    .local v0, ret:Landroid/database/Cursor;
    const-string v3, "title COLLATE NOCASE ASC"

    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    .line 1651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1652
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, "title != \'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    .line 1656
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1657
    .local v1, status:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1658
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    .end local v0           #ret:Landroid/database/Cursor;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v4}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;-><init>(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 1666
    .end local v1           #status:Ljava/lang/String;
    .restart local v0       #ret:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 1661
    .restart local v1       #status:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "c"

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/htc/music/util/MusicUtils;->joinAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private launchMusicBrowser()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2879
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 2880
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "launchMusicBrowser, mContext is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2883
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2884
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2885
    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2886
    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2887
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2888
    return-void
.end method

.method private notifyProperty(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 1497
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 1498
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1500
    .local v0, i:Landroid/content/Intent;
    const-string v1, "duration"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "length"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1502
    const-string v1, "trackname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    const-string v1, "artistname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "artist"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    const-string v1, "albumname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    const-string v1, "genre"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "genre"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "composer"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    const-string v1, "location"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1509
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1511
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCreate_Local(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 11
    .parameter "intent"
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 442
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

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

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    .line 455
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 456
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setActivity(Lcom/htc/music/NowPlayingViewHelper;)V

    .line 468
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 469
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor()Landroid/database/Cursor;

    .line 491
    :goto_1
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    .line 493
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 494
    .local v10, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v0, "file"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 500
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 501
    .local v8, dlArtFilter:Landroid/content/IntentFilter;
    const-string v0, "action_complete_one_download"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v0, "action_revert_current_album"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    return-void

    .line 462
    .end local v8           #dlArtFilter:Landroid/content/IntentFilter;
    .end local v10           #f:Landroid/content/IntentFilter;
    :catch_0
    move-exception v9

    .line 463
    .local v9, e:Ljava/lang/ClassCastException;
    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    goto :goto_0

    .line 476
    .end local v9           #e:Ljava/lang/ClassCastException;
    :cond_0
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03000e

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 484
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 486
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor()Landroid/database/Cursor;

    goto :goto_1
.end method

.method private onDestroy_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 567
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 569
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 570
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 576
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 578
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 580
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    .line 583
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->quit()V

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->clear()V

    .line 588
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDecodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 589
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mRevertList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 594
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 595
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 596
    return-void
.end method

.method private onPause_Local()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 552
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 554
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->clear()V

    .line 556
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    .line 560
    :cond_1
    return-void
.end method

.method private onResume_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 523
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 525
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V

    .line 543
    :cond_2
    return-void
.end method

.method private onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v7, 0x0

    .line 650
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 651
    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "onServiceConnected_Local, mContext is null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v0, :cond_2

    .line 656
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03000e

    const/4 v4, 0x0

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 663
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 664
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor()Landroid/database/Cursor;

    goto :goto_0

    .line 666
    :cond_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    .line 673
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->getMediaPlaybackService()Lcom/htc/music/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->setMediaPlaybackService(Lcom/htc/music/IMediaPlaybackService;)V

    goto :goto_0

    .line 681
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor()Landroid/database/Cursor;

    goto :goto_0
.end method

.method private onStart_Local()V
    .locals 5

    .prologue
    .line 509
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.queuechanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 510
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.metachanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 512
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 513
    .local v0, nowPlayingEvent:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 516
    return-void
.end method

.method private setRingtone()V
    .locals 5

    .prologue
    .line 1289
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1292
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1297
    .local v0, currentAudioType:I
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-eqz v2, :cond_0

    .line 1298
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-wide v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioId(I)V

    .line 1299
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    invoke-virtual {v2, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 1300
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    invoke-virtual {v2, v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioType(I)V

    .line 1301
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->useAsRingtone(Z)V

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 7

    .prologue
    .line 1358
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1360
    .local v3, path:Ljava/lang/String;
    iget-wide v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v0, v4

    .line 1361
    .local v0, audioId:I
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v4, v3, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1363
    .local v1, canShare:I
    packed-switch v1, :pswitch_data_0

    .line 1376
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1377
    .local v2, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1379
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 1366
    :pswitch_0
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normal file case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    .line 1371
    :pswitch_1
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SD DRM case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    .line 1363
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
    .line 1393
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareBundle:Landroid/os/Bundle;

    .line 1396
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1397
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1329
    :cond_0
    return-void
.end method

.method private showTrackOptions(IJ)V
    .locals 8
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x5

    .line 725
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 727
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 729
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 731
    .local v1, id_idx:I
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v1           #id_idx:I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "title"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 738
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    .line 740
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "album"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    .line 743
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentAlbumName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    new-array v3, v7, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f060049

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x204020f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f060046

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f060057

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x2040216

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 752
    .local v3, items:[Ljava/lang/CharSequence;
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 760
    .local v2, ids:[I
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/music/NowPlayingViewHelper;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 761
    return-void

    .line 732
    .end local v2           #ids:[I
    .end local v3           #items:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 733
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-wide p2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    goto/16 :goto_0

    .line 752
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 1536
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    :goto_0
    return-void

    .line 1539
    :catch_0
    move-exception v0

    .line 1540
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1537
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1094
    :goto_0
    return-void

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1093
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public destroyNowPlayingView()V
    .locals 0

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 1257
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 1258
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 1259
    return-void
.end method

.method public enableNowPlayingWithGlance()V
    .locals 4

    .prologue
    .line 311
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NOW_PLAYING_SWITCH"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 314
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 299
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 300
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mStopped:Z

    .line 305
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 306
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 307
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    .line 308
    return-void
.end method

.method public generateNowPlayingView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 1262
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1263
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1264
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I

    .line 1265
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenHeight:I

    .line 1267
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public hideEmptyErrorView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1702
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1703
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1708
    :goto_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1709
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1714
    :goto_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1715
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1716
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1718
    :cond_0
    return-void

    .line 1705
    .end local v0           #v:Landroid/view/View;
    :cond_1
    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    goto :goto_0

    .line 1711
    :cond_2
    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    goto :goto_1
.end method

.method protected hideHtcContextMenu()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 603
    return-void
.end method

.method protected init(Landroid/database/Cursor;)V
    .locals 10
    .parameter "newCursor"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1558
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v6, :cond_1

    .line 1559
    if-eqz p1, :cond_0

    .line 1560
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1639
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v6, :cond_2

    .line 1566
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 1568
    :cond_2
    instance-of v6, p1, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    if-eqz v6, :cond_3

    .line 1569
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v6, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1575
    :goto_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-nez v6, :cond_4

    .line 1577
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->showDatabaseError()V

    .line 1578
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->closeContextMenu()V

    .line 1579
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1571
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 1572
    .local v0, c:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v6, v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 1586
    .end local v0           #c:Landroid/database/Cursor;
    :cond_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 1587
    const v6, 0x7f060032

    invoke-virtual {p0, v6}, Lcom/htc/music/NowPlayingViewHelper;->showEmptyView(I)V

    goto :goto_0

    .line 1591
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->hideEmptyErrorView()V

    .line 1594
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 1598
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 1599
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 1609
    const/4 v1, 0x0

    .line 1610
    .local v1, cur:I
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v6

    if-ne v6, v7, :cond_6

    .line 1611
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    .line 1612
    .local v5, shufflePos:I
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v5}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    .line 1617
    .end local v5           #shufflePos:I
    :goto_2
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 1619
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.htc.music.metachanged"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    :goto_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    .line 1625
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    .line 1626
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 1628
    .local v4, keyidx:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1629
    const/4 v2, 0x0

    .line 1630
    .local v2, i:I
    :goto_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1631
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1632
    .local v3, id:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    aput v3, v6, v2

    .line 1633
    add-int/lit8 v2, v2, 0x1

    .line 1634
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 1614
    .end local v2           #i:I
    .end local v3           #id:I
    .end local v4           #keyidx:I
    :cond_6
    :try_start_1
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_2

    .line 1620
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method public initListPos()V
    .locals 4

    .prologue
    .line 1546
    const/4 v0, 0x0

    .line 1548
    .local v0, cur:I
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 1549
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1550
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1554
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->setSelection(I)V

    .line 1555
    return-void

    .line 1551
    :catch_0
    move-exception v1

    .line 1552
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPlugNowPlayingMode()Z
    .locals 1

    .prologue
    .line 1277
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 389
    sparse-switch p1, :sswitch_data_0

    move v5, v6

    .line 438
    :cond_0
    :goto_0
    :sswitch_0
    return v5

    .line 391
    :sswitch_1
    if-ne p2, v7, :cond_0

    .line 392
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 393
    .local v0, list:[I
    const-string v7, "playlist"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 394
    .local v1, playlist:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    int-to-long v7, v1

    invoke-static {v6, v0, v7, v8}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 396
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor()Landroid/database/Cursor;

    goto :goto_0

    .line 402
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_2
    if-ne p2, v7, :cond_0

    .line 403
    new-array v0, v5, [I

    iget-wide v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v7, v7

    aput v7, v0, v6

    .line 406
    .restart local v0       #list:[I
    const-string v7, "playlist"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 407
    .restart local v1       #playlist:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    int-to-long v7, v1

    invoke-static {v6, v0, v7, v8}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 414
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-ne p2, v7, :cond_0

    .line 415
    move-object v2, p3

    .line 416
    .local v2, resultIntent:Landroid/content/Intent;
    new-instance v3, Lcom/htc/music/NowPlayingViewHelper$1;

    invoke-direct {v3, p0, v2}, Lcom/htc/music/NowPlayingViewHelper$1;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Intent;)V

    .line 432
    .local v3, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 433
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x13 -> :sswitch_3
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6
    .parameter "intent"
    .parameter "icicle"

    .prologue
    .line 165
    iget v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    if-eqz v3, :cond_0

    .line 195
    :goto_0
    return-void

    .line 167
    :cond_0
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 169
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 170
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I

    .line 172
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenHeight:I

    .line 177
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 180
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03003a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 181
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 183
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 186
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v4, 0x7f070082

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 187
    .local v2, queueContainer:Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 188
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-string v4, "common_app_bkg"

    const v5, 0x2080001

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 193
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #queueContainer:Landroid/view/ViewGroup;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onCreate_Local(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 17
    .parameter "id"

    .prologue
    .line 811
    sparse-switch p1, :sswitch_data_0

    .line 1018
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 813
    :sswitch_0
    new-instance v13, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/music/NowPlayingViewHelper$3;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto :goto_0

    .line 826
    :sswitch_1
    new-instance v13, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v14}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f060054

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1040013

    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/music/NowPlayingViewHelper$4;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto :goto_0

    .line 834
    :sswitch_2
    new-instance v13, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v14}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1040013

    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/music/NowPlayingViewHelper$6;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1040009

    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/music/NowPlayingViewHelper$5;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 850
    :sswitch_3
    const/4 v13, 0x2

    new-array v4, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0600cd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0600ce

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    .line 855
    .local v4, items:[Ljava/lang/CharSequence;
    new-instance v13, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    new-instance v14, Lcom/htc/music/NowPlayingViewHelper$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/music/NowPlayingViewHelper$7;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v13, v4, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    .local v10, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v2, v10

    .line 871
    goto/16 :goto_0

    .line 875
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v10           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mShareBundle:Landroid/os/Bundle;

    invoke-static {v13, v14}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto/16 :goto_0

    .line 887
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v13, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 888
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v15, "_data"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 889
    .local v6, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v14, v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v6, v15}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v9

    .local v9, shareNormaldialog:Landroid/app/Dialog;
    move-object v2, v9

    .line 898
    goto/16 :goto_0

    .line 902
    .end local v6           #path:Ljava/lang/String;
    .end local v9           #shareNormaldialog:Landroid/app/Dialog;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v13, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 903
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v15, "_data"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 904
    .restart local v6       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v14, v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v6, v15}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v8

    .local v8, shareDRMDialog:Landroid/app/Dialog;
    move-object v2, v8

    .line 911
    goto/16 :goto_0

    .line 916
    .end local v6           #path:Ljava/lang/String;
    .end local v8           #shareDRMDialog:Landroid/app/Dialog;
    :sswitch_7
    const/16 v13, 0x8

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    .line 917
    const/4 v13, 0x3

    new-array v4, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060093

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060094

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060095

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    .line 929
    .restart local v4       #items:[Ljava/lang/CharSequence;
    :goto_1
    const/4 v7, 0x0

    .line 930
    .local v7, ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-nez v13, :cond_4

    .line 931
    new-instance v13, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    .line 932
    const-string v13, "[NowPlayingViewHelper]"

    const-string v14, "Ringtonehelper is null!! this should never happen!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-eqz v13, :cond_5

    .line 935
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    const/16 v14, 0x13

    invoke-virtual {v13, v4, v14}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    :cond_5
    move-object v2, v7

    .line 939
    goto/16 :goto_0

    .line 923
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v7           #ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_6
    const/4 v13, 0x2

    new-array v4, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060093

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060094

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    .restart local v4       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 942
    .end local v4           #items:[Ljava/lang/CharSequence;
    :sswitch_8
    new-instance v13, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x2040214

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f06000b

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1040013

    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/music/NowPlayingViewHelper$9;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1040009

    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/music/NowPlayingViewHelper$8;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .local v1, clearQueueDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v2, v1

    .line 960
    goto/16 :goto_0

    .line 963
    .end local v1           #clearQueueDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 964
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v13, 0x7f030016

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 965
    .local v12, view:Landroid/view/View;
    const v13, 0x7f070043

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/AutoCompleteTextView;

    .line 966
    .local v11, textview:Landroid/widget/AutoCompleteTextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v14, 0x7f06004c

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 967
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v11, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 970
    new-instance v13, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f060082

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    const v14, 0x2040152

    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$11;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/music/NowPlayingViewHelper$11;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f060055

    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11}, Lcom/htc/music/NowPlayingViewHelper$10;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 985
    .local v2, createDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v13, Lcom/htc/music/NowPlayingViewHelper$EditTextWatcher;

    invoke-direct {v13, v2}, Lcom/htc/music/NowPlayingViewHelper$EditTextWatcher;-><init>(Lcom/htc/widget/HtcAlertDialog;)V

    invoke-virtual {v11, v13}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 990
    .end local v2           #createDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #name:Ljava/lang/String;
    .end local v11           #textview:Landroid/widget/AutoCompleteTextView;
    .end local v12           #view:Landroid/view/View;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 991
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    const v13, 0x7f030016

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 992
    .restart local v12       #view:Landroid/view/View;
    const v13, 0x7f070043

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/AutoCompleteTextView;

    .line 993
    .restart local v11       #textview:Landroid/widget/AutoCompleteTextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v14, 0x7f06004c

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 994
    .restart local v5       #name:Ljava/lang/String;
    invoke-virtual {v11, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 997
    new-instance v13, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f060082

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    const v14, 0x2040152

    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$13;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/music/NowPlayingViewHelper$13;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f060055

    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$12;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11}, Lcom/htc/music/NowPlayingViewHelper$12;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 1012
    .restart local v2       #createDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v13, Lcom/htc/music/NowPlayingViewHelper$EditTextWatcher;

    invoke-direct {v13, v2}, Lcom/htc/music/NowPlayingViewHelper$EditTextWatcher;-><init>(Lcom/htc/widget/HtcAlertDialog;)V

    invoke-virtual {v11, v13}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 811
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 320
    const/16 v0, 0x66

    const v1, 0x7f060009

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 322
    const/16 v0, 0x65

    const v1, 0x7f060049

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 324
    const/16 v0, 0x67

    const v1, 0x7f06000a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 326
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const/16 v0, 0x68

    const v1, 0x2040218

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 330
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 292
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy_Local()V

    goto :goto_0
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 13
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1099
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v8, v9

    .line 1211
    :goto_1
    return v8

    .line 1102
    :sswitch_0
    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 1104
    .local v7, position:I
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1106
    .local v6, path:Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v9, "content://drm/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1107
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    iget-wide v11, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/htc/music/NowPlayingViewHelper;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 1113
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->resetNowIndicator()V

    .line 1115
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v9, :cond_2

    .line 1116
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v9}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1109
    :cond_1
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget v11, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-static {v9, v10, v11}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    goto :goto_2

    .line 1118
    :cond_2
    const-string v9, "[NowPlayingViewHelper]"

    const-string v10, "onHtcContextItemSelected_Local(), listAdapter is null."

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1124
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #position:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1126
    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1127
    const/16 v9, 0xb

    invoke-virtual {p0, v9}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_1

    .line 1130
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1132
    .local v4, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v11, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1133
    const-string v10, "pickermode"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1134
    new-array v0, v8, [I

    iget-wide v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v10, v10

    aput v10, v0, v9

    .line 1135
    .local v0, addToPlaylistData:[I
    const-string v9, "AddToPlaylistData"

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1136
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v9, v4, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1143
    .end local v0           #addToPlaylistData:[I
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1144
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1145
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v10, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1146
    const-string v9, "track"

    iget-wide v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v9, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1152
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1153
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1158
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1159
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->setRingtone()V

    goto/16 :goto_1

    .line 1164
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1166
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1168
    .restart local v6       #path:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-wide v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v10, v10

    invoke-static {v9, v6, v10}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1169
    .local v1, canShare:I
    if-eq v1, v8, :cond_4

    .line 1170
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1173
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->chooseShareType()V

    goto/16 :goto_1

    .line 1180
    .end local v1           #canShare:I
    .end local v6           #path:Ljava/lang/String;
    :sswitch_6
    new-array v7, v8, [I

    .line 1181
    .local v7, position:[I
    iget v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    aput v8, v7, v9

    .line 1184
    :try_start_0
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8, v7}, Lcom/htc/music/IMediaPlaybackService;->removeQueueTracks([I)I

    .line 1186
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    if-eqz v8, :cond_5

    .line 1187
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.music.queuechanged"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1188
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "NOT_NOTIFY"

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1189
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v8, v10, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1190
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    .line 1193
    .end local v4           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v8, :cond_6

    .line 1194
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1195
    .local v2, delete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcListView;->setDelPositionsList(Ljava/util/ArrayList;)V

    .line 1199
    .end local v2           #delete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v5

    .line 1201
    .local v5, nowPlayingArray:[I
    if-eqz v5, :cond_7

    array-length v8, v5

    if-nez v8, :cond_0

    .line 1202
    :cond_7
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 1204
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->launchMusicBrowser()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1206
    .end local v5           #nowPlayingArray:[I
    :catch_0
    move-exception v3

    .line 1207
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1099
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x5 -> :sswitch_0
        0xa -> :sswitch_6
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_5
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 198
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 346
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 384
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 348
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 350
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_1

    .line 354
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 357
    const-string v2, "pickermode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 359
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v3, 0x65

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 363
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v2, "isnowplayinglist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v3, 0x66

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 374
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 379
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 240
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause_Local()V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mResume:Z

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)Z
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v0, 0x1

    .line 1046
    sparse-switch p1, :sswitch_data_0

    .line 1087
    const/4 v0, 0x0

    .end local p2
    :goto_0
    return v0

    .line 1048
    .restart local p2
    :sswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1051
    .restart local p2
    :sswitch_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1055
    .restart local p2
    :sswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1046
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 334
    const/16 v1, 0x68

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 335
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 339
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 202
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    if-eq v0, v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 223
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onResume_Local()V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mResume:Z

    .line 226
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDecodeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDecodeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDecodeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->updateAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/DlArtAsyncImageDecoder;)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRevertList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRevertList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRevertList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->revertAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/MemoryCacheBitmapByTime;)V

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1244
    move v1, p2

    .line 1245
    .local v1, start:I
    add-int v0, p2, p3

    .line 1246
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1247
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->setVisibleRange(II)V

    .line 1249
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1217
    packed-switch p2, :pswitch_data_0

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1219
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 1220
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1226
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 1227
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(Z)V

    .line 1228
    :cond_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 1233
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 1234
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1235
    :cond_3
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$000(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 1217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x1

    .line 611
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNeedBindService:Z

    if-nez v2, :cond_0

    .line 612
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 613
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaybackServiceConnected:Z

    .line 634
    :goto_0
    return-void

    .line 616
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaybackServiceConnected:Z

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 624
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 625
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 626
    .local v1, shufflePos:I
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2, v1}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAudioId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 630
    .end local v1           #shufflePos:I
    :catch_0
    move-exception v0

    .line 631
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "[NowPlayingViewHelper]"

    const-string v3, "Remote exception in getAudioId"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 619
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[NowPlayingViewHelper]"

    const-string v3, "NowPlayingView onServiceConnected error:"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v2, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 628
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAudioId:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 637
    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "nowplayingViewHelper call finish at service disconnected!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 641
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 207
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 218
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNeedBindService:Z

    .line 216
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 217
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStart_Local()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 245
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 248
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->closeDialog()V

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_1
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaybackServiceConnected:Z

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    iput-boolean v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaybackServiceConnected:Z

    .line 260
    :cond_2
    iput-boolean v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNeedBindService:Z

    .line 262
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #setter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mOuter:I
    invoke-static {v1, v3}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$102(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I

    .line 264
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #setter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mPressed:I
    invoke-static {v1, v3}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$202(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I

    .line 265
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #setter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mRest:I
    invoke-static {v1, v3}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$302(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method protected resetNowIndicator()V
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v0, :cond_0

    .line 1413
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 1526
    :goto_0
    return-void

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method public showDatabaseError()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1722
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1729
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1730
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1736
    :goto_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v4, :cond_0

    .line 1737
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v5, 0x7f07003e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 1740
    :cond_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1741
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1743
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v5, 0x7f070086

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1744
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v5, 0x7f07003f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1745
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1750
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1751
    .local v1, status:Ljava/lang/String;
    const v0, 0x20400a0

    .line 1754
    .local v0, message:I
    const-string v4, "shared"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1755
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1756
    const v0, 0x7f060039

    .line 1771
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v5, 0x7f07007c

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1772
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_4

    .line 1773
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1775
    :cond_4
    return-void

    .line 1732
    .end local v0           #message:I
    .end local v1           #status:Ljava/lang/String;
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_5
    iput-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    goto :goto_0

    .line 1747
    :cond_6
    iput-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    goto :goto_1

    .line 1758
    .restart local v0       #message:I
    .restart local v1       #status:Ljava/lang/String;
    :cond_7
    const v0, 0x7f060038

    goto :goto_2

    .line 1762
    :cond_8
    const-string v4, "removed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1763
    const v0, 0x20400a0

    goto :goto_2

    .line 1764
    :cond_9
    const-string v4, "unmounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1765
    const v0, 0x20401fa

    goto :goto_2
.end method

.method protected showDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 788
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(ILandroid/os/Bundle;)V

    .line 789
    return-void
.end method

.method protected showDialog(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->closeDialog()V

    .line 796
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    .line 797
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/NowPlayingViewHelper;->onPrepareDialog(ILandroid/app/Dialog;)Z

    .line 800
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public showEmptyView(I)V
    .locals 3
    .parameter "rid"

    .prologue
    .line 1682
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1683
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1688
    :goto_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v1, :cond_0

    .line 1689
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f07003c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 1691
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1692
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1695
    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f070080

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1696
    .local v0, text:Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 1697
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1698
    :cond_2
    return-void

    .line 1685
    .end local v0           #text:Landroid/widget/TextView;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    goto :goto_0
.end method

.method protected showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V
    .locals 1
    .parameter "title"
    .parameter "items"
    .parameter "ids"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    .line 805
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    .line 806
    iput-object p3, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    .line 807
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 808
    return-void
.end method

.method public showProperty(I)V
    .locals 6
    .parameter "listItemPos"

    .prologue
    .line 1418
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1419
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1421
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1422
    .local v2, trackName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, artistName:Ljava/lang/String;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    .line 1426
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 1428
    const-string v3, "duration"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "length"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1430
    const-string v3, "trackname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    const-string v3, "artistname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "artist"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    const-string v3, "albumname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    const-string v3, "genre"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "genre"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    const-string v3, "composer"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "composer"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1435
    const-string v3, "location"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1451
    :goto_0
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1452
    return-void

    .line 1437
    :cond_0
    const-string v3, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1439
    const-string v3, "trackname"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1440
    const-string v3, "artistname"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1441
    const-string v3, "albumname"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1442
    const-string v3, "genre"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1443
    const-string v3, "composer"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1444
    const-string v3, "location"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1445
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    goto :goto_0
.end method

.method protected showSpinner(Z)V
    .locals 0
    .parameter "setSpinnerVisible"

    .prologue
    .line 1515
    return-void
.end method
