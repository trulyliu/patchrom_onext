.class Lcom/android/camera/HTCCamera$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/camera/HTCCamera$ScaleListener;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera$ScaleListener;-><init>(Lcom/android/camera/HTCCamera;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    .line 496
    iget-object v1, p0, Lcom/android/camera/HTCCamera$ScaleListener;->this$0:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z
    invoke-static {v1, v4}, Lcom/android/camera/HTCCamera;->access$302(Lcom/android/camera/HTCCamera;Z)Z

    .line 498
    iget-object v1, p0, Lcom/android/camera/HTCCamera$ScaleListener;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mInitSpan:F
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 500
    const-string v1, "HTCCamera"

    const-string v2, "onScale() - initialize value of span & zoom"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/android/camera/HTCCamera$ScaleListener;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    #setter for: Lcom/android/camera/HTCCamera;->mInitSpan:F
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$402(Lcom/android/camera/HTCCamera;F)F

    .line 502
    iget-object v2, p0, Lcom/android/camera/HTCCamera$ScaleListener;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, p0, Lcom/android/camera/HTCCamera$ScaleListener;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/camera/HTCCamera;->mBaseZoom:I
    invoke-static {v2, v1}, Lcom/android/camera/HTCCamera;->access$502(Lcom/android/camera/HTCCamera;I)I

    .line 505
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera$ScaleListener;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mInitSpan:F
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)F

    move-result v2

    sub-float v0, v1, v2

    .line 507
    .local v0, diffSpan:F
    iget-object v1, p0, Lcom/android/camera/HTCCamera$ScaleListener;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/HTCCamera$ScaleListener;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mBaseZoom:I
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->changeZoom(I)V

    .line 509
    return v4
.end method
