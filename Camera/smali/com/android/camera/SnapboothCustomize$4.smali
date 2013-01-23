.class Lcom/android/camera/SnapboothCustomize$4;
.super Ljava/lang/Object;
.source "SnapboothCustomize.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SnapboothCustomize;->initLandEffectBar(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SnapboothCustomize;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/SnapboothCustomize;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/camera/SnapboothCustomize$4;->this$0:Lcom/android/camera/SnapboothCustomize;

    iput p2, p0, Lcom/android/camera/SnapboothCustomize$4;->val$index:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    .line 666
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize$4;->this$0:Lcom/android/camera/SnapboothCustomize;

    #getter for: Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v4}, Lcom/android/camera/SnapboothCustomize;->access$000(Lcom/android/camera/SnapboothCustomize;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->isPreviewFrameArrived()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize$4;->this$0:Lcom/android/camera/SnapboothCustomize;

    #getter for: Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v4}, Lcom/android/camera/SnapboothCustomize;->access$000(Lcom/android/camera/SnapboothCustomize;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->isCapturing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 668
    invoke-static {}, Lcom/android/camera/SnapboothCustomize;->access$300()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 669
    .local v3, msg:I
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize$4;->this$0:Lcom/android/camera/SnapboothCustomize;

    #getter for: Lcom/android/camera/SnapboothCustomize;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/SnapboothCustomize;->access$400(Lcom/android/camera/SnapboothCustomize;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    .end local v3           #msg:I
    :cond_0
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize$4;->this$0:Lcom/android/camera/SnapboothCustomize;

    iget v5, p0, Lcom/android/camera/SnapboothCustomize$4;->val$index:I

    invoke-virtual {v4, v5}, Lcom/android/camera/SnapboothCustomize;->selectEffectIcon(I)V

    .line 671
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize$4;->this$0:Lcom/android/camera/SnapboothCustomize;

    #getter for: Lcom/android/camera/SnapboothCustomize;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/SnapboothCustomize;->access$400(Lcom/android/camera/SnapboothCustomize;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize$4;->this$0:Lcom/android/camera/SnapboothCustomize;

    #getter for: Lcom/android/camera/SnapboothCustomize;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/SnapboothCustomize;->access$400(Lcom/android/camera/SnapboothCustomize;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/SnapboothCustomize;->access$300()[I

    move-result-object v6

    iget v7, p0, Lcom/android/camera/SnapboothCustomize$4;->val$index:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 673
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_1
    return-void
.end method
