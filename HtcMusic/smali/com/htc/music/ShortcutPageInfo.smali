.class public Lcom/htc/music/ShortcutPageInfo;
.super Ljava/lang/Object;
.source "ShortcutPageInfo.java"


# instance fields
.field private mPreloadAutoDetectTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadIntentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    .line 20
    invoke-direct {p0, p1}, Lcom/htc/music/ShortcutPageInfo;->initPreloadMap(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/htc/music/ShortcutPageInfo;->initPreloadAutoDetectTypeMap()V

    .line 22
    return-void
.end method

.method private initPreloadAutoDetectTypeMap()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 137
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.htc.vmm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.vodafone.android.app.music"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.htc.bpmrss"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.sprint.android.musicplus2033"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.cricket.shima.handset.android.v1.muvemusic"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.kddi.android.imp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.kddi.android.UtaPass"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.melodis.midomiMusicIdentifier"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "radiotime.player"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "tunein.player"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.amazon.mp3"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isZdigital()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "au.com.zdigital.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.skysoft.kkbox.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.google.android.music"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.rdio.android.ui"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.spotify.mobile.android.ui"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "deezer.android.app"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "de.simfy.androidapp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.mog.android"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.pandora.android"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "fm.last.android"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.slacker.radio"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.kddi.android.lismowave"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.kddi.android.rcss"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isChinaSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.douban.radio"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "cn.kuwo.player"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqmusic"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "cn.sina.music"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.htc.musicwall"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "uk.co.sevendigital.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private initPreloadMap(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v6, 0x7f02004a

    const/high16 v5, 0x400

    .line 25
    const/4 v0, 0x0

    .line 28
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.htc.vmm"

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.htc.vmm"

    const v3, 0x7f02005d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "vfmusic://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.vodafone.android.app.music"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.vodafone.android.app.music"

    const v3, 0x7f02005c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.htc.bpmrss"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.bpmrss.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.htc.bpmrss"

    const v3, 0x7f02004d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sprint.android.musicplus2033"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.sprint.android.musicplus2033"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.sprint.android.musicplus2033"

    const v3, 0x7f020058

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.cricket.shima.handset.android.v1.muvemusic"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.cricket.shima.handset.android.v1.muvemusic"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.cricket.shima.handset.android.v1.muvemusic"

    const v3, 0x7f02004e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v3, "htc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.melodis.midomiMusicIdentifier"

    const v3, 0x7f020057

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v3, "htc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.melodis.midomiMusicIdentifier.freemium"

    const v3, 0x7f020056

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "radiotime.player"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "radiotime.player"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "radiotime.player"

    const v3, 0x7f02005a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "tunein.player"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "tunein.player"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "tunein.player"

    const v3, 0x7f020059

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.amazon.mp3"

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchAmazonIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.amazon.mp3"

    const v3, 0x7f02004c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isZdigital()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "au.com.zdigital.android"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    const-string v1, "uk.co.sevendigital.android.intent.action.VIEW_SHOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "au.com.zdigital.android"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "au.com.zdigital.android"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.skysoft.kkbox.android"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.skysoft.kkbox.android.HOME_VIEWER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.skysoft.kkbox.android"

    const v3, 0x7f020052

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.music"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.google.android.music"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.google.android.music"

    const v3, 0x7f020051

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.kddi.android.imp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.kddi.android.imp"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.kddi.android.imp"

    const v3, 0x7f020054

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.kddi.android.UtaPass"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.kddi.android.UtaPass"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.kddi.android.UtaPass"

    const v3, 0x7f02005b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isChinaSku()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_4

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc.musicwall"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.htc.musicwall"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.htc.musicwall"

    const v3, 0x7f02004b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_4
    return-void

    .line 97
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "uk.co.sevendigital.android"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_6

    .line 99
    const-string v1, "uk.co.sevendigital.android.intent.action.VIEW_SHOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    :cond_6
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "uk.co.sevendigital.android"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "uk.co.sevendigital.android"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 194
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 195
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 196
    return-void
.end method

.method public getPreloadAutoDetectType(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method
