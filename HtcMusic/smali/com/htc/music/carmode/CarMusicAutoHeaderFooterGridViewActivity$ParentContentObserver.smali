.class Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;
.super Landroid/database/ContentObserver;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentContentObserver"
.end annotation


# instance fields
.field mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

.field mForceQuery:Z

.field mHandler:Landroid/os/Handler;

.field mIsProcessing:Z

.field mRequeryWhileProcessingEnd:Ljava/lang/Runnable;

.field mResetFlag:Ljava/lang/Runnable;

.field mStartProcessingTimeStamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V
    .locals 2
    .parameter "handler"
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 972
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 967
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    .line 968
    iput-boolean v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    .line 969
    iput-boolean v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mForceQuery:Z

    .line 985
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mResetFlag:Ljava/lang/Runnable;

    .line 991
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mRequeryWhileProcessingEnd:Ljava/lang/Runnable;

    .line 1012
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mStartProcessingTimeStamp:Ljava/lang/Long;

    .line 973
    iput-object p2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    .line 974
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x1

    .line 1034
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentContentObserver.onChange+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mForceQuery:Z

    if-nez v0, :cond_0

    .line 1038
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mForceQuery:Z

    .line 1039
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mRequeryWhileProcessingEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    if-nez v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->asyncQueryParentCursor()V

    .line 1046
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    .line 1047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mStartProcessingTimeStamp:Ljava/lang/Long;

    .line 1048
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentContentObserver.onChange-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 977
    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    .line 978
    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mResetFlag:Ljava/lang/Runnable;

    .line 979
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 981
    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    .line 983
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    .line 1015
    iget-boolean v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    if-nez v2, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1020
    .local v1, timeStamp:Ljava/lang/Long;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mStartProcessingTimeStamp:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1021
    .local v0, restOfTime:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 1022
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    goto :goto_0

    .line 1024
    :cond_2
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mResetFlag:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
