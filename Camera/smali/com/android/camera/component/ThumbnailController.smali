.class public Lcom/android/camera/component/ThumbnailController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/android/camera/IThumbnailImageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x2

.field static final MSG_CLEAR_MEDIA_INFO_CACHE:I = 0x2712

.field static final MSG_CREATE_THUMB_IMAGE:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Thumbnail Controller"

.field private static final STATIC_TAG:Ljava/lang/String; = "ThumbnailController"

.field private static final THUMBNAIL_IMAGE_POOL_SIZE:I = 0x5

.field private static final m_ThumbnailImagePool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_DisableAutoUpdateHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/SessionHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

.field private volatile m_IsDeletingMedia:Z

.field private final m_LastMediaInfo:Lcom/android/camera/MediaInfo;

.field private final m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

.field private volatile m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

.field private volatile m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

.field private final m_OnGoingCaptures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/CaptureHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ThumbnailImageBounds:Landroid/graphics/Rect;

.field private m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 95
    const-string v0, "Thumbnail Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    .line 82
    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImageBounds:Landroid/graphics/Rect;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ThumbnailController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/component/ThumbnailUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaFileSaved(Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaSaved(Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaSaveFailed(Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/ThumbnailController;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/io/Path;)Lcom/android/camera/io/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ThumbnailController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/ThumbnailController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/CaptureHandle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaCaptureFailed(Lcom/android/camera/CaptureHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/CaptureHandle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaCaptureStarted(Lcom/android/camera/CaptureHandle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/MediaInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ThumbnailController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->clearCachedMediaInfo(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/ThumbnailController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method private clearCachedMediaInfo(Z)V
    .locals 3
    .parameter "updateThumbImage"

    .prologue
    .line 158
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 161
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 162
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    .line 164
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 165
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 166
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    .line 168
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const/16 v0, 0x2711

    invoke-virtual {p0, p0, v0}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 173
    :cond_0
    return-void

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private composeGalleryImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "thumb"

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 193
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createThumbnailImage(Z)V
    .locals 34
    .parameter "sendBackToUI"

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createThumbnailImage(sendBackToUI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ") - start"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    .line 207
    .local v14, ui:Lcom/android/camera/component/ThumbnailUI;
    if-nez v14, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "No ThumbnailUI compoment is linked, cannot create thumbnail image"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {v14}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Cancel creating thumbnail image because UI is paused"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    const/16 v22, 0x0

    .line 222
    .local v22, lastMediaContentUri:Landroid/net/Uri;
    const/16 v23, 0x0

    .line 223
    .local v23, lastMediaPath:Ljava/lang/String;
    const-wide/16 v24, -0x1

    .line 224
    .local v24, lastMediaTime:J
    const/16 v26, 0x0

    .line 226
    .local v26, lastMediaType:Ljava/lang/String;
    monitor-enter p0

    .line 228
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v3, :cond_f

    .line 230
    const/16 v28, 0x0

    .line 231
    .local v28, needQueryDb:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v8, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v15, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    cmp-long v3, v8, v15

    if-gtz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v8, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v15, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    cmp-long v3, v8, v15

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v5, v5, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v3, v5}, Lcom/android/camera/io/Path;->compareTo(Lcom/android/camera/io/Path;)I

    move-result v3

    if-lez v3, :cond_c

    .line 234
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v3}, Lcom/android/camera/MediaInfo;->isImage()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v3}, Lcom/android/camera/MediaInfo;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 236
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v3, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v3}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v23

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v3, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v0, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    move-wide/from16 v24, v0

    .line 259
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    if-eqz v28, :cond_6

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "createThumbnailImage() - Use media information in media store"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 273
    .local v4, mediaUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 275
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v29

    .line 276
    .local v29, storageSlot:Lcom/android/camera/io/StorageSlot;
    :goto_2
    const-string v6, "_data LIKE ?"

    .line 277
    .local v6, conditions:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    iget-object v8, v0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "DCIM"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .line 290
    .end local v29           #storageSlot:Lcom/android/camera/io/StorageSlot;
    .local v7, conditionArgs:[Ljava/lang/String;
    :goto_3
    invoke-virtual {v14}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v19

    .line 291
    .local v19, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "_data"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const-string v9, "datetaken"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const-string v9, "mime_type"

    aput-object v9, v5, v8

    const-string v8, "datetaken DESC, _data DESC LIMIT 0,1"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 299
    .local v20, cursorMedia:Landroid/database/Cursor;
    if-eqz v20, :cond_5

    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-lez v3, :cond_5

    .line 302
    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 304
    const-string v3, "_data"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 305
    const-string v3, "datetaken"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 306
    const-string v3, "mime_type"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 307
    const-string v27, ""

    .line 308
    .local v27, mediaType:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-le v3, v5, :cond_4

    .line 309
    const/4 v3, 0x0

    const/4 v5, 0x6

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 310
    :cond_4
    const-string v3, "image/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v22

    .line 332
    .end local v27           #mediaType:Ljava/lang/String;
    :cond_5
    :goto_4
    if-eqz v20, :cond_6

    .line 333
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 340
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v6           #conditions:Ljava/lang/String;
    .end local v7           #conditionArgs:[Ljava/lang/String;
    .end local v19           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v20           #cursorMedia:Landroid/database/Cursor;
    :cond_6
    const-wide/16 v32, -0x1

    .line 341
    .local v32, thumbTime:J
    const/16 v30, 0x0

    .line 342
    .local v30, thumb:Landroid/graphics/Bitmap;
    const/16 v31, 0x0

    .line 346
    .local v31, thumbMIME:Ljava/lang/String;
    if-eqz v23, :cond_15

    .line 348
    move-object/from16 v12, v22

    .line 349
    .local v12, thumbUri:Landroid/net/Uri;
    move-object/from16 v10, v23

    .line 350
    .local v10, thumbPath:Ljava/lang/String;
    move-wide/from16 v32, v24

    .line 360
    :goto_5
    if-eqz v10, :cond_8

    .line 362
    :try_start_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "The latest media file is \'"

    const-string v11, "\' ("

    const-string v13, ")"

    invoke-static/range {v8 .. v13}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    const-string v3, "image/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 366
    const/4 v3, 0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, v26

    invoke-static {v10, v0, v1, v3, v2}, Lcom/android/camera/component/ThumbnailController;->getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v30

    .line 390
    :cond_7
    :goto_6
    move-object/from16 v31, v26

    .line 407
    :cond_8
    :goto_7
    monitor-enter p0

    .line 409
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v12, v3, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 410
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    if-eqz v10, :cond_19

    new-instance v3, Lcom/android/camera/io/Path;

    invoke-direct {v3, v10}, Lcom/android/camera/io/Path;-><init>(Ljava/lang/String;)V

    :goto_8
    iput-object v3, v5, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    move-object/from16 v0, v31

    iput-object v0, v3, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    move-wide/from16 v0, v32

    iput-wide v0, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    .line 413
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 416
    if-eqz p1, :cond_a

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/camera/component/ThumbnailController;->composeGalleryImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 423
    const/16 v15, 0x2711

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/4 v3, 0x0

    aput-object v10, v18, v3

    const/4 v3, 0x1

    aput-object v30, v18, v3

    const/4 v3, 0x2

    aput-object v31, v18, v3

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 426
    monitor-enter p0

    .line 428
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v3, :cond_9

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v5, 0x2712

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 430
    :cond_9
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 433
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "createThumbnailImage() - end"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    .end local v10           #thumbPath:Ljava/lang/String;
    .end local v12           #thumbUri:Landroid/net/Uri;
    .end local v30           #thumb:Landroid/graphics/Bitmap;
    .end local v31           #thumbMIME:Ljava/lang/String;
    .end local v32           #thumbTime:J
    :cond_b
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 246
    :cond_c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v3}, Lcom/android/camera/MediaInfo;->isImage()Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v3}, Lcom/android/camera/MediaInfo;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 248
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v3, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v3}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v23

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v3, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v0, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    move-wide/from16 v24, v0

    goto/16 :goto_1

    .line 254
    :cond_e
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 258
    .end local v28           #needQueryDb:Z
    :cond_f
    const/16 v28, 0x1

    .restart local v28       #needQueryDb:Z
    goto/16 :goto_1

    .line 259
    .end local v28           #needQueryDb:Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3

    .line 275
    .restart local v4       #mediaUri:Landroid/net/Uri;
    .restart local v28       #needQueryDb:Z
    :cond_10
    sget-object v29, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    goto/16 :goto_2

    .line 283
    :cond_11
    const-string v6, "_data LIKE ? OR _data LIKE ?"

    .line 284
    .restart local v6       #conditions:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "DCIM"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    const/4 v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    iget-object v8, v8, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "DCIM"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .restart local v7       #conditionArgs:[Ljava/lang/String;
    goto/16 :goto_3

    .line 312
    .restart local v19       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v20       #cursorMedia:Landroid/database/Cursor;
    .restart local v27       #mediaType:Ljava/lang/String;
    :cond_12
    :try_start_7
    const-string v3, "video/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_4

    .line 315
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "media type is not image or video"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 318
    .end local v27           #mediaType:Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 320
    .local v21, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Exception occurred while querying image file"

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    const/16 v23, 0x0

    .line 327
    goto/16 :goto_4

    .line 323
    .end local v21           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v21

    .line 325
    .local v21, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Exception occurred while querying image file"

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 326
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 332
    .end local v21           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    if-eqz v20, :cond_14

    .line 333
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v3

    .line 354
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v6           #conditions:Ljava/lang/String;
    .end local v7           #conditionArgs:[Ljava/lang/String;
    .end local v19           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v20           #cursorMedia:Landroid/database/Cursor;
    .restart local v30       #thumb:Landroid/graphics/Bitmap;
    .restart local v31       #thumbMIME:Ljava/lang/String;
    .restart local v32       #thumbTime:J
    :cond_15
    const/4 v12, 0x0

    .line 355
    .restart local v12       #thumbUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 356
    .restart local v10       #thumbPath:Ljava/lang/String;
    const-wide/16 v32, -0x1

    goto/16 :goto_5

    .line 368
    :cond_16
    :try_start_9
    const-string v3, "video/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 370
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 372
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    invoke-virtual {v3}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 374
    const-string v3, "ThumbnailController"

    const-string v5, "Use latest recorded video thumbnail image"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_17

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    .line 387
    :goto_9
    monitor-exit p0

    goto/16 :goto_6

    :catchall_2
    move-exception v3

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 393
    :catch_2
    move-exception v21

    .line 395
    .restart local v21       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Exception occurred while creating thumbnail image"

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    const/4 v12, 0x0

    .line 397
    const/4 v10, 0x0

    .line 398
    if-eqz v30, :cond_8

    .line 401
    const/16 v30, 0x0

    .line 402
    const/16 v31, 0x0

    goto/16 :goto_7

    .line 379
    .end local v21           #ex:Ljava/lang/Exception;
    :cond_17
    :try_start_c
    const-string v3, "ThumbnailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Latest recorded video is \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    invoke-virtual {v8}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\', but no thumbnail image"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/16 v30, 0x0

    goto :goto_9

    .line 385
    :cond_18
    const/4 v3, 0x2

    move-wide/from16 v0, v32

    move-object/from16 v2, v26

    invoke-static {v10, v0, v1, v3, v2}, Lcom/android/camera/component/ThumbnailController;->getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v30

    goto :goto_9

    .line 410
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 413
    :catchall_3
    move-exception v3

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v3

    .line 430
    :catchall_4
    move-exception v3

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v3
.end method

.method private static declared-synchronized getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "filePath"
    .parameter "fileTime"
    .parameter "mediaType"
    .parameter "mimeType"

    .prologue
    .line 526
    const-class v12, Lcom/android/camera/component/ThumbnailController;

    monitor-enter v12

    :try_start_0
    const-string v1, "ThumbnailController"

    const-string v2, "getThumbnailImageFromPool(\'"

    const-string v4, "\', \'"

    const-string v6, "\')"

    move-object v3, p0

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 527
    const-string v1, "ThumbnailController"

    const-string v2, "getThumbnailImageFromPool() - File time = "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    if-nez p0, :cond_0

    .line 532
    const-string v1, "filePath"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    const/4 v10, 0x0

    .line 605
    :goto_0
    monitor-exit v12

    return-object v10

    .line 537
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 539
    .local v11, thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    iget-object v1, v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->fileTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 545
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    .line 554
    .local v9, isFileExistent:Z
    :goto_1
    if-eqz v9, :cond_2

    .line 556
    :try_start_3
    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 557
    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 558
    const-string v1, "ThumbnailController"

    const-string v2, "getThumbnailImageFromPool() - Use pool image directly"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v10, v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 547
    .end local v9           #isFileExistent:Z
    :catch_0
    move-exception v7

    .line 549
    .local v7, ex:Ljava/lang/Throwable;
    const-string v1, "ThumbnailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThumbnailImageFromPool() - Fail to check existence of file \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v9, 0x0

    .restart local v9       #isFileExistent:Z
    goto :goto_1

    .line 564
    .end local v7           #ex:Ljava/lang/Throwable;
    :cond_2
    const-string v1, "ThumbnailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThumbnailImageFromPool() - File \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not existent, return NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v1, v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 566
    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 567
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 576
    .end local v9           #isFileExistent:Z
    .end local v11           #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    :cond_3
    :try_start_4
    const-string v1, "ThumbnailController"

    const-string v2, "getThumbnailImageFromPool() - Create thumbnail image - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    move-object/from16 v0, p4

    invoke-static {p0, v0}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 578
    .local v10, thumb:Landroid/graphics/Bitmap;
    const-string v1, "ThumbnailController"

    const-string v2, "getThumbnailImageFromPool() - Create thumbnail image - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 585
    if-nez v10, :cond_4

    .line 587
    :try_start_5
    const-string v1, "ThumbnailController"

    const-string v2, "No thumbnail image created"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 580
    .end local v10           #thumb:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v7

    .line 582
    .restart local v7       #ex:Ljava/lang/Throwable;
    const-string v1, "ThumbnailController"

    const-string v2, "Exception occurred while creating thumbnail image"

    invoke-static {v1, v2, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 583
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 592
    .end local v7           #ex:Ljava/lang/Throwable;
    .restart local v10       #thumb:Landroid/graphics/Bitmap;
    :cond_4
    :goto_2
    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_5

    .line 594
    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 595
    .restart local v11       #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    iget-object v1, v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 596
    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 526
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #thumb:Landroid/graphics/Bitmap;
    .end local v11           #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    .line 600
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #thumb:Landroid/graphics/Bitmap;
    :cond_5
    :try_start_6
    new-instance v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    invoke-direct {v11, p0, p1, p2, v10}, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    .line 601
    .restart local v11       #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    const/4 v0, 0x0

    .line 1010
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onMediaCaptureFailed(Lcom/android/camera/CaptureHandle;)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 863
    monitor-enter p0

    .line 865
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    monitor-exit p0

    .line 870
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 869
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onMediaCaptureStarted(Lcom/android/camera/CaptureHandle;)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 878
    monitor-enter p0

    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 883
    :cond_0
    monitor-exit p0

    .line 884
    return-void

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onMediaFileSaved(Lcom/android/camera/MediaEventArgs;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 892
    if-nez p1, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    monitor-enter p0

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 900
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 901
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    iget-object v0, v0, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    :goto_1
    iput-object v0, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 902
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v1, p1, Lcom/android/camera/MediaEventArgs;->takenTime:J

    iput-wide v1, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    .line 905
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-nez v0, :cond_3

    .line 906
    monitor-exit p0

    goto :goto_0

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 901
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 907
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 911
    const/16 v0, 0x2711

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method private onMediaSaveFailed(Lcom/android/camera/MediaEventArgs;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 986
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v0, :cond_1

    .line 988
    :cond_0
    monitor-enter p0

    .line 990
    if-eqz p1, :cond_3

    .line 991
    :try_start_0
    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-nez v0, :cond_2

    .line 992
    monitor-exit p0

    .line 1000
    :cond_1
    :goto_0
    return-void

    .line 993
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 994
    monitor-exit p0

    goto :goto_0

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 996
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_4

    .line 997
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 998
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private onMediaSaved(Lcom/android/camera/MediaEventArgs;)V
    .locals 6
    .parameter "e"

    .prologue
    const/16 v5, 0x2712

    const/4 v4, 0x0

    .line 920
    if-nez p1, :cond_0

    .line 978
    :goto_0
    return-void

    .line 924
    :cond_0
    iget-boolean v0, p1, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v0, :cond_2

    .line 926
    monitor-enter p0

    .line 928
    :try_start_0
    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 930
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    :cond_2
    monitor-enter p0

    .line 936
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v0, v1}, Lcom/android/camera/io/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 937
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 938
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v0, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    iget-wide v2, p1, Lcom/android/camera/MediaEventArgs;->takenTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v0, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    iget-wide v2, p1, Lcom/android/camera/MediaEventArgs;->takenTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v0, v1}, Lcom/android/camera/io/Path;->compareTo(Lcom/android/camera/io/Path;)I

    move-result v0

    if-gez v0, :cond_7

    .line 941
    :cond_4
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 942
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 943
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    iget-object v0, v0, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    :goto_1
    iput-object v0, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 944
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v1, p1, Lcom/android/camera/MediaEventArgs;->takenTime:J

    iput-wide v1, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    .line 952
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 954
    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    iget-object v0, v0, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/io/FileFormat;->Gif:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 955
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto/16 :goto_0

    .line 930
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 943
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 946
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_5

    .line 948
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_8

    .line 949
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 950
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    .line 952
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 970
    :cond_9
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 971
    const/16 v0, 0x2711

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v4, v1}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 973
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - Auto-update is disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addCachedThumbnailImage(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
    .locals 9
    .parameter "filePath"
    .parameter "fileTime"
    .parameter "thumb"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 105
    if-nez p1, :cond_0

    .line 107
    const-string v1, "filePath"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 148
    :goto_0
    return v0

    .line 110
    :cond_0
    if-nez p4, :cond_1

    .line 112
    const-string v1, "thumb"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "addCachedThumbnailImage(\'"

    const-string v3, "\', "

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    const-class v1, Lcom/android/camera/component/ThumbnailController;

    monitor-enter v1

    .line 122
    :try_start_0
    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 124
    .local v7, thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    iget-object v0, v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 128
    iput-wide p2, v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->fileTime:J

    .line 129
    iget-object v0, v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    invoke-static {p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    .line 131
    monitor-exit v1

    move v0, v8

    goto :goto_0

    .line 136
    .end local v7           #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    .line 138
    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 139
    .restart local v7       #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    iget-object v0, v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    .line 149
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 144
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    new-instance v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    invoke-static {p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v7, p1, p2, p3, v0}, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    .line 145
    .restart local v7       #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 148
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v8

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 458
    iput-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

    .line 460
    :cond_0
    iput-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    .line 461
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 462
    return-void
.end method

.method public final disableAutoUpdate()Lcom/android/camera/Handle;
    .locals 4

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->threadAccessCheck()V

    .line 472
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoUpdate() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    .line 486
    :goto_0
    return-object v0

    .line 479
    :cond_0
    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "DAU"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, handle:Lcom/android/camera/SessionHandle;
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoUpdate() - New handle : "

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 482
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoUpdate() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 485
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ThumbnailController;->removeAsyncMessages(I)V

    goto :goto_0
.end method

.method public final enableAutoUpdate(Lcom/android/camera/Handle;)V
    .locals 4
    .parameter "handle"

    .prologue
    const/4 v3, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->threadAccessCheck()V

    .line 497
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    if-nez p1, :cond_2

    .line 506
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 517
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 518
    const/16 v0, 0x2711

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 614
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 630
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 619
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_0

    .line 623
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ThumbnailController;->removeAsyncMessages(I)V

    .line 626
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ThumbnailController;->createThumbnailImage(Z)V

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v2, 0x2711

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 641
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 667
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 670
    :goto_0
    return-void

    .line 645
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/ThumbnailController;->clearCachedMediaInfo(Z)V

    goto :goto_0

    .line 652
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isWorkerThreadRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 660
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Auto-update is disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 679
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 682
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 685
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    const-class v2, Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ThumbnailController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/IMediaFileWriter;

    .line 688
    .local v1, mediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;
    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$1;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 702
    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$2;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 710
    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureStartingEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$3;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$3;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 718
    iget-object v2, v0, Lcom/android/camera/CameraThread;->deletingLatestMediaEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$4;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$4;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 742
    iget-object v2, v0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$5;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$5;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 772
    if-eqz v1, :cond_0

    .line 774
    iget-object v2, v1, Lcom/android/camera/io/IMediaFileWriter;->mediaFileSavedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$6;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$6;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 784
    :goto_0
    iget-object v2, v0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$7;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$7;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 795
    iget-object v2, v0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$8;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$8;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 802
    iget-object v2, v0, Lcom/android/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$9;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$9;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 847
    return-void

    .line 783
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "initializeOverride() - No IMediaFileWriter interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method link(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    .line 855
    return-void
.end method

.method public final setMediaInformationCache(Lcom/android/camera/MediaInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 440
    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 443
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 444
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v1, p1, Lcom/android/camera/MediaInfo;->takenTime:J

    iput-wide v1, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    .line 446
    monitor-exit p0

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final updateThumbnailImageDirectly(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)Z
    .locals 9
    .parameter "mediaInfo"
    .parameter "thumb"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1020
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->threadAccessCheck()V

    .line 1021
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateThumbnailImageDirectly() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_0
    :goto_0
    return v3

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateThumbnailImageDirectly()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-nez v0, :cond_3

    .line 1033
    :cond_2
    const/4 p2, 0x0

    .line 1034
    const/4 v6, 0x0

    .line 1035
    .local v6, filePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1044
    .local v7, mimeType:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/camera/component/ThumbnailController;->composeGalleryImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1047
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_4

    .line 1048
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v2, 0x2711

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v6, v5, v3

    aput-object p2, v5, v8

    const/4 v0, 0x2

    aput-object v7, v5, v0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v8

    .line 1058
    goto :goto_0

    .line 1039
    .end local v6           #filePath:Ljava/lang/String;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v6

    .line 1040
    .restart local v6       #filePath:Ljava/lang/String;
    iget-object v7, p1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .restart local v7       #mimeType:Ljava/lang/String;
    goto :goto_1

    .line 1051
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateThumbnailImageDirectly() - No UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    if-eqz p2, :cond_0

    .line 1053
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
