.class Lcom/htc/music/widget/fragment/MusicListFragment$1;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/fragment/MusicListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/fragment/MusicListFragment;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/fragment/MusicListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/music/widget/fragment/MusicListFragment$1;->this$0:Lcom/htc/music/widget/fragment/MusicListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment$1;->this$0:Lcom/htc/music/widget/fragment/MusicListFragment;

    iget-object v0, v0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicListFragment$1;->this$0:Lcom/htc/music/widget/fragment/MusicListFragment;

    iget-object v1, v1, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 42
    return-void
.end method
