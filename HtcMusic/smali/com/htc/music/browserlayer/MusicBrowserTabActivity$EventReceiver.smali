.class Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicBrowserTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1714
    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1714
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1717
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1718
    .local v0, action:Ljava/lang/String;
    const-string v4, "[MusicBrowserTabActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EventReceiver, action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1720
    .local v2, i:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1721
    const-string v4, "from-lockscreen"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1724
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1725
    .local v1, current:Landroid/app/Activity;
    if-eqz v1, :cond_1

    instance-of v4, v1, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 1726
    check-cast v3, Lcom/htc/music/widget/MusicMaActivity;

    .line 1727
    .local v3, maActivity:Lcom/htc/music/widget/MusicMaActivity;
    invoke-virtual {v3}, Lcom/htc/music/widget/MusicMaActivity;->isBypass()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1728
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 1733
    .end local v3           #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_1
    :goto_0
    return-void

    .line 1730
    .restart local v3       #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto :goto_0
.end method
