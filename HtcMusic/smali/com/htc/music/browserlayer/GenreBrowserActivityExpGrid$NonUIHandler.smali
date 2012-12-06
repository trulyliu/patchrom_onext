.class Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;
.super Landroid/os/Handler;
.source "GenreBrowserActivityExpGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUIHandler"
.end annotation


# static fields
.field private static final PLAY_ALL:I


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    .line 1640
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1641
    return-void
.end method

.method static synthetic access$4900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1636
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;->playAll(Z)V

    return-void
.end method

.method private playAll(Z)V
    .locals 4
    .parameter "forceShuffle"

    .prologue
    .line 1644
    const-string v2, "[GenreBrowserActivityExpGrid]"

    const-string v3, "[NonUIHandler][playAll] ."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 1646
    .local v1, obj:Ljava/lang/Boolean;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1647
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1648
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1652
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1653
    .local v0, what:I
    const-string v1, "[GenreBrowserActivityExpGrid]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NonUIHandler][handleMessage] msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    if-nez v0, :cond_0

    .line 1655
    const-string v1, "[GenreBrowserActivityExpGrid]"

    const-string v2, "[NonUIHandler][handleMessage] PLAY_ALL."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->playAllActionImpl(Z)Z
    invoke-static {v2, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$6400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Z)Z

    .line 1661
    :goto_0
    return-void

    .line 1660
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
