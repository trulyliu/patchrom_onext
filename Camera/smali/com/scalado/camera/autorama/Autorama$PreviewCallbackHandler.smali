.class Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public onImage(Lcom/scalado/base/Image;Lcom/scalado/camera/Camera;)V
    .locals 11
    .parameter "image"
    .parameter "camera"

    .prologue
    const/4 v10, 0x0

    .line 996
    const/4 v0, 0x0

    .line 997
    .local v0, capturing_flag:Z
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;
    invoke-static {v5, p1}, Lcom/scalado/camera/autorama/Autorama;->access$16(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;)V

    .line 1011
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$17(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1012
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    new-instance v6, Landroid/graphics/Point;

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v8, v8, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I
    invoke-static {v8}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x64

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x64

    iget-object v8, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v8}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v9, v9, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I
    invoke-static {v9}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x64

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x64

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v5, v6}, Lcom/scalado/camera/autorama/Autorama;->access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V

    .line 1015
    :cond_0
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$19(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1016
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    new-instance v6, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5, v6}, Lcom/scalado/camera/autorama/Autorama;->access$20(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/ViewfinderTracker;)V

    .line 1018
    :cond_1
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$19(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v6

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5, v6}, Lcom/scalado/camera/autorama/Autorama;->access$21(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Transform;)V

    .line 1020
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Vector;->getX()I

    move-result v3

    .line 1021
    .local v3, translationX:I
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Vector;->getY()I

    move-result v4

    .line 1022
    .local v4, translationY:I
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    int-to-float v6, v3

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama;->access$17(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, v5, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    .line 1023
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    int-to-float v6, v4

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama;->access$17(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, v5, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    .line 1024
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1035
    const-string v5, "ScaladoCameraFramework"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tracking ->x:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v7, v7, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",y"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v7, v7, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingX:F

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, v6, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mTracketingThreshold:F
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$1(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    .line 1038
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingY:F

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, v6, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mTracketingThreshold:F
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$1(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 1040
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingY:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingX:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_2

    .line 1041
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$19(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/caps/autorama/ViewfinderTracker;->reset()V

    .line 1074
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v5, v5, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$2(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1075
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$5(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$State;

    move-result-object v5

    sget-object v6, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    if-eq v5, v6, :cond_3

    .line 1077
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, v6, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/scalado/caps/autorama/Transform;->getDirection(I)Lcom/scalado/caps/autorama/Direction;

    move-result-object v2

    .line 1079
    .local v2, newDirection:Lcom/scalado/caps/autorama/Direction;
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v5

    if-eq v2, v5, :cond_3

    .line 1080
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v5, v2}, Lcom/scalado/camera/autorama/Autorama;->access$1(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)V

    .line 1081
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1082
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onDirectionChanged(Lcom/scalado/caps/autorama/Direction;)V

    .line 1087
    .end local v2           #newDirection:Lcom/scalado/caps/autorama/Direction;
    :cond_3
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v5

    sget-object v6, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v5, v6, :cond_5

    .line 1088
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v7, v7, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I
    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/scalado/caps/autorama/Transform;->isTimeToCapture(Lcom/scalado/caps/autorama/Direction;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1092
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v5

    sget-object v6, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v5

    sget-object v6, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v5, v6, :cond_a

    .line 1093
    :cond_4
    int-to-float v5, v4

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 1098
    .local v1, deviation:F
    :goto_1
    const-string v5, "ScaladoCameraFramework"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Capture refused due to deviation: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x42c8

    mul-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Max: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v7, v7, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I
    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$4(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    if-eqz v0, :cond_5

    .line 1102
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iput v10, v5, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingY:F

    .line 1103
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iput v10, v5, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingX:F

    .line 1104
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->capture()V
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$10(Lcom/scalado/camera/autorama/Autorama;)V

    .line 1112
    .end local v1           #deviation:F
    :cond_5
    return-void

    .line 1044
    :cond_6
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_2

    .line 1046
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingX:F

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v7, v7, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    invoke-interface {v5, v6, v7, p1}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onTracking(FFLcom/scalado/base/Image;)Z

    move-result v0

    .line 1048
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    iput v6, v5, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingY:F

    goto/16 :goto_0

    .line 1053
    :cond_7
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingY:F

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, v6, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mTracketingThreshold:F
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$1(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    .line 1055
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_2

    .line 1057
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v7, v7, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingY:F

    invoke-interface {v5, v6, v7, p1}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onTracking(FFLcom/scalado/base/Image;)Z

    move-result v0

    .line 1058
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    iput v6, v5, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingX:F

    goto/16 :goto_0

    .line 1063
    :cond_8
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_2

    .line 1065
    :cond_9
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v7, v7, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    invoke-interface {v5, v6, v7, p1}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onTracking(FFLcom/scalado/base/Image;)Z

    move-result v0

    .line 1066
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    iput v6, v5, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingX:F

    .line 1067
    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    iput v6, v5, Lcom/scalado/camera/autorama/Autorama;->mpreTrackingY:F

    goto/16 :goto_0

    .line 1096
    :cond_a
    int-to-float v5, v3

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .restart local v1       #deviation:F
    goto/16 :goto_1
.end method
