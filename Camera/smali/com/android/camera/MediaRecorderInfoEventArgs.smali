.class public Lcom/android/camera/MediaRecorderInfoEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "MediaRecorderInfoEventArgs.java"


# instance fields
.field public final extra:I

.field public final mediaRecorder:Landroid/media/MediaRecorder;

.field public final what:I


# direct methods
.method public constructor <init>(Landroid/media/MediaRecorder;II)V
    .locals 0
    .parameter "mediaRecorder"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/MediaRecorderInfoEventArgs;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 22
    iput p2, p0, Lcom/android/camera/MediaRecorderInfoEventArgs;->what:I

    .line 23
    iput p3, p0, Lcom/android/camera/MediaRecorderInfoEventArgs;->extra:I

    .line 24
    return-void
.end method
