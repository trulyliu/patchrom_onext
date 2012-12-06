.class Lcom/htc/music/AudioPreview$MediaButtonKeyListener;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaButtonKeyListener"
.end annotation


# instance fields
.field mAudioPreview:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/AudioPreview;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;)V
    .locals 1
    .parameter "audoPreview"

    .prologue
    .line 851
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 852
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview$MediaButtonKeyListener;->mAudioPreview:Ljava/lang/ref/WeakReference;

    .line 853
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 858
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_1

    .line 900
    :cond_0
    :goto_0
    return v1

    .line 859
    :cond_1
    iget-object v3, p0, Lcom/htc/music/AudioPreview$MediaButtonKeyListener;->mAudioPreview:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 860
    iget-object v3, p0, Lcom/htc/music/AudioPreview$MediaButtonKeyListener;->mAudioPreview:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/AudioPreview;

    .line 861
    .local v0, audioPreview:Lcom/htc/music/AudioPreview;
    if-eqz v0, :cond_0

    .line 863
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 896
    :sswitch_0
    #calls: Lcom/htc/music/AudioPreview;->stopPlayback()V
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$2000(Lcom/htc/music/AudioPreview;)V

    .line 897
    invoke-virtual {v0}, Lcom/htc/music/AudioPreview;->finish()V

    move v1, v2

    .line 898
    goto :goto_0

    .line 866
    :sswitch_1
    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 867
    #getter for: Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1800(Lcom/htc/music/AudioPreview;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 868
    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 869
    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 877
    :goto_1
    #calls: Lcom/htc/music/AudioPreview;->updatePlayPause()V
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1000(Lcom/htc/music/AudioPreview;)V

    move v1, v2

    .line 878
    goto :goto_0

    .line 871
    :cond_2
    #getter for: Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1800(Lcom/htc/music/AudioPreview;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$1900(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    #getter for: Lcom/htc/music/AudioPreview;->mDrmConsumed:Z
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1600(Lcom/htc/music/AudioPreview;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 872
    #getter for: Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1800(Lcom/htc/music/AudioPreview;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/AudioPreview;->checkDrmFile(Landroid/net/Uri;)V

    goto :goto_1

    .line 874
    :cond_3
    #calls: Lcom/htc/music/AudioPreview;->start()V
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$900(Lcom/htc/music/AudioPreview;)V

    goto :goto_1

    .line 880
    :sswitch_2
    #calls: Lcom/htc/music/AudioPreview;->start()V
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$900(Lcom/htc/music/AudioPreview;)V

    .line 881
    #calls: Lcom/htc/music/AudioPreview;->updatePlayPause()V
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1000(Lcom/htc/music/AudioPreview;)V

    move v1, v2

    .line 882
    goto :goto_0

    .line 884
    :sswitch_3
    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 885
    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 887
    :cond_4
    #calls: Lcom/htc/music/AudioPreview;->updatePlayPause()V
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1000(Lcom/htc/music/AudioPreview;)V

    move v1, v2

    .line 888
    goto :goto_0

    :sswitch_4
    move v1, v2

    .line 893
    goto :goto_0

    .line 863
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x57 -> :sswitch_4
        0x58 -> :sswitch_4
        0x59 -> :sswitch_4
        0x5a -> :sswitch_4
        0x7e -> :sswitch_2
        0x7f -> :sswitch_3
    .end sparse-switch
.end method
