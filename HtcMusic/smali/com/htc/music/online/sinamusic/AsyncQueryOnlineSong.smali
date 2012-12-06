.class public Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
.super Ljava/lang/Object;
.source "AsyncQueryOnlineSong.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;,
        Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;,
        Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;
    }
.end annotation


# instance fields
.field private logger:Lcom/htc/music/online/sinamusic/MyLogger;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mIntent:Landroid/content/Intent;

    .line 23
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Lcom/htc/music/online/sinamusic/MyLogger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    return-object v0
.end method


# virtual methods
.method public startQueryAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;)V
    .locals 3
    .parameter "albumName"
    .parameter "singerName"
    .parameter "listener"

    .prologue
    .line 33
    new-instance v0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;

    invoke-direct {v0, p0, p3}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;-><init>(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    return-void
.end method

.method public startQuerySong(Ljava/lang/String;Ljava/lang/String;Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;)V
    .locals 3
    .parameter "songName"
    .parameter "singerName"
    .parameter "listener"

    .prologue
    .line 28
    new-instance v0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;

    invoke-direct {v0, p0, p3}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;-><init>(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 29
    return-void
.end method
