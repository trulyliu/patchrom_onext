.class public Lcom/android/camera/io/MediaSaveEventArgs;
.super Lcom/android/camera/MediaEventArgs;
.source "MediaSaveEventArgs.java"


# instance fields
.field public final savingHandle:Lcom/android/camera/Handle;


# direct methods
.method public constructor <init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;)V
    .locals 1
    .parameter "savingHandle"
    .parameter "saveTask"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;Lcom/android/camera/io/MediaSaveFailedReason;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;Lcom/android/camera/io/MediaSaveFailedReason;)V
    .locals 9
    .parameter "savingHandle"
    .parameter "saveTask"
    .parameter "failedReason"

    .prologue
    .line 22
    iget-object v1, p2, Lcom/android/camera/io/SaveMediaTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {p2}, Lcom/android/camera/io/SaveMediaTask;->getSavedMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/android/camera/io/SaveMediaTask;->getSavedMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v0

    iget-object v3, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v4, p2, Lcom/android/camera/io/SaveMediaTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-wide v5, p2, Lcom/android/camera/io/SaveMediaTask;->takenDateTime:J

    iget-boolean v7, p2, Lcom/android/camera/io/SaveMediaTask;->isLastMedia:Z

    move-object v0, p0

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZLcom/android/camera/io/MediaSaveFailedReason;)V

    .line 30
    iput-object p1, p0, Lcom/android/camera/io/MediaSaveEventArgs;->savingHandle:Lcom/android/camera/Handle;

    .line 31
    return-void
.end method
