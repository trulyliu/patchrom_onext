.class Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;
.super Landroid/os/AsyncTask;
.source "AsyncQueryOnlineSong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncQueryAlbum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private albumName:Ljava/lang/String;

.field mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

.field private singerName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    .line 116
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    .locals 6
    .parameter "params"

    .prologue
    .line 132
    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->albumName:Ljava/lang/String;

    .line 133
    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->singerName:Ljava/lang/String;

    .line 135
    iget-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$000(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v1

    .line 136
    .local v1, engine:Lcom/htc/music/online/sinamusic/ISinaEngine;
    const/4 v2, 0x0

    .line 139
    .local v2, songlistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->albumName:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->singerName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/htc/music/online/sinamusic/ISinaEngine;->searchAlbum(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    :try_end_0
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 150
    :goto_0
    return-object v3

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SnsException;->printErrorInfo()V

    .line 144
    iget-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    iget-object v4, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$000(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$100(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;->onReturnError(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/SnsException;)V

    .line 148
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->doInBackground([Ljava/lang/Object;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->logger:Lcom/htc/music/online/sinamusic/MyLogger;
    invoke-static {v0}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$200(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search songlist id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    iget-object v1, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$000(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->this$0:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    #getter for: Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->access$100(Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;->onFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V

    .line 161
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    check-cast p1, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->onPostExecute(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$AsyncQueryAlbum;->mListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    invoke-interface {v0}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;->onStart()V

    .line 126
    :cond_0
    return-void
.end method
