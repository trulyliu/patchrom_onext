.class Lcom/htc/music/online/sinamusic/SSinaEngine$2;
.super Ljava/lang/Object;
.source "SSinaEngine.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/sinamusic/SSinaEngine;->requestLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/sinamusic/SSinaEngine;


# direct methods
.method constructor <init>(Lcom/htc/music/online/sinamusic/SSinaEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine$2;->this$0:Lcom/htc/music/online/sinamusic/SSinaEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, arg0:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 123
    .local v1, flag:Z
    if-eqz v1, :cond_0

    .line 125
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/SSinaEngine$2;->this$0:Lcom/htc/music/online/sinamusic/SSinaEngine;

    #getter for: Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;
    invoke-static {v2}, Lcom/htc/music/online/sinamusic/SSinaEngine;->access$000(Lcom/htc/music/online/sinamusic/SSinaEngine;)Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v2

    const-string v3, "request login again..."

    invoke-virtual {v2, v3}, Lcom/htc/music/online/sinamusic/MyLogger;->w(Ljava/lang/Object;)V

    .line 126
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/SSinaEngine$2;->this$0:Lcom/htc/music/online/sinamusic/SSinaEngine;

    invoke-virtual {v2}, Lcom/htc/music/online/sinamusic/SSinaEngine;->requestLogin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1           #flag:Z
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/SSinaEngine$2;->this$0:Lcom/htc/music/online/sinamusic/SSinaEngine;

    #getter for: Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;
    invoke-static {v2}, Lcom/htc/music/online/sinamusic/SSinaEngine;->access$000(Lcom/htc/music/online/sinamusic/SSinaEngine;)Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method
