.class Lcom/scalado/app/rewind/AutoSession$Replacement;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Replacement"
.end annotation


# instance fields
.field mBg:I

.field mFeathering:I

.field mFg:I

.field mId:I

.field mMaxTransl:I

.field mOrgLargeRect:Landroid/graphics/Rect;

.field mRect:Lcom/scalado/base/Rect;

.field mRectBg:Landroid/graphics/Rect;

.field mRectFg:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/scalado/app/rewind/AutoSession;


# direct methods
.method constructor <init>(Lcom/scalado/app/rewind/AutoSession;ILcom/scalado/base/Rect;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "rect"
    .parameter "feathering"
    .parameter "maxTransl"
    .parameter "bg"
    .parameter "fg"
    .parameter "rBg"
    .parameter "rFg"
    .parameter "orgLargeRect"

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->this$0:Lcom/scalado/app/rewind/AutoSession;

    .line 1456
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1459
    iput p2, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    .line 1460
    iput-object p3, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    .line 1461
    iput p4, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFeathering:I

    .line 1462
    iput p5, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mMaxTransl:I

    .line 1463
    iput p6, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    .line 1464
    iput p7, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFg:I

    .line 1465
    iput-object p8, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectBg:Landroid/graphics/Rect;

    .line 1466
    iput-object p9, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectFg:Landroid/graphics/Rect;

    .line 1467
    if-eqz p10, :cond_0

    .line 1468
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mOrgLargeRect:Landroid/graphics/Rect;

    .line 1472
    :goto_0
    return-void

    .line 1470
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mOrgLargeRect:Landroid/graphics/Rect;

    goto :goto_0
.end method
