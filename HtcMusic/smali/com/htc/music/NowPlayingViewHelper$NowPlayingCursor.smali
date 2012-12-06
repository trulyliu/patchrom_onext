.class Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCursor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;
    }
.end annotation


# instance fields
.field private mAsyncQueryHandler:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;

.field private mCols:[Ljava/lang/String;

.field private mContentObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[I

.field private mDataSetObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlaying:[I

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mSize:I

.field private requeryContentObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private requeryDataSetObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method public constructor <init>(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "service"
    .parameter "cols"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1884
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 2208
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 2210
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 2212
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 2214
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    .line 2216
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    .line 2218
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    .line 2220
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 2222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    .line 2224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    .line 2226
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryContentObserver:Ljava/util/ArrayList;

    .line 2228
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryDataSetObserver:Ljava/util/ArrayList;

    .line 2230
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mAsyncQueryHandler:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;

    .line 1885
    iput-object p3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 1886
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1887
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;

    iget-object v1, p1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;-><init>(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mAsyncQueryHandler:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;

    .line 1888
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 1889
    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    return-object p1
.end method

.method static synthetic access$2900(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1883
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    return v0
.end method

.method static synthetic access$2902(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1883
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    return p1
.end method

.method static synthetic access$3000(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryContentObserver:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryContentObserver:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryDataSetObserver:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryDataSetObserver:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    return-object p1
.end method

.method static synthetic access$3502(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1883
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mPos:I

    return p1
.end method

.method static synthetic access$3602(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1883
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mRowIdColumnIndex:I

    return p1
.end method

.method static synthetic access$3702(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentRowID:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1883
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    return p1
.end method

.method static synthetic access$3900(Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;)Lcom/htc/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method private makeNowPlayingCursor()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 1901
    const/4 v10, 0x0

    .line 1904
    .local v10, size:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1912
    .local v2, nowPlaying:[I
    :goto_0
    if-nez v2, :cond_1

    .line 1913
    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "now playing list is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    :cond_0
    :goto_1
    return-void

    .line 1905
    .end local v2           #nowPlaying:[I
    :catch_0
    move-exception v8

    .line 1906
    .local v8, ex:Landroid/os/RemoteException;
    new-array v2, v1, [I

    .line 1910
    .restart local v2       #nowPlaying:[I
    goto :goto_0

    .line 1907
    .end local v2           #nowPlaying:[I
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 1908
    .local v8, ex:Ljava/lang/NullPointerException;
    const-string v0, "[NowPlayingViewHelper]"

    const-string v3, "mService is null!!, will return directly"

    invoke-static {v0, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const/4 v2, 0x0

    .restart local v2       #nowPlaying:[I
    goto :goto_0

    .line 1917
    .end local v8           #ex:Ljava/lang/NullPointerException;
    :cond_1
    array-length v10, v2

    .line 1918
    if-eqz v10, :cond_0

    .line 1922
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1923
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1924
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v10, :cond_3

    .line 1925
    aget v0, v2, v9

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1926
    add-int/lit8 v0, v10, -0x1

    if-ge v9, v0, :cond_2

    .line 1927
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1924
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1930
    :cond_3
    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mAsyncQueryHandler:Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private moveQueueItem(II)V
    .locals 6
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 2118
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v3

    .line 2119
    .local v0, PlayListLen:I
    if-lt p1, v0, :cond_0

    .line 2120
    add-int/lit8 p1, v0, -0x1

    .line 2122
    :cond_0
    if-lt p2, v0, :cond_1

    .line 2123
    add-int/lit8 p2, v0, -0x1

    .line 2125
    :cond_1
    if-ge p1, p2, :cond_4

    .line 2126
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 2127
    .local v2, tmp:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 2128
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 2127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2130
    :cond_2
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    .line 2139
    .end local v1           #i:I
    .end local v2           #tmp:I
    :cond_3
    :goto_1
    return-void

    .line 2131
    :cond_4
    if-ge p2, p1, :cond_3

    .line 2132
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 2133
    .restart local v2       #tmp:I
    move v1, p1

    .restart local v1       #i:I
    :goto_2
    if-le v1, p2, :cond_5

    .line 2134
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 2133
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2136
    :cond_5
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2074
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 2068
    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 2105
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2108
    :goto_0
    return v1

    .line 2106
    :catch_0
    move-exception v0

    .line 2107
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .parameter "idx"

    .prologue
    .line 2095
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2098
    :goto_0
    return-object v1

    .line 2096
    :catch_0
    move-exception v0

    .line 2097
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2098
    const-string v1, ""

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1941
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 2027
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2030
    :goto_0
    return v1

    .line 2028
    :catch_0
    move-exception v0

    .line 2029
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2030
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 2037
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2040
    :goto_0
    return-wide v1

    .line 2038
    :catch_0
    move-exception v0

    .line 2039
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2040
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getMediaPlaybackService()Lcom/htc/music/IMediaPlaybackService;
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method public getNowPlayingQueue()[I
    .locals 1

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    return-object v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 2017
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2020
    :goto_0
    return v1

    .line 2018
    :catch_0
    move-exception v0

    .line 2019
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2020
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 2007
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2010
    :goto_0
    return-object v1

    .line 2008
    :catch_0
    move-exception v0

    .line 2009
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2010
    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1988
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->moveQueueItem(II)V

    .line 1989
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onMove(II)Z

    .line 1990
    return-void
.end method

.method public onMove(II)Z
    .locals 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v2, 0x1

    .line 1946
    if-ne p1, p2, :cond_0

    .line 1962
    :goto_0
    return v2

    .line 1949
    :cond_0
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    if-nez v3, :cond_2

    .line 1950
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1957
    :cond_2
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v3, p2

    .line 1958
    .local v1, newid:I
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 1959
    .local v0, crsridx:I
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1960
    iput p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 2147
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2149
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2150
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2158
    :goto_0
    return-void

    .line 2151
    :catch_0
    move-exception v0

    .line 2152
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2153
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2156
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "registerContentObserver: Illegal Argument."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 2180
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2182
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2183
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2191
    :goto_0
    return-void

    .line 2184
    :catch_0
    move-exception v0

    .line 2185
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2186
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2189
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "registerDataSetObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeItem(I)Z
    .locals 4
    .parameter "which"

    .prologue
    .line 1967
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 1968
    const/4 v1, 0x0

    .line 1979
    :goto_0
    return v1

    .line 1970
    :cond_0
    move v0, p1

    .line 1971
    .local v0, i:I
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 1972
    :goto_1
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    .line 1973
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 1974
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1976
    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    .end local v0           #i:I
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1977
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public requery()Z
    .locals 4

    .prologue
    .line 2078
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryContentObserver:Ljava/util/ArrayList;

    .line 2079
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryDataSetObserver:Ljava/util/ArrayList;

    .line 2081
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryContentObserver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 2082
    .local v1, o:Landroid/database/ContentObserver;
    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 2084
    .end local v1           #o:Landroid/database/ContentObserver;
    :cond_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->requeryDataSetObserver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 2085
    .local v1, o:Landroid/database/DataSetObserver;
    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 2088
    .end local v1           #o:Landroid/database/DataSetObserver;
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 2089
    const/4 v2, 0x1

    return v2
.end method

.method public setMediaPlaybackService(Lcom/htc/music/IMediaPlaybackService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 1896
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1897
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 1898
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 2162
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2164
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2165
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2176
    :goto_0
    return-void

    .line 2166
    :catch_0
    move-exception v0

    .line 2167
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2168
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2169
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2170
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2171
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2174
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "unregisterContentObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 2195
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2197
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2198
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2206
    :goto_0
    return-void

    .line 2199
    :catch_0
    move-exception v0

    .line 2200
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2201
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2204
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "unregisterDataSetObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
