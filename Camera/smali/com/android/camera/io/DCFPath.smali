.class public Lcom/android/camera/io/DCFPath;
.super Lcom/android/camera/io/Path;
.source "DCFPath.java"


# instance fields
.field public final directoryNumber:Lcom/android/camera/io/FileCounter;

.field public final fileNumber:Lcom/android/camera/io/FileCounter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V
    .locals 0
    .parameter "dirPath"
    .parameter "fileName"
    .parameter "dirNumber"
    .parameter "fileNumber"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/io/Path;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-object p3, p0, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    .line 18
    iput-object p4, p0, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    .line 19
    return-void
.end method
