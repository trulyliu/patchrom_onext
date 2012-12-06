.class Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;
.super Ljava/lang/Object;
.source "MusicMaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicMaActivity;
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

.field final synthetic this$0:Lcom/htc/music/widget/MusicMaActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 655
    iput-object p1, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    .line 657
    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mUri:Landroid/net/Uri;

    .line 658
    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mProjection:[Ljava/lang/String;

    .line 659
    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    .line 660
    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mSelectionArgs:[Ljava/lang/String;

    .line 661
    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mSortOrder:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/widget/MusicMaActivity;Lcom/htc/music/widget/MusicMaActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

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
    .line 664
    iput-object p1, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    .line 665
    iput-object p2, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mUri:Landroid/net/Uri;

    .line 666
    iput-object p3, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mProjection:[Ljava/lang/String;

    .line 667
    iput-object p4, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    .line 668
    iput-object p5, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mSelectionArgs:[Ljava/lang/String;

    .line 669
    iput-object p6, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mSortOrder:Ljava/lang/String;

    .line 670
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 673
    const-string v0, "[MusicMaActivity]"

    const-string v1, "at runable thread run"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 675
    const/4 v6, 0x0

    .line 676
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 678
    if-eqz v6, :cond_1

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mUri:Landroid/net/Uri;

    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    const-string v1, "artist_id"

    const-string v2, "artist2_id"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    invoke-static {v0, v6, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracksByCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 684
    .local v8, toastMsg:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/widget/MusicMaActivity;->access$700(Lcom/htc/music/widget/MusicMaActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 685
    .local v7, msg:Landroid/os/Message;
    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 686
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/widget/MusicMaActivity;->access$700(Lcom/htc/music/widget/MusicMaActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    if-eqz v6, :cond_1

    .line 690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 691
    const/4 v6, 0x0

    .line 696
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #toastMsg:Ljava/lang/String;
    :cond_1
    const-string v0, "[MusicMaActivity]"

    const-string v1, "at runable thread run after"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void

    .line 689
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 691
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method
