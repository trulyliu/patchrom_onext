.class Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;
.super Landroid/os/AsyncTask;
.source "AsyncQueryOnlineSong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncQuerySong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/htc/music/online/sinamusic/WrapperSongDetail;",
        ">;"
    }
.end annotation


# instance fields
.field mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

.field private singerName:Ljava/lang/String;

.field private songName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    .line 57
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    .locals 6
    .parameter "params"

    .prologue
    .line 74
    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->songName:Ljava/lang/String;

    .line 75
    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->singerName:Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$000(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v1

    .line 78
    .local v1, engine:Lcom/htc/music/online/sinamusic/ISinaEngine;
    const/4 v2, 0x0

    .line 81
    .local v2, songDetail:Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->songName:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->singerName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/htc/music/online/sinamusic/ISinaEngine;->searchSong(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    :try_end_0
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 92
    :goto_0
    return-object v3

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SnsException;->printErrorInfo()V

    .line 86
    iget-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    iget-object v4, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$000(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$100(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;->onReturnError(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/SnsException;)V

    .line 90
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->doInBackground([Ljava/lang/Object;)Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->logger:Lcom/htc/music/online/sinamusic/MyLogger;
    invoke-static {v0}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$200(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search song id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    iget-object v1, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$000(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$100(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;->onFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->onPostExecute(Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQuerySong;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    invoke-interface {v0}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;->onStart()V

    .line 68
    :cond_0
    return-void
.end method
