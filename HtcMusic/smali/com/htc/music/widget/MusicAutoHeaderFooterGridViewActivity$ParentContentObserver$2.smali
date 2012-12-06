.class Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1062
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-boolean v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v0, :cond_2

    .line 1063
    :cond_0
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "mRequeryWhileProcessingEnd : the activity is finishing"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_1
    :goto_0
    return-void

    .line 1066
    :cond_2
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "mRequeryWhileProcessingEnd+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-boolean v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    if-eqz v0, :cond_4

    .line 1068
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->isActivityResumed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1069
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "mRequeryWhileProcessingEnd : the activity is paused and asynQuery is processing"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mRequeryWhenResume:Z
    invoke-static {v0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->access$602(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Z)Z

    .line 1071
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iput-boolean v3, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mForceQuery:Z

    goto :goto_0

    .line 1075
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mRequeryWhileProcessingEnd:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1080
    :cond_4
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_5

    .line 1081
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->asyncQueryParentCursor()V

    .line 1082
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iput-boolean v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    .line 1083
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mStartProcessingTimeStamp:Ljava/lang/Long;

    .line 1085
    :cond_5
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iput-boolean v3, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mForceQuery:Z

    .line 1086
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "mRequeryWhileProcessingEnd-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
