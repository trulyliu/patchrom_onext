.class public Lcom/android/camera/MediaEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "MediaEventArgs.java"


# instance fields
.field public final captureHandle:Lcom/android/camera/CaptureHandle;

.field public final contentUri:Landroid/net/Uri;

.field public final deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

.field public final filePath:Lcom/android/camera/io/Path;

.field public final format:Lcom/android/camera/io/FileFormat;

.field public final isLastMedia:Z

.field public final saveFailedReason:Lcom/android/camera/io/MediaSaveFailedReason;

.field public final takenTime:J


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZ)V
    .locals 9
    .parameter "captureHandle"
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "format"
    .parameter "takenTime"
    .parameter "isLastMedia"

    .prologue
    .line 33
    const/4 v8, 0x0

    check-cast v8, Lcom/android/camera/io/MediaSaveFailedReason;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZLcom/android/camera/io/MediaSaveFailedReason;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZLcom/android/camera/MediaDeletionFailedReason;)V
    .locals 1
    .parameter "captureHandle"
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "format"
    .parameter "takenTime"
    .parameter "isLastMedia"
    .parameter "deleteFailedReason"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    .line 57
    iput-object p2, p0, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    .line 58
    iput-object p8, p0, Lcom/android/camera/MediaEventArgs;->deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

    .line 59
    iput-object p4, p0, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    .line 60
    iput-object p3, p0, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    .line 61
    iput-boolean p7, p0, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MediaEventArgs;->saveFailedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    .line 63
    iput-wide p5, p0, Lcom/android/camera/MediaEventArgs;->takenTime:J

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZLcom/android/camera/io/MediaSaveFailedReason;)V
    .locals 1
    .parameter "captureHandle"
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "format"
    .parameter "takenTime"
    .parameter "isLastMedia"
    .parameter "saveFailedReason"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    .line 42
    iput-object p2, p0, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MediaEventArgs;->deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

    .line 44
    iput-object p4, p0, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    .line 45
    iput-object p3, p0, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    .line 46
    iput-boolean p7, p0, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    .line 47
    iput-object p8, p0, Lcom/android/camera/MediaEventArgs;->saveFailedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    .line 48
    iput-wide p5, p0, Lcom/android/camera/MediaEventArgs;->takenTime:J

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;Z)V
    .locals 7
    .parameter "captureHandle"
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "format"
    .parameter "isLastMedia"

    .prologue
    .line 29
    const/4 v6, 0x0

    check-cast v6, Lcom/android/camera/io/MediaSaveFailedReason;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/io/MediaSaveFailedReason;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaDeletionFailedReason;)V
    .locals 9
    .parameter "captureHandle"
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "format"
    .parameter "isLastMedia"
    .parameter "deleteFailedReason"

    .prologue
    .line 52
    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZLcom/android/camera/MediaDeletionFailedReason;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/io/MediaSaveFailedReason;)V
    .locals 9
    .parameter "captureHandle"
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "format"
    .parameter "isLastMedia"
    .parameter "saveFailedReason"

    .prologue
    .line 37
    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZLcom/android/camera/io/MediaSaveFailedReason;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final isSuccessful()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/MediaEventArgs;->saveFailedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaEventArgs;->deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
