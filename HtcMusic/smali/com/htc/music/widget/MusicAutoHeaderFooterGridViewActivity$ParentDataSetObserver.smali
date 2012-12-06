.class Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "MusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentDataSetObserver"
.end annotation


# instance fields
.field mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

.field mUiRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1137
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1146
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mUiRunnable:Ljava/lang/Runnable;

    .line 1138
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    .line 1139
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1164
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onChanged+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1166
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 1170
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onInvalidated+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onInvalidated-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1142
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    .line 1143
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mUiRunnable:Ljava/lang/Runnable;

    .line 1144
    return-void
.end method
