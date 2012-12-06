.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;
.super Ljava/lang/Object;
.source "TrackBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initButtonsPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2683
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onSaveClick()V

    .line 2686
    return-void
.end method
