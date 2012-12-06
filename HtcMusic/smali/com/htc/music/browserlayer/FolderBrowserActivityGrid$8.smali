.class Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$8;
.super Ljava/lang/Object;
.source "FolderBrowserActivityGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->playAllActionImpl(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

.field final synthetic val$forceShuffle:Z

.field final synthetic val$palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;Lcom/htc/music/util/MusicUtils$PlayAllListPair;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    iput-object p2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$8;->val$palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    iput-boolean p3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$8;->val$forceShuffle:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 791
    const-string v0, "[FolderBrowserActivityGrid]"

    const-string v1, "[playAllActionImpl][isDrmFolderExist()][run] Play all."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$8;->val$palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    iget-object v1, v1, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$8;->val$palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    iget-object v2, v2, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$8;->val$forceShuffle:Z

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[I[IZ)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 795
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;

    #calls: Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->triggerPlayAllAction()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->access$1900(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V

    .line 797
    :cond_0
    return-void
.end method
