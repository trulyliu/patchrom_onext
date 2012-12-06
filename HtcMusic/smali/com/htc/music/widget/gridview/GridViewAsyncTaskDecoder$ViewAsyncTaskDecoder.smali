.class Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;
.super Lcom/htc/music/util/AsyncTaskBase;
.source "GridViewAsyncTaskDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAsyncTaskDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/music/util/AsyncTaskBase",
        "<",
        "Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;",
        ">;"
    }
.end annotation


# instance fields
.field mCanvas:Landroid/graphics/Canvas;

.field private mRemovedViewTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

.field private mViewDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

.field private mViewDecodeOrderListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

.field final synthetic this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-direct {p0}, Lcom/htc/music/util/AsyncTaskBase;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mViewDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 44
    iput-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mRemovedViewTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .line 45
    new-instance v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder$1;-><init>(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mViewDecodeOrderListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    .line 84
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mCanvas:Landroid/graphics/Canvas;

    .line 39
    new-instance v0, Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    const/16 v1, 0x14

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mViewDecodeOrderListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;-><init>(IILcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mViewDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 40
    const-string v0, "ViewDecoderThread"

    invoke-super {p0, v0}, Lcom/htc/music/util/AsyncTaskBase;->init(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$002(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mRemovedViewTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected processFinish(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;ZZ)V
    .locals 4
    .parameter "task"
    .parameter "processSucess"
    .parameter "isAsyncTaskPaused"

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    if-eqz p3, :cond_1

    .line 134
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->add(Ljava/lang/Object;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeViewFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;
    invoke-static {v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$900(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeViewFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;
    invoke-static {v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$900(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;

    move-result-object v0

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPosition:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$300(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I

    move-result v1

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$600(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mObject:Ljava/lang/Object;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$800(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;->onDecodeViewFinish(ILandroid/graphics/Bitmap;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic processFinish(Ljava/lang/Object;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    check-cast p1, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->processFinish(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;ZZ)V

    return-void
.end method

.method protected processTask(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Landroid/os/Bundle;)Z
    .locals 9
    .parameter "task"
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$500(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Lcom/htc/music/widget/gridview/IViewBinder;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3

    .line 91
    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$600(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    iget-object v5, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$500(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Lcom/htc/music/widget/gridview/IViewBinder;

    move-result-object v6

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPosition:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$300(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I

    move-result v7

    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewContainer:Landroid/view/View;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$700(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Landroid/view/View;

    move-result-object v8

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mObject:Ljava/lang/Object;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$800(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    invoke-interface {v6, v7, v8, v3}, Lcom/htc/music/widget/gridview/IViewBinder;->bindView(ILandroid/view/View;Lcom/htc/sunnyCore/IMediaData;)Landroid/view/View;

    move-result-object v3

    #setter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewContainer:Landroid/view/View;
    invoke-static {v5, v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$702(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;Landroid/view/View;)Landroid/view/View;

    .line 93
    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewContainer:Landroid/view/View;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$700(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewContainer:Landroid/view/View;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$700(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 96
    .local v2, width:I
    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewContainer:Landroid/view/View;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$700(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 100
    .local v1, height:I
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 106
    :goto_0
    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mViewContainer:Landroid/view/View;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$700(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 109
    .end local v1           #height:I
    .end local v2           #width:I
    :cond_0
    #setter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$602(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 111
    iget-object v3, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    .line 114
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return v3

    .line 103
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #height:I
    .restart local v2       #width:I
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .end local v1           #height:I
    .end local v2           #width:I
    :cond_2
    move v3, v4

    .line 111
    goto :goto_1

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    move v3, v4

    .line 114
    goto :goto_1
.end method

.method protected bridge synthetic processTask(Ljava/lang/Object;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    check-cast p1, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->processTask(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method protected removePriorTask()Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mViewDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processVisiblePosition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mRemovedViewTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mViewDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processPriorPosition()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mRemovedViewTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .local v0, task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    if-nez v0, :cond_0

    .line 81
    .end local v0           #task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic removePriorTask()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->removePriorTask()Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    move-result-object v0

    return-object v0
.end method

.method public setOnDecodeViewFinishListener(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #setter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mDecodeViewFinishListener:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;
    invoke-static {v0, p1}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$902(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;)Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeViewFinishListener;

    .line 119
    return-void
.end method

.method public setProcessDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mViewDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setProcessDirection(I)V

    .line 127
    return-void
.end method

.method public setVisibleRange(III)V
    .locals 1
    .parameter "totalCount"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$ViewAsyncTaskDecoder;->mViewDecodeOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setVisibleRange(III)V

    .line 123
    return-void
.end method
