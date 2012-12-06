.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivityExp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V
    .locals 0
    .parameter

    .prologue
    .line 2105
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mNeedBindService:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 2111
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPlaybackServiceConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3502(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Z)Z

    .line 2117
    :goto_0
    return-void

    .line 2115
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPlaybackServiceConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3502(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Z)Z

    .line 2116
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMediaService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3602(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMediaService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3602(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;

    .line 2122
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPlaybackServiceConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3502(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Z)Z

    .line 2124
    return-void
.end method
