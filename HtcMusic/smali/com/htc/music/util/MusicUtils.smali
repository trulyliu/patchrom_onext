.class public Lcom/htc/music/util/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/MusicUtils$1;,
        Lcom/htc/music/util/MusicUtils$DecodeInfo;,
        Lcom/htc/music/util/MusicUtils$Media2;,
        Lcom/htc/music/util/MusicUtils$Albums2;,
        Lcom/htc/music/util/MusicUtils$Artists2;,
        Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;,
        Lcom/htc/music/util/MusicUtils$LaunchUI;,
        Lcom/htc/music/util/MusicUtils$ServiceBinder;,
        Lcom/htc/music/util/MusicUtils$ServiceOwner;,
        Lcom/htc/music/util/MusicUtils$PlayAllListPair;,
        Lcom/htc/music/util/MusicUtils$DrmWarningMode;,
        Lcom/htc/music/util/MusicUtils$DrmStatus;,
        Lcom/htc/music/util/MusicUtils$Defs;
    }
.end annotation


# static fields
.field public static final ATSTAG:Ljava/lang/String; = "MASD"

.field static final DEBUG:Z = true

.field public static final DEFAULT_QUERY_TABLE:I = 0x0

.field public static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = null

.field public static final FIRST_QUERY_TABLE:I = 0x1

.field private static final INTERNAL_MEMORY_THRESOLD:J = 0x500000L

.field public static final IS_MUSIC_DRM_FILTER:Ljava/lang/String; = "is_music>1"

.field public static final IS_MUSIC_FILTER:Ljava/lang/String; = "is_music>=1"

.field public static final IS_MUSIC_FILTER_FOR_GENRE:Ljava/lang/String; = "audio_meta.is_music>=1"

.field public static final IS_RINGTONE_FILTER:Ljava/lang/String; = "is_ringtone>=1"

.field private static IsInternalEnough:Z = false

.field private static final PATH:Ljava/lang/String; = null

.field public static final PLAY_ALL_COLS:[Ljava/lang/String; = null

.field public static final PLAY_FOLDER_COLS:[Ljava/lang/String; = null

.field public static final PLAY_PLAYLIST_COLS:[Ljava/lang/String; = null

.field private static final PREFERENCE_COM_HTC_MUSIC:Ljava/lang/String; = "com.htc.music"

.field private static final PREF_RESULT:Ljava/lang/String; = "result"

.field private static final PREF_SELECTED_ID:Ljava/lang/String; = "selectedid"

.field public static final RESULT_FAIL_PLAYLIST_EMPTY:I = -0x2

.field public static final RESULT_FAIL_REMOTE_EXCEPTION:I = -0x3

.field public static final RESULT_FAIL_SERVICE_NULL:I = -0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_SUCCESS_LAUNCH_GLANCE:I = 0x1

.field public static final RESULT_SUCCESS_MIRROR:I = 0x2

.field public static final REVERT:Ljava/lang/String; = "_R"

.field public static final SECOND_QUERY_TABLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[MusicUtils]"

.field public static final TRIGGER_PLAY_IN_LIBRARY:Ljava/lang/String; = "com.htc.music.triggerplayinlibrary"

.field public static final YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final hexdigits:[C

.field private static final mCoverPaint:Landroid/graphics/Paint;

.field public static mPluginManager:Lcom/htc/music/MusicPluginManager;

.field private static final sArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sArtCacheId:I

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/music/util/MusicUtils$ServiceOwner;",
            "Lcom/htc/music/util/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static final sDlColumns:[Ljava/lang/String;

.field private static final sEmptyList:[I

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field public static final sMdColumns:[Ljava/lang/String;

.field public static sService:Lcom/htc/music/IMediaPlaybackService;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 137
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v3

    const-string v1, "album_art"

    aput-object v1, v0, v2

    const-string v1, "album"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    .line 151
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "dl_album_id"

    aput-object v1, v0, v4

    const-string v1, "dl_album_key"

    aput-object v1, v0, v3

    const-string v1, "dl_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sDlColumns:[Ljava/lang/String;

    .line 157
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    .line 162
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "audio_id"

    aput-object v1, v0, v4

    const-string v1, "album_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/music/util/MusicUtils;->PLAY_PLAYLIST_COLS:[Ljava/lang/String;

    .line 167
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/music/util/MusicUtils;->PLAY_FOLDER_COLS:[Ljava/lang/String;

    .line 228
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->hexdigits:[C

    .line 303
    sput-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 306
    sput-object v6, Lcom/htc/music/util/MusicUtils;->mPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 448
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->PATH:Ljava/lang/String;

    .line 449
    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 565
    new-array v0, v4, [I

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 1392
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 1394
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1764
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 1766
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 1768
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 1770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 1780
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I

    .line 1787
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1788
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1790
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1791
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3913
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    .line 3914
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3915
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 3916
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3917
    return-void

    .line 228
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4728
    return-void
.end method

.method public static IsInternalStorage()Z
    .locals 2

    .prologue
    .line 4065
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v0

    .line 4067
    .local v0, isInternalStorage:Z
    if-nez v0, :cond_0

    .line 4068
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4070
    const/4 v0, 0x1

    .line 4074
    :cond_0
    return v0
.end method

.method public static IsOnlyInternalStorage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4078
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4088
    .local v0, both:Z
    :cond_0
    :goto_0
    return v1

    .line 4083
    .end local v0           #both:Z
    :cond_1
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    .line 4085
    .restart local v0       #both:Z
    if-nez v0, :cond_0

    .line 4088
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[I)V
    .locals 7
    .parameter "context"
    .parameter "list"

    .prologue
    .line 1115
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1119
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/htc/music/IMediaPlaybackService;->enqueue([II)V

    .line 1120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0003

    array-length v3, p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1123
    .end local v0           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static addToPlaylist(Landroid/content/Context;[IJ)V
    .locals 1
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"

    .prologue
    .line 1128
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    .line 1129
    return-void
.end method

.method public static addToPlaylist(Landroid/content/Context;[IJZ)V
    .locals 17
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"
    .parameter "showToast"

    .prologue
    .line 1132
    if-nez p1, :cond_1

    .line 1135
    const-string v12, "[MusicUtils]"

    const-string v13, "ListSelection null"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    move-object/from16 v0, p1

    array-length v9, v0

    .line 1138
    .local v9, size:I
    new-array v11, v9, [Landroid/content/ContentValues;

    .line 1139
    .local v11, values:[Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1142
    .local v8, resolver:Landroid/content/ContentResolver;
    const/4 v12, 0x1

    new-array v4, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "count(*)"

    aput-object v13, v4, v12

    .line 1146
    .local v4, cols:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1147
    .local v5, cur:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1149
    .local v3, base:I
    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-static {v0, v4, v1, v2}, Lcom/htc/music/util/ContentUtils;->getTracksForPlaylist(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v5

    .line 1150
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-eqz v12, :cond_3

    .line 1151
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1152
    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1158
    if-eqz v5, :cond_2

    .line 1159
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1160
    const/4 v5, 0x0

    .line 1166
    :cond_2
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v9, :cond_5

    .line 1167
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    aput-object v12, v11, v6

    .line 1168
    aget-object v12, v11, v6

    const-string v13, "play_order"

    add-int v14, v3, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1170
    aget-object v12, v11, v6

    const-string v13, "audio_id"

    aget v14, p1, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1166
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1154
    .end local v6           #i:I
    :cond_3
    :try_start_1
    const-string v12, "[MusicUtils]"

    const-string v13, "addToPlaylist getTracksForPlaylist is null or count is 0!"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1158
    if-eqz v5, :cond_0

    .line 1159
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1160
    const/4 v5, 0x0

    goto :goto_0

    .line 1158
    :catchall_0
    move-exception v12

    if-eqz v5, :cond_4

    .line 1159
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1160
    const/4 v5, 0x0

    .line 1158
    :cond_4
    throw v12

    .line 1172
    .restart local v6       #i:I
    :cond_5
    const-string v12, "external"

    move-wide/from16 v0, p2

    invoke-static {v12, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v10

    .line 1173
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {v8, v10, v11}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1174
    if-eqz p4, :cond_0

    .line 1175
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0003

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v9, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1177
    .local v7, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v7, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public static appExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 3761
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3762
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 3763
    .local v0, appExist:Z
    :cond_0
    return v0
.end method

.method public static appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 3645
    const-string v0, " (composer ISNULL"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    const-string v0, " OR composer = \'\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3647
    const-string v0, " OR composer = \'<unknown>\' )"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3650
    return-void
.end method

.method public static arrayDeepClone([I[II)V
    .locals 2
    .parameter "src"
    .parameter "dst"
    .parameter "length"

    .prologue
    .line 3617
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3623
    :cond_0
    return-void

    .line 3618
    :cond_1
    array-length v1, p0

    if-lt v1, p2, :cond_0

    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 3620
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 3621
    aget v1, p0, v0

    aput v1, p1, v0

    .line 3620
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bindToService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "callback"

    .prologue
    .line 343
    new-instance v3, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    invoke-direct {v3, p1, p0}, Lcom/htc/music/util/MusicUtils$ServiceOwner;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 345
    .local v3, serviceOwner:Lcom/htc/music/util/MusicUtils$ServiceOwner;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    .line 348
    .local v2, sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    if-eqz v2, :cond_0

    .line 350
    :try_start_0
    iget-object v4, v3, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    const-string v4, "[MusicUtils]"

    const-string v5, "Unbind previous binding service"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .end local v2           #sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 361
    new-instance v1, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    invoke-direct {v1, p2}, Lcom/htc/music/util/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 362
    .local v1, sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    return v4

    .line 352
    .end local v1           #sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    .restart local v2       #sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    :catch_0
    move-exception v0

    .line 353
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "[MusicUtils]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mContext unbind service fail => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static broadcastPlaybackStatus(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .parameter "context"
    .parameter "status"
    .parameter "position"

    .prologue
    .line 4630
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTC AVRCP_1.3] updatePlaybackStatus => status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4632
    if-nez p0, :cond_0

    .line 4633
    const-string v1, "[MusicUtils]"

    const-string v2, "broadcastPlaybackStatus, context is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4641
    :goto_0
    return-void

    .line 4637
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.playstatechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4638
    .local v0, i:Landroid/content/Intent;
    const-string v1, "playstate"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4639
    const-string v1, "position"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4640
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 11
    .parameter "context"
    .parameter "trackPath"
    .parameter "audioId"

    .prologue
    const/4 v8, 0x0

    .line 3675
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v0, v8

    .line 3740
    :goto_0
    return v0

    .line 3678
    :cond_1
    invoke-static {p0, p2}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 3679
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 3680
    goto :goto_0

    .line 3682
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 3683
    :cond_3
    if-eqz v1, :cond_4

    .line 3684
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 3685
    goto :goto_0

    .line 3688
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3689
    const/4 v0, 0x0

    .line 3691
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 3692
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3695
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3697
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3698
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3702
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 3704
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 3705
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 3706
    const-string v9, "[MusicUtils]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3707
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3708
    const/4 v1, 0x0

    move v0, v8

    .line 3709
    goto :goto_0

    .line 3712
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 3713
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3715
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 3717
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 3719
    :cond_8
    const/4 v0, 0x2

    .line 3723
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3737
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3738
    const/4 v1, 0x0

    .line 3740
    goto :goto_0

    .line 3727
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3728
    const-string v8, "[MusicUtils]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3729
    const/4 v0, 0x0

    goto :goto_1

    .line 3734
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static checkDLNAStatus(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 3406
    const/4 v1, 0x0

    .line 3407
    .local v1, dms:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 3408
    const-string v4, "[MusicUtils]"

    const-string v5, "CheckDLNAStatus with null Context!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3449
    :goto_0
    return v3

    .line 3412
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3413
    const-string v4, "[MusicUtils]"

    const-string v5, "CheckDLNAStatus : DLNA feature is not enabled!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3417
    :cond_1
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_2

    .line 3419
    :try_start_0
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getDmsServer()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3429
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDmr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3431
    .local v0, dmr:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 3432
    if-eqz v0, :cond_3

    .line 3433
    const-string v3, "[MusicUtils]"

    const-string v4, "initial, DLNA mode = DLNA_DMC"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3434
    const-string v3, "[MusicUtils]"

    const-string v4, "type = null, DLNA mode switch to DLNA_DMC"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    const/4 v3, 0x2

    goto :goto_0

    .line 3420
    .end local v0           #dmr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3421
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "[MusicUtils]"

    const-string v5, "checkDLNAStatus remote exception "

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3425
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v4, "[MusicUtils]"

    const-string v5, "service is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3438
    .restart local v0       #dmr:Ljava/lang/String;
    :cond_3
    const-string v3, "[MusicUtils]"

    const-string v4, "DLNA mode = DLNA_DMP"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3439
    const/4 v3, 0x1

    goto :goto_0

    .line 3443
    :cond_4
    if-eqz v0, :cond_5

    .line 3444
    const-string v3, "[MusicUtils]"

    const-string v4, "initial, DLNA mode = DLNA_PUSH"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    const/4 v3, 0x3

    goto :goto_0

    .line 3448
    :cond_5
    const-string v4, "[MusicUtils]"

    const-string v5, "DLNA mode = DLNA_LOCAL"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static declared-synchronized checkInternalMemory()J
    .locals 11

    .prologue
    .line 515
    const-class v8, Lcom/htc/music/util/MusicUtils;

    monitor-enter v8

    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    sget-object v7, Lcom/htc/music/util/MusicUtils;->PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 516
    .local v4, fileStats:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 517
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 518
    .local v2, blockSize:J
    mul-long v5, v0, v2

    .line 519
    .local v5, size:J
    const-string v7, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "internal memory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit v8

    return-wide v5

    .line 515
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #size:J
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static checkedInternalStorageWhenResume(Landroid/content/Context;)Z
    .locals 3
    .parameter "fromCtx"

    .prologue
    const/4 v1, 0x1

    .line 453
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 456
    .local v0, targetIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 457
    const-string v2, "disablelib"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 459
    const/4 v1, 0x0

    .line 461
    .end local v0           #targetIntent:Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public static clearAlbumArtCache()V
    .locals 6

    .prologue
    .line 1810
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 1811
    :try_start_0
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1812
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1813
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1814
    .local v0, artIndex:Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1815
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #artIndex:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 1816
    .restart local v0       #artIndex:Ljava/lang/Integer;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 1817
    .local v1, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v1, :cond_0

    .line 1818
    invoke-virtual {v1}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    goto :goto_0

    .line 1823
    .end local v0           #artIndex:Ljava/lang/Integer;
    .end local v1           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1822
    .restart local v0       #artIndex:Ljava/lang/Integer;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1823
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1824
    return-void
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 925
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v0, v7

    .line 928
    .local v0, ccols:[Ljava/lang/String;
    int-to-long v7, p1

    invoke-static {p0, v0, v7, v8}, Lcom/htc/music/util/ContentUtils;->getTracksForPlaylist(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v2

    .line 929
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 954
    :goto_0
    return-void

    .line 940
    :cond_0
    :try_start_0
    const-string v7, "external"

    int-to-long v8, p1

    invoke-static {v7, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 941
    .local v6, uri:Landroid/net/Uri;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 942
    const-string v7, "_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 943
    .local v1, colidx:I
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 944
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 945
    .local v4, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 946
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 948
    .end local v1           #colidx:I
    .end local v4           #id:J
    .end local v6           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 949
    .local v3, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v7, "[MusicUtils]"

    const-string v8, "Failed to clear playlist."

    invoke-static {v7, v8, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 952
    .end local v3           #ex:Ljava/lang/Exception;
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 951
    :catchall_0
    move-exception v7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 952
    const/4 v2, 0x0

    .line 951
    throw v7

    .restart local v1       #colidx:I
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public static clearQueue()V
    .locals 3

    .prologue
    .line 1717
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1720
    :goto_0
    return-void

    .line 1718
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "drawable"

    .prologue
    .line 3506
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 3507
    .local v1, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3508
    .local v0, height:I
    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"
    .parameter "height"
    .parameter "width"

    .prologue
    const/4 v5, 0x0

    .line 3512
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3515
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p2, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3516
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3517
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3518
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3519
    return-object v0

    .line 3512
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static createPlaylist(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    .line 4134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 4135
    :cond_0
    const/4 v0, -0x1

    .line 4155
    :cond_1
    :goto_0
    return v0

    .line 4137
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4138
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 4139
    .local v0, id:I
    const/4 v2, 0x0

    .line 4140
    .local v2, uri:Landroid/net/Uri;
    if-ltz v0, :cond_3

    .line 4141
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 4142
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    goto :goto_0

    .line 4144
    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4145
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4146
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 4147
    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getPlaylistId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 4150
    if-lez v0, :cond_1

    .line 4151
    invoke-static {p0}, Lcom/htc/music/util/ShowMeHelper;->notifyCreatePlaylist(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static decodeBitmapByAlbumId(Landroid/content/Context;IZLandroid/graphics/BitmapFactory$Options;ZII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "albumId"
    .parameter "notScale"
    .parameter "bitmapOptions"
    .parameter "filter"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    .line 1995
    if-eqz p3, :cond_0

    if-nez p0, :cond_1

    .line 2020
    :cond_0
    :goto_0
    return-object v0

    .line 1998
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1999
    .local v3, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v6, p1

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2001
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 2002
    const/4 v2, 0x0

    .line 2004
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2005
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, p3, p4, p5, p6}, Lcom/htc/music/util/MusicUtils;->decodeBitmapByFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;ZII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 2013
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 2014
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2015
    :catch_0
    move-exception v1

    .line 2016
    .local v1, e:Ljava/io/IOException;
    const-string v5, "[MusicUtils]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2007
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 2008
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "[MusicUtils]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodeBitmapByAlbumId failed albumId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2013
    if-eqz v2, :cond_0

    .line 2014
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2015
    :catch_2
    move-exception v1

    .line 2016
    .local v1, e:Ljava/io/IOException;
    const-string v5, "[MusicUtils]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 2009
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 2010
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v5, "[MusicUtils]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodeBitmapByAlbumId failed albumId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2013
    if-eqz v2, :cond_0

    .line 2014
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 2015
    :catch_4
    move-exception v1

    .line 2016
    .local v1, e:Ljava/io/IOException;
    const-string v5, "[MusicUtils]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 2012
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 2013
    if-eqz v2, :cond_2

    .line 2014
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2012
    :cond_2
    :goto_2
    throw v5

    .line 2015
    :catch_5
    move-exception v1

    .line 2016
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "[MusicUtils]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static decodeBitmapByFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;ZII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "fd"
    .parameter "bitmapOptions"
    .parameter "filter"
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 2024
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2059
    :cond_0
    :goto_0
    return-object v0

    .line 2027
    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 2030
    .local v5, scale:Z
    :goto_1
    const/4 v4, 0x1

    .line 2032
    .local v4, sampleSize:I
    if-eqz v5, :cond_3

    .line 2033
    const/4 v7, 0x1

    :try_start_0
    iput v7, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2034
    const/4 v7, 0x1

    iput-boolean v7, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2035
    const/4 v7, 0x0

    invoke-static {p0, v7, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2037
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v7, 0x1

    .line 2038
    .local v3, nextWidth:I
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v7, 0x1

    .line 2039
    .local v2, nextHeight:I
    :goto_2
    if-le v3, p3, :cond_3

    if-le v2, p4, :cond_3

    .line 2040
    shl-int/lit8 v4, v4, 0x1

    .line 2041
    shr-int/lit8 v3, v3, 0x1

    .line 2042
    shr-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    .end local v4           #sampleSize:I
    .end local v5           #scale:Z
    :cond_2
    move v5, v7

    .line 2027
    goto :goto_1

    .line 2046
    .restart local v4       #sampleSize:I
    .restart local v5       #scale:Z
    :cond_3
    iput v4, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2047
    const/4 v7, 0x0

    iput-boolean v7, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2048
    const/4 v7, 0x0

    invoke-static {p0, v7, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2051
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    .line 2052
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v7, p3, :cond_4

    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v7, p4, :cond_0

    .line 2053
    :cond_4
    invoke-static {v0, p3, p4, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2054
    .local v6, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    move-object v0, v6

    goto :goto_0

    .line 2060
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 2061
    .local v1, ex:Ljava/lang/Exception;
    throw v1
.end method

.method public static decodeBitmapByPath(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;ZII)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "path"
    .parameter "bitmapOptions"
    .parameter "filter"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 1953
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    move-object v0, v8

    .line 1991
    :cond_1
    :goto_0
    return-object v0

    .line 1957
    :cond_2
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 1960
    .local v5, scale:Z
    :goto_1
    const/4 v4, 0x1

    .line 1962
    .local v4, sampleSize:I
    if-eqz v5, :cond_4

    .line 1963
    const/4 v7, 0x1

    :try_start_0
    iput v7, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1964
    const/4 v7, 0x1

    iput-boolean v7, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1965
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1966
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v7, 0x1

    .line 1967
    .local v3, nextWidth:I
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v7, 0x1

    .line 1968
    .local v2, nextHeight:I
    :goto_2
    if-le v3, p3, :cond_4

    if-le v2, p4, :cond_4

    .line 1969
    shl-int/lit8 v4, v4, 0x1

    .line 1970
    shr-int/lit8 v3, v3, 0x1

    .line 1971
    shr-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    .end local v4           #sampleSize:I
    .end local v5           #scale:Z
    :cond_3
    move v5, v7

    .line 1957
    goto :goto_1

    .line 1975
    .restart local v4       #sampleSize:I
    .restart local v5       #scale:Z
    :cond_4
    iput v4, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1976
    const/4 v7, 0x0

    iput-boolean v7, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1977
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1979
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 1980
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v7, p3, :cond_5

    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v7, p4, :cond_1

    .line 1981
    :cond_5
    invoke-static {v0, p3, p4, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1982
    .local v6, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    move-object v0, v6

    goto :goto_0

    .line 1988
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1989
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodeBitmapByPath failed, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 1991
    goto :goto_0
.end method

.method public static deleteArrayItem([III)V
    .locals 2
    .parameter "list"
    .parameter "length"
    .parameter "position"

    .prologue
    .line 3626
    if-eqz p0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p1, :cond_0

    array-length v1, p0

    if-ge v1, p1, :cond_1

    .line 3632
    :cond_0
    return-void

    .line 3629
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    .line 3630
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    aput v1, p0, v0

    .line 3629
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static deleteDrmTracks(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1105
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://drm"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "[MusicUtils]"

    const-string v3, "deleteDrmTracks SecurityException"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deletePlaylistTrack(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    .local v0, where:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_playlists_map.playlist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "external"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 960
    return-void
.end method

.method public static deletePlaylistTrack(Landroid/content/Context;J[I)V
    .locals 9
    .parameter "context"
    .parameter "plid"
    .parameter "list"

    .prologue
    const/4 v8, 0x0

    .line 963
    if-eqz p3, :cond_2

    array-length v4, p3

    if-lez v4, :cond_2

    .line 964
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 965
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "audio_playlists_map._id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    array-length v2, p3

    .line 967
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 968
    aget v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 969
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 970
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "external"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 978
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0006

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 985
    .end local v0           #i:I
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #size:I
    .end local v3           #where:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public static deletePlaylists(Landroid/content/Context;[I)V
    .locals 9
    .parameter "context"
    .parameter "list"

    .prologue
    const/4 v8, 0x0

    .line 988
    if-eqz p1, :cond_2

    array-length v4, p1

    if-lez v4, :cond_2

    .line 989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 990
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    array-length v2, p1

    .line 992
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 993
    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 994
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 995
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1002
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0005

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1004
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1010
    .end local v0           #i:I
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #size:I
    .end local v3           #where:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public static deleteTracks(Landroid/content/Context;[I)V
    .locals 19
    .parameter "context"
    .parameter "list"

    .prologue
    .line 1014
    const/4 v13, 0x3

    new-array v5, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "_id"

    aput-object v14, v5, v13

    const/4 v13, 0x1

    const-string v14, "_data"

    aput-object v14, v5, v13

    const/4 v13, 0x2

    const-string v14, "album_id"

    aput-object v14, v5, v13

    .line 1018
    .local v5, cols:[Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v5, v13, v1}, Lcom/htc/music/util/ContentUtils;->getTracks(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)Landroid/database/Cursor;

    move-result-object v4

    .line 1020
    .local v4, c:Landroid/database/Cursor;
    if-eqz v4, :cond_8

    .line 1024
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v13, :cond_1

    .line 1026
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1027
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1029
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1030
    .local v9, id:I
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13, v9}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    .line 1032
    const/4 v13, 0x2

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1033
    .local v2, artIndex:I
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :try_start_1
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 1035
    .local v3, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v3, :cond_0

    .line 1036
    invoke-virtual {v3}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    .line 1037
    const/4 v3, 0x0

    .line 1039
    :cond_0
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1043
    .end local v2           #artIndex:I
    .end local v3           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v9           #id:I
    :catch_0
    move-exception v13

    .line 1048
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1049
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v13, "_id IN ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v8, v13, :cond_3

    .line 1051
    aget v13, p1, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1052
    move-object/from16 v0, p1

    array-length v13, v0

    add-int/lit8 v13, v13, -0x1

    if-ge v8, v13, :cond_2

    .line 1053
    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1040
    .end local v8           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    .restart local v2       #artIndex:I
    .restart local v9       #id:I
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v13
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1056
    .end local v2           #artIndex:I
    .end local v9           #id:I
    .restart local v8       #i:I
    .restart local v12       #where:Ljava/lang/StringBuilder;
    :cond_3
    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1061
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1062
    :cond_4
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-nez v13, :cond_7

    .line 1063
    const/4 v13, 0x1

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1064
    .local v11, name:Ljava/lang/String;
    const-string v13, "[MusicUtils]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "delete tracks:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    if-eqz v11, :cond_4

    .line 1066
    const-string v13, "content://drm/"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1067
    const-string v13, "[MusicUtils]"

    const-string v14, "delete drm file"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 1069
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1071
    :cond_5
    const-string v13, "[MusicUtils]"

    const-string v14, "delete local file"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v7, f:Ljava/io/File;
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1078
    const-string v13, "[MusicUtils]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to delete file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1081
    :catch_1
    move-exception v6

    .line 1082
    .local v6, ex:Ljava/lang/SecurityException;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1089
    .end local v6           #ex:Ljava/lang/SecurityException;
    .end local v7           #f:Ljava/io/File;
    .end local v11           #name:Ljava/lang/String;
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1090
    const/4 v4, 0x0

    .line 1093
    .end local v8           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e0002

    move-object/from16 v0, p1

    array-length v15, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1096
    .local v10, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v10, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1100
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "content://media"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1101
    return-void
.end method

.method public static deleteTracksByCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 2843
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 2844
    :cond_0
    const/4 v8, 0x0

    .line 2923
    :goto_0
    return-object v8

    .line 2847
    :cond_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 2851
    .local v7, len:I
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2852
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2854
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2855
    .local v6, id:I
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v6}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    .line 2857
    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2858
    .local v1, artIndex:I
    sget-object v11, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2859
    :try_start_2
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 2860
    .local v2, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v2, :cond_2

    .line 2861
    invoke-virtual {v2}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    .line 2862
    const/4 v2, 0x0

    .line 2864
    :cond_2
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2865
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2866
    :try_start_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2868
    .end local v1           #artIndex:I
    .end local v2           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v6           #id:I
    :catch_0
    move-exception v10

    .line 2872
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2877
    .local v3, delete_row_number:I
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteTracksByCursor,delete row numbers:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in music db."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2881
    :cond_4
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    .line 2882
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2883
    .local v9, name:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 2884
    const-string v10, "content://drm/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2885
    const-string v10, "[MusicUtils]"

    const-string v11, "deleteTracksByCursor,delete drm file"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2887
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 2888
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 2889
    :catch_1
    move-exception v4

    .line 2890
    .local v4, ex:Ljava/lang/SecurityException;
    :try_start_6
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to delete file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 2921
    .end local v3           #delete_row_number:I
    .end local v4           #ex:Ljava/lang/SecurityException;
    .end local v7           #len:I
    .end local v9           #name:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 2922
    .local v4, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_7
    const-string v10, "[MusicUtils]"

    const-string v11, "UnsupportedOperationException:"

    invoke-static {v10, v11, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2923
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2865
    .end local v4           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v1       #artIndex:I
    .restart local v6       #id:I
    .restart local v7       #len:I
    :catchall_0
    move-exception v10

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_2

    .line 2924
    .end local v1           #artIndex:I
    .end local v6           #id:I
    .end local v7           #len:I
    :catchall_1
    move-exception v10

    throw v10

    .line 2894
    .restart local v3       #delete_row_number:I
    .restart local v7       #len:I
    .restart local v9       #name:Ljava/lang/String;
    :cond_5
    :try_start_a
    const-string v10, "[MusicUtils]"

    const-string v11, "deleteTracksByCursor,delete local file"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_2

    .line 2897
    .local v5, f:Ljava/io/File;
    :try_start_b
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_6

    .line 2901
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to delete file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 2904
    :catch_3
    move-exception v4

    .line 2905
    .local v4, ex:Ljava/lang/SecurityException;
    :try_start_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 2913
    .end local v4           #ex:Ljava/lang/SecurityException;
    .end local v5           #f:Ljava/io/File;
    .end local v9           #name:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0002

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v7, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2919
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "content://media"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0
.end method

.method public static deleteTracksForAlbum(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "table"
    .parameter "albumId"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 2936
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const-string v0, "album_id"

    aput-object v0, v3, v6

    const/4 v0, 0x3

    const-string v1, "artist_id"

    aput-object v1, v3, v0

    .line 2941
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p2, p3, p4, p5}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2942
    .local v4, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    if-ne p1, v6, :cond_0

    move-object v0, p0

    .line 2945
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 2947
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "albumId"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    .line 2931
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    return-void
.end method

.method public static deleteTracksForAlbums(Landroid/content/Context;I[I)V
    .locals 7
    .parameter "context"
    .parameter "table"
    .parameter "albumId"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    .line 2969
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const-string v0, "album_id"

    aput-object v0, v3, v2

    .line 2974
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->getQueryStringForAlbums([I)Ljava/lang/String;

    move-result-object v4

    .line 2975
    .local v4, where:Ljava/lang/String;
    if-ne p1, v2, :cond_0

    move-object v0, p0

    .line 2976
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 2978
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteTracksForArtist(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "table"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 2989
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const-string v0, "album_id"

    aput-object v0, v3, v6

    .line 2994
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {v5, p2, p3, p4}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2995
    .local v4, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    if-ne p1, v6, :cond_0

    move-object v0, p0

    .line 2998
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "album_key,track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 3003
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "album_key,track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteTracksForArtist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    .line 2984
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->deleteTracksForArtist(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    return-void
.end method

.method public static deleteTracksForComposer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 3035
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v3, v0

    .line 3042
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3043
    const-string v0, "<unknown>"

    invoke-static {v5, v5, v5, v0}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3047
    .local v4, where:Ljava/lang/String;
    :goto_0
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 3049
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    return-void

    .line 3045
    .end local v4           #where:Ljava/lang/String;
    :cond_0
    invoke-static {v5, v5, v5, p1}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #where:Ljava/lang/String;
    goto :goto_0
.end method

.method public static deleteTracksForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "fileFolderId"
    .parameter "drmFolderId"

    .prologue
    const/4 v5, 0x0

    .line 4508
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v3, v0

    .line 4513
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcom/htc/music/util/ContentUtils;->getFileDrmWhereDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .local v7, where:Ljava/lang/StringBuilder;
    move-object v0, p0

    .line 4515
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    const-string v1, "content://media/external/file"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v6, "title COLLATE NOCASE ASC"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4518
    return-void

    :cond_0
    move-object v4, v5

    .line 4515
    goto :goto_0
.end method

.method public static deleteTracksForGenre(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "genreId"

    .prologue
    const/4 v5, 0x0

    .line 3011
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v3, v0

    .line 3016
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {v5, v5, p1, v5}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3017
    .local v4, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    .line 3021
    .local v7, id:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 3022
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "title_key"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 3026
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    const-string v1, "external"

    invoke-static {v1, v7, v8}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "title_key"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static disableKeyguard(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 4208
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bp - disable. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    const/4 v1, 0x0

    .line 4210
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 4211
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 4212
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 4217
    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4219
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x8

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4221
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4222
    return-void

    .line 4214
    .end local v2           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    goto :goto_0
.end method

.method public static displayDatabaseError(Landroid/app/Activity;)V
    .locals 10
    .parameter "a"

    .prologue
    const v9, 0x7f07007c

    .line 1307
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1310
    .local v2, status:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1311
    const v3, 0x7f06003c

    .line 1316
    .local v3, title:I
    :goto_0
    const v1, 0x20400a0

    .line 1318
    .local v1, message:I
    const-string v6, "shared"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1319
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1320
    const v3, 0x7f060037

    .line 1321
    const v1, 0x7f060039

    .line 1346
    :goto_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 1347
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1348
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1349
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1355
    :cond_0
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1356
    if-eqz v5, :cond_1

    .line 1357
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    :cond_1
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1360
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 1361
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1362
    :cond_2
    return-void

    .line 1313
    .end local v1           #message:I
    .end local v3           #title:I
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #v:Landroid/view/View;
    :cond_3
    const v3, 0x7f06003b

    .restart local v3       #title:I
    goto :goto_0

    .line 1323
    .restart local v1       #message:I
    :cond_4
    const v3, 0x7f060036

    .line 1324
    const v1, 0x7f060038

    goto :goto_1

    .line 1327
    :cond_5
    const-string v6, "removed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1328
    const v3, 0x20401f5

    .line 1329
    const v1, 0x20400a0

    goto :goto_1

    .line 1330
    :cond_6
    const-string v6, "unmounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1331
    const v3, 0x20401f5

    .line 1332
    const v1, 0x20401fa

    goto :goto_1

    .line 1333
    :cond_7
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1338
    const-string v6, ""

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1340
    .local v0, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/ScanningProgressActivity;

    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1341
    const/16 v6, 0xb

    invoke-virtual {p0, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1343
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sd card: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static enableKeyguard(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 4225
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;Z)V

    .line 4226
    return-void
.end method

.method public static enableKeyguard(Landroid/app/Activity;Z)V
    .locals 6
    .parameter "activity"
    .parameter "onlyShowWhenLocked"

    .prologue
    .line 4229
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4230
    const-string v3, "[MusicUtils]"

    const-string v4, "bp - Not support for this project."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4251
    :goto_0
    return-void

    .line 4234
    :cond_0
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bp - enable. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4236
    const/4 v1, 0x0

    .line 4237
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 4238
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 4239
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 4244
    :goto_1
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4248
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4249
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bp - enable. value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4250
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 4241
    .end local v2           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    goto :goto_1
.end method

.method public static enableKeyguardNow(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 4266
    const-string v0, "[MusicUtils]"

    const-string v1, "bp - send broadcast."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.enablekeyguard"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4268
    return-void
.end method

.method public static filterFolderLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "location"

    .prologue
    .line 4613
    move-object v0, p0

    .line 4615
    .local v0, filterStr:Ljava/lang/String;
    if-eqz p0, :cond_1

    const-string v3, "/mnt"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4616
    const-string v3, "/mnt"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 4617
    .local v2, startIdx:I
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 4618
    .local v1, lastIdx:I
    if-ltz v2, :cond_0

    if-gt v2, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 4619
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4626
    .end local v1           #lastIdx:I
    .end local v2           #startIdx:I
    :cond_0
    :goto_0
    return-object v0

    .line 4623
    :cond_1
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterFolderLocation, location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAlbumArtBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "albumArtPath"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1920
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1921
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1922
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1924
    const/4 v2, 0x1

    invoke-static {p0, v0, v2, p1, p2}, Lcom/htc/music/util/MusicUtils;->decodeBitmapByPath(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;ZII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1949
    .local v1, tempBitmap:Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public static getAlbumListForArtist(Landroid/content/Context;I)[I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->getAlbumListForArtist(Landroid/content/Context;II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumListForArtist(Landroid/content/Context;II)[I
    .locals 7
    .parameter "context"
    .parameter "table"
    .parameter "id"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 705
    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "artist_id"

    aput-object v5, v0, v4

    const-string v5, "album_id"

    aput-object v5, v0, v3

    .line 708
    .local v0, ccols:[Ljava/lang/String;
    if-ne p1, v6, :cond_0

    :goto_0
    invoke-static {p0, v0, p2, v3}, Lcom/htc/music/util/ContentUtils;->getTracksForArtist(Landroid/content/Context;[Ljava/lang/String;IZ)Landroid/database/Cursor;

    move-result-object v1

    .line 709
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 710
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 711
    .local v2, list:[I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 712
    const/4 v1, 0x0

    .line 715
    .end local v2           #list:[I
    :goto_1
    return-object v2

    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_0
    move v3, v4

    .line 708
    goto :goto_0

    .line 715
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getAlbumListForCursor(Landroid/database/Cursor;)[I
    .locals 7
    .parameter "cursor"

    .prologue
    .line 586
    if-nez p0, :cond_1

    .line 587
    const-string v5, "[MusicUtils]"

    const-string v6, "getAlbumListForCursor, cursor is  null, return empty list"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 599
    :cond_0
    return-object v4

    .line 590
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 591
    .local v3, len:I
    new-array v4, v3, [I

    .line 592
    .local v4, list:[I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 593
    const-string v5, "album_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 594
    .local v0, colidx:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 595
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 596
    .local v2, id:I
    aput v2, v4, v1

    .line 597
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAlbumListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .parameter "context"
    .parameter "fileFId"
    .parameter "drmFId"

    .prologue
    .line 4492
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "album_id"

    aput-object v4, v1, v3

    .line 4496
    .local v1, filesCols:[Ljava/lang/String;
    invoke-static {p0, v1, p1, p2}, Lcom/htc/music/util/ContentUtils;->getTracksForFolder(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4498
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 4499
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 4500
    .local v2, list:[I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4501
    const/4 v0, 0x0

    .line 4504
    .end local v2           #list:[I
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAlbumListForGenre(Landroid/content/Context;I)[I
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 762
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "album_id"

    aput-object v4, v0, v3

    .line 765
    .local v0, ccols:[Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/htc/music/util/ContentUtils;->getTracksForGenre(Landroid/content/Context;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 766
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 767
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 768
    .local v2, list:[I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 769
    const/4 v1, 0x0

    .line 772
    .end local v2           #list:[I
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAlbumListForPlaylist(Landroid/content/Context;J)[I
    .locals 5
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 837
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "album_id"

    aput-object v4, v0, v3

    .line 840
    .local v0, ccols:[Ljava/lang/String;
    invoke-static {p0, v0, p1, p2}, Lcom/htc/music/util/ContentUtils;->getTracksForPlaylist(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 841
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 842
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 843
    .local v2, list:[I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 844
    const/4 v1, 0x0

    .line 847
    .end local v2           #list:[I
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAlbumListForSong(Landroid/content/Context;I)[I
    .locals 5
    .parameter "context"
    .parameter "audioId"

    .prologue
    .line 733
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "album_id"

    aput-object v4, v0, v3

    .line 736
    .local v0, ccols:[Ljava/lang/String;
    int-to-long v3, p1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/util/ContentUtils;->getTrack(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 737
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 738
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 739
    .local v2, list:[I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 740
    const/4 v1, 0x0

    .line 744
    .end local v2           #list:[I
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAllSongs(Landroid/content/Context;)[I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 851
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "_id"

    aput-object v7, v6, v8

    const-string v7, "title COLLATE NOCASE ASC"

    invoke-static {p0, v6, v7, v5}, Lcom/htc/music/util/ContentUtils;->getTracks(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)Landroid/database/Cursor;

    move-result-object v0

    .line 855
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_3

    .line 870
    :cond_0
    if-eqz v0, :cond_1

    .line 871
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 872
    const/4 v0, 0x0

    :cond_1
    move-object v4, v5

    .line 875
    :cond_2
    :goto_0
    return-object v4

    .line 858
    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 859
    .local v3, len:I
    new-array v4, v3, [I

    .line 860
    .local v4, list:[I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 861
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 862
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v4, v2

    .line 863
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 861
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 867
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #list:[I
    :catch_0
    move-exception v1

    .line 868
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 870
    if-eqz v0, :cond_4

    .line 871
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 872
    const/4 v0, 0x0

    :cond_4
    move-object v4, v5

    .line 875
    goto :goto_0

    .line 870
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 871
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 872
    const/4 v0, 0x0

    .line 870
    :cond_5
    throw v5

    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v4       #list:[I
    :cond_6
    if-eqz v0, :cond_2

    .line 871
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 872
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAppLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 4277
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4278
    :cond_0
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppLaunchIntent, packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " className = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4279
    const/4 v2, 0x0

    .line 4290
    :goto_0
    return-object v2

    .line 4283
    :cond_1
    const/high16 v0, 0x1020

    .line 4284
    .local v0, DEFAULT_LAUNCH_FLAG:I
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4285
    .local v1, component:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4286
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4287
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4288
    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 3948
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3949
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3951
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getArtWorkPath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "album_id"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2082
    if-gez p1, :cond_1

    .line 2113
    :cond_0
    :goto_0
    return-object v3

    .line 2085
    :cond_1
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2086
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 2087
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2088
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2089
    .local v7, count:I
    :cond_2
    if-eq v7, v10, :cond_4

    .line 2092
    if-eqz v6, :cond_3

    .line 2093
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2095
    :cond_3
    if-nez v7, :cond_0

    goto :goto_0

    .line 2101
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2102
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2103
    .local v8, i:I
    if-ltz v8, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2104
    .local v9, path:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2105
    if-eqz v9, :cond_0

    move-object v3, v9

    .line 2109
    goto :goto_0

    .end local v9           #path:Ljava/lang/String;
    :cond_5
    move-object v9, v3

    .line 2103
    goto :goto_1
.end method

.method public static getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1867
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1868
    .local v5, res:Landroid/content/ContentResolver;
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v10, p1

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1869
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 1870
    const/4 v2, 0x0

    .line 1872
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v9, "r"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1873
    const/4 v6, 0x1

    .line 1878
    .local v6, sampleSize:I
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1879
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1881
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v9, 0x1

    .line 1882
    .local v4, nextWidth:I
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v9, 0x1

    .line 1883
    .local v3, nextHeight:I
    :goto_0
    if-le v4, p2, :cond_0

    if-le v3, p3, :cond_0

    .line 1884
    shl-int/lit8 v6, v6, 0x1

    .line 1885
    shr-int/lit8 v4, v4, 0x1

    .line 1886
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1889
    :cond_0
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1890
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1891
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1894
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 1896
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v9, p2, :cond_1

    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v9, p3, :cond_2

    .line 1897
    :cond_1
    const/4 v9, 0x1

    invoke-static {v0, p2, p3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1898
    .local v7, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1899
    move-object v0, v7

    .line 1909
    .end local v7           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v2, :cond_3

    .line 1910
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1915
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v6           #sampleSize:I
    :cond_3
    :goto_1
    return-object v0

    .line 1905
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 1906
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "[MusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getArtworkQuick failed album_id= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1909
    if-eqz v2, :cond_4

    .line 1910
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1915
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1908
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v9

    .line 1909
    if-eqz v2, :cond_5

    .line 1910
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1908
    :cond_5
    :goto_3
    throw v9

    .line 1904
    :catch_1
    move-exception v9

    .line 1909
    if-eqz v2, :cond_4

    .line 1910
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1911
    :catch_2
    move-exception v9

    goto :goto_2

    :catch_3
    move-exception v10

    goto :goto_3

    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v3       #nextHeight:I
    .restart local v4       #nextWidth:I
    .restart local v6       #sampleSize:I
    :catch_4
    move-exception v9

    goto :goto_1
.end method

.method public static getAudioType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "audioPath"

    .prologue
    .line 3751
    const/4 v0, 0x0

    .line 3753
    .local v0, currentAudioType:I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3754
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getDrmType(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 3757
    :cond_0
    return v0
.end method

.method public static getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "pref"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 4412
    if-nez p0, :cond_0

    .line 4419
    .end local p2
    :goto_0
    return p2

    .line 4416
    .restart local p2
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 4417
    :catch_0
    move-exception v0

    .line 4418
    .local v0, cce:Ljava/lang/ClassCastException;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBoolean] CCE, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCachedArtwork(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "context"
    .parameter "artIndex"
    .parameter "defaultArtwork"

    .prologue
    .line 1828
    const/4 v2, 0x0

    .line 1829
    .local v2, d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 1830
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    .line 1831
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1832
    if-nez v2, :cond_0

    .line 1833
    move-object v2, p2

    .line 1834
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1835
    .local v4, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1836
    .local v6, w:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1837
    .local v3, h:I
    invoke-static {p0, p1, v6, v3}, Lcom/htc/music/util/MusicUtils;->getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1838
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1839
    new-instance v2, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v1}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1840
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 1842
    :try_start_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 1843
    .local v5, value:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_1

    .line 1844
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1851
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v3           #h:I
    .end local v4           #icon:Landroid/graphics/Bitmap;
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    .end local v6           #w:I
    :cond_0
    return-object v2

    .line 1831
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1846
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v3       #h:I
    .restart local v4       #icon:Landroid/graphics/Bitmap;
    .restart local v5       #value:Landroid/graphics/drawable/Drawable;
    .restart local v6       #w:I
    :cond_1
    move-object v2, v5

    goto :goto_0

    .line 1848
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7
.end method

.method public static getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "drmConstraint"

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3121
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-nez v9, :cond_2

    .line 3122
    :cond_0
    const/4 v7, 0x0

    .line 3151
    :cond_1
    :goto_0
    return-object v7

    .line 3124
    :cond_2
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v8

    .line 3125
    .local v8, nCount:I
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v4

    .line 3126
    .local v4, dateStart:Ljava/util/Date;
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v3

    .line 3127
    .local v3, dateEnd:Ljava/util/Date;
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v5

    .line 3128
    .local v5, lInterval:J
    const/4 v7, 0x0

    .line 3129
    .local v7, message:Ljava/lang/String;
    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_3

    .line 3133
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 3134
    .local v1, currentTime:Landroid/text/format/Time;
    if-eqz v1, :cond_1

    .line 3135
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 3136
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    add-long/2addr v9, v5

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 3137
    .local v2, date:Ljava/util/Date;
    if-eqz v2, :cond_1

    .line 3138
    const v9, 0x7f06009d

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3140
    .end local v1           #currentTime:Landroid/text/format/Time;
    .end local v2           #date:Ljava/util/Date;
    :cond_3
    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 3141
    if-ne v8, v13, :cond_4

    .line 3142
    const v9, 0x7f06009a

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3143
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 3144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3145
    .local v0, count:Ljava/lang/String;
    const v9, 0x7f06009b

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v0, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3146
    goto :goto_0

    .line 3147
    .end local v0           #count:Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v11, :cond_6

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 3148
    const v9, 0x7f06009c

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 3150
    :cond_6
    const-string v9, "[MusicUtils]"

    const-string v10, "DRM Constraint without Interval, Start Date, End Date and Count."

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static getContentURIForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 1381
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCurDmr(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 3220
    const-string v2, "[MusicUtils]"

    const-string v3, "getCurDMR()+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {v0, p0, v4, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    .line 3225
    .local v0, dlnaManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v1

    .line 3227
    .local v1, szDMR:Ljava/lang/String;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurDMR():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3229
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    .line 3232
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "My Device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 3234
    :cond_1
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurDMR()- ... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    return-object v1
.end method

.method public static getCurDms(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3239
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_0

    .line 3240
    const-string v3, "[MusicUtils]"

    const-string v4, "service is null dms return null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 3252
    :goto_0
    return-object v0

    .line 3244
    :cond_0
    const/4 v0, 0x0

    .line 3246
    .local v0, dms_server:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getDmsServer()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3247
    :catch_0
    move-exception v1

    .line 3248
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "[MusicUtils]"

    const-string v4, "RemoteException in getCurDms dms return null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 3249
    goto :goto_0
.end method

.method public static getCurrentAlbumId()I
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 408
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 412
    :goto_0
    return v0

    .line 409
    :catch_0
    move-exception v0

    .line 412
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()I
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 418
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getArtistId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 422
    :goto_0
    return v0

    .line 419
    :catch_0
    move-exception v0

    .line 422
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()I
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 432
    :goto_0
    return v0

    .line 429
    :catch_0
    move-exception v0

    .line 432
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentPluginDescription()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3171
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 3173
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3180
    .local v0, e:Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v1

    .line 3174
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 3175
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3176
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPluginDescription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurrentShuffleMode()I
    .locals 2

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, mode:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 439
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 440
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDLNAArtwork(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "filepath"
    .parameter "width"

    .prologue
    .line 2141
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDLNAThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2142
    .local v2, thumb:Landroid/graphics/Bitmap;
    move v0, p2

    .line 2143
    .local v0, defSize:I
    const/4 v1, 0x0

    .line 2145
    .local v1, fin:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 2146
    const/4 v3, 0x1

    invoke-static {v2, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2148
    :cond_0
    return-object v1
.end method

.method public static getDLNAArtwork(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "filepath"
    .parameter "icon"

    .prologue
    .line 2118
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDLNAThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2121
    .local v2, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2122
    .local v0, defSize:I
    const/4 v1, 0x0

    .line 2129
    .local v1, fin:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 2130
    const/4 v3, 0x1

    invoke-static {v2, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2137
    :cond_0
    return-object v1
.end method

.method public static getDLNAAssetFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "context"
    .parameter "filepath"

    .prologue
    const/4 v4, 0x0

    .line 2156
    const/4 v1, 0x0

    .line 2159
    .local v1, cpClient:Landroid/content/ContentProviderClient;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://dlna/images"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v4

    .line 2183
    :cond_0
    :goto_0
    return-object v0

    .line 2164
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2166
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 2169
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2178
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v4

    .line 2183
    goto :goto_0

    .line 2170
    :catch_0
    move-exception v2

    .line 2172
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2173
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2175
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDLNAThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "filepath"

    .prologue
    const/4 v6, 0x0

    .line 2189
    const/4 v2, 0x0

    .line 2192
    .local v2, cpClient:Landroid/content/ContentProviderClient;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://dlna/images"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v1, v6

    .line 2256
    :cond_0
    :goto_0
    return-object v1

    .line 2198
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2204
    .local v5, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 2205
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v7, "r"

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2217
    const/4 v1, 0x0

    .line 2218
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 2219
    .local v4, pfDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2221
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2222
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2223
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2227
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2228
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2229
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2232
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2242
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2253
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 2254
    const/4 v2, 0x0

    move-object v1, v6

    .line 2256
    goto :goto_0

    .line 2248
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "date"

    .prologue
    .line 3103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3104
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3105
    const-string v0, "MM-dd-yyyy"

    .line 3107
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3108
    .local v3, setting:Ljava/lang/String;
    const-string v4, "24"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3110
    .local v2, is24Hour:Z
    if-eqz v2, :cond_1

    .line 3111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kk:mm:ss"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3116
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3117
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3113
    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hh:mm:ss a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDownloadedAlbumartPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 4294
    const-string v4, "album"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 4295
    .local v3, id:I
    if-ne v3, v5, :cond_1

    .line 4311
    :cond_0
    :goto_0
    return-object v0

    .line 4296
    :cond_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4298
    .local v2, albumName:Ljava/lang/String;
    const-string v4, "album_key"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 4299
    if-eq v3, v5, :cond_0

    .line 4300
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4302
    .local v1, albumKey:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Android/data/com.htc.musicenhancer/files/.albumarts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/music/util/MusicUtils;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->processExternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->processAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4307
    .local v0, albumArtPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4308
    const-string v4, "[MusicUtils]"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDownloadedAlbumartPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "albumName"
    .parameter "albumKey"

    .prologue
    .line 4315
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4316
    :cond_0
    const/4 v0, 0x0

    .line 4325
    :goto_0
    return-object v0

    .line 4319
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.musicenhancer/files/.albumarts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/music/util/MusicUtils;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->processExternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->processAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4325
    .local v0, albumArtPath:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDownloadedAlbumartRevertPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 4329
    const-string v4, "album"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 4330
    .local v2, id:I
    if-ne v2, v5, :cond_1

    .line 4344
    :cond_0
    :goto_0
    return-object v3

    .line 4331
    :cond_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4333
    .local v1, albumName:Ljava/lang/String;
    const-string v4, "album_key"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 4334
    if-eq v2, v5, :cond_0

    .line 4335
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4337
    .local v0, albumKey:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Android/data/com.htc.musicenhancer/files/.albumarts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/music/util/MusicUtils;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->processExternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->processAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4344
    .local v3, revertAlbumArtPath:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDrmAudioIdForDrmBucketId(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "drmBucketId"

    .prologue
    const/4 v4, 0x0

    .line 4521
    const/4 v6, 0x0

    .line 4523
    .local v6, drmAudioId:[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 4524
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 4525
    .local v9, drmWhere:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4527
    const-string v0, "content://drm/audio"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4535
    .local v7, drmCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .local v8, drmFileCount:I
    if-lez v8, :cond_0

    .line 4536
    new-array v6, v8, [Ljava/lang/String;

    .line 4537
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4538
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 4539
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    .line 4540
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 4538
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4544
    .end local v8           #drmFileCount:I
    .end local v10           #i:I
    :cond_0
    if-eqz v7, :cond_1

    .line 4545
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4550
    .end local v7           #drmCursor:Landroid/database/Cursor;
    .end local v9           #drmWhere:Ljava/lang/StringBuilder;
    :cond_1
    return-object v6
.end method

.method public static getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 2601
    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "content_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "content_boundary_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "delivery_type"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "message_type"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "existence"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "date_added"

    aput-object v1, v2, v0

    .local v2, cols:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 2608
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2609
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v9, 0x1

    const/4 v5, -0x1

    .line 2613
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDrmStatus uri= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2615
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 2616
    .local v2, drmCursor:Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 2617
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cursor = null, uri= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    :goto_0
    return v5

    .line 2621
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 2622
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2623
    const/4 v2, 0x0

    .line 2624
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Count = 0, uri= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2628
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2629
    const/4 v5, 0x0

    .line 2631
    .local v5, status:I
    const-string v6, "delivery_type"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2633
    .local v0, deliveryType:I
    const/4 v1, 0x0

    .line 2634
    .local v1, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliveryType= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    packed-switch v0, :pswitch_data_0

    .line 2692
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such Delivery Type= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    const/4 v5, -0x1

    .line 2697
    :goto_1
    :pswitch_0
    :sswitch_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2698
    const/4 v2, 0x0

    .line 2699
    goto :goto_0

    .line 2642
    :pswitch_1
    invoke-static {v4, p1, v9}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v1

    .line 2644
    if-nez v1, :cond_2

    .line 2645
    const-string v6, "[MusicUtils]"

    const-string v7, "COMBINED DELIVERY: No rights"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    const/4 v5, 0x1

    goto :goto_1

    .line 2648
    :cond_2
    invoke-static {v4, v1, p1}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v3

    .line 2649
    .local v3, error:I
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkExpiration retCode= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    sparse-switch v3, :sswitch_data_0

    .line 2658
    const/4 v5, 0x1

    goto :goto_1

    .line 2654
    :sswitch_1
    const/4 v5, 0x4

    .line 2655
    goto :goto_1

    .line 2666
    .end local v3           #error:I
    :pswitch_2
    invoke-static {v4, p1, v9}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v1

    .line 2668
    if-nez v1, :cond_3

    .line 2669
    const-string v6, "[MusicUtils]"

    const-string v7, "DRM SEPARATE DELIVERY: No rights"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    const/4 v5, 0x3

    goto :goto_1

    .line 2672
    :cond_3
    invoke-static {v4, v1, p1}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v3

    .line 2673
    .restart local v3       #error:I
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkExpiration retCode= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    packed-switch v3, :pswitch_data_1

    .line 2685
    :pswitch_3
    const/4 v5, 0x2

    goto :goto_1

    .line 2678
    :pswitch_4
    const/4 v5, 0x4

    .line 2679
    goto :goto_1

    .line 2681
    :pswitch_5
    const/4 v5, 0x3

    .line 2682
    goto :goto_1

    .line 2636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2650
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch

    .line 2674
    :pswitch_data_1
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 2561
    const/4 v8, -0x1

    .line 2562
    .local v8, sizeInBytes:I
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "_size"

    aput-object v0, v2, v9

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2565
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 2566
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2567
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2568
    .local v7, i:I
    if-ltz v7, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2569
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2572
    .end local v7           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 2573
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2574
    const/4 v6, 0x0

    .line 2576
    :cond_1
    return v8
.end method

.method public static getDrmType(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2703
    const/4 v0, 0x0

    .line 2705
    .local v0, deliveryType:I
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 2706
    .local v2, drmCursor:Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 2707
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cursor = null, uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 2726
    .end local v0           #deliveryType:I
    .local v1, deliveryType:I
    :goto_0
    return v1

    .line 2711
    .end local v1           #deliveryType:I
    .restart local v0       #deliveryType:I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2712
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2713
    const/4 v2, 0x0

    .line 2714
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count = 0, uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 2715
    .end local v0           #deliveryType:I
    .restart local v1       #deliveryType:I
    goto :goto_0

    .line 2718
    .end local v1           #deliveryType:I
    .restart local v0       #deliveryType:I
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2720
    const-string v3, "delivery_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2722
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliveryType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2725
    const/4 v2, 0x0

    move v1, v0

    .line 2726
    .end local v0           #deliveryType:I
    .restart local v1       #deliveryType:I
    goto :goto_0
.end method

.method public static getDrmType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2730
    const/4 v7, 0x0

    .line 2732
    .local v7, deliveryType:I
    const-string v3, "_data=?"

    .line 2733
    .local v3, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 2737
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const-string v0, "delivery_type"

    aput-object v0, v2, v5

    .line 2740
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2741
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 2742
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cursor = null, data= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 2758
    .end local v7           #deliveryType:I
    .local v8, deliveryType:I
    :goto_0
    return v8

    .line 2746
    .end local v8           #deliveryType:I
    .restart local v7       #deliveryType:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2747
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2748
    const/4 v6, 0x0

    .line 2749
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count = 0, data= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 2750
    .end local v7           #deliveryType:I
    .restart local v8       #deliveryType:I
    goto :goto_0

    .line 2753
    .end local v8           #deliveryType:I
    .restart local v7       #deliveryType:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2754
    const-string v0, "delivery_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2755
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliveryType= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2757
    const/4 v6, 0x0

    move v8, v7

    .line 2758
    .end local v7           #deliveryType:I
    .restart local v8       #deliveryType:I
    goto :goto_0
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 9
    .parameter "file"

    .prologue
    .line 524
    const-wide/16 v5, 0x0

    .line 526
    .local v5, size:J
    if-nez p0, :cond_0

    .line 527
    const-wide/16 v7, 0x0

    .line 536
    :goto_0
    return-wide v7

    .line 528
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 529
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_0

    .line 531
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 532
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 533
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 534
    .local v1, currentFile:Ljava/io/File;
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 533
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #currentFile:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    move-wide v7, v5

    .line 536
    goto :goto_0
.end method

.method public static getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 4
    .parameter "pref"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 4424
    if-nez p0, :cond_0

    .line 4431
    .end local p2
    :goto_0
    return p2

    .line 4428
    .restart local p2
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 4429
    :catch_0
    move-exception v0

    .line 4430
    .local v0, cce:Ljava/lang/ClassCastException;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getInt] CCE, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getIsInternalEnough()Z
    .locals 2

    .prologue
    .line 466
    const-class v0, Lcom/htc/music/util/MusicUtils;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLaunchAmazonIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 3537
    const-string v0, "android.intent.action.MAIN"

    .line 3538
    .local v0, ACTION_LAUNCH:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.amazon.mp3"

    const-string v5, "com.amazon.mp3.client.activity.LauncherActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    .local v2, Mp3Component:Landroid/content/ComponentName;
    const/high16 v1, 0x1000

    .line 3541
    .local v1, FLAG_ACTIVITY_NEW_TASK:I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3542
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3543
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3547
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3548
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3550
    return-object v3
.end method

.method private static getLaunchGlanceLayerIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .parameter "context"

    .prologue
    .line 1683
    instance-of v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v3, :cond_1

    move-object v3, p0

    check-cast v3, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v3, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v3, :cond_1

    .line 1684
    const/4 v2, 0x0

    .line 1712
    .end local p0
    :cond_0
    :goto_0
    return-object v2

    .line 1687
    .restart local p0
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1688
    .local v2, intent:Landroid/content/Intent;
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 1689
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1694
    :cond_2
    :goto_1
    const-string v3, "showEmptyQueue"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1696
    const/4 v1, 0x1

    .line 1697
    .local v1, fromLockScreen:Z
    if-eqz p0, :cond_5

    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_5

    move-object v0, p0

    .line 1698
    check-cast v0, Landroid/app/Activity;

    .line 1700
    .local v0, activity:Landroid/app/Activity;
    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1701
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_2

    .line 1690
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #fromLockScreen:Z
    :cond_3
    instance-of v3, p0, Landroid/app/Service;

    if-eqz v3, :cond_2

    .line 1691
    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 1703
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #fromLockScreen:Z
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "from-lockscreen"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1704
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getLaunchGlanceLayerIntent] bp. flag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    .end local v0           #activity:Landroid/app/Activity;
    :cond_5
    const-string v3, "from-lockscreen"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1708
    instance-of v3, p0, Lcom/htc/music/HtcMusic;

    if-eqz v3, :cond_0

    .line 1709
    const-string v3, "ShowNowPlaying"

    check-cast p0, Lcom/htc/music/HtcMusic;

    .end local p0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getLaunchVMMIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 3887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.vmm.music.ListView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3888
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public static getLaunchVerizonMODIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 3526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pv.verizon.mod.ACTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3527
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "getContent"

    const-string v2, "wh|track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3529
    return-object v0
.end method

.method public static getListForCursor(Landroid/database/Cursor;)Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, -0x1

    .line 4644
    new-instance v6, Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    invoke-direct {v6}, Lcom/htc/music/util/MusicUtils$PlayAllListPair;-><init>()V

    .line 4645
    .local v6, retPL:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 4646
    const-string v7, "audio_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4647
    .local v5, idxID:I
    const-string v7, "album_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4648
    .local v4, idxAlbumID:I
    if-ne v5, v8, :cond_0

    .line 4649
    const-string v7, "_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4651
    :cond_0
    if-ne v5, v8, :cond_1

    .line 4652
    const-string v7, "_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4653
    const-string v7, "album_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4655
    :cond_1
    if-ltz v5, :cond_3

    if-ltz v4, :cond_3

    .line 4656
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4657
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 4658
    .local v1, count:I
    new-array v3, v1, [I

    .line 4659
    .local v3, iDList:[I
    new-array v0, v1, [I

    .line 4660
    .local v0, albumIDList:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4661
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v3, v2

    .line 4662
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v0, v2

    .line 4663
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 4660
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4666
    :cond_2
    iput-object v3, v6, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    .line 4667
    iput-object v0, v6, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    .line 4674
    .end local v0           #albumIDList:[I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #iDList:[I
    .end local v4           #idxAlbumID:I
    .end local v5           #idxID:I
    :goto_1
    return-object v6

    .line 4672
    :cond_3
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    iput-object v7, v6, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    .line 4673
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    iput-object v7, v6, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    goto :goto_1
.end method

.method public static getListForCursorByTrackList(Landroid/database/Cursor;[I)Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    .locals 13
    .parameter "cursor"
    .parameter "trackList"

    .prologue
    const/4 v11, -0x1

    .line 4678
    new-instance v9, Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    invoke-direct {v9}, Lcom/htc/music/util/MusicUtils$PlayAllListPair;-><init>()V

    .line 4680
    .local v9, retPalp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-eqz v10, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    .line 4681
    :cond_0
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getAlbumListByTrackListForCursor] Unable to get album list. cursor="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";trackList="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4682
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    iput-object v10, v9, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    .line 4683
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    iput-object v10, v9, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    .line 4724
    :goto_0
    return-object v9

    .line 4687
    :cond_1
    const-string v10, "audio_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4688
    .local v5, idIdx:I
    if-ne v5, v11, :cond_2

    .line 4689
    const-string v10, "_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4691
    :cond_2
    const-string v10, "album_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4692
    .local v0, albumIdIdx:I
    if-eq v5, v11, :cond_3

    if-ne v0, v11, :cond_4

    .line 4693
    :cond_3
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getAlbumListByTrackListForCursor] Unable to get album list. idIdx="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";albumIdIdx="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4694
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    iput-object v10, v9, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    .line 4695
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    iput-object v10, v9, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    goto :goto_0

    .line 4699
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4700
    .local v3, cursorCount:I
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 4701
    .local v8, map:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4702
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 4703
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4704
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 4702
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4707
    :cond_5
    new-array v7, v3, [I

    .line 4708
    .local v7, list:[I
    new-array v1, v3, [I

    .line 4709
    .local v1, albumList:[I
    const/4 v2, 0x0

    .line 4710
    .local v2, count:I
    const/4 v4, 0x0

    :goto_2
    array-length v10, p1

    if-ge v4, v10, :cond_7

    .line 4711
    aget v10, p1, v4

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 4712
    .local v6, ii:Ljava/lang/Integer;
    if-eqz v6, :cond_6

    .line 4713
    aget v10, p1, v4

    aput v10, v7, v2

    .line 4714
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v1, v2

    .line 4715
    add-int/lit8 v2, v2, 0x1

    .line 4718
    :cond_6
    if-ne v2, v3, :cond_8

    .line 4722
    .end local v6           #ii:Ljava/lang/Integer;
    :cond_7
    iput-object v7, v9, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    .line 4723
    iput-object v1, v9, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    goto/16 :goto_0

    .line 4710
    .restart local v6       #ii:Ljava/lang/Integer;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static getListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    .locals 3
    .parameter "context"
    .parameter "fileFId"
    .parameter "drmFId"

    .prologue
    .line 4460
    const/4 v1, 0x0

    .line 4462
    .local v1, filesCols:[Ljava/lang/String;
    sget-object v1, Lcom/htc/music/util/MusicUtils;->PLAY_FOLDER_COLS:[Ljava/lang/String;

    .line 4464
    invoke-static {p0, v1, p1, p2}, Lcom/htc/music/util/ContentUtils;->getTracksForFolder(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4467
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getListForCursor(Landroid/database/Cursor;)Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4469
    if-eqz v0, :cond_0

    .line 4470
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4467
    :cond_0
    return-object v2

    .line 4469
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 4470
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4469
    :cond_1
    throw v2
.end method

.method public static getLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 4
    .parameter "pref"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 4436
    if-nez p0, :cond_0

    .line 4443
    .end local p2
    :goto_0
    return-wide p2

    .line 4440
    .restart local p2
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 4441
    :catch_0
    move-exception v0

    .line 4442
    .local v0, cce:Ljava/lang/ClassCastException;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getLong] CCE, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "text"
    .parameter "filter"

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x21

    const/4 v7, -0x1

    .line 3653
    if-nez p0, :cond_1

    .line 3671
    :cond_0
    :goto_0
    return-object v3

    .line 3654
    :cond_1
    if-eqz p1, :cond_0

    .line 3655
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3656
    .local v3, markedString:Landroid/text/SpannableString;
    if-eqz p2, :cond_0

    .line 3659
    const/4 v2, -0x1

    .line 3660
    .local v2, index:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 3661
    .local v1, filterLength:I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v7, :cond_0

    .line 3662
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v6, v1, v2

    invoke-virtual {v3, v5, v2, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3664
    const v0, 0x2060004

    .line 3665
    .local v0, color:I
    if-eqz v0, :cond_0

    .line 3666
    const-string v5, "text_selection_color"

    invoke-static {p0, v5, v0}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinColorResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 3667
    .local v4, textviewHightlightColorId:I
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v6, v1, v2

    invoke-virtual {v3, v5, v2, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static getPlaylistId(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 4177
    if-nez p1, :cond_1

    .line 4178
    const/4 v7, -0x1

    .line 4191
    :cond_0
    :goto_0
    return v7

    .line 4180
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v5, "name"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4183
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 4184
    .local v7, id:I
    if-eqz v6, :cond_0

    .line 4185
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4186
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4187
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4189
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getPlaylistId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 4160
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    invoke-static {p0, v2, p1}, Lcom/htc/music/util/ContentUtils;->getPlaylistByName(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4162
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, -0x1

    .line 4163
    .local v1, id:I
    if-eqz v0, :cond_1

    .line 4164
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4165
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4166
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 4168
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4169
    const/4 v0, 0x0

    .line 4171
    :cond_1
    return v1
.end method

.method public static getPluginArtWorkPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2067
    :try_start_0
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2068
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2077
    :cond_0
    :goto_0
    return-object v1

    .line 2072
    :catch_0
    move-exception v0

    .line 2073
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2075
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2076
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getQueryStringForAlbums([I)Ljava/lang/String;
    .locals 6
    .parameter "albumID"

    .prologue
    .line 2952
    const-string v3, "is_music>=1"

    .line 2954
    .local v3, where:Ljava/lang/String;
    if-eqz p0, :cond_1

    array-length v2, p0

    .local v2, size:I
    if-lez v2, :cond_1

    .line 2955
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2956
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v4, "album_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    const-string v4, " IN ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 2959
    aget v4, p0, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2961
    :cond_0
    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is_music>=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2965
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #size:I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getReflectionBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "resource"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 3481
    if-nez p0, :cond_0

    .line 3482
    const-string v0, "[MusicUtils]"

    const-string v1, "getReflectionBitmap()...resource is null..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3496
    :goto_0
    return-object v7

    .line 3486
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 3487
    const-string v0, "[MusicUtils]"

    const-string v1, "resource.getHeight() <= height!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3491
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3492
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3493
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v2, v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object v0, p0

    move v4, p1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3496
    .local v7, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getReflectionBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Xfermode;Landroid/graphics/Shader;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "art"
    .parameter "reflectionHeight"
    .parameter "mode"
    .parameter "gradient"

    .prologue
    .line 3920
    sget-object v5, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    monitor-enter v5

    .line 3921
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v6, p1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3923
    .local v2, cleanAlbum:Landroid/graphics/Bitmap;
    const-string v4, "[MusicUtils]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getReflectionBitmap:cleanAlbum size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3925
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 3926
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3927
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3928
    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3930
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v4, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 3931
    .local v0, bsh:Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/ComposeShader;

    invoke-direct {v3, v0, p3, p2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 3932
    .local v3, reflectionShader:Landroid/graphics/ComposeShader;
    const/high16 v4, 0x3f80

    const/high16 v6, -0x4080

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3934
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3935
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3936
    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, p1

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v6, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3937
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3939
    if-eqz p0, :cond_0

    .line 3940
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3943
    :cond_0
    monitor-exit v5

    return-object v2

    .line 3944
    .end local v0           #bsh:Landroid/graphics/BitmapShader;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #cleanAlbum:Landroid/graphics/Bitmap;
    .end local v3           #reflectionShader:Landroid/graphics/ComposeShader;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static getReflectionBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "resource"
    .parameter "height"

    .prologue
    .line 3500
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3501
    .local v0, photo:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/htc/music/util/MusicUtils;->getReflectionBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getShareMusicBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 4858
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4859
    .local v0, result:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 4860
    const-string v1, "music.intent.extra.track"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4864
    :goto_0
    if-eqz p1, :cond_1

    .line 4865
    const-string v1, "music.intent.extra.album"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4869
    :goto_1
    if-eqz p2, :cond_2

    .line 4870
    const-string v1, "music.intent.extra.artist"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4875
    :goto_2
    return-object v0

    .line 4862
    :cond_0
    const-string v1, "[MusicUtils]"

    const-string v2, "[getShareMusicBundle] szTrackName cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4867
    :cond_1
    const-string v1, "[MusicUtils]"

    const-string v2, "[getShareMusicBundle] szAlbumName cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4872
    :cond_2
    const-string v1, "[MusicUtils]"

    const-string v2, "[getShareMusicBundle] szArtistName cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4018
    if-nez p0, :cond_0

    .line 4019
    const-string v4, "[MusicUtils]"

    const-string v5, "context can\'t be null!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4020
    const/4 v3, 0x0

    .line 4052
    :goto_0
    return-object v3

    .line 4023
    :cond_0
    move-object v0, p2

    .line 4024
    .local v0, albumName:Ljava/lang/String;
    move-object v1, p3

    .line 4025
    .local v1, artistName:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v4, "<unknown>"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4026
    :cond_1
    const v4, 0x7f06003e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4028
    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "<unknown>"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4029
    :cond_3
    const v4, 0x7f06003d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4033
    :cond_4
    const/4 v3, 0x0

    .line 4035
    .local v3, result:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 4036
    const v4, 0x7f0600cb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4037
    .local v2, f:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4038
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%1s"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2s"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%3s"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4041
    :cond_5
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4044
    .end local v2           #f:Ljava/lang/String;
    :cond_6
    const v4, 0x7f0600cc

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4045
    .restart local v2       #f:Ljava/lang/String;
    const-string v4, "%2s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4046
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2s"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%3s"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4048
    :cond_7
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;I)[I
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 719
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v3

    .line 722
    .local v0, ccols:[Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/htc/music/util/ContentUtils;->getTracksForAlbum(Landroid/content/Context;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 723
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 724
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 725
    .local v2, list:[I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 726
    const/4 v1, 0x0

    .line 729
    .end local v2           #list:[I
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;III)[I
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 791
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;IIII)[I
    .locals 10
    .parameter "context"
    .parameter "table"
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 795
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "album_id"

    aput-object v2, v1, v0

    .line 799
    .local v1, ccols:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 800
    .local v8, cursor:Landroid/database/Cursor;
    packed-switch p2, :pswitch_data_0

    .line 811
    :goto_0
    if-eqz v8, :cond_2

    .line 812
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v9

    .line 813
    .local v9, list:[I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 814
    const/4 v8, 0x0

    .line 818
    .end local v9           #list:[I
    :goto_1
    return-object v9

    .line 802
    :pswitch_0
    const-string v2, "track"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v7, 0x1

    :goto_2
    move-object v0, p0

    move v3, p4

    move v4, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    .line 804
    goto :goto_0

    .line 802
    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    .line 806
    :pswitch_1
    const-string v2, "track"

    const/4 v4, -0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v7, 0x1

    :goto_3
    move-object v0, p0

    move v3, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    .line 818
    :cond_2
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1

    .line 800
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSongListForAlbum(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 10
    .parameter "context"
    .parameter "table"
    .parameter "albumID"
    .parameter "artistID"
    .parameter "genreID"
    .parameter "composer"

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 3061
    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v1, v0

    .line 3064
    .local v1, ccols:[Ljava/lang/String;
    const-string v2, "track"

    .line 3065
    .local v2, mSortOrder:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    :goto_0
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    .line 3068
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 3069
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v9

    .line 3070
    .local v9, list:[I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3071
    const/4 v8, 0x0

    .line 3074
    .end local v9           #list:[I
    :goto_1
    return-object v9

    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_0
    move v7, v0

    .line 3065
    goto :goto_0

    .line 3074
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .parameter "context"
    .parameter "albumID"
    .parameter "artistID"
    .parameter "genreID"
    .parameter "composer"

    .prologue
    .line 3056
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSongListForAlbums(Landroid/content/Context;I[I)[I
    .locals 9
    .parameter "context"
    .parameter "table"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 686
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v2

    .local v4, ccols:[Ljava/lang/String;
    move-object v0, p0

    move-object v3, v1

    move-object v5, p2

    move v6, p1

    .line 690
    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/ContentUtils;->getTracksByAlbumList(Landroid/content/Context;Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;[II)Landroid/database/Cursor;

    move-result-object v7

    .line 691
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 692
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v8

    .line 693
    .local v8, list:[I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 694
    const/4 v7, 0x0

    .line 697
    .end local v8           #list:[I
    :goto_0
    return-object v8

    :cond_0
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForArtist(Landroid/content/Context;I)[I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 668
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSongListForArtist(Landroid/content/Context;II)[I
    .locals 6
    .parameter "context"
    .parameter "table"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 672
    new-array v0, v3, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v0, v4

    .line 675
    .local v0, ccols:[Ljava/lang/String;
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    :goto_0
    invoke-static {p0, v0, p2, v3}, Lcom/htc/music/util/ContentUtils;->getTracksForArtist(Landroid/content/Context;[Ljava/lang/String;IZ)Landroid/database/Cursor;

    move-result-object v1

    .line 676
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 677
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 678
    .local v2, list:[I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 679
    const/4 v1, 0x0

    .line 682
    .end local v2           #list:[I
    :goto_1
    return-object v2

    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_0
    move v3, v4

    .line 675
    goto :goto_0

    .line 682
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForArtist(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 10
    .parameter "context"
    .parameter "table"
    .parameter "albumID"
    .parameter "artistID"
    .parameter "genreID"
    .parameter "composer"

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 3084
    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v1, v0

    .line 3088
    .local v1, ccols:[Ljava/lang/String;
    const-string v2, "album COLLATE NOCASE ASC,track"

    .line 3090
    .local v2, mSortOrder:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    :goto_0
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    .line 3093
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 3094
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v9

    .line 3095
    .local v9, list:[I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3096
    const/4 v8, 0x0

    .line 3099
    .end local v9           #list:[I
    :goto_1
    return-object v9

    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_0
    move v7, v0

    .line 3090
    goto :goto_0

    .line 3099
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForArtist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .parameter "context"
    .parameter "albumID"
    .parameter "artistID"
    .parameter "genreID"
    .parameter "composer"

    .prologue
    .line 3079
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSongListForComposer(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 5
    .parameter "context"
    .parameter "name"

    .prologue
    .line 776
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "album_id"

    aput-object v4, v0, v3

    .line 779
    .local v0, ccols:[Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/htc/music/util/ContentUtils;->getTracksForComposer(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 780
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 781
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 782
    .local v2, list:[I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 783
    const/4 v1, 0x0

    .line 786
    .end local v2           #list:[I
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[I
    .locals 5
    .parameter "cursor"

    .prologue
    .line 568
    if-nez p0, :cond_1

    .line 569
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 582
    :cond_0
    return-object v3

    .line 571
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 572
    .local v2, len:I
    new-array v3, v2, [I

    .line 573
    .local v3, list:[I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 574
    const-string v4, "audio_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 575
    .local v0, colidx:I
    if-gez v0, :cond_2

    .line 576
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 578
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 579
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v3, v1

    .line 580
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getSongListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .parameter "context"
    .parameter "fileFId"
    .parameter "drmFId"

    .prologue
    .line 4476
    const/4 v1, 0x0

    .line 4478
    .local v1, filesCols:[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .end local v1           #filesCols:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v1, v3

    .line 4480
    .restart local v1       #filesCols:[Ljava/lang/String;
    invoke-static {p0, v1, p1, p2}, Lcom/htc/music/util/ContentUtils;->getTracksForFolder(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4482
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 4483
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 4484
    .local v2, list:[I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4485
    const/4 v0, 0x0

    .line 4488
    .end local v2           #list:[I
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForGenre(Landroid/content/Context;I)[I
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 748
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "album_id"

    aput-object v4, v0, v3

    .line 751
    .local v0, ccols:[Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/htc/music/util/ContentUtils;->getTracksForGenre(Landroid/content/Context;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 752
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 753
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 754
    .local v2, list:[I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 755
    const/4 v1, 0x0

    .line 758
    .end local v2           #list:[I
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForPlaylist(Landroid/content/Context;J)[I
    .locals 5
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 823
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audio_id"

    aput-object v4, v0, v3

    .line 826
    .local v0, ccols:[Ljava/lang/String;
    invoke-static {p0, v0, p1, p2}, Lcom/htc/music/util/ContentUtils;->getTracksForPlaylist(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 827
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 828
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 829
    .local v2, list:[I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 830
    const/4 v1, 0x0

    .line 833
    .end local v2           #list:[I
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4093
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v0

    .line 4094
    .local v0, iseMMC:Z
    if-eqz v0, :cond_0

    .line 4095
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    .line 4100
    .local v1, state:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 4097
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #state:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pref"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 4448
    if-nez p0, :cond_0

    .line 4455
    .end local p2
    :goto_0
    return-object p2

    .line 4452
    .restart local p2
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 4453
    :catch_0
    move-exception v0

    .line 4454
    .local v0, cce:Ljava/lang/ClassCastException;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getString] CCE, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTabActivityResult(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "def"

    .prologue
    .line 2766
    const-string v0, "com.htc.music"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "result"

    invoke-static {v0, v1, p1}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2797
    const-string v9, "com.htc.music"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "selectedid"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Lcom/htc/music/util/MusicUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2798
    .local v7, q:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2799
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 2800
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2801
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 2802
    .local v4, len:I
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2803
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 2805
    aget-object v8, v1, v2

    .line 2806
    .local v8, revhex:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2807
    .local v6, n:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 2808
    shl-int/lit8 v6, v6, 0x4

    .line 2809
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2810
    .local v0, c:C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_0

    const/16 v9, 0x39

    if-gt v0, v9, :cond_0

    .line 2811
    add-int/lit8 v9, v0, -0x30

    add-int/2addr v6, v9

    .line 2807
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2812
    :cond_0
    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    const/16 v9, 0x66

    if-gt v0, v9, :cond_1

    .line 2813
    add-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, -0x61

    add-int/2addr v6, v9

    goto :goto_2

    .line 2816
    :cond_1
    const/4 v9, 0x0

    .line 2825
    .end local v0           #c:C
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v6           #n:I
    .end local v8           #revhex:Ljava/lang/String;
    :goto_3
    return-object v9

    .line 2819
    .restart local v1       #entries:[Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v4       #len:I
    .restart local v6       #n:I
    .restart local v8       #revhex:Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2803
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v6           #n:I
    .end local v8           #revhex:Ljava/lang/String;
    :cond_3
    move-object v9, v5

    .line 2825
    goto :goto_3
.end method

.method public static getTrackSize(Landroid/content/Context;I)I
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 2580
    const/4 v2, -0x1

    .line 2581
    .local v2, sizeInBytes:I
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "_data"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "_size"

    aput-object v5, v3, v4

    int-to-long v4, p1

    invoke-static {p0, v3, v4, v5}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 2585
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt v3, v6, :cond_0

    .line 2586
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2587
    const-string v3, "_size"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2588
    .local v1, i:I
    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 2589
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2592
    .end local v1           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 2593
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2594
    const/4 v0, 0x0

    .line 2596
    :cond_1
    return v2
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 1366
    const v1, 0x7f07007c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1367
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1368
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    :cond_0
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1375
    if-eqz v0, :cond_1

    .line 1376
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1378
    :cond_1
    return-void
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    .line 4109
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 4110
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 4111
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 4113
    .end local p0
    :cond_0
    return p0

    .line 4109
    .restart local p0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 4105
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static initAlbumArtCache()V
    .locals 3

    .prologue
    .line 1796
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_1

    .line 1807
    .local v1, id:I
    :cond_0
    :goto_0
    return-void

    .line 1799
    .end local v1           #id:I
    :cond_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getMediaMountedCount()I

    move-result v1

    .line 1800
    .restart local v1       #id:I
    sget v2, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I

    if-eq v1, v2, :cond_0

    .line 1801
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 1802
    sput v1, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1804
    :catch_0
    move-exception v0

    .line 1805
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static intToFloatArray([I)[F
    .locals 3
    .parameter "intArray"

    .prologue
    .line 3840
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 3841
    :cond_0
    const/4 v0, 0x0

    .line 3849
    :cond_1
    return-object v0

    .line 3844
    :cond_2
    array-length v2, p0

    new-array v0, v2, [F

    .line 3845
    .local v0, floatArray:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3846
    aget v2, p0, v1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 3845
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static intToFloatArray([II)[F
    .locals 4
    .parameter "intArray"
    .parameter "divider"

    .prologue
    .line 3853
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 3854
    :cond_0
    const/4 v0, 0x0

    .line 3862
    :cond_1
    return-object v0

    .line 3857
    :cond_2
    array-length v2, p0

    new-array v0, v2, [F

    .line 3858
    .local v0, floatArray:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3859
    aget v2, p0, v1

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 3858
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isAnyLocalTrack(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4195
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v2

    invoke-static {p0, v3}, Lcom/htc/music/util/ContentUtils;->getFirstTrack(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4196
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 4198
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    .line 4200
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4204
    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 4198
    goto :goto_0

    .line 4200
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    move v1, v2

    .line 4204
    goto :goto_1
.end method

.method public static isAnyPlaylist(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4117
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v2

    invoke-static {p0, v3}, Lcom/htc/music/util/ContentUtils;->getFirstPlaylist(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4119
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 4121
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    .line 4123
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4127
    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 4121
    goto :goto_0

    .line 4123
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    move v1, v2

    .line 4127
    goto :goto_1
.end method

.method public static isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "ctx"

    .prologue
    .line 4255
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_music_bypass_enabled"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 4257
    .local v1, result:Z
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bp - settings="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4261
    .end local v1           #result:Z
    :goto_0
    return v1

    .line 4259
    :catch_0
    move-exception v0

    .line 4260
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "[MusicUtils]"

    const-string v3, "bp - No settings"

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4261
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConnectionFail(Landroid/content/Context;)Z
    .locals 6
    .parameter "cotext"

    .prologue
    .line 3866
    const/4 v2, 0x1

    .line 3867
    .local v2, isConnectionFail:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3870
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 3871
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3872
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3873
    :cond_0
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network is not connected : activeNetworkInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    const/4 v2, 0x1

    .line 3882
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 3876
    .restart local v0       #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3879
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_2
    const-string v3, "[MusicUtils]"

    const-string v4, "Can\'t get connectivitManager"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isDMPMode(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3202
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3203
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 3204
    .local v0, clsName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 3205
    const/4 v2, 0x1

    .line 3215
    .end local v0           #clsName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 3209
    :catch_0
    move-exception v1

    .line 3210
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDMPMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3212
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 3213
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3214
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDMPMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isExternalPackageExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "cxt"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 4056
    if-nez p0, :cond_1

    .line 4061
    :cond_0
    :goto_0
    return v2

    .line 4057
    :cond_1
    if-eqz p1, :cond_0

    .line 4058
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4059
    .local v0, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4060
    .local v1, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isExternalPluginExist()Z
    .locals 1

    .prologue
    .line 3477
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isExternalPluginExist(Lcom/htc/music/IMediaPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public static isExternalPluginExist(Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 4
    .parameter "pServicwe"

    .prologue
    .line 3455
    const/4 v1, 0x0

    .line 3457
    .local v1, hasPlugin:Z
    if-nez p0, :cond_0

    .line 3458
    const-string v2, "[MusicUtils]"

    const-string v3, "sService not initialize??"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    const/4 v2, 0x0

    .line 3472
    :goto_0
    return v2

    .line 3464
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getExternalPluginCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    .line 3466
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v2, v1

    .line 3472
    goto :goto_0

    .line 3468
    :catch_0
    move-exception v0

    .line 3469
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isExternalStorage(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    .line 502
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, externalStorageOpath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 505
    .local v0, data:Landroid/net/Uri;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive External storage intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/4 v2, 0x1

    .line 511
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageUnMount(Landroid/content/Intent;)Z
    .locals 5
    .parameter "UnMountIntent"

    .prologue
    .line 489
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, externalStorageOpath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 492
    .local v0, data:Landroid/net/Uri;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 495
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive another(External) storage unmount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/4 v2, 0x1

    .line 498
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isHVGA(Landroid/util/DisplayMetrics;)Z
    .locals 4
    .parameter "metrics"

    .prologue
    const/4 v1, 0x0

    .line 4271
    if-nez p0, :cond_1

    .line 4273
    :cond_0
    :goto_0
    return v1

    .line 4272
    :cond_1
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_2

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4273
    .local v0, length:I
    :goto_1
    const/16 v2, 0x1e0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 4272
    .end local v0           #length:I
    :cond_2
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1
.end method

.method public static declared-synchronized isInternalStorageEnough(Landroid/content/Context;)Z
    .locals 9
    .parameter "ctx"

    .prologue
    const-wide/32 v7, 0x500000

    .line 470
    const-class v4, Lcom/htc/music/util/MusicUtils;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->checkInternalMemory()J

    move-result-wide v1

    .line 472
    .local v1, size:J
    cmp-long v3, v1, v7

    if-lez v3, :cond_0

    .line 473
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 474
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :goto_0
    monitor-exit v4

    return v3

    .line 477
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 478
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 479
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 480
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    goto :goto_0

    .line 483
    :cond_1
    const-string v3, "[MusicUtils]"

    const-string v5, "Internal Storage is not Enough."

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 485
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 470
    .end local v0           #file:Ljava/io/File;
    .end local v1           #size:J
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1257
    if-nez p0, :cond_1

    move v7, v8

    .line 1271
    :cond_0
    :goto_0
    return v7

    .line 1258
    :cond_1
    const/4 v7, 0x0

    .line 1259
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1262
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1263
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 1264
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1265
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1267
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1268
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static isMusicEnhancerEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 3608
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableEnhancer(Landroid/content/Context;)Z

    move-result v0

    .line 3609
    .local v0, projectSetting:Z
    if-nez v0, :cond_0

    .line 3610
    const/4 v1, 0x0

    .line 3613
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerExist(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isMusicEnhancerExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 3593
    const-string v1, "com.htc.musicenhancer"

    .line 3594
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3596
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.htc.musicenhancer"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3597
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 3598
    const/4 v4, 0x1

    .line 3603
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    .line 3602
    :catch_0
    move-exception v0

    .line 3603
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isMusicLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 546
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 548
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 552
    :cond_0
    :goto_0
    return v0

    .line 549
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isPathExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 4348
    if-nez p0, :cond_1

    .line 4354
    :cond_0
    :goto_0
    return v1

    .line 4349
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4350
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4351
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4352
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPluginMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3156
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 3157
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3166
    :cond_0
    :goto_0
    return v1

    .line 3160
    :catch_0
    move-exception v0

    .line 3161
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPluginMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3163
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3164
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3165
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPluginMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 558
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 562
    :goto_0
    return v0

    .line 559
    :catch_0
    move-exception v0

    .line 562
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnknownComposer(Ljava/lang/String;)Z
    .locals 1
    .parameter "composer"

    .prologue
    .line 3635
    if-eqz p0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3637
    :cond_0
    const/4 v0, 0x1

    .line 3640
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWMDRMSupported()Z
    .locals 1

    .prologue
    .line 3196
    const/4 v0, 0x1

    return v0
.end method

.method public static isYoutubeExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "cxt"

    .prologue
    const/high16 v6, 0x1

    .line 3554
    const/4 v2, 0x0

    .line 3556
    .local v2, retval:Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3557
    .local v0, launchYoutubeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3558
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3559
    const-string v4, "android.intent.extra.focus"

    const-string v5, "audio/*"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3560
    const-string v4, "com.google.android.youtube"

    const-string v5, "com.google.android.youtube.VideoListActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3562
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3563
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 3565
    .local v3, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 3566
    const/4 v2, 0x1

    .line 3588
    :cond_0
    :goto_0
    const-string v4, "[MusicUtils]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is youtube exist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    return v2

    .line 3568
    :cond_1
    const-string v4, "com.google.android.youtube"

    const-string v5, "com.google.android.youtube.ResultsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3570
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 3572
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 3573
    const/4 v2, 0x1

    goto :goto_0

    .line 3579
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3580
    const-string v4, "com.google.android.youtube"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3581
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 3583
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 3584
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static joinAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "context"
    .parameter "c"

    .prologue
    .line 4554
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4555
    :cond_0
    const-string v0, "[MusicUtils]"

    const-string v1, "joinAlbumArt, c == null || c.isClosed()!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4556
    const/4 v0, 0x0

    .line 4607
    :goto_0
    return-object v0

    .line 4559
    :cond_1
    if-nez p0, :cond_3

    .line 4560
    const-string v0, "[MusicUtils]"

    const-string v1, "joinAlbumArt, context is null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4561
    if-eqz p1, :cond_2

    .line 4562
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4564
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 4567
    :cond_3
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, p1

    .line 4568
    goto :goto_0

    .line 4572
    :cond_5
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4573
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 4574
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4575
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 4579
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4581
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_6

    .line 4582
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4583
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4584
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4585
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 4588
    :cond_6
    const-string v0, "[MusicUtils]"

    const-string v1, "joinAlbumArt, can\'t query art cursor!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4589
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4590
    const/4 p1, 0x0

    .line 4591
    const/4 v0, 0x0

    goto :goto_0

    .line 4594
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4595
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4596
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4597
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4598
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 4599
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 4600
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4601
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4602
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4603
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 4606
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_8
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4607
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    if-ne p2, v7, :cond_0

    .line 285
    const v3, 0x7f060003

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 288
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_1

    .line 289
    const v3, 0x7f0e0001

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 291
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 292
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 293
    const v3, 0x7f0601af

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .end local v0           #f:Ljava/lang/String;
    :cond_1
    const/high16 v3, 0x7f0e

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 297
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 298
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V
    .locals 10
    .parameter "context"
    .parameter "sub"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 889
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    const-string v1, "name"

    aput-object v1, v2, v9

    .line 892
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 893
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 894
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "resolver = null"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    const-string v3, "name != \'\'"

    .line 897
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 899
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 901
    const/4 v1, 0x4

    const v4, 0x7f06004b

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 902
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 904
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 905
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 906
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 907
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "playlist"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    const/4 v1, 0x3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 914
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 917
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    if-eqz v6, :cond_0

    .line 918
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v8, 0xe10

    const/4 v5, 0x0

    const-wide/16 v6, 0x3c

    .line 1397
    const v3, 0x7f060004

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, durationformat:Ljava/lang/String;
    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1403
    .local v1, durationformat_h:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1405
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1406
    .local v2, timeArgs:[Ljava/lang/Object;
    div-long v3, p1, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1407
    const/4 v3, 0x1

    div-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1408
    const/4 v3, 0x2

    div-long v4, p1, v6

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1409
    const/4 v3, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1410
    const/4 v3, 0x4

    rem-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1412
    div-long v3, p1, v8

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1413
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v3, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1415
    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v3, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static mergeArtCover(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "resources"
    .parameter "art"
    .parameter "coverResId"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3893
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3894
    .local v0, albumCover:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3896
    .local v1, canvasBitmap:Landroid/graphics/Bitmap;
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeArtCover:canvasBitmap size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3897
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3898
    .local v2, mReflection:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, p5, p3

    add-int v5, p6, p4

    invoke-direct {v3, p3, p4, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p1, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3899
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3901
    if-eqz v0, :cond_0

    .line 3902
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3904
    :cond_0
    if-eqz p1, :cond_1

    .line 3905
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3908
    :cond_1
    return-object v1
.end method

.method public static varargs mergeCursors(Landroid/database/Cursor;Landroid/database/Cursor;[Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "c1"
    .parameter "c2"
    .parameter "cursorEtc"

    .prologue
    const/4 v5, 0x0

    .line 3955
    array-length v6, p2

    if-nez v6, :cond_6

    .line 3957
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 3958
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 3959
    new-instance v5, Landroid/database/MergeCursor;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v5, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p0, v5

    .line 4011
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3961
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    .line 3962
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3968
    :cond_2
    if-eqz p0, :cond_3

    .line 3969
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 3972
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_4

    move-object p0, p1

    .line 3973
    goto :goto_0

    .line 3975
    :cond_4
    if-eqz p1, :cond_5

    .line 3976
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object p0, v5

    .line 3979
    goto :goto_0

    .line 3983
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, p2

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3984
    .local v2, cursorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    if-eqz p0, :cond_7

    .line 3985
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_a

    .line 3986
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3991
    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 3992
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_b

    .line 3993
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3998
    :cond_8
    :goto_2
    move-object v0, p2

    .local v0, arr$:[Landroid/database/Cursor;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_d

    aget-object v1, v0, v3

    .line 3999
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_9

    .line 4000
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_c

    .line 4001
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3998
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3988
    .end local v0           #arr$:[Landroid/database/Cursor;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3995
    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 4003
    .restart local v0       #arr$:[Landroid/database/Cursor;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 4008
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 4009
    new-instance p0, Landroid/database/MergeCursor;

    .end local p0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/database/Cursor;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/database/Cursor;

    invoke-direct {p0, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_0

    .restart local p0
    :cond_e
    move-object p0, v5

    .line 4011
    goto :goto_0
.end method

.method public static mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1191
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1251
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1195
    .restart local p1
    :cond_1
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1196
    .local v10, mdAlbumIdIdx:I
    if-gez v10, :cond_2

    .line 1197
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1199
    :cond_2
    if-gez v10, :cond_3

    .line 1200
    const-string v0, "[MusicUtils]"

    const-string v1, "mergeDlAlbumArt: cannot find album id column"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    :cond_3
    :try_start_0
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1212
    .local v11, selection:Ljava/lang/StringBuilder;
    const-string v0, "dl_album_id IN ("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1215
    .local v6, albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 1216
    .local v9, id:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1218
    :cond_4
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1219
    if-gez v9, :cond_8

    .line 1227
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1229
    :cond_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1230
    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1236
    :try_start_1
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sDlColumns:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1238
    .local v7, dlCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1242
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_7

    .line 1244
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeDlAlbumArt: dlCursor.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :cond_7
    new-instance v0, Lcom/htc/music/util/AlbumArtMergeCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v7, v1}, Lcom/htc/music/util/AlbumArtMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    goto/16 :goto_0

    .line 1206
    .end local v6           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v7           #dlCursor:Landroid/database/Cursor;
    .end local v9           #id:I
    .end local v11           #selection:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 1207
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "[MusicUtils]"

    const-string v1, "mergeDlAlbumArt: cannot find album art column"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1223
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v9       #id:I
    .restart local v11       #selection:Ljava/lang/StringBuilder;
    :cond_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1224
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1225
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1248
    :catch_1
    move-exception v8

    .line 1249
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "[MusicUtils]"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;)I
    .locals 6
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 1491
    const/4 v4, 0x1

    sget-object v5, Lcom/htc/music/util/MusicUtils$LaunchUI;->MUSIC:Lcom/htc/music/util/MusicUtils$LaunchUI;

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/util/MusicUtils$LaunchUI;)I

    move-result v0

    return v0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;I)I
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 1495
    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/htc/music/util/MusicUtils$LaunchUI;->MUSIC:Lcom/htc/music/util/MusicUtils$LaunchUI;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/util/MusicUtils$LaunchUI;)I

    move-result v0

    return v0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/util/MusicUtils$LaunchUI;)I
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "launchUI"

    .prologue
    .line 1448
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/util/MusicUtils$LaunchUI;)I

    move-result v0

    return v0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)I
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    .line 1503
    const/4 v4, 0x1

    sget-object v5, Lcom/htc/music/util/MusicUtils$LaunchUI;->MUSIC:Lcom/htc/music/util/MusicUtils$LaunchUI;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/util/MusicUtils$LaunchUI;)I

    move-result v0

    return v0
.end method

.method private static playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/util/MusicUtils$LaunchUI;)I
    .locals 9
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "ifrun"
    .parameter "launchUI"

    .prologue
    .line 1508
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getListForCursor(Landroid/database/Cursor;)Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    move-result-object v8

    .line 1509
    .local v8, pl:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v2, v8, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    iget-object v3, v8, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[I[IIZZLcom/htc/music/util/MusicUtils$LaunchUI;)I

    move-result v0

    return v0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/util/MusicUtils$LaunchUI;)I
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "launchUI"

    .prologue
    const/4 v2, 0x0

    .line 1444
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/util/MusicUtils$LaunchUI;)I

    move-result v0

    return v0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;Z)I
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "force_shuffle"

    .prologue
    .line 1499
    const/4 v2, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/htc/music/util/MusicUtils$LaunchUI;->MUSIC:Lcom/htc/music/util/MusicUtils$LaunchUI;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/util/MusicUtils$LaunchUI;)I

    move-result v0

    return v0
.end method

.method public static playAll(Landroid/content/Context;[II)I
    .locals 2
    .parameter "context"
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1525
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZ)I

    move-result v0

    return v0
.end method

.method private static playAll(Landroid/content/Context;[IIZZ)I
    .locals 10
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "ifrun"

    .prologue
    .line 1530
    sget-object v0, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v1, "track"

    invoke-static {p0, v0, v1, p1}, Lcom/htc/music/util/ContentUtils;->getTracks(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)Landroid/database/Cursor;

    move-result-object v8

    .line 1533
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {v8, p1}, Lcom/htc/music/util/MusicUtils;->getListForCursorByTrackList(Landroid/database/Cursor;[I)Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    move-result-object v9

    .line 1534
    .local v9, palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v2, v9, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    iget-object v3, v9, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    sget-object v7, Lcom/htc/music/util/MusicUtils$LaunchUI;->MUSIC:Lcom/htc/music/util/MusicUtils$LaunchUI;

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[I[IIZZLcom/htc/music/util/MusicUtils$LaunchUI;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1536
    if-eqz v8, :cond_0

    .line 1537
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1538
    const/4 v8, 0x0

    .line 1534
    :cond_0
    return v0

    .line 1536
    .end local v9           #palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 1537
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1538
    const/4 v8, 0x0

    .line 1536
    :cond_1
    throw v0
.end method

.method public static playAll(Landroid/content/Context;[I[I)I
    .locals 8
    .parameter "context"
    .parameter "list"
    .parameter "albumList"

    .prologue
    const/4 v4, 0x0

    .line 1515
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v6, 0x1

    sget-object v7, Lcom/htc/music/util/MusicUtils$LaunchUI;->MUSIC:Lcom/htc/music/util/MusicUtils$LaunchUI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[I[IIZZLcom/htc/music/util/MusicUtils$LaunchUI;)I

    move-result v0

    return v0
.end method

.method public static playAll(Landroid/content/Context;[I[ILcom/htc/music/util/MusicUtils$LaunchUI;)I
    .locals 8
    .parameter "context"
    .parameter "list"
    .parameter "albumList"
    .parameter "launchUI"

    .prologue
    const/4 v4, 0x0

    .line 1452
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[I[IIZZLcom/htc/music/util/MusicUtils$LaunchUI;)I

    move-result v0

    return v0
.end method

.method public static playAll(Landroid/content/Context;[I[IZ)I
    .locals 8
    .parameter "context"
    .parameter "list"
    .parameter "albumList"
    .parameter "forceShuffle"

    .prologue
    .line 1519
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v4, 0x0

    const/4 v6, 0x1

    sget-object v7, Lcom/htc/music/util/MusicUtils$LaunchUI;->MUSIC:Lcom/htc/music/util/MusicUtils$LaunchUI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[I[IIZZLcom/htc/music/util/MusicUtils$LaunchUI;)I

    move-result v0

    return v0
.end method

.method public static playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[I[IILcom/htc/music/util/MusicUtils$LaunchUI;)I
    .locals 8
    .parameter "service"
    .parameter "context"
    .parameter "list"
    .parameter "albumList"
    .parameter "position"
    .parameter "launchUI"

    .prologue
    .line 1549
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[I[IIZZLcom/htc/music/util/MusicUtils$LaunchUI;)I

    move-result v0

    return v0
.end method

.method private static playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[I[IIZZLcom/htc/music/util/MusicUtils$LaunchUI;)I
    .locals 19
    .parameter "service"
    .parameter "context"
    .parameter "list"
    .parameter "albumList"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "ifrun"
    .parameter "launchUI"

    .prologue
    .line 1556
    if-nez p0, :cond_1

    .line 1557
    const-string v15, "[MusicUtils]"

    const-string v16, "[playAll] Service is null."

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const/4 v13, -0x1

    .line 1678
    :cond_0
    :goto_0
    return v13

    .line 1561
    :cond_1
    move-object/from16 v0, p2

    array-length v15, v0

    if-nez v15, :cond_3

    .line 1562
    const-string v15, "[MusicUtils]"

    const-string v16, "attempt to play empty song list"

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const/4 v15, 0x1

    move/from16 v0, p6

    if-ne v0, v15, :cond_2

    .line 1565
    const v15, 0x7f06004e

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1566
    .local v12, message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v12, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 1568
    .end local v12           #message:Ljava/lang/String;
    :cond_2
    const/4 v13, -0x2

    goto :goto_0

    .line 1571
    :cond_3
    const/4 v6, -0x1

    .line 1573
    .local v6, dlnaMode:I
    if-eqz p6, :cond_4

    .line 1574
    invoke-static/range {p1 .. p1}, Lcom/htc/music/util/MusicUtils;->getCurDmr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 1575
    .local v7, dmr:Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 1576
    const/4 v6, 0x3

    .line 1586
    .end local v7           #dmr:Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v10, 0x0

    .line 1588
    .local v10, isMirrorPlayOnTV:Z
    const/4 v13, 0x0

    .line 1591
    .local v13, playAllResult:I
    if-eqz p6, :cond_9

    if-eqz p1, :cond_9

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v10, 0x1

    .line 1592
    :goto_2
    const-string v15, "[MusicUtils]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "playAll, isMirrorPlayOnTV: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    sget-object v15, Lcom/htc/music/util/MusicUtils$LaunchUI;->CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

    move-object/from16 v0, p7

    if-ne v0, v15, :cond_5

    .line 1595
    const-string v15, "[MusicUtils]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "playAll, launchUI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const/4 v10, 0x0

    .line 1599
    :cond_5
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v4

    .line 1600
    .local v4, curid:I
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    .line 1601
    .local v5, curpos:I
    if-nez p5, :cond_a

    const/4 v15, -0x1

    move/from16 v0, p4

    if-eq v0, v15, :cond_a

    move/from16 v0, p4

    if-ne v5, v0, :cond_a

    aget v15, p2, p4

    if-ne v4, v15, :cond_a

    .line 1605
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v14

    .line 1606
    .local v14, playlist:[I
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1610
    if-eqz p6, :cond_6

    if-nez v6, :cond_6

    if-nez v10, :cond_6

    .line 1611
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Lcom/htc/music/IMediaPlaybackService;->switchMode(I)V

    .line 1612
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->playAsync()V

    .line 1615
    :cond_6
    const/4 v15, 0x3

    if-ne v6, v15, :cond_7

    .line 1616
    invoke-static/range {p1 .. p1}, Lcom/htc/music/util/MusicUtils;->switchToPush(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    :cond_7
    if-nez v13, :cond_0

    .line 1650
    if-eqz v10, :cond_17

    .line 1651
    const-string v15, "[MusicUtils]"

    const-string v16, "playAll, TV is on"

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    new-instance v9, Landroid/content/Intent;

    const-string v15, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1653
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1654
    .end local v4           #curid:I
    .end local v5           #curpos:I
    .end local v14           #playlist:[I
    :goto_3
    const/4 v13, 0x2

    goto/16 :goto_0

    .line 1578
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #isMirrorPlayOnTV:Z
    .end local v13           #playAllResult:I
    .restart local v7       #dmr:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1591
    .end local v7           #dmr:Ljava/lang/String;
    .restart local v10       #isMirrorPlayOnTV:Z
    .restart local v13       #playAllResult:I
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1622
    .restart local v4       #curid:I
    .restart local v5       #curpos:I
    :cond_a
    if-gez p4, :cond_b

    .line 1623
    const/16 p4, 0x0

    .line 1627
    :cond_b
    if-nez v6, :cond_c

    .line 1628
    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Lcom/htc/music/IMediaPlaybackService;->switchMode(I)V

    .line 1630
    :cond_c
    if-eqz p5, :cond_f

    const/4 v15, -0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-interface {v0, v1, v2, v15, v3}, Lcom/htc/music/IMediaPlaybackService;->openAsync([I[IIZ)V

    .line 1632
    if-eqz p6, :cond_d

    if-nez v6, :cond_d

    if-nez v10, :cond_d

    .line 1633
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->playAsync()V

    .line 1637
    :cond_d
    const/4 v15, 0x3

    if-ne v6, v15, :cond_e

    .line 1638
    invoke-static/range {p1 .. p1}, Lcom/htc/music/util/MusicUtils;->switchToPush(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1646
    :cond_e
    if-nez v13, :cond_0

    .line 1650
    if-eqz v10, :cond_19

    .line 1651
    const-string v15, "[MusicUtils]"

    const-string v16, "playAll, TV is on"

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    new-instance v9, Landroid/content/Intent;

    const-string v15, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1653
    .restart local v9       #intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .end local v9           #intent:Landroid/content/Intent;
    :cond_f
    move/from16 v15, p4

    .line 1630
    goto :goto_4

    .line 1642
    .end local v4           #curid:I
    .end local v5           #curpos:I
    :catch_0
    move-exception v8

    .line 1643
    .local v8, ex:Landroid/os/RemoteException;
    :try_start_2
    const-string v15, "[MusicUtils]"

    const-string v16, "[playAll] ."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1644
    const/4 v13, -0x3

    .line 1646
    if-nez v13, :cond_0

    .line 1650
    if-eqz v10, :cond_15

    .line 1651
    const-string v15, "[MusicUtils]"

    const-string v16, "playAll, TV is on"

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    new-instance v9, Landroid/content/Intent;

    const-string v15, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1653
    .restart local v9       #intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 1646
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_10
    throw v15

    .line 1678
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1646
    :catchall_0
    move-exception v15

    if-nez v13, :cond_0

    .line 1650
    if-eqz v10, :cond_12

    .line 1651
    const-string v15, "[MusicUtils]"

    const-string v16, "playAll, TV is on"

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    new-instance v9, Landroid/content/Intent;

    const-string v15, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1653
    .restart local v9       #intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1656
    .end local v9           #intent:Landroid/content/Intent;
    :cond_12
    if-eqz p6, :cond_10

    if-eqz v6, :cond_13

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v6, v0, :cond_10

    .line 1658
    :cond_13
    const/4 v11, 0x0

    .line 1660
    .local v11, launchIntent:Landroid/content/Intent;
    sget-object v15, Lcom/htc/music/util/MusicUtils$1;->$SwitchMap$com$htc$music$util$MusicUtils$LaunchUI:[I

    invoke-virtual/range {p7 .. p7}, Lcom/htc/music/util/MusicUtils$LaunchUI;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 1668
    const-string v15, "[MusicUtils]"

    const-string v16, "[playAll] Not to launch UI."

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    :goto_5
    if-eqz v11, :cond_14

    .line 1673
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1675
    :cond_14
    :goto_6
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1662
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/htc/music/util/MusicUtils;->getLaunchGlanceLayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 1663
    goto :goto_5

    .line 1665
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getLaunchGlanceLayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 1666
    goto :goto_5

    .line 1656
    .end local v11           #launchIntent:Landroid/content/Intent;
    .restart local v8       #ex:Landroid/os/RemoteException;
    :cond_15
    if-eqz p6, :cond_11

    if-eqz v6, :cond_16

    const/4 v15, 0x3

    if-ne v6, v15, :cond_11

    .line 1658
    :cond_16
    const/4 v11, 0x0

    .line 1660
    .restart local v11       #launchIntent:Landroid/content/Intent;
    sget-object v15, Lcom/htc/music/util/MusicUtils$1;->$SwitchMap$com$htc$music$util$MusicUtils$LaunchUI:[I

    invoke-virtual/range {p7 .. p7}, Lcom/htc/music/util/MusicUtils$LaunchUI;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_1

    .line 1668
    const-string v15, "[MusicUtils]"

    const-string v16, "[playAll] Not to launch UI."

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    :goto_7
    if-eqz v11, :cond_14

    .line 1673
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 1662
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/htc/music/util/MusicUtils;->getLaunchGlanceLayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 1663
    goto :goto_7

    .line 1665
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getLaunchGlanceLayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 1666
    goto :goto_7

    .line 1656
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v11           #launchIntent:Landroid/content/Intent;
    .restart local v4       #curid:I
    .restart local v5       #curpos:I
    .restart local v14       #playlist:[I
    :cond_17
    if-eqz p6, :cond_0

    if-eqz v6, :cond_18

    const/4 v15, 0x3

    if-ne v6, v15, :cond_0

    .line 1658
    :cond_18
    const/4 v11, 0x0

    .line 1660
    .restart local v11       #launchIntent:Landroid/content/Intent;
    sget-object v15, Lcom/htc/music/util/MusicUtils$1;->$SwitchMap$com$htc$music$util$MusicUtils$LaunchUI:[I

    invoke-virtual/range {p7 .. p7}, Lcom/htc/music/util/MusicUtils$LaunchUI;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_2

    .line 1668
    const-string v15, "[MusicUtils]"

    const-string v16, "[playAll] Not to launch UI."

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    :goto_8
    if-eqz v11, :cond_14

    .line 1673
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 1662
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/htc/music/util/MusicUtils;->getLaunchGlanceLayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 1663
    goto :goto_8

    .line 1665
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getLaunchGlanceLayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 1666
    goto :goto_8

    .line 1656
    .end local v11           #launchIntent:Landroid/content/Intent;
    .end local v14           #playlist:[I
    :cond_19
    if-eqz p6, :cond_11

    if-eqz v6, :cond_1a

    const/4 v15, 0x3

    if-ne v6, v15, :cond_11

    .line 1658
    :cond_1a
    const/4 v11, 0x0

    .line 1660
    .restart local v11       #launchIntent:Landroid/content/Intent;
    sget-object v15, Lcom/htc/music/util/MusicUtils$1;->$SwitchMap$com$htc$music$util$MusicUtils$LaunchUI:[I

    invoke-virtual/range {p7 .. p7}, Lcom/htc/music/util/MusicUtils$LaunchUI;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_3

    .line 1668
    const-string v15, "[MusicUtils]"

    const-string v16, "[playAll] Not to launch UI."

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    :goto_9
    if-eqz v11, :cond_14

    .line 1673
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1662
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lcom/htc/music/util/MusicUtils;->getLaunchGlanceLayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 1663
    goto :goto_9

    .line 1665
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getLaunchGlanceLayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 1666
    goto :goto_9

    .line 1660
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static playAllPlaylist(Landroid/content/Context;Z)I
    .locals 1
    .parameter "context"
    .parameter "force_shuffle"

    .prologue
    .line 1474
    sget-object v0, Lcom/htc/music/util/MusicUtils;->PLAY_PLAYLIST_COLS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/htc/music/util/ContentUtils;->getTracksForAllPlaylists(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Z)I

    move-result v0

    return v0
.end method

.method public static playFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "fileFId"
    .parameter "drmFId"

    .prologue
    .line 1480
    invoke-static {p0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    move-result-object v0

    .line 1481
    .local v0, pl:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    iget-object v1, v0, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    iget-object v2, v0, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[I[I)I

    move-result v1

    return v1
.end method

.method public static playPlaylist(Landroid/content/Context;J)I
    .locals 2
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 1463
    sget-object v1, Lcom/htc/music/util/MusicUtils;->PLAY_PLAYLIST_COLS:[Ljava/lang/String;

    invoke-static {p0, v1, p1, p2}, Lcom/htc/music/util/ContentUtils;->getTracksForPlaylist(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 1465
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1467
    if-eqz v0, :cond_0

    .line 1468
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1465
    :cond_0
    return v1

    .line 1467
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 1468
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1467
    :cond_1
    throw v1
.end method

.method public static prepareAlbumList(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 604
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 605
    .local v0, albumlist:[I
    array-length v3, v0

    if-lez v3, :cond_0

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    .line 607
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, v0}, Lcom/htc/music/IMediaPlaybackService;->setAlbumQueue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    const/4 v2, 0x1

    .line 615
    :goto_0
    return v2

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 614
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "[MusicUtils]"

    const-string v4, "Bad! sService is  null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static prepareAlbumListByTrackId(Landroid/content/Context;[I)V
    .locals 13
    .parameter "context"
    .parameter "tracklist"

    .prologue
    .line 621
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    array-length v10, p1

    if-lez v10, :cond_6

    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v10, :cond_6

    .line 624
    const/4 v10, 0x2

    :try_start_0
    new-array v5, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "_id"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "album_id"

    aput-object v11, v5, v10

    .line 628
    .local v5, ccols:[Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {p0, v5, v10, p1}, Lcom/htc/music/util/ContentUtils;->getTracks(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)Landroid/database/Cursor;

    move-result-object v6

    .line 630
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v3, Ljava/util/HashMap;

    const/16 v10, 0x30

    invoke-direct {v3, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 631
    .local v3, albumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_3

    .line 632
    const-string v10, "_id"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 633
    .local v9, idColume:I
    const-string v10, "album_id"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 634
    .local v1, albumColume:I
    const/4 v10, -0x1

    invoke-interface {v6, v10}, Landroid/database/Cursor;->move(I)Z

    .line 635
    const/4 v8, -0x1

    .line 636
    .local v8, id:I
    const/4 v2, -0x1

    .line 637
    .local v2, albumId:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 638
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 639
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 640
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 658
    .end local v1           #albumColume:I
    .end local v2           #albumId:I
    .end local v3           #albumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5           #ccols:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #id:I
    .end local v9           #idColume:I
    :catch_0
    move-exception v10

    goto :goto_0

    .line 642
    .restart local v1       #albumColume:I
    .restart local v2       #albumId:I
    .restart local v3       #albumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v5       #ccols:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #id:I
    .restart local v9       #idColume:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 646
    .end local v1           #albumColume:I
    .end local v2           #albumId:I
    .end local v8           #id:I
    .end local v9           #idColume:I
    :cond_3
    array-length v10, p1

    new-array v4, v10, [I

    .line 647
    .local v4, albumlist:[I
    const/4 v0, 0x0

    .line 648
    .local v0, album:Ljava/lang/Integer;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v10, p1

    if-ge v7, v10, :cond_5

    .line 649
    aget v10, p1, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #album:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 650
    .restart local v0       #album:Ljava/lang/Integer;
    if-eqz v0, :cond_4

    .line 651
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v4, v7

    .line 648
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 653
    :cond_4
    aput v7, v4, v7

    .line 654
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can\'t find track\'s album!! track:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, p1, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 657
    :cond_5
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v4}, Lcom/htc/music/IMediaPlaybackService;->setAlbumQueue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 662
    .end local v0           #album:Ljava/lang/Integer;
    .end local v3           #albumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4           #albumlist:[I
    .end local v5           #ccols:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #i:I
    :cond_6
    const-string v10, "[MusicUtils]"

    const-string v11, "Bad! sService is  null"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static processAlbumKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "albumKey"

    .prologue
    .line 4380
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x0

    .line 4390
    .local v0, albumKeyLength:I
    .local v1, i:I
    .local v2, start:I
    :goto_0
    return-object p0

    .line 4381
    .end local v0           #albumKeyLength:I
    .end local v1           #i:I
    .end local v2           #start:I
    :cond_0
    const/4 v2, 0x0

    .line 4382
    .restart local v2       #start:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4383
    .restart local v0       #albumKeyLength:I
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_1
    if-lez v1, :cond_1

    .line 4384
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4385
    move v2, v1

    .line 4389
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 4390
    goto :goto_0

    .line 4383
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static processAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "albumName"

    .prologue
    .line 4358
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4359
    const/4 p0, 0x0

    .line 4367
    .local v0, arr$:[Ljava/lang/CharSequence;
    .local v1, i$:I
    .local v2, len$:I
    .local v4, reserveChars:[Ljava/lang/CharSequence;
    :goto_0
    return-object p0

    .line 4360
    .end local v0           #arr$:[Ljava/lang/CharSequence;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #reserveChars:[Ljava/lang/CharSequence;
    :cond_0
    const/16 v5, 0x9

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const-string v6, "|"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "\\"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "?"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "*"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "<"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "\""

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, ":"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, ">"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "/"

    aput-object v6, v4, v5

    .line 4361
    .restart local v4       #reserveChars:[Ljava/lang/CharSequence;
    move-object v0, v4

    .restart local v0       #arr$:[Ljava/lang/CharSequence;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 4362
    .local v3, reserveChar:Ljava/lang/CharSequence;
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4363
    const-string v5, "_"

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 4361
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4366
    .end local v3           #reserveChar:Ljava/lang/CharSequence;
    :cond_2
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4367
    goto :goto_0
.end method

.method public static processExternalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "external"

    .prologue
    .line 4371
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4372
    const/4 p0, 0x0

    .line 4376
    :goto_0
    return-object p0

    .line 4374
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4375
    const-string v0, "/"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4376
    goto :goto_0
.end method

.method public static receiveDlArtDownloadComplete(Landroid/content/Intent;ILcom/htc/music/util/DlArtAsyncImageDecoder;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 10
    .parameter "intent"
    .parameter "albumId"
    .parameter "decoder"
    .parameter
    .parameter
    .parameter "isResume"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Lcom/htc/music/util/DlArtAsyncImageDecoder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/MusicUtils$DecodeInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, decodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/util/MusicUtils$DecodeInfo;>;"
    .local p4, revertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 4741
    if-nez p0, :cond_1

    .line 4762
    :cond_0
    :goto_0
    return-void

    .line 4744
    :cond_1
    const-string v0, "albumart_path"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4745
    .local v2, path:Ljava/lang/String;
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4746
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4747
    .local v9, len:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 4748
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 4749
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4754
    :cond_2
    if-eqz p5, :cond_4

    .line 4755
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! mResume updateAlbumArt = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    move v1, p1

    move v3, p1

    move v4, p1

    move-object v6, v5

    .line 4756
    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4747
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4758
    :cond_4
    new-instance v7, Lcom/htc/music/util/MusicUtils$DecodeInfo;

    invoke-direct {v7, p1, v2}, Lcom/htc/music/util/MusicUtils$DecodeInfo;-><init>(ILjava/lang/String;)V

    .line 4759
    .local v7, d:Lcom/htc/music/util/MusicUtils$DecodeInfo;
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static receiveDlArtRevert(ILjava/util/ArrayList;Ljava/util/ArrayList;ZLcom/htc/music/util/MemoryCacheBitmapByPosition;)V
    .locals 5
    .parameter "albumId"
    .parameter
    .parameter
    .parameter "isResume"
    .parameter "cache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/MusicUtils$DecodeInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/htc/music/util/MemoryCacheBitmapByPosition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4766
    .local p1, decodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/util/MusicUtils$DecodeInfo;>;"
    .local p2, revertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4767
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4768
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/MusicUtils$DecodeInfo;

    iget v2, v2, Lcom/htc/music/util/MusicUtils$DecodeInfo;->mAlbumId:I

    if-ne p0, v2, :cond_0

    .line 4769
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4780
    :goto_1
    return-void

    .line 4767
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4774
    :cond_1
    if-eqz p3, :cond_2

    .line 4775
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! mResume remove = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->remove(Ljava/lang/Object;)V

    goto :goto_1

    .line 4778
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static receiveDlArtRevert(ILjava/util/ArrayList;Ljava/util/ArrayList;ZLcom/htc/music/util/MemoryCacheBitmapByTime;)V
    .locals 6
    .parameter "albumId"
    .parameter
    .parameter
    .parameter "isResume"
    .parameter "cache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/MusicUtils$DecodeInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/htc/music/util/MemoryCacheBitmapByTime;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4803
    .local p1, decodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/util/MusicUtils$DecodeInfo;>;"
    .local p2, revertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4804
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4805
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/util/MusicUtils$DecodeInfo;

    iget v3, v3, Lcom/htc/music/util/MusicUtils$DecodeInfo;->mAlbumId:I

    if-ne p0, v3, :cond_0

    .line 4806
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4818
    :goto_1
    return-void

    .line 4804
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4811
    :cond_1
    if-eqz p3, :cond_2

    .line 4812
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! mResume remove = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4813
    new-instance v2, Lcom/htc/music/util/TimedKey;

    invoke-direct {v2, p0}, Lcom/htc/music/util/TimedKey;-><init>(I)V

    .line 4814
    .local v2, t:Lcom/htc/music/util/TimedKey;
    invoke-virtual {p4, v2}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->remove(Ljava/lang/Object;)V

    goto :goto_1

    .line 4816
    .end local v2           #t:Lcom/htc/music/util/TimedKey;
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static receiveDlArtRevert(ILjava/util/ArrayList;Ljava/util/ArrayList;ZLcom/htc/music/util/MemoryCacheMBitmapByTime;)V
    .locals 6
    .parameter "albumId"
    .parameter
    .parameter
    .parameter "isResume"
    .parameter "cache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/MusicUtils$DecodeInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/htc/music/util/MemoryCacheMBitmapByTime;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4784
    .local p1, decodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/util/MusicUtils$DecodeInfo;>;"
    .local p2, revertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4785
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4786
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/util/MusicUtils$DecodeInfo;

    iget v3, v3, Lcom/htc/music/util/MusicUtils$DecodeInfo;->mAlbumId:I

    if-ne p0, v3, :cond_0

    .line 4787
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4799
    :goto_1
    return-void

    .line 4785
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4792
    :cond_1
    if-eqz p3, :cond_2

    .line 4793
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! mResume remove = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4794
    new-instance v2, Lcom/htc/music/util/TimedKey;

    invoke-direct {v2, p0}, Lcom/htc/music/util/TimedKey;-><init>(I)V

    .line 4795
    .local v2, t:Lcom/htc/music/util/TimedKey;
    invoke-virtual {p4, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->remove(Ljava/lang/Object;)V

    goto :goto_1

    .line 4797
    .end local v2           #t:Lcom/htc/music/util/TimedKey;
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static revertAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/MemoryCacheBitmapByPosition;)V
    .locals 3
    .parameter
    .parameter "cache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/music/util/MemoryCacheBitmapByPosition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4832
    .local p0, revertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4833
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4834
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->remove(Ljava/lang/Object;)V

    .line 4833
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4836
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4837
    return-void
.end method

.method public static revertAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/MemoryCacheBitmapByTime;)V
    .locals 3
    .parameter
    .parameter "cache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/music/util/MemoryCacheBitmapByTime;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4849
    .local p0, revertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4850
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4851
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->remove(I)V

    .line 4850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4853
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4854
    return-void
.end method

.method public static revertAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/MemoryCacheMBitmapByTime;)V
    .locals 4
    .parameter
    .parameter "cache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/music/util/MemoryCacheMBitmapByTime;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4840
    .local p0, revertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4841
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4842
    new-instance v2, Lcom/htc/music/util/TimedKey;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Lcom/htc/music/util/TimedKey;-><init>(Ljava/lang/Integer;)V

    .line 4843
    .local v2, t:Lcom/htc/music/util/TimedKey;
    invoke-virtual {p1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->remove(Ljava/lang/Object;)V

    .line 4841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4845
    .end local v2           #t:Lcom/htc/music/util/TimedKey;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4846
    return-void
.end method

.method public static searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "albumName"

    .prologue
    .line 3794
    const/4 v2, 0x0

    .line 3795
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 3797
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3798
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3800
    if-eqz p1, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3801
    :cond_0
    const v3, 0x7f06003e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3802
    :cond_1
    move-object v2, p1

    .line 3804
    move-object v1, p1

    .line 3806
    const-string v3, "android.intent.extra.album"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3807
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3808
    const v3, 0x7f060058

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3809
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3811
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3812
    return-void
.end method

.method public static searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "artistName"

    .prologue
    .line 3815
    const/4 v2, 0x0

    .line 3816
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 3818
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3819
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3822
    move-object v2, p1

    .line 3823
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 3824
    :cond_0
    const-string p1, "<unknown>"

    .line 3827
    :cond_1
    move-object v1, p1

    .line 3829
    const-string v3, "android.intent.extra.artist"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3830
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3831
    const v3, 0x7f060058

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3832
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3834
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3835
    return-void
.end method

.method public static searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "trackName"
    .parameter "artistName"

    .prologue
    .line 3768
    const/4 v2, 0x0

    .line 3769
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 3771
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3772
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3775
    move-object v2, p1

    .line 3776
    if-eqz p2, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3778
    :cond_0
    move-object v1, p1

    .line 3783
    :goto_0
    const-string v3, "android.intent.extra.title"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3784
    const-string v3, "android.intent.extra.artist"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3786
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3787
    const v3, 0x7f060058

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3788
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3790
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3791
    return-void

    .line 3780
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2380
    .local p3, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/util/MusicUtils;->setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;Z)V

    .line 2381
    return-void
.end method

.method public static setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;Z)V
    .locals 17
    .parameter "context"
    .parameter "id"
    .parameter
    .parameter "showToast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2384
    .local p3, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return-void

    .line 2387
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2388
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v13, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v13, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 2389
    .local v10, ringUri:Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2390
    .local v3, batchwhere:Ljava/lang/StringBuilder;
    const-string v13, "_id IN ("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2392
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_3

    .line 2399
    const-string v13, "[MusicUtils]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Set as ringtone for:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    if-lez v7, :cond_2

    .line 2401
    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2392
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2404
    :cond_3
    const-string v13, ")"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    const-string v13, "[MusicUtils]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "where= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2407
    .local v11, values:Landroid/content/ContentValues;
    const-string v13, "custom_ringtone"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    const-string v13, "content://com.android.contacts/contacts"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v9, v13, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2417
    :try_start_1
    new-instance v12, Landroid/content/ContentValues;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2418
    .end local v11           #values:Landroid/content/ContentValues;
    .local v12, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v13, "is_ringtone"

    const-string v14, "1"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v10, v12, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2426
    if-eqz p4, :cond_0

    .line 2427
    const/4 v13, 0x3

    new-array v4, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "_id"

    aput-object v14, v4, v13

    const/4 v13, 0x1

    const-string v14, "_data"

    aput-object v14, v4, v13

    const/4 v13, 0x2

    const-string v14, "title"

    aput-object v14, v4, v13

    .line 2431
    .local v4, cols:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2433
    .local v5, cursor:Landroid/database/Cursor;
    :try_start_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v4, v1, v2}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v5

    .line 2434
    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 2435
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2436
    const v13, 0x7f060092

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2438
    .local v8, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v8, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2441
    .end local v8           #message:Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_0

    .line 2442
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2443
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2409
    .end local v4           #cols:[Ljava/lang/String;
    .end local v5           #cursor:Landroid/database/Cursor;
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    .line 2411
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    const-string v13, "[MusicUtils]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "couldn\'t set contact ringtone flag for id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2420
    .end local v6           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v11       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v6

    .line 2421
    .restart local v6       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_2
    const-string v13, "[MusicUtils]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "couldn\'t set ringtone flag for id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2441
    .end local v6           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v5       #cursor:Landroid/database/Cursor;
    .restart local v12       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v13

    if-eqz v5, :cond_5

    .line 2442
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2443
    const/4 v5, 0x0

    .line 2441
    :cond_5
    throw v13

    .line 2420
    .end local v4           #cols:[Ljava/lang/String;
    .end local v5           #cursor:Landroid/database/Cursor;
    :catch_2
    move-exception v6

    move-object v11, v12

    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v11       #values:Landroid/content/ContentValues;
    goto :goto_2
.end method

.method public static setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2472
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/htc/music/util/MusicUtils;->setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Z)V

    .line 2473
    return-void
.end method

.method public static setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Z)V
    .locals 15
    .parameter "context"
    .parameter "uri"
    .parameter
    .parameter "showToast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2476
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2537
    :cond_0
    :goto_0
    return-void

    .line 2479
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 2480
    .local v12, resolver:Landroid/content/ContentResolver;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2481
    .local v7, batchwhere:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2483
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 2490
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set as ringtone for:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    if-lez v10, :cond_2

    .line 2492
    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2483
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2495
    :cond_3
    const-string v1, ")"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2496
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2498
    .local v13, values:Landroid/content/ContentValues;
    const-string v1, "custom_ringtone"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    const-string v1, "content://com.android.contacts/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v13, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2508
    :try_start_1
    new-instance v14, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v14, v1}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2509
    .end local v13           #values:Landroid/content/ContentValues;
    .local v14, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2517
    if-eqz p3, :cond_0

    .line 2518
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v3, v1

    .line 2521
    .local v3, cols:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2523
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    :try_start_3
    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2524
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2525
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2526
    const v1, 0x7f060092

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2528
    .local v11, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2531
    .end local v11           #message:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_0

    .line 2532
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2533
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2500
    .end local v3           #cols:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v14           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 2502
    .local v9, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t set contact ringtone flag for uri, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2511
    .end local v9           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v13       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    .line 2512
    .restart local v9       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_2
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t set ringtone flag for uri, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2531
    .end local v9           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v13           #values:Landroid/content/ContentValues;
    .restart local v3       #cols:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v14       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    .line 2532
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2533
    const/4 v8, 0x0

    .line 2531
    :cond_5
    throw v1

    .line 2511
    .end local v3           #cols:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_2
    move-exception v9

    move-object v13, v14

    .end local v14           #values:Landroid/content/ContentValues;
    .restart local v13       #values:Landroid/content/ContentValues;
    goto :goto_2
.end method

.method public static setDRMNotificationRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2326
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 2327
    return-void
.end method

.method public static setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2322
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 2323
    return-void
.end method

.method public static setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 11
    .parameter "context"
    .parameter "uri"
    .parameter "isRingtone"
    .parameter "isNotification"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2330
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v3

    const-string v0, "title"

    aput-object v0, v2, v4

    .line 2333
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2339
    .local v9, resolver:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2340
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 2341
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    :cond_0
    if-eqz p3, :cond_1

    .line 2346
    const-string v0, "is_notification"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, p1, v10, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    const/4 v6, 0x0

    .line 2355
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2356
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2357
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2358
    if-eqz p2, :cond_4

    .line 2359
    const-string v0, "ringtone"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2360
    const v0, 0x7f060047

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2361
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2372
    .end local v8           #message:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 2373
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2374
    const/4 v6, 0x0

    .line 2377
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 2348
    :catch_0
    move-exception v7

    .line 2351
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_1

    .line 2362
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz p3, :cond_2

    .line 2363
    :try_start_2
    const-string v0, "notification_sound"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2365
    const v0, 0x7f060091

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2367
    .restart local v8       #message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2372
    .end local v8           #message:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2373
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2374
    const/4 v6, 0x0

    .line 2372
    :cond_5
    throw v0
.end method

.method public static setNotificationRingtone(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2264
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;JZZ)V

    .line 2265
    return-void
.end method

.method public static setRingtone(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2260
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;JZZ)V

    .line 2261
    return-void
.end method

.method public static setRingtone(Landroid/content/Context;JZZ)V
    .locals 11
    .parameter "context"
    .parameter "id"
    .parameter "isRingtone"
    .parameter "isNotification"

    .prologue
    .line 2268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2270
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 2274
    .local v5, ringUri:Landroid/net/Uri;
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 2275
    .local v6, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    .line 2276
    const-string v7, "is_ringtone"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    :cond_0
    if-eqz p4, :cond_1

    .line 2281
    const-string v7, "is_notification"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2289
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "_data"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "title"

    aput-object v8, v0, v7

    .line 2294
    .local v0, cols:[Ljava/lang/String;
    invoke-static {p0, v0, p1, p2}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 2297
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 2299
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2300
    if-eqz p3, :cond_4

    .line 2301
    const-string v7, "ringtone"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2303
    const v7, 0x7f060047

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2304
    .local v3, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2314
    .end local v3           #message:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2315
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2316
    const/4 v1, 0x0

    .line 2319
    .end local v0           #cols:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 2283
    :catch_0
    move-exception v2

    .line 2285
    .local v2, ex:Ljava/lang/UnsupportedOperationException;
    const-string v7, "[MusicUtils]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t set ringtone flag for id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2305
    .end local v2           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v0       #cols:[Ljava/lang/String;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz p4, :cond_2

    .line 2306
    :try_start_2
    const-string v7, "notification_sound"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2308
    const v7, 0x7f060091

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2310
    .restart local v3       #message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2314
    .end local v3           #message:Ljava/lang/String;
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_5

    .line 2315
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2316
    const/4 v1, 0x0

    .line 2314
    :cond_5
    throw v7
.end method

.method public static setTabActivityResult(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    .line 2762
    const-string v0, "com.htc.music"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "result"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2763
    return-void
.end method

.method public static setTabActivitySelectedId(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2774
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2775
    .local v5, q:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2776
    .local v2, len:I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveQueue mPlayListLen : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2777
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2778
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2779
    .local v3, n:I
    if-nez v3, :cond_0

    .line 2780
    const-string v6, "0;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2777
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2782
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 2783
    and-int/lit8 v0, v3, 0xf

    .line 2784
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 2785
    sget-object v6, Lcom/htc/music/util/MusicUtils;->hexdigits:[C

    aget-char v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2787
    .end local v0           #digit:I
    :cond_1
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2791
    .end local v3           #n:I
    :cond_2
    const-string v6, "com.htc.music"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2793
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "selectedid"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2794
    return-void
.end method

.method public static showContactRingtoneToast(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2450
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v4

    const-string v3, "_data"

    aput-object v3, v0, v5

    const-string v3, "title"

    aput-object v3, v0, v6

    .line 2454
    .local v0, cols:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2456
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 2457
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 2458
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2459
    const v3, 0x7f060092

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2461
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
    .end local v2           #message:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 2465
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2466
    const/4 v1, 0x0

    .line 2469
    :cond_1
    return-void

    .line 2464
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 2465
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2466
    const/4 v1, 0x0

    .line 2464
    :cond_2
    throw v3
.end method

.method public static showDRMContactRingtoneToast(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 2540
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v8

    const-string v0, "title"

    aput-object v0, v2, v3

    .line 2543
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2545
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2546
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 2547
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2548
    const v0, 0x7f060092

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2550
    .local v7, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2553
    .end local v7           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 2554
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2555
    const/4 v6, 0x0

    .line 2558
    :cond_1
    return-void

    .line 2553
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2554
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2555
    const/4 v6, 0x0

    .line 2553
    :cond_2
    throw v0
.end method

.method public static shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)I
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1487
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Z)I

    move-result v0

    return v0
.end method

.method public static switchToDmc(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3279
    const-string v3, "[MusicUtils]"

    const-string v4, "switchToDmc"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_0

    .line 3282
    const-string v3, "[MusicUtils]"

    const-string v4, "Service is null, need to bind service"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    :goto_0
    return v2

    .line 3286
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDmr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3288
    .local v1, szDMR:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 3290
    :cond_1
    const-string v3, "[MusicUtils]"

    const-string v4, "No DMR connected now."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3294
    :cond_2
    const-string v2, "[MusicUtils]"

    const-string v3, "starting DMC Music player..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->switchMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3303
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3300
    :catch_0
    move-exception v0

    .line 3301
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static switchToPUSH(Landroid/content/Context;Z)Z
    .locals 9
    .parameter "c"
    .parameter "bReload"

    .prologue
    const/4 v5, 0x1

    .line 3307
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchToPUSH bReload:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDmr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 3310
    .local v4, szDMR:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    .line 3312
    :cond_0
    const-string v5, "[MusicUtils]"

    const-string v6, "No DMR connected now."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    const/4 v5, 0x0

    .line 3355
    :cond_1
    :goto_0
    return v5

    .line 3316
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3318
    .local v0, data:Landroid/os/Bundle;
    :try_start_0
    const-string v6, "[MusicUtils]"

    const-string v7, "push switch = true"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    const/4 v2, 0x0

    .line 3322
    .local v2, list:[I
    const/4 v3, -0x1

    .line 3323
    .local v3, position:I
    if-eqz p1, :cond_4

    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_4

    .line 3325
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v2

    .line 3326
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v3

    .line 3328
    if-eqz v2, :cond_3

    .line 3329
    const-string v6, "com.htc.music.dmc_playlist"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3330
    :cond_3
    if-ltz v3, :cond_4

    .line 3331
    const-string v6, "com.htc.music.dmc_currentindex"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3334
    :cond_4
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3339
    .end local v2           #list:[I
    .end local v3           #position:I
    :goto_1
    const-string v6, "Render"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    const-string v6, "cookie"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3342
    const-string v6, "[MusicUtils]"

    const-string v7, "starting DMC Music playback service..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    const-string v6, "command"

    const-string v7, "com.htc.music.refreshplaylist"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3344
    const-string v6, "forcePlay"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3346
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_1

    .line 3348
    :try_start_1
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Lcom/htc/music/IMediaPlaybackService;->switchMode(I)V

    .line 3349
    const-string v6, "[MusicUtils]"

    const-string v7, "Soar setPlaylistInfo"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3351
    :catch_0
    move-exception v1

    .line 3352
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3335
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 3336
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static switchToPUSH(Landroid/content/Context;[II)Z
    .locals 9
    .parameter "c"
    .parameter "playlist"
    .parameter "nCurrentIndex"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3360
    const-string v7, "[MusicUtils]"

    const-string v8, "switchToPUSH"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDmr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 3363
    .local v4, szDMR:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 3365
    :cond_0
    const-string v5, "[MusicUtils]"

    const-string v7, "No DMR connected now."

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 3400
    :goto_0
    return v5

    .line 3369
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3371
    .local v0, data:Landroid/os/Bundle;
    const-string v7, "com.htc.music.dmc_setsrc"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3373
    const/4 v2, 0x0

    .line 3374
    .local v2, list:[I
    const/4 v3, -0x1

    .line 3376
    .local v3, position:I
    if-eqz p1, :cond_2

    .line 3377
    move-object v2, p1

    .line 3378
    :cond_2
    if-eqz v2, :cond_3

    .line 3379
    const-string v6, "com.htc.music.dmc_playlist"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3381
    :cond_3
    if-ltz p2, :cond_4

    move v3, p2

    .line 3382
    :cond_4
    if-ltz v3, :cond_5

    .line 3383
    const-string v6, "com.htc.music.dmc_currentindex"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3385
    :cond_5
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    const-string v6, "Render"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3388
    const-string v6, "cookie"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3390
    const-string v6, "[MusicUtils]"

    const-string v7, "starting DMC PUSH Music playback service..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3391
    const-string v6, "command"

    const-string v7, "com.htc.music.refreshplaylist"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    const-string v6, "forcePlay"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3395
    :try_start_0
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Lcom/htc/music/IMediaPlaybackService;->switchMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3397
    :catch_0
    move-exception v1

    .line 3398
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static switchToPush(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3256
    const-string v3, "[MusicUtils]"

    const-string v4, "Switch to push controller"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_0

    .line 3259
    const-string v3, "[MusicUtils]"

    const-string v4, "Service is null, need to bind service"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    :goto_0
    return v2

    .line 3263
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDmr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3264
    .local v1, szDMR:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 3266
    :cond_1
    const-string v3, "[MusicUtils]"

    const-string v4, "No DMR connected now."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3271
    :cond_2
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->switchMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3275
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3272
    :catch_0
    move-exception v0

    .line 3273
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static toIntList(Ljava/util/ArrayList;)[I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 2829
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 2830
    const/4 v1, 0x0

    .line 2835
    :cond_0
    return-object v1

    .line 2831
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 2832
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2833
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 2832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static unbindFromService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 367
    new-instance v2, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    invoke-direct {v2, p1, p0}, Lcom/htc/music/util/MusicUtils$ServiceOwner;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 368
    .local v2, serviceOwner:Lcom/htc/music/util/MusicUtils$ServiceOwner;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    .line 369
    .local v1, sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    if-nez v1, :cond_0

    .line 370
    const-string v3, "[MusicUtils]"

    const-string v4, "Trying to unbind for unknown Context"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :goto_0
    return-void

    .line 375
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "[MusicUtils]"

    const-string v4, "can\'t unbind service"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v3, "[MusicUtils]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateAlbumArt(Ljava/util/ArrayList;Lcom/htc/music/util/DlArtAsyncImageDecoder;)V
    .locals 10
    .parameter
    .parameter "decoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/MusicUtils$DecodeInfo;",
            ">;",
            "Lcom/htc/music/util/DlArtAsyncImageDecoder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, decodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/util/MusicUtils$DecodeInfo;>;"
    const/4 v5, 0x0

    .line 4822
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4824
    .local v8, len:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 4825
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/util/MusicUtils$DecodeInfo;

    .line 4826
    .local v9, temp:Lcom/htc/music/util/MusicUtils$DecodeInfo;
    iget v1, v9, Lcom/htc/music/util/MusicUtils$DecodeInfo;->mAlbumId:I

    iget-object v2, v9, Lcom/htc/music/util/MusicUtils$DecodeInfo;->mPath:Ljava/lang/String;

    iget v3, v9, Lcom/htc/music/util/MusicUtils$DecodeInfo;->mAlbumId:I

    iget v4, v9, Lcom/htc/music/util/MusicUtils$DecodeInfo;->mAlbumId:I

    move-object v0, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4824
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4828
    .end local v9           #temp:Lcom/htc/music/util/MusicUtils$DecodeInfo;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4829
    return-void
.end method

.method public static wasDRMFilePlaying(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 3744
    if-eqz p0, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3745
    const/4 v0, 0x1

    .line 3747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
