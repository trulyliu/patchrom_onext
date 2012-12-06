.class Lcom/htc/music/NowPlayingViewHelper$16;
.super Landroid/content/BroadcastReceiver;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1797
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1800
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 1801
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const-string v2, "queueposition"

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mAudioId:I
    invoke-static {v3}, Lcom/htc/music/NowPlayingViewHelper;->access$2000(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mAudioId:I
    invoke-static {v1, v2}, Lcom/htc/music/NowPlayingViewHelper;->access$2002(Lcom/htc/music/NowPlayingViewHelper;I)I

    .line 1802
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1803
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mAudioId:I
    invoke-static {v3}, Lcom/htc/music/NowPlayingViewHelper;->access$2000(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v2

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mAudioId:I
    invoke-static {v1, v2}, Lcom/htc/music/NowPlayingViewHelper;->access$2002(Lcom/htc/music/NowPlayingViewHelper;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1811
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1827
    :cond_1
    :goto_1
    return-void

    .line 1806
    :catch_0
    move-exception v0

    .line 1807
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1813
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "Got META_CHANGED, List View is null!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1814
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.music.queuechanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1815
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1819
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z
    invoke-static {v1, v2}, Lcom/htc/music/NowPlayingViewHelper;->access$2102(Lcom/htc/music/NowPlayingViewHelper;Z)Z

    goto :goto_1

    .line 1823
    :cond_4
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1825
    new-instance v1, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/NowPlayingViewHelper;->access$2200(Lcom/htc/music/NowPlayingViewHelper;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;-><init>(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    goto :goto_1
.end method
