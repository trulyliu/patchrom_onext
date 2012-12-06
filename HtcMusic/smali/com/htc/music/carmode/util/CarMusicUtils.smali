.class public Lcom/htc/music/carmode/util/CarMusicUtils;
.super Ljava/lang/Object;
.source "CarMusicUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[CarMusicUtils]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeActivityIfNotInCarMode(Landroid/app/Activity;)Z
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 33
    const-string v2, "uimode"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 34
    .local v0, um:Landroid/app/UiModeManager;
    if-nez v0, :cond_1

    .line 35
    const-string v2, "[CarMusicUtils]"

    const-string v3, "[closeActivityIfNotInCarMode] um == null; stay as Car mode."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 39
    const-string v1, "[CarMusicUtils]"

    const-string v2, "Current mode is not car mode."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getLaunchGlanceLayerIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.carmode.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 50
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    instance-of v1, p0, Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 52
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method
