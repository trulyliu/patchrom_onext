.class Lcom/htc/music/HtcMusic$1;
.super Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/htc/music/HtcMusic$1;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoReadyDongle()V
    .locals 2

    .prologue
    .line 296
    const-string v0, "[HtcMusic]"

    const-string v1, "HtcTVDisplayListener, onNoReadyDongle is called."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public onNoTVToPlay()V
    .locals 3

    .prologue
    .line 302
    const-string v0, "[HtcMusic]"

    const-string v1, "HtcTVDisplayListener, onNoTVToPlay is called. launchDMR to get default Render."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/htc/music/HtcMusic$1;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/music/HtcMusic$1;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/htc/music/HtcMusic;->launchDMR(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$200(Lcom/htc/music/HtcMusic;IZ)V

    .line 306
    :cond_0
    return-void
.end method

.method public onReadyDongleFound(Lcom/htc/service/DongleInfo;)V
    .locals 2
    .parameter "dongle"

    .prologue
    .line 291
    const-string v0, "[HtcMusic]"

    const-string v1, "HtcTVDisplayListener, onReadyDongleFound is called."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public onTVOff()V
    .locals 2

    .prologue
    .line 286
    const-string v0, "[HtcMusic]"

    const-string v1, "HtcTVDisplayListener, onTVOff is called."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public onTVOn()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "[HtcMusic]"

    const-string v1, "HtcTVDisplayListener, onTVOn is called."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 2

    .prologue
    .line 311
    const-string v0, "[HtcMusic]"

    const-string v1, "HtcTVDisplayListener, onTVReadyToPlay is called. Go to DMC!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/htc/music/HtcMusic$1;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$300(Lcom/htc/music/HtcMusic;)V

    .line 313
    return-void
.end method
