.class Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentDataSetObserver"
.end annotation


# instance fields
.field mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

.field mUiRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1054
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1063
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mUiRunnable:Ljava/lang/Runnable;

    .line 1055
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    .line 1056
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1081
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onChanged+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1083
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 1087
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onInvalidated+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onInvalidated-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1059
    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    .line 1060
    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mUiRunnable:Ljava/lang/Runnable;

    .line 1061
    return-void
.end method
