.class Lcom/android/camera/sina/GifModeController$SaveGifImageTask;
.super Lcom/android/camera/io/SaveImageTask;
.source "GifModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/sina/GifModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveGifImageTask"
.end annotation


# instance fields
.field private final index:I

.field private final m_Controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/sina/GifModeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const-string v0, "cimagegif-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/CaptureHandle;I[BZIZ)V
    .locals 8
    .parameter "controller"
    .parameter "captureHandle"
    .parameter "index"
    .parameter "jpegRawData"
    .parameter "isLastPicture"
    .parameter "angle"
    .parameter "isPreviewCallback"

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/android/camera/sina/GifModeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    sget v4, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    sget v5, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;[BIIIZ)V

    .line 159
    iput-boolean p5, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->isLastMedia:Z

    .line 160
    iput p3, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->index:I

    .line 161
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    .line 162
    return-void
.end method

.method private encodeGif(Ljava/lang/String;Z)Z
    .locals 9
    .parameter "filePath"
    .parameter "portrait"

    .prologue
    const/4 v6, 0x0

    .line 368
    iget-object v7, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/sina/GifModeController;

    .line 369
    .local v1, controller:Lcom/android/camera/sina/GifModeController;
    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v6

    .line 373
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v7, Lcom/android/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/android/camera/Resolution;

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v7

    div-int/lit8 v5, v7, 0x2

    .line 376
    .local v5, width:I
    sget-object v7, Lcom/android/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/android/camera/Resolution;

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    .line 378
    .local v4, height:I
    if-eqz p2, :cond_2

    .line 379
    const-string v7, "Width"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    const-string v7, "Height"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    :goto_1
    const-string v7, "TimeDelay"

    const/16 v8, 0x21

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    invoke-virtual {v1}, Lcom/android/camera/sina/GifModeController;->getSavedPictureList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7, p1, v0}, Lcom/mt/gifencoder/MTGIFEncoder;->GIFEncoder(Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Bundle;)J

    move-result-wide v2

    .line 388
    .local v2, encodeResult:J
    invoke-virtual {v1}, Lcom/android/camera/sina/GifModeController;->clearSavedPictureList()V

    .line 389
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_0

    .line 390
    const/4 v6, 0x1

    goto :goto_0

    .line 382
    .end local v2           #encodeResult:J
    :cond_2
    const-string v7, "Width"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    const-string v7, "Height"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private saveGifImage()Z
    .locals 24

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "saveGifImage() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v11, 0x0

    .line 236
    .local v11, contentUri:Landroid/net/Uri;
    const/16 v20, 0x0

    .line 240
    .local v20, path:Lcom/android/camera/io/DCFPath;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/sina/GifModeController;

    .line 241
    .local v2, controller:Lcom/android/camera/sina/GifModeController;
    if-nez v2, :cond_0

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "saveGifImage() - No Controller"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v3, 0x0

    .line 363
    .end local v2           #controller:Lcom/android/camera/sina/GifModeController;
    :goto_0
    return v3

    .line 245
    .restart local v2       #controller:Lcom/android/camera/sina/GifModeController;
    :cond_0
    invoke-virtual {v2}, Lcom/android/camera/sina/GifModeController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    .line 246
    .local v9, cameraActivity:Lcom/android/camera/HTCCamera;
    if-nez v9, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "saveGifImage() - No camera activity"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v3, 0x0

    goto :goto_0

    .line 251
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    if-nez v3, :cond_2

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "saveGifImage() - No storage slot"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v3, 0x0

    goto :goto_0

    .line 258
    :cond_2
    sget-object v3, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    .line 261
    sget-object v3, Lcom/android/camera/io/FileFormat;->Gif:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v3}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v3

    if-nez v3, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveGifImage() - Storage slot \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v3, 0x0

    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->getAvailableFileName()Lcom/android/camera/io/DCFPath;

    move-result-object v20

    .line 277
    const/16 v16, 0x0

    .line 278
    .local v16, fileName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 279
    .local v13, directoryName:Ljava/lang/String;
    const/16 v17, 0x0

    .line 280
    .local v17, filePath:Ljava/lang/String;
    if-eqz v20, :cond_4

    .line 281
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 282
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "encodeGif - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/android/camera/sina/GifModeController;->access$600()Z

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->encodeGif(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "Cannot encode gif image"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V

    .line 294
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 285
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "saveGifImage() getAvailableFileName = null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 296
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "encodeGif() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v2}, Lcom/android/camera/sina/GifModeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v10

    .line 300
    .local v10, cameraThread:Lcom/android/camera/CameraThread;
    new-instance v21, Lcom/android/camera/io/SaveImageTask;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;)V

    .line 301
    .local v21, saveToMediaProviderTask:Lcom/android/camera/io/SaveImageTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/camera/io/SaveImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/camera/io/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    .line 303
    sget-object v3, Lcom/android/camera/io/FileFormat;->Gif:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    .line 304
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->takenDateTime:J

    move-object/from16 v0, v21

    iput-wide v3, v0, Lcom/android/camera/io/SaveImageTask;->takenDateTime:J

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->gpsLocation:Landroid/location/Location;

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/camera/io/SaveImageTask;->gpsLocation:Landroid/location/Location;

    .line 306
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/io/SaveImageTask;->setFilePathToMediaInfo(Lcom/android/camera/io/Path;)V

    .line 307
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/io/SaveImageTask;->insertIntoMediaStore()Z

    .line 309
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/io/SaveImageTask;->getSavedMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    if-nez v3, :cond_9

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "Save image - Content URI = null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 322
    :goto_1
    invoke-static {v9}, Lcom/android/camera/sina/GifGenerator;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/camera/sina/GifGenerator;->notifyGifGenerateEnd(Landroid/net/Uri;)V

    .line 324
    const/16 v4, 0x2717

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v21, v7, v3

    const/4 v3, 0x1

    aput-object v20, v7, v3

    move-object v3, v2

    #calls: Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v2 .. v7}, Lcom/android/camera/sina/GifModeController;->access$700(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 327
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    if-eqz v3, :cond_6

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v3, v3, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    iget v4, v4, Lcom/android/camera/io/FileCounter;->mainCounter:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3, v4}, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V

    .line 329
    :cond_6
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    if-eqz v3, :cond_7

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v3, v3, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    iget v4, v4, Lcom/android/camera/io/FileCounter;->mainCounter:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3, v4}, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V

    .line 333
    :cond_7
    const/4 v3, 0x1

    invoke-static {v13, v3}, Lcom/android/camera/io/FileUtility;->updateCachedFileCount(Ljava/lang/String;I)V

    .line 336
    const/16 v23, 0x0

    .line 337
    .local v23, tempPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->getTempFileName()Lcom/android/camera/io/DCFPath;

    move-result-object v12

    .line 338
    .local v12, dcfPath:Lcom/android/camera/io/DCFPath;
    if-eqz v12, :cond_8

    .line 339
    iget-object v0, v12, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 341
    :cond_8
    new-instance v22, Ljava/io/File;

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .local v22, tempFile:Ljava/io/File;
    if-eqz v22, :cond_a

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 343
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .local v8, arr$:[Ljava/io/File;
    array-length v0, v8

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    aget-object v15, v8, v18

    .line 344
    .local v15, f:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 343
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 315
    .end local v8           #arr$:[Ljava/io/File;
    .end local v12           #dcfPath:Lcom/android/camera/io/DCFPath;
    .end local v15           #f:Ljava/io/File;
    .end local v18           #i$:I
    .end local v19           #len$:I
    .end local v22           #tempFile:Ljava/io/File;
    .end local v23           #tempPath:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/io/SaveImageTask;->getSavedMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v3

    iget-object v11, v3, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save image - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 350
    .end local v2           #controller:Lcom/android/camera/sina/GifModeController;
    .end local v9           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v10           #cameraThread:Lcom/android/camera/CameraThread;
    .end local v13           #directoryName:Ljava/lang/String;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #filePath:Ljava/lang/String;
    .end local v21           #saveToMediaProviderTask:Lcom/android/camera/io/SaveImageTask;
    :catch_0
    move-exception v14

    .line 352
    .local v14, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "Cannot find available image file location, please check the storage card"

    invoke-static {v3, v4, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 348
    .end local v14           #ex:Ljava/io/IOException;
    .restart local v2       #controller:Lcom/android/camera/sina/GifModeController;
    .restart local v9       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v10       #cameraThread:Lcom/android/camera/CameraThread;
    .restart local v12       #dcfPath:Lcom/android/camera/io/DCFPath;
    .restart local v13       #directoryName:Ljava/lang/String;
    .restart local v16       #fileName:Ljava/lang/String;
    .restart local v17       #filePath:Ljava/lang/String;
    .restart local v21       #saveToMediaProviderTask:Lcom/android/camera/io/SaveImageTask;
    .restart local v22       #tempFile:Ljava/io/File;
    .restart local v23       #tempPath:Ljava/lang/String;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "saveGifImage() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "saveGifImage() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 355
    .end local v2           #controller:Lcom/android/camera/sina/GifModeController;
    .end local v9           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v10           #cameraThread:Lcom/android/camera/CameraThread;
    .end local v12           #dcfPath:Lcom/android/camera/io/DCFPath;
    .end local v13           #directoryName:Ljava/lang/String;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #filePath:Ljava/lang/String;
    .end local v21           #saveToMediaProviderTask:Lcom/android/camera/io/SaveImageTask;
    .end local v22           #tempFile:Ljava/io/File;
    .end local v23           #tempPath:Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 357
    .local v14, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "Exception while compressing image."

    invoke-static {v3, v4, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V
    .locals 4
    .parameter "cameraActivity"
    .parameter "prefKey"
    .parameter "value"

    .prologue
    .line 403
    if-eqz p2, :cond_0

    .line 404
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 408
    .local v0, ex:Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFileCounter() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getTempFileName()Lcom/android/camera/io/DCFPath;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v3, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/sina/GifModeController;

    invoke-virtual {v3}, Lcom/android/camera/sina/GifModeController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/sina/GifModeController;->getTempFileSavingPath(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, tempPath:Ljava/lang/String;
    const-string v3, "temp"

    invoke-static {v2, v3}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, dirPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTempFileName() - Cannot create directory \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 184
    :goto_0
    return-object v3

    .line 180
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TMP_IMAG"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->index:I

    add-int/lit16 v5, v5, 0x2711

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v5, v5, Lcom/android/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    new-instance v3, Lcom/android/camera/io/DCFPath;

    invoke-direct {v3, v0, v1, v4, v4}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    goto :goto_0
.end method

.method protected onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "filePath"
    .parameter "ex"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/sina/GifModeController;

    .line 221
    .local v0, controller:Lcom/android/camera/sina/GifModeController;
    if-eqz v0, :cond_0

    .line 223
    const/16 v2, 0x271d

    iget v3, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->index:I

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    #calls: Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/android/camera/sina/GifModeController;->access$400(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 224
    iget-boolean v1, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->isLastMedia:Z

    if-eqz v1, :cond_0

    #getter for: Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;
    invoke-static {v0}, Lcom/android/camera/sina/GifModeController;->access$100(Lcom/android/camera/sina/GifModeController;)Lcom/android/camera/sina/GifModeUI;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    #getter for: Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;
    invoke-static {v0}, Lcom/android/camera/sina/GifModeController;->access$100(Lcom/android/camera/sina/GifModeController;)Lcom/android/camera/sina/GifModeUI;

    move-result-object v1

    const/16 v2, 0x2711

    #calls: Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/camera/sina/GifModeController;->access$500(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/component/Component;I)Z

    .line 227
    :cond_0
    return-void
.end method

.method protected onMediaSaved(Lcom/android/camera/io/Path;)V
    .locals 6
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/sina/GifModeController;

    .line 197
    .local v0, controller:Lcom/android/camera/sina/GifModeController;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/sina/GifModeController;->addSavedPictureToList(Ljava/lang/String;)V

    .line 203
    #getter for: Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;
    invoke-static {v0}, Lcom/android/camera/sina/GifModeController;->access$100(Lcom/android/camera/sina/GifModeController;)Lcom/android/camera/sina/GifModeUI;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->isLastMedia:Z

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->clearJpegRawData()V

    .line 206
    invoke-direct {p0}, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->saveGifImage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    #getter for: Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;
    invoke-static {v0}, Lcom/android/camera/sina/GifModeController;->access$100(Lcom/android/camera/sina/GifModeController;)Lcom/android/camera/sina/GifModeUI;

    move-result-object v1

    const/16 v2, 0x2715

    #calls: Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/camera/sina/GifModeController;->access$200(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/component/Component;I)Z

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    #getter for: Lcom/android/camera/sina/GifModeController;->m_UI:Lcom/android/camera/sina/GifModeUI;
    invoke-static {v0}, Lcom/android/camera/sina/GifModeController;->access$100(Lcom/android/camera/sina/GifModeController;)Lcom/android/camera/sina/GifModeUI;

    move-result-object v1

    const/16 v2, 0x2711

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/sina/GifModeController$SaveGifImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    aput-object v4, v5, v3

    move v4, v3

    #calls: Lcom/android/camera/sina/GifModeController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/android/camera/sina/GifModeController;->access$300(Lcom/android/camera/sina/GifModeController;Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
