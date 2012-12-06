.class public Lcom/htc/music/browserlayer/AlbumDetailActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "AlbumDetailActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_AUDIO_ID:Ljava/lang/String; = "audioid"

.field private static final BUNDLE_KEY_POSITION:Ljava/lang/String; = "position"

.field private static final BUNDLE_KEY_TRACK_NAME:Ljava/lang/String; = "trackname"

.field private static final DIALOG_ALBUM_CREATE_PLAYLIST:I = 0xb

.field private static final DIALOG_CREATE_PLAYLIST:I = 0xa

.field private static final DIALOG_DRM_CONFIRM:I = 0x2

.field private static final DIALOG_DRM_ERROR:I = 0x1

.field private static final DIALOG_FOR_DELETE:I = 0x0

.field private static final DIALOG_NO_NETWORK:I = 0x9

.field private static final DIALOG_SET_AS_RINGTONE:I = 0x3

.field private static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0x4

.field private static final DIALOG_SHARETEXT:I = 0x5

.field private static final DIALOG_SHARETYPE:I = 0x6

.field private static final DIALOG_SHARE_DRM_FILE:I = 0x8

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "[AlbumDetailActivity]"

.field private static final TYPE_COUNT:I = 0x4

.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_SEPARATOR:I = 0x1

.field private static final TYPE_TEXT:I = 0x3

.field private static final TYPE_TRACK_LIST_ITEM:I = 0x2

.field private static final mAlbumCols:[Ljava/lang/String;

.field private static final mCursorCols:[Ljava/lang/String;

.field private static final mGenreCols:[Ljava/lang/String;


# instance fields
.field private final PLAY_ALL:I

.field private final SETTING:I

.field private final UPLOAD:I

.field private mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

.field private mAlbumArt:Landroid/graphics/Bitmap;

.field private mAlbumArtChange:Z

.field private mAlbumArtPath:Ljava/lang/String;

.field private mAlbumGenre:Ljava/lang/String;

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumTitle:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mComposer:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDbTable:I

.field private mDefaultAlbumArt:Landroid/graphics/Bitmap;

.field private mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field private mDlArtReceiverPath:Ljava/lang/String;

.field private mEmptyViewMsg:I

.field mFirstPlaylistCreateType:I

.field private mGenre:Ljava/lang/String;

.field private mIsPlayAllTriggered:Z

.field private mLG:Landroid/graphics/Shader;

.field private mMode:Landroid/graphics/Xfermode;

.field private mMsg:Ljava/lang/CharSequence;

.field private volatile mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mNumberOfTracks:I

.field private mOrientation:I

.field private mReleaseYear:Ljava/lang/String;

.field private mResume:Z

.field private mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectedData:Landroid/os/Bundle;

.field private mServiceBound:Z

.field private mShareBundle:Landroid/os/Bundle;

.field private mShowError:Z

.field private mStopping:Z

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;

.field private volatile mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private volatile nonUIThread:Landroid/os/HandlerThread;

.field private queryingCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "title_key"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

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

    sput-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCursorCols:[Ljava/lang/String;

    .line 146
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenreCols:[Ljava/lang/String;

    .line 148
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "numsongs"

    aput-object v1, v0, v6

    const-string v1, "album_art"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "minyear"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 98
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->PLAY_ALL:I

    .line 100
    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->UPLOAD:I

    .line 102
    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->SETTING:I

    .line 152
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 154
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    .line 156
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    .line 158
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    .line 160
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    .line 162
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 164
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    .line 166
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMode:Landroid/graphics/Xfermode;

    .line 168
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mLG:Landroid/graphics/Shader;

    .line 170
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    .line 172
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 174
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    .line 180
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 182
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    .line 184
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReleaseYear:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    .line 188
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 190
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    .line 192
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 194
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    .line 196
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    .line 200
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareBundle:Landroid/os/Bundle;

    .line 203
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 205
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumGenre:Ljava/lang/String;

    .line 209
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 211
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 213
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 217
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I

    .line 218
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenHeight:I

    .line 220
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDbTable:I

    .line 222
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mServiceBound:Z

    .line 224
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mResume:Z

    .line 226
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtChange:Z

    .line 227
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDlArtReceiverPath:Ljava/lang/String;

    .line 229
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mIsPlayAllTriggered:Z

    .line 1995
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$8;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 2002
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 2030
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 2206
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$11;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/util/RingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->increaseQueryingCount()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDbTable:I

    return v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownAlbum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownArtist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReleaseYear:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReleaseYear:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showAlbumOptions()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumGenre:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    return v0
.end method

.method static synthetic access$3202(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    return p1
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showTrackOptions()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->decreaseQueryingCount()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearQueryingCount()V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenreCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->hideHtcContextMenu()V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mResume:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtChange:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDlArtReceiverPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    return v0
.end method

.method private checkDrmFile(Landroid/net/Uri;I)V
    .locals 10
    .parameter "uri"
    .parameter "position"

    .prologue
    const/4 v8, 0x1

    .line 959
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 961
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 962
    .local v5, status:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 963
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    if-nez v5, :cond_4

    .line 965
    invoke-static {v4, p1, v8}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 967
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_2

    .line 968
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v7, p2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->triggerPlayAllAction()V

    goto :goto_0

    .line 973
    :cond_2
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    .line 974
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    .line 975
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    goto :goto_0

    .line 977
    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v7, p2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 979
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->triggerPlayAllAction()V

    goto :goto_0

    .line 988
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 989
    .local v3, intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 990
    const-string v7, "drmtargettomain"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 992
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 994
    .local v2, id_idx:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 995
    .local v6, trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    .end local v2           #id_idx:I
    :goto_1
    const/4 v7, -0x2

    invoke-virtual {p0, v3, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 996
    .end local v6           #trackId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 997
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 998
    .restart local v6       #trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 2066
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 2067
    return-void
.end method

.method private clearData()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 446
    iput v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 449
    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 452
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 456
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 460
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 462
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    .line 463
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    .line 464
    iput v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 465
    iput v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    .line 466
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    .line 467
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    if-eq v1, v2, :cond_3

    .line 468
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 470
    :cond_2
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 472
    :cond_3
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 473
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    .line 474
    iput v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    .line 475
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 476
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 477
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 478
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->clearData()V

    .line 479
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "[AlbumDetailActivity]"

    const-string v2, "Exception when unregister content observer."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 460
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private clearQueryingCount()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2192
    iput v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 2193
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showSpinnerUI(Z)V

    .line 2194
    return-void
.end method

.method private decreaseQueryingCount()V
    .locals 1

    .prologue
    .line 2187
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 2189
    return-void
.end method

.method private doSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "trackName"
    .parameter "artistName"

    .prologue
    .line 2060
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2062
    .local v0, rootContext:Landroid/app/Activity;
    invoke-static {v0, p1, p2}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    return-void
.end method

.method private increaseQueryingCount()V
    .locals 1

    .prologue
    .line 2182
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 2184
    return-void
.end method

.method private isUnknownAlbum(Ljava/lang/String;)Z
    .locals 1
    .parameter "album"

    .prologue
    .line 2199
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnknownArtist(Ljava/lang/String;)Z
    .locals 1
    .parameter "artist"

    .prologue
    .line 2203
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 7

    .prologue
    .line 2070
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v6, "position"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2071
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2072
    .local v3, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v5, "audioid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2074
    .local v0, audioId:I
    invoke-static {p0, v3, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 2076
    .local v1, canShare:I
    packed-switch v1, :pswitch_data_0

    .line 2088
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2089
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2091
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 2078
    :pswitch_0
    const-string v4, "[AlbumDetailActivity]"

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

    .line 2079
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showNewDialog(I)V

    goto :goto_0

    .line 2083
    :pswitch_1
    const-string v4, "[AlbumDetailActivity]"

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

    .line 2084
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showNewDialog(I)V

    goto :goto_0

    .line 2076
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
    .line 2101
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareBundle:Landroid/os/Bundle;

    .line 2105
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showNewDialog(I)V

    .line 2106
    return-void
.end method

.method private showAlbumOptions()V
    .locals 9

    .prologue
    const v8, 0x204020f

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 2156
    const/4 v2, 0x0

    .line 2157
    .local v2, items:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 2158
    .local v1, ids:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 2159
    .local v0, dlnaMode:I
    if-nez v0, :cond_0

    .line 2161
    new-array v2, v7, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f060049

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f06004a

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2165
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v7, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_0

    .line 2173
    .restart local v1       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->hideHtcContextMenu()V

    .line 2174
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 2175
    return-void

    .line 2168
    :cond_0
    new-array v2, v4, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f060049

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 2171
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v4, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_1

    .restart local v1       #ids:[I
    goto :goto_0

    .line 2165
    :array_0
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    .line 2171
    :array_1
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showTrackOptions()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x7

    const/4 v5, 0x6

    .line 2111
    const/4 v2, 0x0

    .line 2112
    .local v2, items:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 2113
    .local v1, ids:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 2114
    .local v0, dlnaMode:I
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2115
    if-nez v0, :cond_0

    .line 2117
    const/16 v3, 0x8

    new-array v2, v3, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f060049

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f06004a

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f060008

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x204020f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f060046

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x2040214

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x204014d

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x2040216

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 2122
    .restart local v2       #items:[Ljava/lang/CharSequence;
    const/16 v3, 0x8

    new-array v1, v3, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_0

    .line 2151
    .restart local v1       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->hideHtcContextMenu()V

    .line 2152
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v4, "trackname"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 2153
    return-void

    .line 2126
    :cond_0
    new-array v2, v6, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f060049

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f060008

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x204020f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x7f060046

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x2040214

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x204014d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x2040216

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 2130
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v6, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_1

    .restart local v1       #ids:[I
    goto :goto_0

    .line 2134
    :cond_1
    if-nez v0, :cond_2

    .line 2136
    new-array v2, v6, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f060049

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f06004a

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x204020f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x7f060046

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x2040214

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x204014d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x2040216

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 2140
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v6, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_2

    .restart local v1       #ids:[I
    goto/16 :goto_0

    .line 2144
    :cond_2
    new-array v2, v5, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f060049

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x204020f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f060046

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x2040214

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x204014d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x2040216

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2148
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v5, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_3

    .restart local v1       #ids:[I
    goto/16 :goto_0

    .line 2122
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2130
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2140
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2148
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getQueryingCount()I
    .locals 1

    .prologue
    .line 2178
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    return v0
.end method

.method public isBypass()Z
    .locals 1

    .prologue
    .line 2221
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 839
    sparse-switch p1, :sswitch_data_0

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 841
    :sswitch_0
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 845
    const/4 v10, 0x1

    new-array v6, v10, [I

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v12, "audioid"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v6, v10

    .line 846
    .local v6, list:[I
    const-string v10, "playlist"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    invoke-static {p0, v6, v10, v11}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 851
    .end local v6           #list:[I
    :sswitch_1
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 852
    const-string v10, "[AlbumDetailActivity]"

    const-string v11, "receive set contact ringtone activity result"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    const-string v11, "SELECTED_ID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->handleContactRingtoneResult(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 859
    :sswitch_2
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 860
    const-string v10, "selectedlist"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 861
    .local v8, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 864
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 865
    .local v5, iCount:I
    new-array v2, v5, [Ljava/lang/String;

    .line 866
    .local v2, dataPathArray:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 867
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 868
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 869
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 870
    const-string v10, "_data"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v4

    .line 871
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 866
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 875
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_2
    new-instance v9, Ljava/lang/String;

    const-string v10, "com.htc.vmm.service.VMMEngineService"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 877
    .local v9, szAction:Ljava/lang/String;
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "upload"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 878
    :catch_0
    move-exception v3

    .line 879
    .local v3, ex:Ljava/lang/SecurityException;
    const-string v10, "[AlbumDetailActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "We do not have permission to start the service :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 884
    .end local v2           #dataPathArray:[Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/SecurityException;
    .end local v4           #i:I
    .end local v5           #iCount:I
    .end local v8           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #szAction:Ljava/lang/String;
    :sswitch_3
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 885
    if-eqz p3, :cond_3

    .line 886
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 888
    :cond_3
    invoke-super/range {p0 .. p3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 893
    :sswitch_4
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 894
    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    iget-object v13, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-static {p0, v10, v11, v12, v13}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    .line 896
    .restart local v6       #list:[I
    const-string v10, "playlist"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 897
    .local v7, playlist:I
    int-to-long v10, v7

    invoke-static {p0, v6, v10, v11}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 839
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x17 -> :sswitch_4
        0x1c -> :sswitch_2
        0xc351 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 367
    iget v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 388
    :goto_0
    return-void

    .line 370
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 372
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    .line 374
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 375
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 376
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 377
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I

    .line 378
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenHeight:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 233
    const-string v0, "[AlbumDetailActivity]"

    const-string v2, "== onCreate() =="

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 238
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setVolumeControlStream(I)V

    .line 240
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 241
    .local v13, res:Landroid/content/res/Resources;
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 242
    .local v11, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 243
    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I

    .line 244
    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenHeight:I

    .line 248
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 249
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setContentView(I)V

    .line 258
    :cond_0
    :goto_0
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 259
    .local v10, listContentLayout:Landroid/view/ViewGroup;
    if-eqz v10, :cond_1

    .line 260
    const-string v0, "common_app_bkg"

    const v2, 0x2080001

    invoke-static {p0, v0, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 264
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 266
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$1;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.music.lockscreen_start"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "albumid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "artistid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 279
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "genreid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 280
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "composer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dbTable"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDbTable:I

    .line 283
    const-string v0, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate(Bundle)] mAlbumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mArtistId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mGenre="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mComposer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 287
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 290
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 292
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 294
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    .line 296
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    if-nez v0, :cond_4

    .line 297
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    .line 299
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Lcom/htc/music/browserlayer/AlbumDetailActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    .line 303
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "[AlbumDetailActivity]"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    .line 304
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 305
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    .line 307
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 309
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->backPressed(I)V

    .line 342
    :goto_1
    return-void

    .line 251
    .end local v10           #listContentLayout:Landroid/view/ViewGroup;
    :cond_5
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setContentView(I)V

    .line 252
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 313
    .restart local v10       #listContentLayout:Landroid/view/ViewGroup;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->enableSearch()V

    .line 315
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 316
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 317
    const v0, 0x7f020046

    invoke-static {v13, v0, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 319
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMode:Landroid/graphics/Xfermode;

    .line 320
    const-string v0, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "options.outHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    iget v3, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v3

    const/high16 v5, -0x100

    const/high16 v6, 0x5f00

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mLG:Landroid/graphics/Shader;

    .line 324
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v8, dlArtFilter:Landroid/content/IntentFilter;
    const-string v0, "action_complete_one_download"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v0, "action_revert_current_album"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 340
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryAlbumInfo(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryTrackCursor()V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 625
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 626
    move-object v1, p0

    .line 627
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 761
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v8

    :goto_0
    return-object v8

    .line 630
    :pswitch_0
    const v9, 0x7f06000e

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, f:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    if-nez v9, :cond_2

    .line 633
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 636
    :cond_2
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v12, "trackname"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, desc:Ljava/lang/String;
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x2040214

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/AlbumDetailActivity$3;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$3;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040009

    new-instance v11, Lcom/htc/music/browserlayer/AlbumDetailActivity$2;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$2;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto :goto_0

    .line 649
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #f:Ljava/lang/String;
    :pswitch_1
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

    new-instance v11, Lcom/htc/music/browserlayer/AlbumDetailActivity$4;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$4;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto :goto_0

    .line 658
    :pswitch_2
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v9, :cond_4

    .line 659
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 662
    :cond_4
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/AlbumDetailActivity$6;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$6;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040009

    new-instance v11, Lcom/htc/music/browserlayer/AlbumDetailActivity$5;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$5;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 678
    :pswitch_3
    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f060093

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f060094

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const v10, 0x7f060095

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 680
    .local v4, items:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    if-eqz v9, :cond_5

    .line 681
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    const/16 v10, 0x13

    invoke-virtual {v9, v4, v10}, Lcom/htc/music/util/RingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 683
    :cond_5
    const-string v9, "[AlbumDetailActivity]"

    const-string v10, "mRingToneHelper is null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .end local v4           #items:[Ljava/lang/CharSequence;
    :pswitch_4
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f060093

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f060094

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 690
    .restart local v4       #items:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    if-eqz v9, :cond_6

    .line 691
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    const/16 v10, 0x13

    invoke-virtual {v9, v4, v10}, Lcom/htc/music/util/RingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 693
    :cond_6
    const-string v9, "[AlbumDetailActivity]"

    const-string v10, "mRingToneHelper is null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .end local v4           #items:[Ljava/lang/CharSequence;
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareBundle:Landroid/os/Bundle;

    invoke-static {v9, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v8

    goto/16 :goto_0

    .line 710
    :pswitch_6
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f0600cd

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f0600ce

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 713
    .restart local v4       #items:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    if-nez v9, :cond_7

    .line 714
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 717
    :cond_7
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v11, "trackname"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/htc/music/browserlayer/AlbumDetailActivity$7;

    invoke-direct {v10, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$7;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 736
    .local v8, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 740
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v8           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_7
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v9, :cond_9

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 741
    :cond_9
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v10, "audioid"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 742
    .local v0, audioId:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v0, v5, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v7

    .local v7, shareNormaldialog:Landroid/app/Dialog;
    move-object v8, v7

    .line 745
    goto/16 :goto_0

    .line 749
    .end local v0           #audioId:I
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #shareNormaldialog:Landroid/app/Dialog;
    :pswitch_8
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v9, :cond_b

    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 750
    :cond_b
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v10, "audioid"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 751
    .restart local v0       #audioId:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 752
    .restart local v5       #path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v0, v5, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v6

    .local v6, shareDRMDialog:Landroid/app/Dialog;
    move-object v8, v6

    .line 754
    goto/16 :goto_0

    .line 757
    .end local v0           #audioId:I
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #shareDRMDialog:Landroid/app/Dialog;
    :pswitch_9
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v8

    goto/16 :goto_0

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 5
    .parameter "playlistName"

    .prologue
    .line 769
    iget v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mFirstPlaylistCreateType:I

    packed-switch v1, :pswitch_data_0

    .line 780
    :goto_0
    return-void

    .line 771
    :pswitch_0
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 772
    .local v0, id:I
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v4, "audioid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 775
    .end local v0           #id:I
    :pswitch_1
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 776
    .restart local v0       #id:I
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 556
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 557
    const/16 v0, 0x9

    const v1, 0x7f060006

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 558
    const/16 v0, 0x1b

    const v1, 0x7f060007

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 559
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    const/16 v0, 0x1c

    const v1, 0x7f060008

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 562
    :cond_0
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    const/16 v0, 0x1d

    const v1, 0x2040218

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 565
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 521
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    .line 523
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearData()V

    .line 524
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 526
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    .line 528
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 536
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 541
    :goto_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 543
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    :try_start_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 551
    :cond_1
    :goto_2
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 552
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AlbumDetailActivity]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 537
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 531
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected onHtcContextItemSelected(I)Z
    .locals 17
    .parameter "id"

    .prologue
    .line 1021
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHtcContextItemSelected, id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    packed-switch p1, :pswitch_data_0

    .line 1159
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v13

    :goto_1
    return v13

    .line 1028
    :pswitch_1
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1029
    const/16 v13, 0xa

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mFirstPlaylistCreateType:I

    .line 1030
    const/16 v13, 0x25a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1040
    :goto_2
    const/4 v13, 0x1

    goto :goto_1

    .line 1033
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1034
    .local v9, intent:Landroid/content/Intent;
    const-class v13, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1035
    const-string v13, "pickermode"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1036
    const/4 v13, 0x1

    new-array v1, v13, [I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v15, "audioid"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v1, v13

    .line 1037
    .local v1, addToPlaylistData:[I
    const-string v13, "AddToPlaylistData"

    invoke-virtual {v9, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1038
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1045
    .end local v1           #addToPlaylistData:[I
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_2
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ADD_TO_QUEUE, mSelectedId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v16, "audioid"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :try_start_0
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v16, "audioid"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v13, v14, v15}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_3
    const/4 v13, 0x1

    goto :goto_1

    .line 1048
    :catch_0
    move-exception v6

    .line 1049
    .local v6, e:Landroid/os/RemoteException;
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1055
    .end local v6           #e:Landroid/os/RemoteException;
    :pswitch_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1056
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1060
    :pswitch_4
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1061
    .restart local v9       #intent:Landroid/content/Intent;
    const-class v13, Lcom/htc/music/PropertyListActivity;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1062
    const-string v13, "track"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v15, "audioid"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    const/4 v13, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1065
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1069
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v14, "position"

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1070
    .local v11, position:I
    const/4 v13, -0x1

    if-ne v11, v13, :cond_1

    .line 1071
    const-string v13, "[AlbumDetailActivity]"

    const-string v14, "USE_AS_RINGTONE : the click position is invalid"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1074
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1075
    const-string v13, "[AlbumDetailActivity]"

    const-string v14, "USE_AS_RINGTONE : moveToPosition fail"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1078
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v15, "_data"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1080
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    .line 1081
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1083
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 1085
    .local v3, currentAudioType:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    if-eqz v13, :cond_5

    .line 1086
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v15, "audioid"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/music/util/RingtoneHelper;->setAudioId(I)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    invoke-virtual {v13, v10}, Lcom/htc/music/util/RingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    invoke-virtual {v13, v3}, Lcom/htc/music/util/RingtoneHelper;->setAudioType(I)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/music/util/RingtoneHelper;->useAsRingtone(Z)V

    .line 1092
    :cond_5
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1096
    .end local v3           #currentAudioType:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #position:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v14, "audioid"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1097
    .local v8, index:Ljava/lang/Integer;
    const/4 v13, 0x1

    new-array v5, v13, [Ljava/lang/String;

    .line 1098
    .local v5, dataPathArray:[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v4

    .line 1099
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_6

    .line 1100
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1101
    const/4 v13, 0x0

    const-string v14, "_data"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v13

    .line 1102
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1103
    const/4 v4, 0x0

    .line 1105
    :cond_6
    new-instance v12, Ljava/lang/String;

    const-string v13, "com.htc.vmm.service.VMMEngineService"

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1107
    .local v12, szAction:Ljava/lang/String;
    :try_start_1
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "upload"

    invoke-virtual {v13, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1111
    :goto_4
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1108
    :catch_1
    move-exception v7

    .line 1109
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "We do not have permission to start the service :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1115
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v5           #dataPathArray:[Ljava/lang/String;
    .end local v7           #ex:Ljava/lang/SecurityException;
    .end local v8           #index:Ljava/lang/Integer;
    .end local v12           #szAction:Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    .line 1116
    .local v2, artistName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownArtist(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1117
    const-string v2, "<unknown>"

    .line 1119
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v14, "trackname"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1124
    .end local v2           #artistName:Ljava/lang/String;
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->chooseShareType()V

    .line 1125
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1128
    :pswitch_9
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1129
    const/16 v13, 0xb

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mFirstPlaylistCreateType:I

    .line 1130
    const/16 v13, 0x25a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1140
    :goto_5
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1133
    :cond_8
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1134
    .restart local v9       #intent:Landroid/content/Intent;
    const-class v13, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1135
    const-string v13, "pickermode"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    .line 1137
    .restart local v1       #addToPlaylistData:[I
    const-string v13, "AddToPlaylistData"

    invoke-virtual {v9, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1138
    const/16 v13, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 1144
    .end local v1           #addToPlaylistData:[I
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_a
    :try_start_2
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v13, v14, v15}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1150
    :goto_6
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1145
    :catch_2
    move-exception v6

    .line 1146
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ADD_TO_QUEUE, NumberFormatException e: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1147
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v6

    .line 1148
    .local v6, e:Landroid/os/RemoteException;
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1154
    .end local v6           #e:Landroid/os/RemoteException;
    :pswitch_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1022
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 904
    const-string v6, "[AlbumDetailActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onListItemClick, position="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->access$800(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;)I

    move-result v6

    if-ne p3, v6, :cond_3

    .line 907
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->isNoNetworkConnection(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 909
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    .line 914
    .local v0, artistName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownArtist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 915
    const-string v0, "<unknown>"

    .line 918
    :cond_2
    const-string v6, "[AlbumDetailActivity]"

    const-string v7, "Trying to launching online artist detail view..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.htc.music.store.DETAIL_VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "com.htc.media/artist"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    const/high16 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 922
    const-string v6, "artistname"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const-string v6, "InnerActivityType"

    const/16 v7, 0x8

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 925
    const v6, 0xc351

    invoke-static {p0, v4, v6}, Lcom/htc/music/util/OnlineMusicUtils;->showSplashScreen(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 928
    const/4 v6, -0x2

    invoke-virtual {p0, v4, v6}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 933
    .end local v0           #artistName:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    add-int/lit8 v1, p3, -0x1

    .line 934
    .local v1, i:I
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_4

    if-gez v1, :cond_5

    .line 935
    :cond_4
    const-string v6, "[AlbumDetailActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onListItemClick, mTrackCursor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", i: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 939
    :cond_5
    const v6, 0x7f070046

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 940
    .local v2, ib:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    iput-object v6, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 943
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v7, "position"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 944
    .local v3, index:I
    const-string v6, "[AlbumDetailActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Play album from index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 946
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_data"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 948
    .local v5, path:Ljava/lang/String;
    if-eqz v5, :cond_6

    const-string v6, "content://drm/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 949
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->checkDrmFile(Landroid/net/Uri;I)V

    goto/16 :goto_0

    .line 951
    :cond_6
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v6, v3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->triggerPlayAllAction()V

    goto/16 :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1005
    const-string v0, "[AlbumDetailActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemLongClick, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 409
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setIntent(Landroid/content/Intent;)V

    .line 411
    const-string v1, "albumid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, albumId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearData()V

    .line 417
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->notifyDataSetChanged()V

    .line 423
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 425
    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 426
    const-string v1, "artistid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 427
    const-string v1, "genreid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 428
    const-string v1, "composer"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 430
    const-string v1, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate(Bundle)] mAlbumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mArtistId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mGenre="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mComposer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->backPressed(I)V

    .line 443
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 441
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryAlbumInfo(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryTrackCursor()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 588
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v2

    .line 589
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v2, v1

    .line 618
    goto :goto_0

    .line 592
    :sswitch_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v3, :cond_2

    .line 593
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "menu play_all with empty mTrackCursor!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 594
    goto :goto_0

    .line 597
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    move v1, v2

    :cond_3
    invoke-static {p0, v3, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Z)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->triggerPlayAllAction()V

    goto :goto_0

    .line 604
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 605
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "albumid"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v1, "pickermode"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 608
    const/16 v1, 0x1c

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 613
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .restart local v0       #intent:Landroid/content/Intent;
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 589
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_1
        0x1d -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mResume:Z

    .line 361
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 784
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 785
    sparse-switch p1, :sswitch_data_0

    .line 835
    .end local p2
    :goto_0
    return-void

    .line 788
    .restart local p2
    :sswitch_0
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, f:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v5, "trackname"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, desc:Ljava/lang/String;
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 793
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #f:Ljava/lang/String;
    .restart local p2
    :sswitch_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 805
    .restart local p2
    :sswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v3, "trackname"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 785
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 570
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 571
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 572
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 573
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 575
    :cond_0
    const/16 v1, 0x1b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_1

    .line 577
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 579
    :cond_1
    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_3

    .line 581
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    if-nez v1, :cond_2

    move v3, v2

    :cond_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 583
    :cond_3
    return v2

    :cond_4
    move v1, v3

    .line 573
    goto :goto_0

    :cond_5
    move v1, v3

    .line 577
    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 346
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 348
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setMainTitle(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setSecondaryTitle(Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mResume:Z

    .line 351
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtChange:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDlArtReceiverPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->decodeAlbumArt(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtChange:Z

    .line 356
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 392
    const-string v0, "[AlbumDetailActivity]"

    const-string v1, "onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "[AlbumDetailActivity]"

    const-string v1, "[onServiceConnected] Stopping! Disconnect service right away."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mServiceBound:Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 403
    const-string v0, "[AlbumDetailActivity]"

    const-string v1, "onServiceDisconnected, Service is disconnected abnormally."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 483
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 488
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 490
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.music.metachanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 495
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 499
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 501
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mIsPlayAllTriggered:Z

    if-nez v1, :cond_0

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mIsPlayAllTriggered:Z

    .line 511
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mServiceBound:Z

    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 513
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mServiceBound:Z

    .line 516
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 517
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AlbumDetailActivity]"

    const-string v2, "[onStop] unregisterReceiver(mNowPlayingListener)."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected triggerPlayAllAction()V
    .locals 3

    .prologue
    .line 2226
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2227
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mIsPlayAllTriggered:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2231
    :goto_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->triggerPlayAllAction()V

    .line 2232
    return-void

    .line 2228
    :catch_0
    move-exception v0

    .line 2229
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AlbumDetailActivity]"

    const-string v2, "[preparePlayAllAction] unregisterReceiver(mNowPlayingListener)."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
