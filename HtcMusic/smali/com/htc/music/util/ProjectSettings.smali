.class public Lcom/htc/music/util/ProjectSettings;
.super Ljava/lang/Object;
.source "ProjectSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[ProjectSettings]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnableDLNA(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    const v1, 0x7f0601b7

    invoke-static {p0, v1}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 85
    .local v0, enableDLNA:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 86
    const/16 v1, 0x31

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x32

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v2, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 94
    :cond_1
    return v0

    .line 83
    .end local v0           #enableDLNA:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableDrmWarning(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const v0, 0x7f0601b5

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getEnableEnhancer(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 98
    const v2, 0x7f0601b8

    invoke-static {p0, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    .line 99
    .local v0, enableEnhancer:I
    if-ne v0, v1, :cond_0

    .line 102
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEnableFfRw(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const v0, 0x7f0601b4

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableFolderView(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableLandscapeHorizontalSDError(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 109
    const v2, 0x7f0601b9

    invoke-static {p0, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    .line 110
    .local v0, enablelandscapeHorizontalSDError:I
    if-ne v0, v1, :cond_0

    .line 113
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEnablePlugin(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableUseAsNotificationRingtone(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const v0, 0x7f0601b3

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnalbeShow3PratyTabsInFirst(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    const v0, 0x7f0601b6

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIntValue(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const-string v0, "[ProjectSettings]"

    const-string v1, "getIntValue with null context!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getMaxRingtoneSize(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const v0, 0x7f0601b2

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getProjectName(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const v0, 0x7f0601b1

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static isSupportBypassPincode()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
