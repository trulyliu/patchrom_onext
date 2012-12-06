.class Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;
.super Ljava/lang/Object;
.source "MusicBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/fragment/MusicBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteCursorRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProjection:[Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWhere:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/widget/fragment/MusicBaseFragment;


# direct methods
.method private constructor <init>(Lcom/htc/music/widget/fragment/MusicBaseFragment;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 323
    iput-object p1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->this$0:Lcom/htc/music/widget/fragment/MusicBaseFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    .line 325
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mUri:Landroid/net/Uri;

    .line 326
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mProjection:[Ljava/lang/String;

    .line 327
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    .line 328
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mSelectionArgs:[Ljava/lang/String;

    .line 329
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mSortOrder:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/widget/fragment/MusicBaseFragment;Lcom/htc/music/widget/fragment/MusicBaseFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;-><init>(Lcom/htc/music/widget/fragment/MusicBaseFragment;)V

    return-void
.end method


# virtual methods
.method public Init(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    .line 333
    iput-object p2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mUri:Landroid/net/Uri;

    .line 334
    iput-object p3, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mProjection:[Ljava/lang/String;

    .line 335
    iput-object p4, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    .line 336
    iput-object p5, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mSelectionArgs:[Ljava/lang/String;

    .line 337
    iput-object p6, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mSortOrder:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 341
    const-string v0, "[MusicBaseFragment]"

    const-string v1, "at runable thread run"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 343
    const/4 v6, 0x0

    .line 344
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 346
    if-eqz v6, :cond_0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    invoke-static {v0, v6, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracksByCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, toastMsg:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->this$0:Lcom/htc/music/widget/fragment/MusicBaseFragment;

    #getter for: Lcom/htc/music/widget/fragment/MusicBaseFragment;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->access$200(Lcom/htc/music/widget/fragment/MusicBaseFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 351
    .local v7, msg:Landroid/os/Message;
    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->this$0:Lcom/htc/music/widget/fragment/MusicBaseFragment;

    #getter for: Lcom/htc/music/widget/fragment/MusicBaseFragment;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->access$200(Lcom/htc/music/widget/fragment/MusicBaseFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    if-eqz v6, :cond_0

    .line 356
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 357
    const/4 v6, 0x0

    .line 362
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #toastMsg:Ljava/lang/String;
    :cond_0
    const-string v0, "[MusicBaseFragment]"

    const-string v1, "at runable thread run after"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void

    .line 355
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 356
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 357
    const/4 v6, 0x0

    .line 355
    :cond_1
    throw v0
.end method
