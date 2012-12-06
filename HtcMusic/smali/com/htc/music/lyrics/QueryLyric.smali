.class public Lcom/htc/music/lyrics/QueryLyric;
.super Ljava/lang/Object;
.source "QueryLyric.java"


# static fields
.field private static logger:Lcom/htc/music/online/sinamusic/MyLogger;

.field private static final mLyricColumn:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/htc/music/lyrics/QueryLyric;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lyric"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/lyrics/QueryLyric;->mLyricColumn:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static QueryFromId(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 10
    .parameter "resolver"
    .parameter "audioId"

    .prologue
    const/4 v9, 0x0

    .line 18
    const-string v8, ""

    .line 19
    .local v8, lyric:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 20
    .local v7, id:Ljava/lang/String;
    sget-object v0, Lcom/htc/music/lyrics/QueryLyric;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QueryFromId]audioId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 22
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$MediaArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/lyrics/QueryLyric;->mLyricColumn:[Ljava/lang/String;

    const-string v3, "audio_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object v7, v4, v9

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 25
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 26
    const-string v0, ""

    .line 37
    :goto_0
    return-object v0

    .line 28
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 30
    sget-object v0, Lcom/htc/music/lyrics/QueryLyric;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lyricPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 36
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 37
    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 33
    const-string v0, ""

    goto :goto_0
.end method
