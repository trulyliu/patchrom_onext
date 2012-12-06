.class final Lcom/htc/music/online/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "songDetail"

    .prologue
    .line 191
    invoke-virtual {p3}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const-string v0, "[Util]"

    const-string v1, "[onFinish] Go to Online share!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {p3, p1}, Lcom/htc/music/online/Util;->getBundleFromSongDetail(Lcom/htc/music/online/sinamusic/WrapperSongDetail;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    #calls: Lcom/htc/music/online/Util;->gotoShareToSinaWeibo(Landroid/content/Context;Landroid/os/Bundle;)V
    invoke-static {p1, v0}, Lcom/htc/music/online/Util;->access$100(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 202
    :goto_0
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 205
    :cond_0
    return-void

    .line 198
    :cond_1
    const-string v0, "[Util]"

    const-string v1, "[onFinish] Go to Local share!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "songlistDetail"

    .prologue
    .line 213
    invoke-virtual {p3}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    const-string v0, "[Util]"

    const-string v1, "[onFinish] Go to Online share!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {p3}, Lcom/htc/music/online/Util;->getBundleFromSongListDetail(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)Landroid/os/Bundle;

    move-result-object v0

    #calls: Lcom/htc/music/online/Util;->gotoShareToSinaWeibo(Landroid/content/Context;Landroid/os/Bundle;)V
    invoke-static {p1, v0}, Lcom/htc/music/online/Util;->access$100(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 224
    :goto_0
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 227
    :cond_0
    return-void

    .line 220
    :cond_1
    const-string v0, "[Util]"

    const-string v1, "[onFinish] Go to Local share!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onReturnError(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "err"

    .prologue
    .line 172
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 175
    :cond_0
    invoke-static {p1, p3}, Lcom/htc/music/online/Util;->handleSnsException(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;)V

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 179
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/high16 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v2, "[Util]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no activity found to match the intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 168
    :cond_0
    return-void
.end method
