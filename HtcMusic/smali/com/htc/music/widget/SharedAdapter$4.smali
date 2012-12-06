.class final Lcom/htc/music/widget/SharedAdapter$4;
.super Ljava/lang/Object;
.source "SharedAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Landroid/os/Bundle;Lcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/htc/music/widget/SharedAdapter;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$innerActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/SharedAdapter;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    iput-object p2, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 442
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {v4, p2}, Lcom/htc/music/widget/SharedAdapter;->updateRecord(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 444
    .local v0, info:Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {v4, v0}, Lcom/htc/music/widget/SharedAdapter;->intentForPosition(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 445
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 446
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v3, ""

    .line 449
    .local v3, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 450
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    const-string v6, "music.intent.extra.track"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    const-string v7, "music.intent.extra.album"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    const-string v8, "music.intent.extra.artist"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    if-nez v3, :cond_0

    .line 453
    const-string v3, ""

    .line 456
    :cond_0
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, packageName:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 461
    const-string v4, "[ShareAdapter]"

    const-string v5, "choose_listener: text, Package is null... "

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 480
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 481
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 483
    :cond_2
    return-void

    .line 464
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_3
    const-string v4, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 467
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/htc/music/online/Util;->checkNetworkAvailableWithDialog(Landroid/content/Context;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/widget/SharedAdapter;->access$002(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 468
    invoke-static {}, Lcom/htc/music/widget/SharedAdapter;->access$000()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    if-nez v4, :cond_1

    .line 470
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    invoke-static {v4, v1, v5}, Lcom/htc/music/online/Util;->shareMusicInfoToSinaWeibo(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 474
    :cond_4
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
