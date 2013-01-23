.class Lcom/android/camera/io/MediaFileWriter$SaveHandle;
.super Lcom/android/camera/Handle;
.source "MediaFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/io/MediaFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveHandle"
.end annotation


# instance fields
.field public failedReason:Lcom/android/camera/io/MediaSaveFailedReason;

.field public final saveMediaTask:Lcom/android/camera/io/SaveMediaTask;


# direct methods
.method public constructor <init>(Lcom/android/camera/io/SaveMediaTask;)V
    .locals 1
    .parameter "saveMediaTask"

    .prologue
    .line 46
    const-string v0, "Save media"

    invoke-direct {p0, v0}, Lcom/android/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    .line 48
    return-void
.end method
