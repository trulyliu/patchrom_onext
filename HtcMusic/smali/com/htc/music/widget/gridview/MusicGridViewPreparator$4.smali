.class Lcom/htc/music/widget/gridview/MusicGridViewPreparator$4;
.super Ljava/lang/Object;
.source "MusicGridViewPreparator.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$4;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessListener(I)Z
    .locals 4
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 185
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$4;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$4;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v1

    .line 188
    .local v1, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getViewDecodeStatus()I

    move-result v3

    if-nez v3, :cond_1

    .line 195
    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setViewDecodeStatus(I)V

    .line 197
    instance-of v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$4;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mParentBitmapRecycler:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$700(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 202
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$4;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mAsyncImageDecoder:Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$900(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v0}, Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder;->addToDecodeView(ILcom/htc/music/widget/gridview/MusicGridViewMediaData;Landroid/graphics/Bitmap;)V

    .line 206
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    :goto_1
    return v2

    .line 200
    .restart local v1       #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$4;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mChildBitmapRecycler:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$800(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0       #b:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 206
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
