.class Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$8;
.super Ljava/lang/Object;
.source "AlbumBrowserActivityGrid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 683
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 684
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 685
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$1200(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 686
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$1300(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 687
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->access$1400(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 688
    return-void
.end method
