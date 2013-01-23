.class public final Lcom/android/camera/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public contentUri:Landroid/net/Uri;

.field public filePath:Lcom/android/camera/io/Path;

.field public mimeType:Ljava/lang/String;

.field public takenTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Ljava/lang/String;)V
    .locals 6
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "mimeType"

    .prologue
    .line 28
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Ljava/lang/String;J)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Ljava/lang/String;J)V
    .locals 0
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "takenTime"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 33
    iput-object p2, p0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 34
    iput-object p3, p0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 35
    iput-wide p4, p0, Lcom/android/camera/MediaInfo;->takenTime:J

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "contentUri"
    .parameter "mimeType"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/camera/MediaInfo;
    .locals 5

    .prologue
    .line 45
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/MediaInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lcom/android/camera/MediaInfo;

    iget-object v2, p0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v4, p0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/android/camera/MediaInfo;->clone()Lcom/android/camera/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v0, v0, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v0, v0, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v0}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isImage()Z
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "image/"

    iget-object v2, p0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isVideo()Z
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "video/"

    iget-object v2, p0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
