.class Lcom/htc/music/HtcMusic$NonUiHandler$2;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic$NonUiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/HtcMusic$NonUiHandler;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic$NonUiHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 5911
    iput-object p1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5913
    iget-object v0, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->startBrowserTabActivity()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$2300(Lcom/htc/music/HtcMusic;)V

    .line 5914
    iget-object v0, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v0, v1, v1}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    .line 5915
    iget-object v0, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 5916
    return-void
.end method
