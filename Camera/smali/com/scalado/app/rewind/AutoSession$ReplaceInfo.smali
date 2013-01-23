.class public Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReplaceInfo"
.end annotation


# instance fields
.field public backgroundImageIndex:I

.field public faceRect:Landroid/graphics/Rect;

.field public id:I

.field public imageIndex:I

.field public originalRect:Landroid/graphics/Rect;

.field public rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/scalado/app/rewind/AutoSession;

.field public wasFound:Z


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 2
    .parameter
    .parameter "imageIndex"
    .parameter "id"
    .parameter "rect"
    .parameter "originalRect"
    .parameter "faceRect"
    .parameter "wasFound"
    .parameter "bIndex"

    .prologue
    const/4 v1, 0x0

    .line 387
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput p2, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->imageIndex:I

    .line 389
    iput p3, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->id:I

    .line 390
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->rect:Landroid/graphics/Rect;

    .line 391
    if-eqz p5, :cond_0

    .line 392
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->originalRect:Landroid/graphics/Rect;

    .line 396
    :goto_0
    if-eqz p6, :cond_1

    .line 397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->faceRect:Landroid/graphics/Rect;

    .line 401
    :goto_1
    iput-boolean p7, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->wasFound:Z

    .line 402
    iput p8, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->backgroundImageIndex:I

    .line 403
    return-void

    .line 394
    :cond_0
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->originalRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 399
    :cond_1
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->faceRect:Landroid/graphics/Rect;

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILcom/scalado/app/rewind/AutoSession$ReplaceInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct/range {p0 .. p8}, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;-><init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    return-void
.end method
