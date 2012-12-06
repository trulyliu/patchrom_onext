.class public Lcom/htc/music/util/DlArtAsyncImageDecoder;
.super Lcom/htc/music/util/AsyncImageDecoder;
.source "DlArtAsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[DlArtAsyncImageDecoder]"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"
    .parameter "touchFile"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    .line 17
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "gliderAlbumId"
    .parameter "albumName"
    .parameter "albumKey"

    .prologue
    .line 93
    if-nez p2, :cond_0

    if-gez p3, :cond_0

    .line 94
    invoke-virtual {p0, p4}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->notifyError(I)V

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;

    const/4 v1, 0x0

    new-array v9, v1, [Ljava/lang/Object;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;-><init>(Lcom/htc/music/util/DlArtAsyncImageDecoder;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .local v0, dlTask:Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;
    invoke-virtual {p0, v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 101
    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->sendTaskToNonUiThread(Ljava/lang/Object;J)V

    goto :goto_0
.end method

.method public add(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "albumName"
    .parameter "albumKey"

    .prologue
    .line 71
    if-nez p2, :cond_0

    if-gez p3, :cond_0

    .line 72
    invoke-virtual {p0, p4}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->notifyError(I)V

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;

    const/4 v1, 0x0

    new-array v8, v1, [Ljava/lang/Object;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;-><init>(Lcom/htc/music/util/DlArtAsyncImageDecoder;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .local v0, dlTask:Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;
    invoke-virtual {p0, v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 79
    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->sendTaskToNonUiThread(Ljava/lang/Object;J)V

    goto :goto_0
.end method

.method protected decode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->getTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-result-object v2

    .line 122
    .local v2, dt:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    instance-of v3, v2, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 123
    check-cast v1, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;

    .line 124
    .local v1, dldt:Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;
    invoke-virtual {p0, v1}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->processDownloadedPath(Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;)V

    .line 125
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .line 126
    .local v0, arg0:[Ljava/lang/Object;
    #getter for: Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mIsGlider:Z
    invoke-static {v1}, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->access$200(Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    iget v3, v1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    .line 132
    :goto_0
    iput-object v0, v1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 135
    .end local v0           #arg0:[Ljava/lang/Object;
    .end local v1           #dldt:Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->asyncDecode(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 136
    return-void

    .line 129
    .restart local v0       #arg0:[Ljava/lang/Object;
    .restart local v1       #dldt:Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;
    :cond_1
    iget-object v3, v1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    aput-object v3, v0, v4

    goto :goto_0
.end method

.method protected processDownloadedPath(Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;)V
    .locals 4
    .parameter "dldt"

    .prologue
    .line 105
    #getter for: Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumName:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->access$000(Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->access$100(Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/com.htc.musicenhancer/files/.albumarts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/music/util/MusicUtils;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->processExternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumName:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->access$000(Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->processAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->access$100(Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, albumart:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iput-object v0, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 117
    .end local v0           #albumart:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method protected sendTaskToNonUiThread(Ljava/lang/Object;J)V
    .locals 3
    .parameter "task"
    .parameter "delayMillis"

    .prologue
    const/4 v2, 0x1

    .line 48
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 50
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    iput v2, v0, Landroid/os/Message;->what:I

    .line 53
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
