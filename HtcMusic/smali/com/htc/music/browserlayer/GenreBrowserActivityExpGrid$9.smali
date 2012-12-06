.class Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;
.super Ljava/lang/Object;
.source "GenreBrowserActivityExpGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->playAllActionImpl(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

.field final synthetic val$finalCursor:Landroid/database/Cursor;

.field final synthetic val$forceShuffle:Z


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;ZLandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    iput-boolean p2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;->val$forceShuffle:Z

    iput-object p3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;->val$finalCursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1073
    const-string v1, "[GenreBrowserActivityExpGrid]"

    const-string v2, "[playAllActionImpl][run] Play all."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;->val$forceShuffle:Z

    if-eqz v1, :cond_1

    .line 1077
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;->val$finalCursor:Landroid/database/Cursor;

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v0

    .line 1080
    .local v0, result:I
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->triggerPlayAllAction()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$5000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;->val$finalCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1086
    return-void

    .line 1079
    .end local v0           #result:I
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;->val$finalCursor:Landroid/database/Cursor;

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0       #result:I
    goto :goto_0

    .line 1084
    .end local v0           #result:I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;->val$finalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
.end method
