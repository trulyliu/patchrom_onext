.class public Lcom/android/providers/media/MediaProviderSettingsModule;
.super Ljava/lang/Object;
.source "MediaProviderSettingsModule.java"


# static fields
.field private static final KEY_APPLICATION_MEDIASCANNER:Ljava/lang/String; = "application_MediaScanner"

.field private static final KEY_DEFAULT_LOCALE:Ljava/lang/String; = "default_locale"

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final URI_CUSTOMIZATION:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettings:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/providers/media/MediaProviderSettingsModule;->mContext:Landroid/content/Context;

    .line 74
    iput-object v0, p0, Lcom/android/providers/media/MediaProviderSettingsModule;->mSettings:Landroid/os/Bundle;

    .line 19
    iput-object p1, p0, Lcom/android/providers/media/MediaProviderSettingsModule;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private static getBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 24
    .local v1, pa:Landroid/os/Parcel;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 25
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, bu:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-object v0
.end method

.method private getSetting()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/providers/media/MediaProviderSettingsModule;->mSettings:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/providers/media/MediaProviderSettingsModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/media/MediaProviderSettingsModule;->getSettings(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProviderSettingsModule;->mSettings:Landroid/os/Bundle;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProviderSettingsModule;->mSettings:Landroid/os/Bundle;

    return-object v0
.end method

.method private static getSettings(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1
    .parameter "cx"

    .prologue
    .line 44
    const-string v0, "application_MediaScanner"

    invoke-static {v0, p0}, Lcom/android/providers/media/MediaProviderSettingsModule;->trytoGetModule(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "bu"
    .parameter "key"
    .parameter "itemkey"

    .prologue
    const/4 v1, 0x0

    .line 34
    if-nez p0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-object v1

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, childbu:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static trytoGetModule(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "na"
    .parameter "cx"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 51
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 52
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 65
    :goto_0
    return-object v2

    .line 55
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 56
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 60
    :cond_1
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 61
    .local v9, valueIndx:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 63
    .local v8, data:[B
    invoke-static {v8}, Lcom/android/providers/media/MediaProviderSettingsModule;->getBundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 64
    .local v6, bu:Landroid/os/Bundle;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    .line 65
    goto :goto_0
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/media/MediaProviderSettingsModule;->getSetting()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default_locale"

    const-string v2, "locale"

    invoke-static {v0, v1, v2}, Lcom/android/providers/media/MediaProviderSettingsModule;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
