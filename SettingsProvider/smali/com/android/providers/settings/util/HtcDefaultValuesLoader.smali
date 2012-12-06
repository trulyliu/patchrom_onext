.class public Lcom/android/providers/settings/util/HtcDefaultValuesLoader;
.super Ljava/lang/Object;
.source "HtcDefaultValuesLoader.java"


# instance fields
.field mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    .line 31
    return-void
.end method

.method private getBooleanString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private getBooleanString(Z)Ljava/lang/String;
    .locals 1
    .parameter "booleanValue"

    .prologue
    .line 425
    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private getIntegerString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get_def_accelerometer_rotation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    const v0, 0x7f040006

    .line 80
    .local v0, resId:I
    sget-boolean v1, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isC0001:Z

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    :cond_0
    const v1, 0x7f040006

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public get_def_auto_time()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    sget-boolean v1, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0003:Z

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "0"

    .line 49
    :goto_0
    return-object v1

    .line 48
    :cond_0
    const v0, 0x7f040004

    .line 49
    .local v0, resId:I
    const v1, 0x7f040004

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public get_def_auto_time_zone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    sget-boolean v1, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0003:Z

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "0"

    .line 67
    :goto_0
    return-object v1

    .line 66
    :cond_0
    const v0, 0x7f040005

    .line 67
    .local v0, resId:I
    const v1, 0x7f040005

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public get_def_charm_indicator_supported()Ljava/lang/String;
    .locals 2

    .prologue
    .line 599
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 601
    :cond_0
    const-string v0, "1"

    .line 603
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public get_def_charm_message_notification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_charm_message_received_notification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_charm_phone_notification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_charm_voice_mail_notification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_compass_warning()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_custom_orientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "-1"

    return-object v0
.end method

.method public get_def_data_roaming_allowed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 479
    const v0, 0x7f060017

    .line 482
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_data_roaming_guard()Ljava/lang/String;
    .locals 5

    .prologue
    .line 316
    const-string v1, "0"

    .line 317
    .local v1, DATA_ROAMING_GUARD_DEFAULT:Ljava/lang/String;
    const-string v0, "1"

    .line 318
    .local v0, DATA_ROAMING_GUARD_ALWAYS_ASK:Ljava/lang/String;
    const-string v2, "2"

    .line 322
    .local v2, DATA_ROAMING_GUARD_NEVER_ASK:Ljava/lang/String;
    sget-boolean v3, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isH0003:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/providers/settings/flag/HtcLanguageFlags;->isPLS:Z

    if-eqz v3, :cond_0

    .line 323
    const-string v3, "1"

    .line 330
    :goto_0
    return-object v3

    .line 324
    :cond_0
    sget-object v3, Lcom/android/providers/settings/flag/HtcSkuFlags;->CURRENT_CID:Ljava/lang/String;

    const-string v4, "UTSI_040"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    const-string v3, "2"

    goto :goto_0

    .line 330
    :cond_1
    const-string v3, "0"

    goto :goto_0
.end method

.method public get_def_data_roaming_guard_allowed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 515
    const v0, 0x7f060019

    .line 516
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f060019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_emergency_tone()Ljava/lang/String;
    .locals 5

    .prologue
    .line 171
    const-string v1, "0"

    .line 172
    .local v1, EMERGENCY_TONE_OFF:Ljava/lang/String;
    const-string v0, "1"

    .line 173
    .local v0, EMERGENCY_TONE_ALERT:Ljava/lang/String;
    const-string v2, "2"

    .line 176
    .local v2, EMERGENCY_TONE_VIBRATE:Ljava/lang/String;
    const-string v3, "1"

    .line 178
    .local v3, toggleOfEMC_Tone:Ljava/lang/String;
    sget-boolean v4, Lcom/android/providers/settings/flag/HtcProjectFlags;->isV0001:Z

    if-eqz v4, :cond_0

    .line 179
    const-string v3, "0"

    .line 182
    :cond_0
    return-object v3
.end method

.method public get_def_htc_3d_home_screen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, defaultValue:Z
    invoke-static {}, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info;->getDeviceType()Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    move-result-object v1

    sget-object v2, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    if-ne v1, v2, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 198
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_animation_enabled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_htc_application_automatic_startup()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x1

    .line 131
    .local v0, DEFAULT_VALUE:Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_application_notification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    const-string v0, "10"

    .line 143
    .local v0, DEFAULT_VALUE:Ljava/lang/String;
    const-string v1, "10"

    return-object v1
.end method

.method public get_def_htc_fastboot_allowed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    const/4 v0, 0x1

    .line 402
    .local v0, defaultValue:Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_gestures_enabled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_htc_locate_allowed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    const v0, 0x7f04002c

    .line 374
    .local v0, resId:I
    const v1, 0x7f04002c

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_message_notification_preview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_htc_music_bypass_enabled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_htc_new_message_notification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    const/4 v0, 0x1

    .line 388
    .local v0, defaultValue:Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_phone_notification_preview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_htc_show_all_quick_tips()Z
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x1

    return v0
.end method

.method public get_def_htc_transition_animation_scale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    const-string v0, "1.0"

    return-object v0
.end method

.method public get_def_htc_window_animation_scale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    const-string v0, "1.0"

    return-object v0
.end method

.method public get_def_htc_wireless_sleep_end_time()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    const/16 v0, 0x168

    .line 234
    .local v0, defaultValue:I
    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_wireless_sleep_mode_enabled()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x1

    .line 210
    .local v0, defaultValue:Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_wireless_sleep_start_time()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    const/16 v0, 0x564

    .line 222
    .local v0, defaultValue:I
    const/16 v1, 0x564

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htcspeak_default_lang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    const-string v0, "en_US"

    return-object v0
.end method

.method public get_def_inactivity_time()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    const-string v0, "0"

    .line 119
    .local v0, DEFAULT_VALUE:Ljava/lang/String;
    const-string v1, "0"

    return-object v1
.end method

.method public get_def_install_non_market_apps()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string v0, "0"

    return-object v0
.end method

.method public get_def_location_providers_allowed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0005:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0005:Z

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    const-string v0, "gps"

    .line 361
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public get_def_power_save_3G()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, powerSave3g:Z
    sget-boolean v1, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0002:Z

    if-eqz v1, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 158
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_0
    return-object v1

    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public get_def_roaming_sound_on()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0003:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0006:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0007:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0002:Z

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    const-string v0, "0"

    .line 276
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method public get_def_screen_off_timeout()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    const/high16 v0, 0x7f05

    .line 107
    .local v0, resId:I
    const/high16 v1, 0x7f05

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getIntegerString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_sms_roaming_guard_allowed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 532
    const v0, 0x7f06001a

    .line 533
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_voice_roaming_allowed()Ljava/lang/String;
    .locals 4

    .prologue
    .line 454
    const v0, 0x7f060015

    .line 455
    .local v0, resId:I
    const v1, 0x7f060016

    .line 459
    .local v1, resId_sp:I
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isE0002:Z

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f060016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 462
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f060015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public get_def_voice_roaming_guard_allowed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 498
    const v0, 0x7f060018

    .line 499
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
