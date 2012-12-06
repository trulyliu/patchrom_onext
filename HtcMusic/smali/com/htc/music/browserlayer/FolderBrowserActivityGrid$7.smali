.class Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$7;
.super Ljava/lang/Object;
.source "FolderBrowserActivityGrid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 578
    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->access$1400(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 579
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 580
    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->access$1500(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 581
    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->access$1600(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 582
    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->access$1700(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 583
    return-void
.end method
