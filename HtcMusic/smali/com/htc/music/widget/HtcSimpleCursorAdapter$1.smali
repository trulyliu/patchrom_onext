.class Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;
.super Ljava/lang/Object;
.source "HtcSimpleCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    .line 58
    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mDataDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->onContentChanged()V

    goto :goto_0
.end method
