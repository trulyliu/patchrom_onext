.class public Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;
.super Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
.source "DlArtAsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/DlArtAsyncImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DlDecodeTask"
.end annotation


# instance fields
.field private mAlbumKey:Ljava/lang/String;

.field private mAlbumName:Ljava/lang/String;

.field private mIsGlider:Z

.field final synthetic this$0:Lcom/htc/music/util/DlArtAsyncImageDecoder;


# direct methods
.method public varargs constructor <init>(Lcom/htc/music/util/DlArtAsyncImageDecoder;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "gliderAlbumId"
    .parameter "albumName"
    .parameter "albumKey"
    .parameter "args"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->this$0:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 39
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v6, v0

    const/4 v0, 0x1

    aput-object p9, v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumKey:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mIsGlider:Z

    .line 41
    iput-object p7, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumName:Ljava/lang/String;

    .line 42
    iput-object p8, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumKey:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mIsGlider:Z

    .line 44
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/DlArtAsyncImageDecoder;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "albumName"
    .parameter "albumKey"
    .parameter "args"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->this$0:Lcom/htc/music/util/DlArtAsyncImageDecoder;

    .line 31
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v6, v0

    const/4 v0, 0x1

    aput-object p8, v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumKey:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mIsGlider:Z

    .line 33
    iput-object p6, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumName:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumKey:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mIsGlider:Z

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mAlbumKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/music/util/DlArtAsyncImageDecoder$DlDecodeTask;->mIsGlider:Z

    return v0
.end method
