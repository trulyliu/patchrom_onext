.class Lcom/htc/music/PropertyListActivity$2;
.super Ljava/lang/Object;
.source "PropertyListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/PropertyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/PropertyListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/PropertyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$000(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlaybackService: onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mNeedBindSerive:Z
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$100(Lcom/htc/music/PropertyListActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$000(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "osc, mNeedBindSerive is false!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    iget-object v1, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/PropertyListActivity;->mIsSeriveBinded:Z
    invoke-static {v0, v1}, Lcom/htc/music/PropertyListActivity;->access$202(Lcom/htc/music/PropertyListActivity;Z)Z

    .line 323
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    #setter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/music/PropertyListActivity;->access$302(Lcom/htc/music/PropertyListActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;

    .line 324
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$400(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v0}, Lcom/htc/music/PropertyListActivity;->init()V

    .line 329
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mPropertyAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mPropertyAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$2;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$000(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method
