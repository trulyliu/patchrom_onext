.class public Lcom/htc/music/util/HeadSetHelper;
.super Ljava/lang/Object;
.source "HeadSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;
    }
.end annotation


# static fields
.field private static final HEADSET_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/name"

.field private static final HEADSET_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field private static final TAG:Ljava/lang/String; = "[HeadSethelper]"


# instance fields
.field private mIntentReceiver:Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;

.field protected mIsBTPlugged:Z

.field protected mIsBeatsHeadset:Z

.field protected mIsBeatsOn:Z

.field protected mIsWiredPlugged:Z

.field private mListener:Lcom/htc/music/util/IMonitorHeadSetStatus;

.field protected mStartMonitor:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    .line 22
    iput-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    .line 24
    iput-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    .line 26
    iput-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsOn:Z

    .line 30
    iput-object v1, p0, Lcom/htc/music/util/HeadSetHelper;->mListener:Lcom/htc/music/util/IMonitorHeadSetStatus;

    .line 32
    iput-object v1, p0, Lcom/htc/music/util/HeadSetHelper;->mIntentReceiver:Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;

    .line 199
    iput-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mStartMonitor:Z

    .line 275
    return-void
.end method

.method private static getHeadsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "/sys/class/switch/h2w/name"

    invoke-static {v0}, Lcom/htc/music/util/HeadSetHelper;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHeadsetState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "/sys/class/switch/h2w/state"

    invoke-static {v0}, Lcom/htc/music/util/HeadSetHelper;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBTHeadsetPlugged(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 141
    new-instance v0, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    invoke-direct {v0, p0}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    return v1
.end method

.method public static isBeatsHeadset(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 161
    const-string v3, "[HeadSethelper]"

    const-string v4, "isBeatsHeadset, context is null! Return false"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x0

    .line 185
    :goto_0
    return v1

    .line 181
    :cond_0
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    move-object v2, v0

    .line 182
    check-cast v2, Landroid/media/HtcIfAudioManager;

    .line 183
    .local v2, ifam:Landroid/media/HtcIfAudioManager;
    invoke-interface {v2}, Landroid/media/HtcIfAudioManager;->isBeatsHeadset()Z

    move-result v1

    .line 184
    .local v1, bIsBeatsHeadset:Z
    const-string v3, "[HeadSethelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBeatsHeadset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isBeatsHeadsetBT(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 192
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    move-object v2, v0

    .line 193
    check-cast v2, Landroid/media/HtcIfAudioManager;

    .line 194
    .local v2, ifam:Landroid/media/HtcIfAudioManager;
    invoke-interface {v2}, Landroid/media/HtcIfAudioManager;->isBeatsHeadsetBT()Z

    move-result v1

    .line 195
    .local v1, bIsBeatsHeadsetBT:Z
    const-string v3, "[HeadSethelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBeatsHeadsetBT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return v1
.end method

.method public static isHeadsetPlugged(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 151
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiredHeadsetPlugged()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->getHeadsetName()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v5

    .line 96
    :cond_1
    const/4 v4, 0x0

    .line 99
    .local v4, state:I
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->getHeadsetState()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, bstate:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "headset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "h2w"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 113
    :cond_2
    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 119
    .local v2, length:I
    if-ne v2, v6, :cond_3

    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 120
    const-string v5, "[HeadSethelper]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Headset 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 121
    goto :goto_0

    .line 100
    .end local v0           #bstate:Ljava/lang/String;
    .end local v2           #length:I
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 102
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 124
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bstate:Ljava/lang/String;
    .restart local v2       #length:I
    :cond_3
    const/4 v7, 0x2

    if-lt v2, v7, :cond_5

    const-string v7, "01"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "10"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "11"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 127
    :cond_4
    const-string v5, "[HeadSethelper]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Headset 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 128
    goto/16 :goto_0

    .line 131
    :cond_5
    const-string v6, "[HeadSethelper]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Headset false:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filePath"

    .prologue
    .line 43
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 45
    const/4 v9, 0x0

    .line 82
    :goto_0
    return-object v9

    .line 47
    :cond_0
    const/4 v9, 0x0

    .line 48
    .local v9, line:Ljava/lang/String;
    const/4 v4, 0x0

    .line 49
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 50
    .local v7, isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 52
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 54
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .local v8, isr:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 55
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    move-result-object v9

    .line 60
    if-eqz v1, :cond_1

    .line 62
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 66
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 68
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 72
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 74
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    :cond_3
    :goto_3
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 79
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_4
    :goto_4
    const/4 v4, 0x0

    .line 80
    const/4 v7, 0x0

    .line 81
    const/4 v0, 0x0

    .line 82
    goto :goto_0

    .line 57
    :catch_0
    move-exception v6

    .line 58
    .local v6, ioe:Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 60
    if-eqz v0, :cond_5

    .line 62
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 66
    :cond_5
    :goto_6
    if-eqz v7, :cond_6

    .line 68
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 72
    :cond_6
    :goto_7
    if-eqz v4, :cond_4

    .line 74
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 75
    :catch_1
    move-exception v2

    .line 76
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 60
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_8
    if-eqz v0, :cond_7

    .line 62
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 66
    :cond_7
    :goto_9
    if-eqz v7, :cond_8

    .line 68
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 72
    :cond_8
    :goto_a
    if-eqz v4, :cond_9

    .line 74
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 60
    :cond_9
    :goto_b
    throw v10

    .line 63
    :catch_2
    move-exception v2

    .line 64
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 69
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 70
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 75
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 76
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 63
    .end local v2           #e:Ljava/io/IOException;
    .restart local v6       #ioe:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 64
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 69
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 70
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 63
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #ioe:Ljava/io/IOException;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_7
    move-exception v2

    .line 64
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 70
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 75
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 76
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 60
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .line 57
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v6

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_b
    move-exception v6

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_c
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_5
.end method


# virtual methods
.method public isBTHeadsetPluggedCacheValue()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    return v0
.end method

.method public isBeatsHeadsetCacheValue()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    return v0
.end method

.method public isHeadsetPluggedCacheValue()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartMonitor()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mStartMonitor:Z

    return v0
.end method

.method public isWiredHeadsetPluggedCacheValue()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    return v0
.end method

.method protected notifyMonitorBTHeadSetChange()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/music/util/HeadSetHelper;->mListener:Lcom/htc/music/util/IMonitorHeadSetStatus;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/htc/music/util/HeadSetHelper;->mListener:Lcom/htc/music/util/IMonitorHeadSetStatus;

    iget-boolean v1, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    invoke-interface {v0, v1}, Lcom/htc/music/util/IMonitorHeadSetStatus;->BTHeadSetStatusChanged(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method protected notifyMonitorBeatsAudioStatusChange()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/music/util/HeadSetHelper;->mListener:Lcom/htc/music/util/IMonitorHeadSetStatus;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/htc/music/util/HeadSetHelper;->mListener:Lcom/htc/music/util/IMonitorHeadSetStatus;

    iget-boolean v1, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsOn:Z

    invoke-interface {v0, v1}, Lcom/htc/music/util/IMonitorHeadSetStatus;->BeatsAudioStatusChanged(Z)V

    .line 273
    :cond_0
    return-void
.end method

.method protected notifyMonitorHeadSetChange()V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/music/util/HeadSetHelper;->mListener:Lcom/htc/music/util/IMonitorHeadSetStatus;

    if-eqz v0, :cond_1

    .line 257
    iget-object v1, p0, Lcom/htc/music/util/HeadSetHelper;->mListener:Lcom/htc/music/util/IMonitorHeadSetStatus;

    iget-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    invoke-interface {v1, v0, v2}, Lcom/htc/music/util/IMonitorHeadSetStatus;->headSetStatusChanged(ZZ)V

    .line 258
    :cond_1
    return-void

    .line 257
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyMonitorWiredHeadSetChange()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/music/util/HeadSetHelper;->mListener:Lcom/htc/music/util/IMonitorHeadSetStatus;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/music/util/HeadSetHelper;->mListener:Lcom/htc/music/util/IMonitorHeadSetStatus;

    iget-boolean v1, p0, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    invoke-interface {v0, v1}, Lcom/htc/music/util/IMonitorHeadSetStatus;->wiredHeadSetStatusChanged(Z)V

    .line 263
    :cond_0
    return-void
.end method

.method public startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 201
    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    if-eqz p2, :cond_0

    .line 204
    iget-boolean v3, p0, Lcom/htc/music/util/HeadSetHelper;->mStartMonitor:Z

    if-ne v4, v3, :cond_2

    .line 205
    const-string v3, "[HeadSethelper]"

    const-string v4, "already start monitor..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    .line 210
    invoke-static {p1}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    .line 211
    invoke-static {p1}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    .line 213
    iput-object p2, p0, Lcom/htc/music/util/HeadSetHelper;->mListener:Lcom/htc/music/util/IMonitorHeadSetStatus;

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 216
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v3, "com.htc.intent.action.ACTION_A2DP_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v3, "android.media.GLOBAL_BEATSEFFECT_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/htc/music/util/HeadSetHelper;->mIntentReceiver:Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;

    if-nez v3, :cond_3

    .line 224
    new-instance v3, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;

    invoke-direct {v3, p0}, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;-><init>(Lcom/htc/music/util/HeadSetHelper;)V

    iput-object v3, p0, Lcom/htc/music/util/HeadSetHelper;->mIntentReceiver:Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;

    .line 230
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/util/HeadSetHelper;->mIntentReceiver:Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 231
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/util/HeadSetHelper;->mStartMonitor:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "[HeadSethelper]"

    const-string v4, "Register HeadSetReceiver failed..."

    invoke-static {v3, v4, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 226
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v3, "[HeadSethelper]"

    const-string v4, "someone called this twice?"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopMonitor(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/htc/music/util/HeadSetHelper;->mIntentReceiver:Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;

    if-nez v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/util/HeadSetHelper;->mStartMonitor:Z

    if-eqz v1, :cond_0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/util/HeadSetHelper;->mIntentReceiver:Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/util/HeadSetHelper;->mIntentReceiver:Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;

    .line 245
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/util/HeadSetHelper;->mStartMonitor:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[HeadSethelper]"

    const-string v2, "Unregister HeadSetReceiver failed..."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
