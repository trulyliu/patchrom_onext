.class public Lcom/htc/music/browserlayer/HWSearchActivity;
.super Landroid/app/Activity;
.source "HWSearchActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "[HWSearchActivity]"


# instance fields
.field private mIsSeriveBinded:Z

.field private mNeedBindSerive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HWSearchActivity;->mNeedBindSerive:Z

    .line 21
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HWSearchActivity;->mIsSeriveBinded:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/HWSearchActivity;->requestWindowFeature(I)Z

    .line 27
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 57
    const-string v8, "[HWSearchActivity]"

    const-string v9, "onServiceConnected..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-boolean v8, p0, Lcom/htc/music/browserlayer/HWSearchActivity;->mNeedBindSerive:Z

    if-nez v8, :cond_1

    .line 59
    const-string v8, "[HWSearchActivity]"

    const-string v9, "onServiceConnected, mNeedBindSerive is false!!"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/music/browserlayer/HWSearchActivity;->mIsSeriveBinded:Z

    .line 65
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v8, :cond_2

    .line 66
    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v8

    sput-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HWSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 70
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 73
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 74
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 75
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, path:Ljava/lang/String;
    const-string v8, "content://media/external/audio/media/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 79
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, id:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v5, v8, [I

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v5, v8

    .line 81
    .local v5, list:[I
    const/4 v8, 0x0

    invoke-static {p0, v5, v8}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[II)I

    .line 82
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HWSearchActivity;->finish()V

    goto :goto_0

    .line 84
    .end local v3           #id:Ljava/lang/String;
    .end local v5           #list:[I
    :cond_3
    const-string v8, "content://media/external/audio/albums/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 86
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, albumId:Ljava/lang/String;
    const-string v8, "[QueryBrowserActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Going to launch album detail view. albumId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, i:Landroid/content/Intent;
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v9, "com.htc.media/albumtrack"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v8, "albumid"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v8, "dbTable"

    const/4 v9, 0x2

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const/high16 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/HWSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HWSearchActivity;->finish()V

    goto/16 :goto_0

    .line 96
    .end local v1           #albumId:Ljava/lang/String;
    .end local v2           #i:Landroid/content/Intent;
    :cond_4
    const-string v8, "content://media/external/audio/artists/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 98
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.PICK"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v2       #i:Landroid/content/Intent;
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v9, "vnd.android.cursor.dir/album"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v8, "artistid"

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v8, "dbTable"

    const/4 v9, 0x2

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const/high16 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/HWSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HWSearchActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 113
    const-string v0, "[HWSearchActivity]"

    const-string v1, "onServiceDisconnected, Service is disconnected abnormally."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HWSearchActivity;->mNeedBindSerive:Z

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "[HWSearchActivity]"

    const-string v1, "onStart, Fail to bind service."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HWSearchActivity;->mNeedBindSerive:Z

    .line 40
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 41
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/HWSearchActivity;->mIsSeriveBinded:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/HWSearchActivity;->mIsSeriveBinded:Z

    .line 50
    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/HWSearchActivity;->mNeedBindSerive:Z

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 53
    return-void
.end method
