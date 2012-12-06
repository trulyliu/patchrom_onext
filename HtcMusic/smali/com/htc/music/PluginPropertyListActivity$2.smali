.class Lcom/htc/music/PluginPropertyListActivity$2;
.super Ljava/lang/Object;
.source "PluginPropertyListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/PluginPropertyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/PluginPropertyListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/PluginPropertyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/music/PluginPropertyListActivity$2;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$2;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$000(Lcom/htc/music/PluginPropertyListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlaybackService: onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$2;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mNeedBindSerive:Z
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$2;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$000(Lcom/htc/music/PluginPropertyListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "osc, mNeedBindSerive is false!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$2;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity$2;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$2;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/PluginPropertyListActivity;->mIsSeriveBinded:Z
    invoke-static {v0, v1}, Lcom/htc/music/PluginPropertyListActivity;->access$202(Lcom/htc/music/PluginPropertyListActivity;Z)Z

    .line 187
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$2;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    #setter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/music/PluginPropertyListActivity;->access$302(Lcom/htc/music/PluginPropertyListActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;

    .line 188
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$2;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$2;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #calls: Lcom/htc/music/PluginPropertyListActivity;->showPoperty()V
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$400(Lcom/htc/music/PluginPropertyListActivity;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 196
    return-void
.end method
