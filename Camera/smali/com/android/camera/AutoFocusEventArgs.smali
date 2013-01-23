.class public Lcom/android/camera/AutoFocusEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "AutoFocusEventArgs.java"


# instance fields
.field public final focusAreas:[Landroid/graphics/RectF;

.field public final focusMode:Lcom/android/camera/AutoFocusMode;

.field public final handle:Lcom/android/camera/Handle;

.field public final isSuccessful:Z

.field public final meteringAreas:[Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;)V
    .locals 1
    .parameter
    .parameter "focusMode"
    .parameter "handle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/android/camera/AutoFocusMode;",
            "Lcom/android/camera/Handle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;Z)V
    .locals 6
    .parameter
    .parameter "focusMode"
    .parameter "handle"
    .parameter "isSuccessful"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/android/camera/AutoFocusMode;",
            "Lcom/android/camera/Handle;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter "focusMode"
    .parameter "handle"
    .parameter "isSuccessful"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/android/camera/AutoFocusMode;",
            "Lcom/android/camera/Handle;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    .local p2, meteringAreas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    .line 36
    iget-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 41
    :goto_0
    if-eqz p2, :cond_1

    .line 43
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    .line 44
    iget-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    :goto_1
    iput-object p3, p0, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    .line 49
    iput-boolean p5, p0, Lcom/android/camera/AutoFocusEventArgs;->isSuccessful:Z

    .line 50
    iput-object p4, p0, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    .line 51
    return-void

    .line 39
    :cond_0
    new-array v0, v1, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    goto :goto_0

    .line 47
    :cond_1
    new-array v0, v1, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    goto :goto_1
.end method
