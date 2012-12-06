.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;
.super Lcom/htc/music/util/RingtoneHelper;
.source "TrackBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackBrowserRingtoneHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 2820
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    .line 2821
    invoke-direct {p0, p2}, Lcom/htc/music/util/RingtoneHelper;-><init>(Landroid/content/Context;)V

    .line 2822
    return-void
.end method


# virtual methods
.method public showNoNotificationRingtoneDialog()V
    .locals 2

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    const/16 v1, 0x28

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$3100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)V

    .line 2831
    return-void
.end method

.method public showRingtoneDialog()V
    .locals 2

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    const/16 v1, 0x27

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$3000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)V

    .line 2827
    return-void
.end method

.method public startContactActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "contactResultCode"

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/htc/music/util/RingtoneHelper;->startContactActivity(Landroid/app/Activity;I)V

    .line 2835
    return-void
.end method
