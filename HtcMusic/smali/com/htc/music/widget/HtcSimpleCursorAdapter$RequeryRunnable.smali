.class Lcom/htc/music/widget/HtcSimpleCursorAdapter$RequeryRunnable;
.super Ljava/lang/Object;
.source "HtcSimpleCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequeryRunnable"
.end annotation


# instance fields
.field private parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/widget/HtcSimpleCursorAdapter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/HtcSimpleCursorAdapter;Lcom/htc/music/widget/HtcSimpleCursorAdapter;)V
    .locals 1
    .parameter
    .parameter "htcSimpleCursorAdapter"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$RequeryRunnable;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$RequeryRunnable;->parent:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$RequeryRunnable;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    iget-boolean v2, v2, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    if-eqz v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$RequeryRunnable;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    .line 36
    .local v1, parentAdapter:Lcom/htc/music/widget/HtcSimpleCursorAdapter;
    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->superOnContentChanged()V

    .line 39
    iget-object v2, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$RequeryRunnable;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mDataDirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1           #parentAdapter:Lcom/htc/music/widget/HtcSimpleCursorAdapter;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$RequeryRunnable;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    iput-boolean v4, v2, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    .line 48
    return-void

    .line 41
    .restart local v1       #parentAdapter:Lcom/htc/music/widget/HtcSimpleCursorAdapter;
    :cond_1
    :try_start_1
    const-string v2, "HtcSimpleCursorAdapter"

    const-string v3, "HtcSimpleCursorAdapter became null when onContentChanged."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 44
    .end local v1           #parentAdapter:Lcom/htc/music/widget/HtcSimpleCursorAdapter;
    :catch_0
    move-exception v0

    .line 45
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HtcSimpleCursorAdapter"

    const-string v3, "requery Exception:"

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
