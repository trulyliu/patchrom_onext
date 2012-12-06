.class public Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.super Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;
.source "CarLocalMusicSearchActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$PlayAllQueryHandler;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$TrackQueryHandler;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$AlbumQueryHandler;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$OnlineSearchItem;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ScanListener;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final EFFECTIVE_GESTURE_RATIO:D = 0.2

.field public static final INTENT_MSG_DEFAULT_SEARCH_KEY:Ljava/lang/String; = "default_search_key"

.field private static final TAG:Ljava/lang/String; = "[CarLocalMusicSearchActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final TYPE_ALBUM:I = 0x4

.field private static final TYPE_ARTIST:I = 0x3

.field private static final TYPE_NO_RESULT:I = 0x6

.field private static final TYPE_SEPARATOR:I = 0x2

.field private static final TYPE_TRACK:I = 0x5

.field private static final TYPE_UNKNOWN:I


# instance fields
.field private final ALBUM_LIST:I

.field private final ARTIST_LIST:I

.field private final DELAY_REFRESH_LIST_VIEW:I

.field private final MSG_DO_ALL_SEARCH:I

.field private final MSG_HANDLE_PROGRESS:I

.field private final MSG_REFRESH_LISTVIEW:I

.field private final MSG_UPDATE_SEARCH_LIST:I

.field private final QUERY_TYPE_CATEGORY_COUNT:I

.field private final TRACK_LIST:I

.field mAlbumCols:[Ljava/lang/String;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAlbumCursorAlbumIndex:I

.field private mAlbumCursorAlbumKeyIndex:I

.field private mAlbumCursorArtIndex:I

.field private mAlbumCursorIdIndex:I

.field private mAlbumNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field private mAlbumNoResultItemIndex:I

.field private mAlbumQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mAlbumResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumSubTitleIndex:I

.field private mAlbumSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field mArtistCols:[Ljava/lang/String;

.field private mArtistCursor:Landroid/database/Cursor;

.field private mArtistCursorArtistIndex:I

.field private mArtistCursorIdIndex:I

.field private mArtistNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field private mArtistNoResultItemIndex:I

.field private mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mArtistResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistSubTitleIndex:I

.field private mArtistSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field private mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

.field mAsyncQuerying:Z

.field private mCarDockListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;

.field private mCurrentSearchToken:I

.field private mCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field protected mDefaultSearchKey:Ljava/lang/String;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureHeight:D

.field mInputBox:Lcom/htc/widget/ActionBarSearch;

.field private mIsSearchingCount:I

.field private mListViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mNoResultCount:I

.field private mPlayAllQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mQueryResultCount:I

.field mRes:Landroid/content/res/Resources;

.field private mScanListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ScanListener;

.field mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

.field private mSearchCount:I

.field private mSearchList:Lcom/htc/widget/HtcListView;

.field private mSearchResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchStr:Landroid/widget/AutoCompleteTextView;

.field private mServiceBound:Z

.field private mStopping:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field mTrackCols:[Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackCursorAlbumIndex:I

.field private mTrackCursorAlbumKeyIndex:I

.field private mTrackCursorArtIndex:I

.field private mTrackCursorArtistIndex:I

.field private mTrackCursorIdIndex:I

.field private mTrackCursorTitleIndex:I

.field private mTrackNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field private mTrackNoResultItemIndex:I

.field private mTrackQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

.field private mTrackResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackSubTitleIndex:I

.field private mTrackSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 73
    invoke-direct {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    .line 102
    iput v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    .line 104
    iput v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->QUERY_TYPE_CATEGORY_COUNT:I

    .line 105
    iput v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I

    .line 107
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->DELAY_REFRESH_LIST_VIEW:I

    .line 119
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCarDockListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mScanListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ScanListener;

    .line 133
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$1;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mListViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 173
    iput v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->MSG_REFRESH_LISTVIEW:I

    .line 174
    iput v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->MSG_UPDATE_SEARCH_LIST:I

    .line 175
    iput v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->MSG_DO_ALL_SEARCH:I

    .line 176
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->MSG_HANDLE_PROGRESS:I

    .line 179
    iput v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->ARTIST_LIST:I

    .line 180
    iput v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->ALBUM_LIST:I

    .line 181
    iput v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->TRACK_LIST:I

    .line 183
    iput v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mQueryResultCount:I

    .line 185
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$2;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 366
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureHeight:D

    .line 368
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mStopping:Z

    .line 369
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mServiceBound:Z

    .line 534
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$5;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 1401
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorIdIndex:I

    .line 1402
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    .line 1404
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    .line 1405
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    .line 1406
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    .line 1407
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorAlbumKeyIndex:I

    .line 1409
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorIdIndex:I

    .line 1410
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    .line 1411
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    .line 1412
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtIndex:I

    .line 1413
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorAlbumIndex:I

    .line 1414
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorAlbumKeyIndex:I

    .line 1416
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v5

    const-string v1, "artist_id"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "minyear"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    .line 1422
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v5

    const-string v1, "album_key"

    aput-object v1, v0, v6

    const-string v1, "album_art"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    .line 1428
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v4

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

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    .line 1437
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1737
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mQueryResultCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mQueryResultCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mQueryResultCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mQueryResultCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorAlbumKeyIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorAlbumKeyIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorIdIndex:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorIdIndex:I

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtIndex:I

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtIndex:I

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorAlbumIndex:I

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorAlbumIndex:I

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorAlbumKeyIndex:I

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorAlbumKeyIndex:I

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2702(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2802(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2902(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$3200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    return v0
.end method

.method static synthetic access$3502(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    return p1
.end method

.method static synthetic access$3600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->initOnlineSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureHeight:D

    return-wide v0
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I

    return p1
.end method

.method static synthetic access$408(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/DlArtAsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Lcom/htc/music/util/DlArtAsyncImageDecoder;)Lcom/htc/music/util/DlArtAsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCurrentSearchToken:I

    return v0
.end method

.method static synthetic access$5100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->handleProgress(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorIdIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorIdIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private clickTrackItem(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 850
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 851
    .local v6, itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mPlayAllQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->getTrack(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;J)V

    .line 852
    return-void
.end method

.method private doLocalSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 572
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V

    .line 573
    return-void
.end method

.method private doLocalSearch(Ljava/lang/String;J)V
    .locals 3
    .parameter "key"
    .parameter "delayTime"

    .prologue
    const/4 v2, 0x3

    .line 576
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 578
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 579
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 583
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 1510
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1511
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1515
    .local v10, whereUnkown:Ljava/lang/StringBuilder;
    const-string v0, "album = \'<unknown>\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    const/4 v6, 0x0

    .line 1519
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1520
    new-array v6, v11, [Ljava/lang/String;

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 1522
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    const-string v0, "album LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1529
    .local v3, asyncUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1530
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    .line 1531
    iput-boolean v11, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1532
    iget v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    invoke-direct {p0, v11}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->handleProgress(Z)V

    .line 1541
    :goto_0
    return-object v8

    .line 1536
    :cond_1
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1537
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "async"
    .parameter "filterstring"

    .prologue
    const/4 v10, 0x1

    .line 1445
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "@@@@ getArtistCursor() - start"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    const/4 p2, 0x0

    .line 1450
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1451
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\' "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    const-string v0, " AND artist != \'\' "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    const/4 v6, 0x0

    .line 1457
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1472
    new-array v6, v10, [Ljava/lang/String;

    .line 1473
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1474
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    const-string v0, "artist LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1480
    .local v5, whereclause:Ljava/lang/String;
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 1"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const/4 v8, 0x0

    .line 1482
    .local v8, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 1483
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 2"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    iput-boolean v10, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1491
    iget v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    const-string v7, "artist COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    invoke-direct {p0, v10}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->handleProgress(Z)V

    .line 1504
    :goto_0
    return-object v8

    .line 1495
    :cond_2
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 3"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    sget-object v3, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    const-string v7, "artist COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 865
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-ne p1, v0, :cond_1

    .line 868
    :cond_0
    const/4 v0, 0x2

    .line 883
    :goto_0
    return v0

    .line 869
    :cond_1
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    if-ne p1, v0, :cond_3

    .line 871
    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 872
    :cond_3
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-le p1, v0, :cond_4

    .line 874
    const/4 v0, 0x5

    goto :goto_0

    .line 875
    :cond_4
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-le p1, v0, :cond_5

    .line 877
    const/4 v0, 0x4

    goto :goto_0

    .line 878
    :cond_5
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-le p1, v0, :cond_6

    .line 880
    const/4 v0, 0x3

    goto :goto_0

    .line 883
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 1545
    const/4 v8, 0x0

    .line 1546
    .local v8, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    move v0, v10

    :goto_0
    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1547
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1548
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    const/4 v6, 0x0

    .line 1552
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1566
    new-array v6, v10, [Ljava/lang/String;

    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 1568
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    const-string v0, "title LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    :cond_0
    const-string v0, " AND is_music>=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    if-eqz p1, :cond_2

    .line 1575
    iget v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-direct {p0, v10}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->handleProgress(Z)V

    .line 1579
    const/4 v8, 0x0

    .line 1585
    :goto_1
    return-object v8

    .end local v6           #keywords:[Ljava/lang/String;
    .end local v9           #where:Ljava/lang/StringBuilder;
    :cond_1
    move v0, v1

    .line 1546
    goto :goto_0

    .line 1581
    .restart local v6       #keywords:[Ljava/lang/String;
    .restart local v9       #where:Ljava/lang/StringBuilder;
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1
.end method

.method private goToAlbumDetail(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 835
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 837
    .local v1, itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 838
    .local v0, albumId:I
    const-string v2, "[CarLocalMusicSearchActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Going to launch album detail view. albumId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mPlayAllQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v0}, Lcom/htc/music/util/ContentUtils;->getTracksForAlbum(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;I)V

    .line 847
    return-void
.end method

.method private goToArtistDetail(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 810
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 811
    .local v2, itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, artistId:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.carmode.BROWSE_VIEWER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.media/artistalbum"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 828
    const-string v3, "artistid"

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v3, "dbTable"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 830
    const-string v3, "showcompletealbum"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 832
    return-void
.end method

.method private goToOnlineSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 799
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 801
    if-eqz p1, :cond_0

    .line 802
    const-string v1, "default_search_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 807
    return-void
.end method

.method private handleProgress(Z)V
    .locals 3
    .parameter "startSearch"

    .prologue
    .line 887
    const-string v0, "[CarLocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProgress, startSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    if-eqz p1, :cond_0

    .line 889
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    .line 897
    :goto_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 898
    return-void

    .line 891
    :cond_0
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    if-lez v0, :cond_1

    .line 892
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    goto :goto_0

    .line 894
    :cond_1
    const-string v0, "[CarLocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProgress, mIsSearchingCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initInOnCreate()V
    .locals 4

    .prologue
    .line 586
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchCount:I

    .line 588
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f060016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 589
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 590
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 592
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0600ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, itemText:Ljava/lang/String;
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 594
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 595
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 597
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 598
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$AlbumQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$AlbumQueryHandler;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 599
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$TrackQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$TrackQueryHandler;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    .line 601
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$PlayAllQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$PlayAllQueryHandler;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mPlayAllQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 602
    return-void
.end method

.method private initKeypadGestureDetector()V
    .locals 2

    .prologue
    .line 449
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "Gesture initKeypadGestureDetector"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$3;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 480
    return-void
.end method

.method private initOnlineSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 986
    const-string v0, "[CarLocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do initOnlineSearch(key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCurrentSearchToken:I

    .line 991
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 992
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 993
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackQueryHandler:Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 994
    return-void
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 1752
    if-nez p1, :cond_0

    .line 1753
    const/4 v0, 0x0

    .line 1793
    :goto_0
    return-object v0

    .line 1755
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1756
    goto :goto_0

    .line 1759
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1760
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1761
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 1766
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1768
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1769
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1770
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1771
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1775
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1776
    const/4 p1, 0x0

    .line 1777
    const/4 v0, 0x0

    goto :goto_0

    .line 1780
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1781
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1782
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1783
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1784
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1785
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1786
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1788
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1792
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1793
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method


# virtual methods
.method DumpQueryItemIndex()V
    .locals 0

    .prologue
    .line 618
    return-void
.end method

.method clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 621
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 622
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 623
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 624
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 626
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    .line 630
    :cond_0
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I

    .line 631
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    .line 632
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I

    .line 633
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    .line 634
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    .line 635
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    .line 637
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    .line 638
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 640
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I

    .line 641
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mQueryResultCount:I

    .line 644
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 647
    :cond_1
    iput-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 651
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 652
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_3
    iput-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 656
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    .line 657
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 658
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_5
    iput-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 661
    :cond_6
    return-void
.end method

.method isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x400

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 373
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 375
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->closeActivityIfNotInCarMode(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 446
    :goto_0
    return-void

    .line 379
    :cond_0
    if-eqz p1, :cond_1

    .line 380
    const-string v5, "default_search_key"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    .line 385
    :goto_1
    invoke-virtual {p0, v8}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->requestWindowFeature(I)Z

    .line 388
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 389
    .local v3, win:Landroid/view/Window;
    invoke-virtual {v3, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 391
    const/high16 v5, 0x40

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 392
    const/high16 v5, 0x20

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 393
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->setVolumeControlStream(I)V

    .line 394
    const v5, 0x7f030014

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->setContentView(I)V

    .line 395
    const v5, 0x7f07003b

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 397
    iput-object v9, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 398
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    .line 400
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->setTitle()V

    .line 401
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->initInOnCreate()V

    .line 402
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->initKeypadGestureDetector()V

    .line 404
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    .line 405
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 406
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 407
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 408
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 409
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListView;->setTopDivider(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mListViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 414
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    const-string v6, "common_app_bkg"

    const v7, 0x2080001

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setBackgroundResource(I)V

    .line 416
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    iput-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    .line 418
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    if-eqz v5, :cond_2

    .line 419
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v5, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->setActivity(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    .line 423
    :goto_2
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 426
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;)V

    .line 429
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 430
    .local v1, f:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    const-string v5, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 433
    new-instance v5, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ScanListener;

    invoke-direct {v5, p0, v9}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ScanListener;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Lcom/htc/music/carmode/CarLocalMusicSearchActivity$1;)V

    iput-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mScanListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ScanListener;

    .line 434
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mScanListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ScanListener;

    invoke-virtual {p0, v5, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 437
    .local v0, display:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 438
    .local v4, windowSize:Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 439
    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-double v5, v5

    const-wide v7, 0x3fc999999999999aL

    mul-double/2addr v5, v7

    iput-wide v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureHeight:D

    .line 441
    new-instance v2, Landroid/content/IntentFilter;

    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 442
    .local v2, f3:Landroid/content/IntentFilter;
    new-instance v5, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;

    invoke-direct {v5, p0, v9}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Lcom/htc/music/carmode/CarLocalMusicSearchActivity$1;)V

    iput-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCarDockListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;

    .line 443
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCarDockListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;

    invoke-virtual {p0, v5, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    const-string v5, "[CarLocalMusicSearchActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mGestureHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureHeight:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #f:Landroid/content/IntentFilter;
    .end local v2           #f3:Landroid/content/IntentFilter;
    .end local v3           #win:Landroid/view/Window;
    .end local v4           #windowSize:Landroid/graphics/Point;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "default_search_key"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 421
    .restart local v3       #win:Landroid/view/Window;
    :cond_2
    new-instance v5, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    iput-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->clear()V

    .line 703
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v1}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->quit()V

    .line 705
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 709
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mScanListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ScanListener;

    if-eqz v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mScanListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ScanListener;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCarDockListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;

    if-eqz v1, :cond_2

    .line 717
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCarDockListener:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 722
    :cond_2
    :goto_1
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 723
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[CarLocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy, fail to unregisterReceiver(mScanListener), ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 718
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 719
    .restart local v0       #ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[CarLocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy, fail to unregisterReceiver(mCarDockListener), ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 781
    invoke-direct {p0, p3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getItemViewType(I)I

    move-result v0

    .line 783
    .local v0, viewType:I
    packed-switch v0, :pswitch_data_0

    .line 795
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 796
    return-void

    .line 785
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->goToArtistDetail(I)V

    goto :goto_0

    .line 788
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->goToAlbumDetail(I)V

    goto :goto_0

    .line 791
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->clickTrackItem(I)V

    goto :goto_0

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 739
    const-string v0, "default_search_key"

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 741
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 768
    move v1, p2

    .line 769
    .local v1, start:I
    add-int v0, p2, p3

    .line 771
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v2, :cond_0

    .line 772
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->setVisibleRange(II)V

    .line 774
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_1

    .line 775
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    .line 777
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 997
    const-string v0, "[CarLocalMusicSearchActivity]"

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

    .line 998
    packed-switch p2, :pswitch_data_0

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1000
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1005
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1010
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 998
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 484
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "[onServiceConnected] ."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mStopping:Z

    if-eqz v0, :cond_0

    .line 486
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "[onServiceConnected] Stopping! Disconnect service right away."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mServiceBound:Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 496
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "onServiceDisconnected, Service is disconnected abnormally."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 745
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mStopping:Z

    .line 750
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 751
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mStopping:Z

    .line 757
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mServiceBound:Z

    .line 762
    :cond_0
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 763
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method protected setTitle()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 500
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    if-eqz v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 503
    :cond_0
    new-instance v0, Lcom/htc/widget/ActionBarContainer;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 504
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    .line 506
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 507
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    new-instance v0, Lcom/htc/widget/ActionBarSearch;

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    .line 514
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 515
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 516
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    .line 517
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 518
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f06009f

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 519
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 520
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 525
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    goto :goto_0
.end method
