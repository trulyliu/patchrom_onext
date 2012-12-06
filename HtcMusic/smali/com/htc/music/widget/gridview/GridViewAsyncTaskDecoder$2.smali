.class Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$2;
.super Landroid/os/Handler;
.source "GridViewAsyncTaskDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->processTask(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$2;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 343
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .line 344
    .local v0, task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    if-eqz v0, :cond_0

    .line 345
    const/4 v1, 0x1

    #setter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mDeocdeType:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$1702(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;I)I

    .line 346
    iget-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$2;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->add(Ljava/lang/Object;)V

    .line 348
    :cond_0
    return-void
.end method
