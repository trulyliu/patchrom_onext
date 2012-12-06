.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;
.super Ljava/lang/Object;
.source "AlbumTrackBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 522
    const-string v0, "[AlbumTrackBrowserActivity]"

    const-string v1, "MediaPlaybackService: onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    const-string v0, "[AlbumTrackBrowserActivity]"

    const-string v1, "osc, mNeedBindSerive is false!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$602(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Z)Z

    .line 530
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$702(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;

    .line 531
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 537
    const-string v0, "[AlbumTrackBrowserActivity]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method
