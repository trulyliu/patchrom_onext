.class public Lcom/android/camera/io/SaveImageTask;
.super Lcom/android/camera/io/SaveMediaTask;
.source "SaveImageTask.java"


# static fields
.field private static m_TotalJpegRawDataSize:J


# instance fields
.field public volatile bitmap:Landroid/graphics/Bitmap;

.field public volatile imageHeight:I

.field public volatile imageWidth:I

.field private m_JpegRawData:[B

.field private m_JpegRawDataSize:I

.field private m_NativeJpegRawData:J

.field private sinaCamera_isLastMedia:Z

.field private sinaCamera_isYuvData:Z

.field private sinaCamera_preview_Height:I

.field private sinaCamera_preview_angle:I

.field private sinaCamera_preview_width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/io/SaveMediaTask;-><init>(Lcom/android/camera/CameraThread;)V

    .line 30
    iput v1, p0, Lcom/android/camera/io/SaveImageTask;->imageHeight:I

    .line 31
    iput v1, p0, Lcom/android/camera/io/SaveImageTask;->imageWidth:I

    .line 37
    iput-boolean v0, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_isLastMedia:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_isYuvData:Z

    .line 39
    iput v0, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_width:I

    .line 40
    iput v0, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_Height:I

    .line 41
    iput v0, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_angle:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;[B)V
    .locals 0
    .parameter "cameraThread"
    .parameter "captureHandle"
    .parameter "jpegRawData"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;)V

    .line 58
    invoke-virtual {p0, p3}, Lcom/android/camera/io/SaveImageTask;->setJpegRawData([B)Z

    .line 59
    iput-object p2, p0, Lcom/android/camera/io/SaveImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;[BIIIZ)V
    .locals 1
    .parameter "cameraThread"
    .parameter "captureHandle"
    .parameter "rawData"
    .parameter "width"
    .parameter "height"
    .parameter "angle"
    .parameter "isPreviewFrame"

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;[B)V

    .line 64
    if-eqz p7, :cond_0

    .line 65
    iput-boolean v0, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_isYuvData:Z

    .line 66
    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/io/SaveImageTask;->isTempMedia:Z

    .line 67
    iput p4, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_width:I

    .line 68
    iput p5, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_Height:I

    .line 69
    iput p6, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_angle:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;[B)V
    .locals 0
    .parameter "cameraThread"
    .parameter "jpegRawData"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/android/camera/io/SaveImageTask;->setJpegRawData([B)Z

    .line 54
    return-void
.end method

.method private checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "root"
    .parameter "name"
    .parameter "extension"

    .prologue
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, f:Ljava/io/File;
    const/4 v1, 0x0

    .line 81
    .local v1, index:I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 84
    if-ltz v1, :cond_0

    .line 85
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 86
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    :cond_1
    return-object p2
.end method

.method public static declared-synchronized getTotalJpegRawDataSize()J
    .locals 3

    .prologue
    .line 219
    const-class v0, Lcom/android/camera/io/SaveImageTask;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/android/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized updateTotalJpegRawDataSize(J)J
    .locals 4
    .parameter "size"

    .prologue
    .line 395
    const-class v1, Lcom/android/camera/io/SaveImageTask;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/android/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J

    add-long/2addr v2, p0

    sput-wide v2, Lcom/android/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J

    .line 396
    sget-wide v2, Lcom/android/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final clearJpegRawData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    invoke-static {}, Lcom/android/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawData:[B

    .line 106
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    if-lez v0, :cond_1

    .line 108
    iget v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    neg-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/camera/io/SaveImageTask;->updateTotalJpegRawDataSize(J)J

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    .line 111
    :cond_1
    return-void

    .line 100
    :cond_2
    iget-wide v0, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 102
    iget-wide v0, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-static {v0, v1}, Lcom/android/camera/io/NativeBuffer;->remove(J)V

    .line 103
    iput-wide v2, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/camera/io/SaveImageTask;->clearJpegRawData()V

    .line 120
    return-void
.end method

.method protected getAvailableFileName()Lcom/android/camera/io/DCFPath;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    .line 130
    .local v6, cameraActivity:Lcom/android/camera/HTCCamera;
    if-nez v6, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "getAvailableFileName() - No camera activity"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-object v9

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/camera/io/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    invoke-static {v0}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, dcimPath:Ljava/lang/String;
    new-instance v4, Lcom/android/camera/Reference;

    invoke-direct {v4}, Lcom/android/camera/Reference;-><init>()V

    .line 139
    .local v4, dirCounter:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    new-instance v5, Lcom/android/camera/Reference;

    invoke-direct {v5}, Lcom/android/camera/Reference;-><init>()V

    .line 140
    .local v5, fileCounter:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/io/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v3, p0, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "getAvailableFileName() - Cannot get directory or file counter"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/android/camera/io/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    new-instance v3, Lcom/android/camera/io/FileCounter;

    iget-object v0, v4, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    invoke-static {v2, v3}, Lcom/android/camera/io/DCFUtility;->getDirectoryName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, dirPath:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/io/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    new-instance v3, Lcom/android/camera/io/FileCounter;

    iget-object v0, v5, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    iget-object v0, p0, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static {v2, v3, v0}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, fileName:Ljava/lang/String;
    new-instance v9, Lcom/android/camera/io/DCFPath;

    new-instance v2, Lcom/android/camera/io/FileCounter;

    iget-object v0, v4, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    new-instance v3, Lcom/android/camera/io/FileCounter;

    iget-object v0, v5, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    invoke-direct {v9, v7, v8, v2, v3}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    .line 158
    .local v9, path:Lcom/android/camera/io/DCFPath;
    iget-object v0, p0, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v0, v0, Lcom/android/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v0}, Lcom/android/camera/io/SaveImageTask;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 159
    iget-object v0, v9, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    new-instance v10, Lcom/android/camera/io/DCFPath;

    iget-object v0, v9, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    iget-object v3, v9, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    invoke-direct {v10, v0, v8, v2, v3}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    .end local v9           #path:Lcom/android/camera/io/DCFPath;
    .local v10, path:Lcom/android/camera/io/DCFPath;
    move-object v9, v10

    .line 168
    .end local v10           #path:Lcom/android/camera/io/DCFPath;
    .restart local v9       #path:Lcom/android/camera/io/DCFPath;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FOLDER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final getJpegRawData(Z)[B
    .locals 7
    .parameter "removeFromNativeBuffer"

    .prologue
    const-wide/16 v5, 0x0

    .line 177
    iget-object v1, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJpegRawData("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - native buffer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, jpegRawData:[B
    invoke-static {}, Lcom/android/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawData:[B

    .line 184
    if-eqz p1, :cond_0

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawData:[B

    .line 200
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    if-lez v1, :cond_1

    .line 202
    iget v1, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    neg-int v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/android/camera/io/SaveImageTask;->updateTotalJpegRawDataSize(J)J

    .line 203
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    .line 207
    :cond_1
    return-object v0

    .line 189
    :cond_2
    iget-wide v1, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 191
    iget-wide v1, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-static {v1, v2, p1}, Lcom/android/camera/io/NativeBuffer;->get(JZ)[B

    move-result-object v0

    .line 192
    if-eqz p1, :cond_3

    .line 193
    iput-wide v5, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    .line 194
    :cond_3
    if-nez v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get JPEG raw data from native buffer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getJpegRawDataSize()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    return v0
.end method

.method public final hasJpegRawData()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-static {}, Lcom/android/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawData:[B

    if-eqz v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0

    .line 229
    :cond_2
    iget-wide v2, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected onInsertIntoMediaStore(Lcom/android/camera/MediaInfo;)Landroid/net/Uri;
    .locals 11
    .parameter "mediaInfo"

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v2, p0, Lcom/android/camera/io/SaveMediaTask;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 240
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-nez v0, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "onInsertIntoMediaStore() - No camera activity"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-object v1

    .line 247
    :cond_0
    iget-object v10, p1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 248
    .local v10, filePath:Lcom/android/camera/io/Path;
    if-nez v10, :cond_1

    .line 250
    iget-object v2, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "onInsertIntoMediaStore() - No file path"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/camera/io/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    iget-object v2, v10, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/io/SaveImageTask;->gpsLocation:Landroid/location/Location;

    iget-wide v5, p0, Lcom/android/camera/io/SaveImageTask;->takenDateTime:J

    const/4 v7, 0x0

    invoke-virtual {p0, v10}, Lcom/android/camera/io/SaveImageTask;->prepareMediaStoreValues(Lcom/android/camera/io/Path;)Landroid/content/ContentValues;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static/range {v0 .. v9}, Lcom/android/camera/MediaProvider;->insertImage(Landroid/content/Context;Lcom/android/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JILandroid/content/ContentValues;Lcom/android/camera/io/FileFormat;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method protected onSaveMediaToFile(Lcom/android/camera/io/Path;)Z
    .locals 13
    .parameter "filePath"

    .prologue
    .line 274
    const/4 v11, 0x0

    .line 278
    .local v11, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    .end local v11           #stream:Ljava/io/FileOutputStream;
    .local v12, stream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/io/SaveImageTask;->hasJpegRawData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    iget-boolean v1, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_isYuvData:Z

    if-eqz v1, :cond_0

    .line 285
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v0

    .line 286
    .local v0, yuvRawData:[B
    iget v1, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_width:I

    iget v2, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_Height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 289
    .local v3, jpegBuffer:Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_width:I

    iget v2, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_Height:I

    iget v4, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_angle:I

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/imaging/ImageUtility;->yvu420spToRgb565([BIILjava/nio/ByteBuffer;IZ)Z

    .line 297
    const/4 v10, 0x0

    .line 298
    .local v10, jpegWidth:I
    const/4 v8, 0x0

    .line 299
    .local v8, jpegHeight:I
    iget v1, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_angle:I

    sparse-switch v1, :sswitch_data_0

    .line 312
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    .line 313
    iget-object v1, p0, Lcom/android/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 314
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 316
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 323
    .end local v0           #yuvRawData:[B
    .end local v3           #jpegBuffer:Ljava/nio/ByteBuffer;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #jpegHeight:I
    .end local v10           #jpegWidth:I
    .local v9, jpegRawData:[B
    :goto_1
    if-eqz v9, :cond_1

    .line 324
    invoke-virtual {v12, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 332
    .end local v9           #jpegRawData:[B
    :goto_2
    const/4 v1, 0x1

    .line 342
    invoke-static {v12}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move-object v11, v12

    .end local v12           #stream:Ljava/io/FileOutputStream;
    .restart local v11       #stream:Ljava/io/FileOutputStream;
    :goto_3
    return v1

    .line 302
    .end local v11           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #yuvRawData:[B
    .restart local v3       #jpegBuffer:Ljava/nio/ByteBuffer;
    .restart local v8       #jpegHeight:I
    .restart local v10       #jpegWidth:I
    .restart local v12       #stream:Ljava/io/FileOutputStream;
    :sswitch_0
    :try_start_2
    iget v10, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_width:I

    .line 303
    iget v8, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_Height:I

    .line 304
    goto :goto_0

    .line 307
    :sswitch_1
    iget v10, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_Height:I

    .line 308
    iget v8, p0, Lcom/android/camera/io/SaveImageTask;->sinaCamera_preview_width:I

    goto :goto_0

    .line 320
    .end local v0           #yuvRawData:[B
    .end local v3           #jpegBuffer:Ljava/nio/ByteBuffer;
    .end local v8           #jpegHeight:I
    .end local v10           #jpegWidth:I
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v9

    .restart local v9       #jpegRawData:[B
    goto :goto_1

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get JPEG raw data from native buffer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 334
    .end local v9           #jpegRawData:[B
    :catch_0
    move-exception v7

    move-object v11, v12

    .line 336
    .end local v12           #stream:Ljava/io/FileOutputStream;
    .local v7, ex:Ljava/lang/Throwable;
    .restart local v11       #stream:Ljava/io/FileOutputStream;
    :goto_4
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "Exception occurred while saving image to file"

    invoke-static {v1, v2, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/camera/io/SaveImageTask;->clearJpegRawData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 338
    const/4 v1, 0x0

    .line 342
    invoke-static {v11}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    .line 328
    .end local v7           #ex:Ljava/lang/Throwable;
    .end local v11           #stream:Ljava/io/FileOutputStream;
    .restart local v12       #stream:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 329
    iget-object v1, p0, Lcom/android/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 342
    :catchall_0
    move-exception v1

    move-object v11, v12

    .end local v12           #stream:Ljava/io/FileOutputStream;
    .restart local v11       #stream:Ljava/io/FileOutputStream;
    :goto_5
    invoke-static {v11}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    .line 331
    .end local v11           #stream:Ljava/io/FileOutputStream;
    .restart local v12       #stream:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No image to save"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 342
    .end local v12           #stream:Ljava/io/FileOutputStream;
    .restart local v11       #stream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 334
    :catch_1
    move-exception v7

    goto :goto_4

    .line 299
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected prepareMediaStoreValues(Lcom/android/camera/io/Path;)Landroid/content/ContentValues;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setJpegRawData([B)Z
    .locals 5
    .parameter "jpegRawData"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 359
    invoke-static {}, Lcom/android/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 361
    iput-object p1, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawData:[B

    .line 362
    if-eqz p1, :cond_0

    array-length v0, p1

    :cond_0
    iput v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    .line 386
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/camera/io/SaveImageTask;->updateTotalJpegRawDataSize(J)J

    .line 387
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 367
    :cond_2
    iget-wide v1, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/android/camera/io/SaveImageTask;->clearJpegRawData()V

    .line 371
    :cond_3
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 373
    invoke-static {p1}, Lcom/android/camera/io/NativeBuffer;->add([B)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    .line 374
    iget-wide v1, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 376
    iget-object v1, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "Cannot save JPEG raw data to native buffer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :cond_4
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setJpegRawData() - native buffer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    array-length v0, p1

    iput v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    goto :goto_0
.end method
