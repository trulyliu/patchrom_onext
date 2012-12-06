.class Lcom/htc/music/online/sinamusic/SSinaEngine$1;
.super Ljava/lang/Object;
.source "SSinaEngine.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/sinamusic/SSinaEngine;->requestLogin()V
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
        "Landroid/os/Bundle;",
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
    .line 98
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine$1;->this$0:Lcom/htc/music/online/sinamusic/SSinaEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, arg0:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine$1;->this$0:Lcom/htc/music/online/sinamusic/SSinaEngine;

    #getter for: Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;
    invoke-static {v0}, Lcom/htc/music/online/sinamusic/SSinaEngine;->access$000(Lcom/htc/music/online/sinamusic/SSinaEngine;)Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 102
    return-void
.end method
