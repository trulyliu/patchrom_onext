.class Lcom/android/camera/widget/ImagePropertyItem$2;
.super Ljava/lang/Object;
.source "ImagePropertyItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/ImagePropertyItem;->initialize(ILcom/android/camera/CameraThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ImagePropertyItem;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/ImagePropertyItem;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/camera/widget/ImagePropertyItem$2;->this$0:Lcom/android/camera/widget/ImagePropertyItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem$2;->this$0:Lcom/android/camera/widget/ImagePropertyItem;

    #calls: Lcom/android/camera/widget/ImagePropertyItem;->increaseLevel()V
    invoke-static {v0}, Lcom/android/camera/widget/ImagePropertyItem;->access$200(Lcom/android/camera/widget/ImagePropertyItem;)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem$2;->this$0:Lcom/android/camera/widget/ImagePropertyItem;

    #getter for: Lcom/android/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;
    invoke-static {v0}, Lcom/android/camera/widget/ImagePropertyItem;->access$100(Lcom/android/camera/widget/ImagePropertyItem;)Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem$2;->this$0:Lcom/android/camera/widget/ImagePropertyItem;

    #getter for: Lcom/android/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;
    invoke-static {v0}, Lcom/android/camera/widget/ImagePropertyItem;->access$100(Lcom/android/camera/widget/ImagePropertyItem;)Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem$2;->this$0:Lcom/android/camera/widget/ImagePropertyItem;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;->onButtonClicked(Lcom/android/camera/widget/ImagePropertyItem;Landroid/view/View;)V

    .line 180
    :cond_0
    return-void
.end method
