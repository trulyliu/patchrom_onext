.class Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$1;
.super Ljava/lang/Object;
.source "GridViewAsyncTaskDecoder.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;
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
    .line 145
    iput-object p1, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$1;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessListener(I)Z
    .locals 5
    .parameter "index"

    .prologue
    .line 151
    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$1;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mRemovedTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    invoke-static {v3, v4}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$1002(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .line 164
    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$1;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$1100(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 165
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 166
    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$1;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$1200(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .line 167
    .local v2, task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    #getter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->mPosition:I
    invoke-static {v2}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;->access$300(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 168
    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$1;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #getter for: Lcom/htc/music/util/AsyncTaskBase;->mList:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$1300(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    iget-object v3, p0, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$1;->this$0:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    #setter for: Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->mRemovedTask:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    invoke-static {v3, v2}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->access$1002(Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;)Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;

    .line 170
    const/4 v3, 0x1

    .line 174
    .end local v2           #task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    :goto_1
    return v3

    .line 165
    .restart local v2       #task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v2           #task:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$DecodeTask;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
