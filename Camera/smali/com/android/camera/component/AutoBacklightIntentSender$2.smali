.class Lcom/android/camera/component/AutoBacklightIntentSender$2;
.super Ljava/lang/Object;
.source "AutoBacklightIntentSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/AutoBacklightIntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoBacklightIntentSender;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x2711

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 85
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$200(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "enableAutoBacklight() - Run"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    invoke-virtual {v6, v9}, Lcom/android/camera/component/AutoBacklightIntentSender;->removeMessages(I)V

    .line 91
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    #getter for: Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v6}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$100(Lcom/android/camera/component/AutoBacklightIntentSender;)I

    move-result v6

    if-nez v6, :cond_0

    .line 92
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    iget-object v7, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    sget-object v8, Lcom/android/camera/component/AutoBacklightIntentSender;->PATH_CAMERA_MINIMUM_BACKLIGHT_BRIGHTNESS:Ljava/lang/String;

    #calls: Lcom/android/camera/component/AutoBacklightIntentSender;->getMinimumBacklightValue(Ljava/lang/String;)I
    invoke-static {v7, v8}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$300(Lcom/android/camera/component/AutoBacklightIntentSender;Ljava/lang/String;)I

    move-result v7

    #setter for: Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v6, v7}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$102(Lcom/android/camera/component/AutoBacklightIntentSender;I)I

    .line 95
    :cond_0
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    #getter for: Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v6}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$100(Lcom/android/camera/component/AutoBacklightIntentSender;)I

    move-result v6

    if-nez v6, :cond_1

    .line 100
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    invoke-virtual {v6}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 102
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v6, "user_powersaver_enable"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 103
    .local v4, userEnabled:Z
    :goto_0
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$400(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Manual power saving mode is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    const-string v6, "/sys/class/power_supply/battery/capacity"

    invoke-static {v6}, Lcom/android/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 112
    .local v0, batteryValueInFile:Ljava/lang/Integer;
    if-eqz v0, :cond_5

    .line 114
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$600(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current battery capacity is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_3

    .line 116
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    sget v7, Lcom/android/camera/component/AutoBacklightIntentSender;->LOW_BATTERY_BRIGHTNESS_VALUE:I

    #setter for: Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v6, v7}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$102(Lcom/android/camera/component/AutoBacklightIntentSender;I)I

    .line 128
    .end local v0           #batteryValueInFile:Ljava/lang/Integer;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #userEnabled:Z
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$700(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Intent with brightness value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    #getter for: Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v8}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$100(Lcom/android/camera/component/AutoBacklightIntentSender;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v6, "entering.screen.brightness"

    iget-object v7, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    #getter for: Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v7}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$100(Lcom/android/camera/component/AutoBacklightIntentSender;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v6, "backlight.delay"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    iget-object v5, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    invoke-virtual {v5}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    iget-object v5, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    const-wide/16 v7, 0x7530

    invoke-virtual {v5, v6, v9, v7, v8}, Lcom/android/camera/component/AutoBacklightIntentSender;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    .line 137
    return-void

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_2
    move v4, v5

    .line 102
    goto/16 :goto_0

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$500(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "The settings user_powersaver_enable is not found, set userEnabled to false"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v4, 0x0

    .restart local v4       #userEnabled:Z
    goto/16 :goto_1

    .line 117
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0       #batteryValueInFile:Ljava/lang/Integer;
    :cond_3
    if-eqz v4, :cond_4

    .line 118
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    sget v7, Lcom/android/camera/component/AutoBacklightIntentSender;->LOW_BATTERY_BRIGHTNESS_VALUE:I

    #setter for: Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v6, v7}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$102(Lcom/android/camera/component/AutoBacklightIntentSender;I)I

    goto :goto_2

    .line 120
    :cond_4
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    sget v7, Lcom/android/camera/component/AutoBacklightIntentSender;->BASIC_BRIGHTNESS_VALUE:I

    #setter for: Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v6, v7}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$102(Lcom/android/camera/component/AutoBacklightIntentSender;I)I

    goto :goto_2

    .line 124
    :cond_5
    iget-object v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    sget v7, Lcom/android/camera/component/AutoBacklightIntentSender;->BASIC_BRIGHTNESS_VALUE:I

    #setter for: Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v6, v7}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$102(Lcom/android/camera/component/AutoBacklightIntentSender;I)I

    goto :goto_2
.end method
