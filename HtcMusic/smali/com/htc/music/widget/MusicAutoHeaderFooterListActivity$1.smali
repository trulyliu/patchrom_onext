.class Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 45
    return-void
.end method
