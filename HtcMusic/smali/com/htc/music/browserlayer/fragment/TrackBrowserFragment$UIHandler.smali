.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;
.super Landroid/os/Handler;
.source "TrackBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2845
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2849
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2862
    :cond_0
    :goto_0
    return-void

    .line 2851
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 2852
    .local v0, listview:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_0

    .line 2853
    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0

    .line 2857
    .end local v0           #listview:Lcom/htc/widget/HtcListView;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2858
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$UIHandler;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRingToneHelper:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackBrowserRingtoneHelper;->showContactRingtoneToast()V

    goto :goto_0

    .line 2849
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
