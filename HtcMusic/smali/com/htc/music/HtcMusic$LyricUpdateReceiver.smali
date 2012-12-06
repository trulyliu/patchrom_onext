.class Lcom/htc/music/HtcMusic$LyricUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method private constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 7110
    iput-object p1, p0, Lcom/htc/music/HtcMusic$LyricUpdateReceiver;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7110
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic$LyricUpdateReceiver;-><init>(Lcom/htc/music/HtcMusic;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 7113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7114
    .local v0, action:Ljava/lang/String;
    const-string v2, "action_download_finish"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7115
    iget-object v2, p0, Lcom/htc/music/HtcMusic$LyricUpdateReceiver;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$3400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v1

    .line 7116
    .local v1, lyrics:Lcom/htc/music/lyrics/Lyrics;
    iget-object v2, p0, Lcom/htc/music/HtcMusic$LyricUpdateReceiver;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z
    invoke-static {v2, v1}, Lcom/htc/music/HtcMusic;->access$3500(Lcom/htc/music/HtcMusic;Lcom/htc/music/lyrics/Lyrics;)Z

    .line 7124
    .end local v1           #lyrics:Lcom/htc/music/lyrics/Lyrics;
    :cond_0
    :goto_0
    return-void

    .line 7118
    :cond_1
    const-string v2, "action_update_lyrics_data_fee_check_denied"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7119
    iget-object v2, p0, Lcom/htc/music/HtcMusic$LyricUpdateReceiver;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mIsLyricShow:Z
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6100(Lcom/htc/music/HtcMusic;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7120
    iget-object v2, p0, Lcom/htc/music/HtcMusic$LyricUpdateReceiver;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->hideLyricView()V
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$9800(Lcom/htc/music/HtcMusic;)V

    .line 7121
    iget-object v2, p0, Lcom/htc/music/HtcMusic$LyricUpdateReceiver;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateLyricMenu()V
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$9900(Lcom/htc/music/HtcMusic;)V

    goto :goto_0
.end method
