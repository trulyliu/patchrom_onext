.class public Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
.super Ljava/lang/Object;
.source "MusicGridViewMediaData.java"

# interfaces
.implements Lcom/htc/sunnyCore/IMediaData;


# static fields
.field public static final DECODE_FINISH:I = 0x2

.field public static final DECODE_INVALIDATE:I = 0x0

.field public static final DECODE_IN_PROCESS:I = 0x1


# instance fields
.field protected mCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

.field private mDecodeStatus:I

.field private mDecodeViewStatus:I

.field protected mIsDataReady:Z

.field private mIsSelected:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsSelected:Z

    .line 17
    iput-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    .line 20
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mDecodeStatus:I

    .line 21
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mDecodeViewStatus:I

    .line 26
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    .line 27
    return-void
.end method


# virtual methods
.method public getCoverInfo()Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    return-object v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDecodeStatus()I
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mDecodeStatus:I

    monitor-exit p0

    return v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    iget-object v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/gridview/MusicGridViewMediaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getViewDecodeStatus()I
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mDecodeViewStatus:I

    monitor-exit p0

    return v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isItemDataReady()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsSelected:Z

    return v0
.end method

.method public setCoverInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "key"
    .parameter "name"
    .parameter "path"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->setCoverInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setDecodeStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mDecodeStatus:I

    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsSelected:Z

    .line 110
    return-void
.end method

.method public setViewDecodeStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mDecodeViewStatus:I

    .line 130
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
