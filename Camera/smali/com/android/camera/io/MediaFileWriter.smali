.class final Lcom/android/camera/io/MediaFileWriter;
.super Lcom/android/camera/io/IMediaFileWriter;
.source "MediaFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/io/MediaFileWriter$SaveHandle;
    }
.end annotation


# static fields
.field private static final MEDIA_QUEUE_SIZE_MB:J = 0x20L

.field private static final MSG_EXECUTE_TASK:I = 0x2711

.field private static final MSG_MEDIA_FILE_SAVED:I = 0x2712

.field private static final MSG_MEDIA_SAVED:I = 0x2713

.field private static final MSG_MEDIA_SAVE_FAILED:I = 0x2714

.field static final NAME:Ljava/lang/String; = "Media File Writer"


# instance fields
.field private final m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/io/MediaFileWriter$SaveHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SaveTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/io/MediaFileWriter$SaveHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    const/4 v1, 0x1

    .line 64
    const-string v0, "Media File Writer"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/camera/io/IMediaFileWriter;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    .line 54
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/io/MediaFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/io/MediaFileWriter;->prepareInternal(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method private insertOneMediaIntoMediaStore()V
    .locals 9

    .prologue
    const/16 v8, 0x2714

    const/4 v7, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneMediaIntoMediaStore() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "insertOneMediaIntoMediaStore() - Save media file first"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->sendAsyncMessage(I)Z

    .line 218
    monitor-exit v1

    .line 258
    :goto_0
    return-void

    .line 220
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "insertOneMediaIntoMediaStore() - Media store update is suspended"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    monitor-exit v1

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 220
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 231
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    .line 232
    .local v5, handle:Lcom/android/camera/io/MediaFileWriter$SaveHandle;
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    if-nez v5, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneMediaIntoMediaStore() - No media to insert"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneMediaIntoMediaStore() - Handle : "

    invoke-static {v0, v1, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    :try_start_4
    iget-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    invoke-virtual {v0}, Lcom/android/camera/io/SaveMediaTask;->insertIntoMediaStore()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 257
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneMediaIntoMediaStore() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_3
    :try_start_5
    sget-object v0, Lcom/android/camera/io/MediaSaveFailedReason;->Unknown:Lcom/android/camera/io/MediaSaveFailedReason;

    iput-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->failedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    .line 248
    const/16 v2, 0x2714

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 251
    :catch_0
    move-exception v6

    .line 253
    .local v6, ex:Ljava/lang/Throwable;
    sget-object v0, Lcom/android/camera/io/MediaSaveFailedReason;->Unknown:Lcom/android/camera/io/MediaSaveFailedReason;

    iput-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->failedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    move-object v0, p0

    move-object v1, p0

    move v2, v8

    move v3, v7

    move v4, v7

    .line 254
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1
.end method

.method private onMediaFileSaved(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V
    .locals 3
    .parameter "handle"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaFileSavedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/io/MediaSaveEventArgs;

    iget-object v2, p1, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    invoke-direct {v1, p1, v2}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 266
    return-void
.end method

.method private onMediaSaveFailed(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V
    .locals 4
    .parameter "handle"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/io/MediaSaveEventArgs;

    iget-object v2, p1, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    iget-object v3, p1, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->failedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;Lcom/android/camera/io/MediaSaveFailedReason;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 282
    return-void
.end method

.method private onMediaSaved(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V
    .locals 3
    .parameter "handle"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSavedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/io/MediaSaveEventArgs;

    iget-object v2, p1, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    invoke-direct {v1, p1, v2}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 274
    return-void
.end method

.method private prepare(Lcom/android/camera/io/StorageSlot;)V
    .locals 3
    .parameter "storageSlot"

    .prologue
    .line 289
    const-class v1, Lcom/android/camera/ISharedBackgroundWorker;

    invoke-virtual {p0, v1}, Lcom/android/camera/io/MediaFileWriter;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ISharedBackgroundWorker;

    .line 290
    .local v0, worker:Lcom/android/camera/ISharedBackgroundWorker;
    if-eqz v0, :cond_1

    .line 292
    new-instance v1, Lcom/android/camera/io/MediaFileWriter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/io/MediaFileWriter$2;-><init>(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/StorageSlot;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - Cannot do preparation in background thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - No ISharedBackgroundWorker interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareInternal(Lcom/android/camera/io/StorageSlot;)V
    .locals 10
    .parameter "storageSlot"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal("

    const-string v3, ") - Start"

    invoke-static {v0, v2, p1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v9, storageSlots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/io/StorageSlot;>;"
    if-nez p1, :cond_3

    .line 315
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal() - Clear cached file count"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/android/camera/io/FileUtility;->clearCachedFileCount(Ljava/lang/String;)V

    .line 328
    new-instance v5, Lcom/android/camera/Reference;

    invoke-direct {v5}, Lcom/android/camera/Reference;-><init>()V

    .line 329
    .local v5, dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/android/camera/Reference;

    invoke-direct {v6}, Lcom/android/camera/Reference;-><init>()V

    .line 330
    .local v6, fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/io/StorageSlot;

    .line 332
    .local v7, checkingSlot:Lcom/android/camera/io/StorageSlot;
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal() - Get directory/file counters for "

    invoke-static {v0, v2, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    invoke-static {v7}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, dcimPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/io/MediaFileWriter;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    sget-object v3, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    sget-object v4, Lcom/android/camera/io/FileUtility$InformationSource;->FileSystem:Lcom/android/camera/io/FileUtility$InformationSource;

    invoke-static/range {v0 .. v6}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/io/FileUtility$InformationSource;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - Cannot get directory/file counters"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 321
    .end local v1           #dcimPath:Ljava/lang/String;
    .end local v5           #dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .end local v6           #fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .end local v7           #checkingSlot:Lcom/android/camera/io/StorageSlot;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :cond_4
    iget-object v0, p1, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    goto :goto_1

    .line 338
    .restart local v5       #dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .restart local v6       #fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal() - End"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method private saveOneMedia()V
    .locals 11

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneMedia() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/camera/io/MediaFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    .line 435
    .local v6, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    .line 438
    .local v5, handle:Lcom/android/camera/io/MediaFileWriter$SaveHandle;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    if-nez v5, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneMedia() - No media to save"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :goto_0
    return-void

    .line 438
    .end local v5           #handle:Lcom/android/camera/io/MediaFileWriter$SaveHandle;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 444
    .restart local v5       #handle:Lcom/android/camera/io/MediaFileWriter$SaveHandle;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneMedia() - Handle : "

    invoke-static {v0, v1, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 447
    const/4 v10, 0x0

    .line 470
    .local v10, thumb:Landroid/graphics/Bitmap;
    :try_start_2
    iget-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    invoke-virtual {v0}, Lcom/android/camera/io/SaveMediaTask;->saveMedia()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 472
    iget-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    iget-boolean v0, v0, Lcom/android/camera/io/SaveMediaTask;->isTempMedia:Z

    if-nez v0, :cond_2

    .line 475
    if-eqz v10, :cond_1

    .line 477
    iget-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    invoke-virtual {v0}, Lcom/android/camera/io/SaveMediaTask;->getSavedMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v9

    .line 478
    .local v9, mediaInfo:Lcom/android/camera/MediaInfo;
    if-eqz v9, :cond_1

    iget-object v0, v9, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_1

    .line 482
    :try_start_3
    new-instance v8, Ljava/io/File;

    invoke-virtual {v9}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v8, file:Ljava/io/File;
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-virtual {v9}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3, v10}, Lcom/android/camera/IThumbnailImageManager;->addCachedThumbnailImage(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 493
    .end local v8           #file:Ljava/io/File;
    .end local v9           #mediaInfo:Lcom/android/camera/MediaInfo;
    :cond_1
    :goto_1
    const/16 v2, 0x2712

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    :try_start_4
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneMedia() - Media saved, scheduling for media store data insertion"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 499
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 500
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 501
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->sendAsyncMessage(I)Z

    .line 504
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 520
    :cond_2
    :goto_3
    if-eqz v10, :cond_3

    .line 521
    throw v10

    .line 524
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneMedia() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "saveOneMedia() - Media store update is suspended"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 504
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 513
    :catch_0
    move-exception v7

    .line 515
    .local v7, ex:Ljava/lang/Throwable;
    :try_start_8
    sget-object v0, Lcom/android/camera/io/MediaSaveFailedReason;->Unknown:Lcom/android/camera/io/MediaSaveFailedReason;

    iput-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->failedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    .line 516
    const/16 v2, 0x2714

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 520
    if-eqz v10, :cond_3

    .line 521
    throw v10

    goto :goto_4

    .line 509
    .end local v7           #ex:Ljava/lang/Throwable;
    :cond_5
    :try_start_9
    sget-object v0, Lcom/android/camera/io/MediaSaveFailedReason;->Unknown:Lcom/android/camera/io/MediaSaveFailedReason;

    iput-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->failedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    .line 510
    const/16 v2, 0x2714

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3

    .line 520
    :catchall_2
    move-exception v0

    if-eqz v10, :cond_6

    .line 521
    throw v10

    :cond_6
    throw v0

    .line 485
    .restart local v9       #mediaInfo:Lcom/android/camera/MediaInfo;
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public cancelSavingMedia(Lcom/android/camera/Handle;)Z
    .locals 2
    .parameter "handle"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "cancelSavingMedia() - Not implemented"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected deinitializeOverride()V
    .locals 2

    .prologue
    .line 84
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->removeAsyncMessages(I)V

    .line 85
    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-super {p0}, Lcom/android/camera/io/IMediaFileWriter;->deinitializeOverride()V

    .line 92
    return-void

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMediaQueueCapacity()J
    .locals 2

    .prologue
    .line 100
    const-wide/32 v0, 0x2000000

    return-wide v0
.end method

.method public getMediaQueueSize()J
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/android/camera/io/SaveImageTask;->getTotalJpegRawDataSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 118
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 135
    invoke-super {p0, p1}, Lcom/android/camera/io/IMediaFileWriter;->handleAsyncMessage(Landroid/os/Message;)V

    .line 138
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 126
    .local v0, hasPendingFileSaving:Z
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/android/camera/io/MediaFileWriter;->saveOneMedia()V

    goto :goto_0

    .line 125
    .end local v0           #hasPendingFileSaving:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 130
    .restart local v0       #hasPendingFileSaving:Z
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/io/MediaFileWriter;->insertOneMediaIntoMediaStore()V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    invoke-super {p0, p1}, Lcom/android/camera/io/IMediaFileWriter;->handleMessage(Landroid/os/Message;)V

    .line 161
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->onMediaFileSaved(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->onMediaSaved(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->onMediaSaveFailed(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/camera/io/IMediaFileWriter;->initializeOverride()V

    .line 173
    const-class v0, Lcom/android/camera/IThumbnailImageManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IThumbnailImageManager;

    iput-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    .line 176
    invoke-virtual {p0}, Lcom/android/camera/io/MediaFileWriter;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/io/MediaFileWriter$1;

    invoke-direct {v1, p0}, Lcom/android/camera/io/MediaFileWriter$1;-><init>(Lcom/android/camera/io/MediaFileWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V

    .line 202
    return-void
.end method

.method public resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V
    .locals 6
    .parameter "handle"

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "resumeUpdatingMediaStore() - Null handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v3, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v3

    .line 357
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 360
    .local v0, count:I
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "resumeUpdatingMediaStore() - Handle count : "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    if-nez v0, :cond_2

    .line 363
    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_2

    .line 364
    const/16 v2, 0x2711

    invoke-virtual {p0, v2}, Lcom/android/camera/io/MediaFileWriter;->sendAsyncMessage(I)Z

    .line 363
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 369
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "resumeUpdatingMediaStore() - Invalid handle"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    monitor-exit v3

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #count:I
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public saveMedia(Lcom/android/camera/io/SaveMediaTask;)Lcom/android/camera/Handle;
    .locals 3
    .parameter "task"

    .prologue
    .line 382
    if-nez p1, :cond_1

    .line 384
    const-string v1, "task"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    .line 420
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :cond_1
    new-instance v0, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {v0, p1}, Lcom/android/camera/io/MediaFileWriter$SaveHandle;-><init>(Lcom/android/camera/io/SaveMediaTask;)V

    .line 390
    .local v0, handle:Lcom/android/camera/io/MediaFileWriter$SaveHandle;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "saveMedia() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 396
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/io/MediaFileWriter;->sendAsyncMessage(I)Z

    .line 400
    invoke-virtual {p0}, Lcom/android/camera/io/MediaFileWriter;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSavingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSavingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/io/MediaSaveEventArgs;

    invoke-direct {v2, v0, p1}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "saveMedia() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v1, Lcom/android/camera/io/MediaFileWriter$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/camera/io/MediaFileWriter$3;-><init>(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/MediaFileWriter$SaveHandle;Lcom/android/camera/io/SaveMediaTask;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/io/MediaFileWriter;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public suspendUpdatingMediaStore()Lcom/android/camera/Handle;
    .locals 5

    .prologue
    .line 534
    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "SuspendUpdatingDB"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, handle:Lcom/android/camera/SessionHandle;
    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "suspendUpdatingMediaStore() - Handle count : "

    iget-object v4, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 541
    monitor-exit v2

    .line 542
    return-object v0

    .line 541
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
