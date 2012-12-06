.class Lcom/htc/music/MiniPlayer$3$1;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/MiniPlayer$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/MiniPlayer$3;


# direct methods
.method constructor <init>(Lcom/htc/music/MiniPlayer$3;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/htc/music/MiniPlayer$3$1;->this$1:Lcom/htc/music/MiniPlayer$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$3$1;->this$1:Lcom/htc/music/MiniPlayer$3;

    iget-object v0, v0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    .line 448
    const/4 v0, 0x0

    return v0
.end method
