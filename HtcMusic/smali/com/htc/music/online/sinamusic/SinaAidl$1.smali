.class Lcom/htc/music/online/sinamusic/SinaAidl$1;
.super Ljava/lang/Object;
.source "SinaAidl.java"

# interfaces
.implements Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/sinamusic/SinaAidl;->bindService()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/sinamusic/SinaAidl;


# direct methods
.method constructor <init>(Lcom/htc/music/online/sinamusic/SinaAidl;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/SinaAidl$1;->this$0:Lcom/htc/music/online/sinamusic/SinaAidl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/htc/music/online/sinamusic/SinaAidl;->access$000()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v1, "onBinderDied"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SinaAidl$1;->this$0:Lcom/htc/music/online/sinamusic/SinaAidl;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/online/sinamusic/SinaAidl;->mSocialServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v0, v1}, Lcom/htc/music/online/sinamusic/SinaAidl;->access$102(Lcom/htc/music/online/sinamusic/SinaAidl;Lcom/htc/opensense/social/SocialServiceManager;)Lcom/htc/opensense/social/SocialServiceManager;

    .line 94
    return-void
.end method

.method public onConnected(Lcom/htc/opensense/social/SocialServiceManager;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 81
    invoke-static {}, Lcom/htc/music/online/sinamusic/SinaAidl;->access$000()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v1, "onConnected"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SinaAidl$1;->this$0:Lcom/htc/music/online/sinamusic/SinaAidl;

    #setter for: Lcom/htc/music/online/sinamusic/SinaAidl;->mSocialServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v0, p1}, Lcom/htc/music/online/sinamusic/SinaAidl;->access$102(Lcom/htc/music/online/sinamusic/SinaAidl;Lcom/htc/opensense/social/SocialServiceManager;)Lcom/htc/opensense/social/SocialServiceManager;

    .line 83
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SinaAidl$1;->this$0:Lcom/htc/music/online/sinamusic/SinaAidl;

    #getter for: Lcom/htc/music/online/sinamusic/SinaAidl;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/music/online/sinamusic/SinaAidl;->access$200(Lcom/htc/music/online/sinamusic/SinaAidl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 85
    :try_start_0
    invoke-static {}, Lcom/htc/music/online/sinamusic/SinaAidl;->access$000()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v2, "notify all"

    invoke-virtual {v0, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SinaAidl$1;->this$0:Lcom/htc/music/online/sinamusic/SinaAidl;

    #getter for: Lcom/htc/music/online/sinamusic/SinaAidl;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/music/online/sinamusic/SinaAidl;->access$200(Lcom/htc/music/online/sinamusic/SinaAidl;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
