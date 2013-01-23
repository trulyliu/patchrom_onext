.class public Lcom/android/camera/AlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmIntentReceiver.java"


# static fields
.field public static final MediaCount:Ljava/lang/String; = "com.htc.camera.MEDIACOUNT"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-string v0, "AlarmIntentReceiver"

    iput-object v0, p0, Lcom/android/camera/AlarmIntentReceiver;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.htc.camera.MEDIACOUNT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 33
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 35
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v7, "pref_bi_photo_mode_setting_snap_history"

    const-string v8, "null"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, photo_settings:Ljava/lang/String;
    const-string v7, "pref_bi_video_setting_recording_history"

    const-string v8, "null"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, video_settings:Ljava/lang/String;
    const-string v7, "pref_bi_continuousburst_history"

    const-string v8, "null"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, continuousburst_count:Ljava/lang/String;
    const-string v7, "null"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    const-string v7, "null"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 43
    :cond_2
    iget-object v7, p0, Lcom/android/camera/AlarmIntentReceiver;->TAG:Ljava/lang/String;

    const-string v8, "No picture, just return"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v1           #continuousburst_count:Ljava/lang/String;
    .end local v3           #photo_settings:Ljava/lang/String;
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    .end local v6           #video_settings:Ljava/lang/String;
    :goto_0
    return-void

    .line 49
    .restart local v1       #continuousburst_count:Ljava/lang/String;
    .restart local v3       #photo_settings:Ljava/lang/String;
    .restart local v4       #preferences:Landroid/content/SharedPreferences;
    .restart local v6       #video_settings:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v5

    .line 52
    .local v5, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v7, "com.android.camera"

    invoke-virtual {v5, v7}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "Camera_settings"

    invoke-interface {v7, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "photo_settings"

    invoke-interface {v7, v8, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "video_settings"

    invoke-interface {v7, v8, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "continuousburst_count"

    invoke-interface {v7, v8, v1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 58
    invoke-static {v5}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 59
    invoke-virtual {v5}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 61
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 62
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_bi_photo_mode_setting_snap_history"

    const-string v8, ""

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    const-string v7, "pref_bi_video_setting_recording_history"

    const-string v8, ""

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    const-string v7, "pref_bi_continuousburst_history"

    const-string v8, ""

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 70
    .end local v1           #continuousburst_count:Ljava/lang/String;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #photo_settings:Ljava/lang/String;
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    .end local v5           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    .end local v6           #video_settings:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/camera/AlarmIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected intent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
