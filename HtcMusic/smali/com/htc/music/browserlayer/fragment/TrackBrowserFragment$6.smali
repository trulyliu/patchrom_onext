.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$6;
.super Ljava/lang/Object;
.source "TrackBrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

.field final synthetic val$resultIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1775
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$6;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iput-object p2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$6;->val$resultIntent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1777
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$6;->val$resultIntent:Landroid/content/Intent;

    const-string v2, "SELECTED_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1778
    .local v0, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$6;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1779
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$6;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;->hadnleContactRingtoneResult(Ljava/util/ArrayList;Z)V

    .line 1783
    :cond_0
    return-void
.end method
