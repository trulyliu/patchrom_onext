.class public final Lcom/android/camera/imaging/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/android/camera/imaging/Size;->width:I

    .line 22
    iput p2, p0, Lcom/android/camera/imaging/Size;->height:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/imaging/Size;->width:I

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/imaging/Size;->height:I

    .line 31
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 1
    .parameter "size"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_0

    .line 36
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/android/camera/imaging/Size;->width:I

    .line 37
    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/imaging/Size;->height:I

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 47
    instance-of v2, p1, Lcom/android/camera/imaging/Size;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/android/camera/imaging/Size;

    .line 50
    .local v0, size:Lcom/android/camera/imaging/Size;
    iget v2, p0, Lcom/android/camera/imaging/Size;->width:I

    iget v3, v0, Lcom/android/camera/imaging/Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/imaging/Size;->height:I

    iget v3, v0, Lcom/android/camera/imaging/Size;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 52
    .end local v0           #size:Lcom/android/camera/imaging/Size;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/imaging/Size;->width:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/camera/imaging/Size;->height:I

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method
