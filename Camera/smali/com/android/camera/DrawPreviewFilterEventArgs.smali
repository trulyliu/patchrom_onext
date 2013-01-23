.class public Lcom/android/camera/DrawPreviewFilterEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "DrawPreviewFilterEventArgs.java"


# instance fields
.field public final canvas:Landroid/graphics/Canvas;

.field public final previewBounds:Landroid/graphics/Rect;

.field public final rotation:Lcom/android/camera/rotate/UIRotation;

.field public final size:Lcom/android/camera/imaging/Size;


# direct methods
.method public constructor <init>(Landroid/graphics/Canvas;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/imaging/Size;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "canvas"
    .parameter "rotation"
    .parameter "size"
    .parameter "previewBounds"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/DrawPreviewFilterEventArgs;->canvas:Landroid/graphics/Canvas;

    .line 26
    iput-object p4, p0, Lcom/android/camera/DrawPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    .line 27
    iput-object p2, p0, Lcom/android/camera/DrawPreviewFilterEventArgs;->rotation:Lcom/android/camera/rotate/UIRotation;

    .line 28
    iput-object p3, p0, Lcom/android/camera/DrawPreviewFilterEventArgs;->size:Lcom/android/camera/imaging/Size;

    .line 29
    return-void
.end method
