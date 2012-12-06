.class Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;
.super Landroid/os/Handler;
.source "MusicBrowserTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 264
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "browsertab, mUIHandler receive message..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v0, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v0, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v0, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x2ee2
        :pswitch_0
    .end packed-switch
.end method
