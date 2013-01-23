.class public Lcom/android/camera/ThumbnailButtonEventArgs;
.super Lcom/android/camera/event/SingleHandlerEventArgs;
.source "ThumbnailButtonEventArgs.java"


# instance fields
.field public final mediaInfo:Lcom/android/camera/MediaInfo;


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaInfo;)V
    .locals 1
    .parameter "mediainfo"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->clone()Lcom/android/camera/MediaInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/camera/ThumbnailButtonEventArgs;->mediaInfo:Lcom/android/camera/MediaInfo;

    .line 18
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
