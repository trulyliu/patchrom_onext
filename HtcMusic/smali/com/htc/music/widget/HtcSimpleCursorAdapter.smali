.class public Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "HtcSimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/HtcSimpleCursorAdapter$RequeryRunnable;
    }
.end annotation


# static fields
.field private static final ENABLE_AUTO_REQUERY_DELAY:I = 0x1388

.field private static final REQUERY_DELAY:I = 0xbb8


# instance fields
.field mAutoRequery:Z

.field mAutoRequeryLock:Z

.field mDataDirty:Z

.field mEnableAutoRequery:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mRequery:Ljava/lang/Runnable;

.field mRequeryInQueue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 18
    iput-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    .line 19
    iput-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    .line 20
    iput-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mDataDirty:Z

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    .line 51
    new-instance v0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$RequeryRunnable;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter$RequeryRunnable;-><init>(Lcom/htc/music/widget/HtcSimpleCursorAdapter;Lcom/htc/music/widget/HtcSimpleCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequery:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;-><init>(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method


# virtual methods
.method public getAutoRequery()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    return v0
.end method

.method protected onContentChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mDataDirty:Z

    .line 75
    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    .line 76
    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iput-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    .line 80
    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAutoRequery(Z)V
    .locals 1
    .parameter "autoRequery"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->setAutoRequery(ZZ)V

    goto :goto_0
.end method

.method public setAutoRequery(ZZ)V
    .locals 4
    .parameter "autoRequery"
    .parameter "lock"

    .prologue
    const/4 v3, 0x1

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, UpdateNoDelay:Z
    iget-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    if-ne v1, v3, :cond_0

    if-nez p2, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 103
    :cond_0
    iput-boolean p2, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    .line 104
    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iput-boolean p1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    .line 107
    iget-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mDataDirty:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    if-eqz v1, :cond_1

    .line 109
    if-eqz v0, :cond_3

    .line 112
    iget-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    if-eqz v1, :cond_2

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    iput-boolean v3, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    .line 116
    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->onContentChanged()V

    goto :goto_0
.end method

.method public setAutoRequeryOffAndAutoOn()V
    .locals 4

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    .line 95
    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public superOnContentChanged()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 70
    return-void
.end method
