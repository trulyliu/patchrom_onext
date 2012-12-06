.class Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;
.super Ljava/lang/Object;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 991
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 993
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v0, :cond_2

    .line 994
    :cond_0
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "mRequeryWhileProcessingEnd : the activity is finishing"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_1
    :goto_0
    return-void

    .line 997
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    if-eqz v0, :cond_3

    .line 998
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mRequeryWhileProcessingEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1003
    :cond_3
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_4

    .line 1004
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->asyncQueryParentCursor()V

    .line 1005
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    .line 1006
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mStartProcessingTimeStamp:Ljava/lang/Long;

    .line 1008
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mForceQuery:Z

    goto :goto_0
.end method
