.class public Lcom/android/stocksettings/StockSettings;
.super Landroid/preference/PreferenceActivity;
.source "StockSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/StockSettings$UsbStateReceiver;
    }
.end annotation


# instance fields
.field private mHtcFastboot:Landroid/preference/CheckBoxPreference;

.field private mHtcGestures:Landroid/preference/CheckBoxPreference;

.field private final mDebug:Ljava/lang/Boolean;

.field private mHtcPowerSaver:Landroid/preference/CheckBoxPreference;

.field private mHtcWifiEnhancer:Landroid/preference/CheckBoxPreference;

.field private mHtcInternetPassThrough:Landroid/preference/CheckBoxPreference;

.field private mMassStorageActive:Z

.field private mUsbConnected:Z

.field mUsbStateReceiver:Lcom/android/stocksettings/StockSettings$UsbStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/StockSettings;->mDebug:Ljava/lang/Boolean;

    .line 205
    return-void
.end method

.method static synthetic access$002(Lcom/android/stocksettings/StockSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/stocksettings/StockSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/stocksettings/StockSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/stocksettings/StockSettings;->mMassStorageActive:Z

    return p1
.end method

.method private createNoticeInfoUrl()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x5f

    .line 127
    const-string v1, "file:///android_asset/html/%y%z/notice_info.html"

    .line 128
    .local v1, HELP_URL:Ljava/lang/String;
    const-string v0, "html/%y%z/notice_info.html"

    .line 130
    .local v0, HELP_PATH:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 131
    .local v5, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 133
    .local v2, am:Landroid/content/res/AssetManager;
    const-string v9, "%y"

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, path:Ljava/lang/String;
    const-string v9, "%z"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 135
    const/4 v8, 0x1

    .line 136
    .local v8, useCountry:Z
    const/4 v4, 0x0

    .line 138
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 142
    if-eqz v4, :cond_0

    .line 144
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 150
    :cond_0
    :goto_0
    const-string v9, "%y"

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, url:Ljava/lang/String;
    const-string v10, "%z"

    if-eqz v8, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 153
    return-object v7

    .line 139
    .end local v7           #url:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 140
    .local v3, ignored:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 142
    if-eqz v4, :cond_0

    .line 144
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 145
    :catch_1
    move-exception v9

    goto :goto_0

    .line 142
    .end local v3           #ignored:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_1

    .line 144
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 145
    :cond_1
    :goto_2
    throw v9

    .line 151
    .restart local v7       #url:Ljava/lang/String;
    :cond_2
    const-string v9, ""

    goto :goto_1

    .line 145
    .end local v7           #url:Ljava/lang/String;
    :catch_2
    move-exception v9

    goto :goto_0

    :catch_3
    move-exception v10

    goto :goto_2
.end method

.method private showNotice()V
    .locals 6

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/stocksettings/StockSettings;->createNoticeInfoUrl()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, url:Ljava/lang/String;
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, contentView:Landroid/webkit/WebView;
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 162
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040006

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 168
    .local v1, dialog:Landroid/app/Dialog;
    return-void
.end method

.method private updateState()V
    .locals 5

    .prologue

    invoke-direct {p0}, Lcom/android/stocksettings/StockSettings;->updateHtcPowerSaver()V

    invoke-direct {p0}, Lcom/android/stocksettings/StockSettings;->updateHtcWifiEnhancer()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v3, p0, Lcom/android/stocksettings/StockSettings;->mHtcGestures:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "htc_gestures_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHtcFastboot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_fastboot"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    return-void

    :cond_0
    move v0, v2

    .line 183
    goto :goto_0

    :cond_1
    move v1, v2

    .line 184
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StockSettings;->addPreferencesFromResource(I)V

    .line 67
    const-string v1, "htc_gestures"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/stocksettings/StockSettings;->mHtcGestures:Landroid/preference/CheckBoxPreference;


    .line 67
    const-string v1, "htc_power_saver"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/stocksettings/StockSettings;->mHtcPowerSaver:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v1, "htc_wifi_enhancer"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/stocksettings/StockSettings;->mHtcWifiEnhancer:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v1, "htc_fastboot"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/stocksettings/StockSettings;->mHtcFastboot:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v1, "htc_internet_pt"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/stocksettings/StockSettings;->mHtcInternetPassThrough:Landroid/preference/CheckBoxPreference;

    .line 70
    invoke-direct {p0}, Lcom/android/stocksettings/StockSettings;->updateState()V

    .line 71
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 178
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 174
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->finish()V

    .line 175
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue

    invoke-direct {p0, p2}, Lcom/android/stocksettings/StockSettings;->updateHtcPowerSaver(Landroid/preference/Preference;)V

    invoke-direct {p0, p2}, Lcom/android/stocksettings/StockSettings;->updateHtcWifiEnhancer(Landroid/preference/Preference;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mHtcGestures:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 92
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mHtcGestures:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_gestures_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mHtcInternetPassThrough:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mHtcInternetPassThrough:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    .local v0, selectResult:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pt_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings;->mHtcInternetPassThrough:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 112
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings;->mHtcInternetPassThrough:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.start_IPT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    invoke-direct {p0}, Lcom/android/stocksettings/StockSettings;->showNotice()V

    .line 123
    .end local v0           #selectResult:I
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_gestures_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mHtcFastboot:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mHtcFastboot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_fastboot"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_fastboot"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 106
    goto :goto_1

    .line 117
    .restart local v0       #selectResult:I
    :cond_6
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings;->mHtcInternetPassThrough:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.stop_IPT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 76
    new-instance v1, Lcom/android/stocksettings/StockSettings$UsbStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/StockSettings$UsbStateReceiver;-><init>(Lcom/android/stocksettings/StockSettings;)V

    iput-object v1, p0, Lcom/android/stocksettings/StockSettings;->mUsbStateReceiver:Lcom/android/stocksettings/StockSettings$UsbStateReceiver;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings;->mUsbStateReceiver:Lcom/android/stocksettings/StockSettings$UsbStateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/stocksettings/StockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings;->mUsbStateReceiver:Lcom/android/stocksettings/StockSettings$UsbStateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/stocksettings/StockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method updateInternetPTState()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 188
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/stocksettings/StockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 191
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-boolean v4, p0, Lcom/android/stocksettings/StockSettings;->mUsbConnected:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/stocksettings/StockSettings;->mMassStorageActive:Z

    if-nez v4, :cond_0

    move v1, v2

    .line 193
    .local v1, usbAvailable:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 194
    iget-object v4, p0, Lcom/android/stocksettings/StockSettings;->mHtcInternetPassThrough:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 195
    iget-object v4, p0, Lcom/android/stocksettings/StockSettings;->mHtcInternetPassThrough:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pt_enable"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    :goto_2
    return-void

    .end local v1           #usbAvailable:Z
    :cond_0
    move v1, v3

    .line 191
    goto :goto_0

    .restart local v1       #usbAvailable:Z
    :cond_1
    move v2, v3

    .line 195
    goto :goto_1

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mHtcInternetPassThrough:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 199
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mHtcInternetPassThrough:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pt_enable"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method


.method private isPowserSaverEnabled()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_powersaver_enable"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 321
    .local v0, user_powersaver_enable:I
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_powersaver_enable_bk"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 322
    .local v1, user_powersaver_enable_bk:I
    iget-object v4, p0, Lcom/android/stocksettings/StockSettings;->mDebug:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    const-string v4, "StockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "user_powersaver_enable = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 324
    const-string v6, " user_powersaver_enable_bk = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    if-ne v2, v0, :cond_1

    if-ne v2, v1, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method


.method private isWifiEnhancerEnabled()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_watchdog_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 311
    .local v1, wifi_watchdog_on:I
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_pwr_active_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 312
    .local v0, wifi_pwr_active_mode:I
    iget-object v4, p0, Lcom/android/stocksettings/StockSettings;->mDebug:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    const-string v4, "StockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wifi_watchdog_on = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 314
    const-string v6, " wifi_pwr_active_mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    if-ne v2, v0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private updateHtcPowerSaver()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHtcPowerSaver:Landroid/preference/CheckBoxPreference;

    .line 331
    .local v0, localCheckBoxPreference1:Landroid/preference/CheckBoxPreference;
    invoke-direct {p0}, Lcom/android/stocksettings/StockSettings;->isPowserSaverEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 332
    return-void
.end method

.method private updateHtcPowerSaver(Landroid/preference/Preference;)V
    .locals 4
    .parameter "paramPreference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 277
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHtcPowerSaver:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powersaver_auto_enable_ignore_first_callback"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHtcPowerSaver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_powersaver_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_powersaver_enable_bk"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "STATUS_POWER_SAVING_AUTO"

    const/16 v2, 0x1f42

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_powersaver_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_powersaver_enable_bk"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "STATUS_POWER_SAVING_AUTO"

    const/16 v2, 0x1f40

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateHtcWifiEnhancer()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHtcWifiEnhancer:Landroid/preference/CheckBoxPreference;

    .line 336
    .local v0, localCheckBoxPreference1:Landroid/preference/CheckBoxPreference;
    invoke-direct {p0}, Lcom/android/stocksettings/StockSettings;->isWifiEnhancerEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 337
    return-void
.end method

.method private updateHtcWifiEnhancer(Landroid/preference/Preference;)V
    .locals 3
    .parameter "paramPreference"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHtcWifiEnhancer:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHtcWifiEnhancer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_pwr_active_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_pwr_active_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method





