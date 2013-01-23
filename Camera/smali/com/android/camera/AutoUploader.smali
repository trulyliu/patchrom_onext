.class public Lcom/android/camera/AutoUploader;
.super Ljava/lang/Object;
.source "AutoUploader.java"


# static fields
.field private static final AUTO_UPLOAD_ALBUM:Ljava/lang/String; = "AUTO_UPLOAD_ALBUM"

.field private static final AUTO_UPLOAD_COMPOMENT_NAME:Ljava/lang/String; = "AUTO_UPLOAD_COMPOMENT_NAME"

.field private static final TAG:Ljava/lang/String; = "AutoUploader"

.field private static mAutoUploadAccount_type:Ljava/lang/String;

.field private static mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

.field private static mAutoUploadAlbumId:Ljava/lang/String;

.field private static mAutoUploadAlbumName:Ljava/lang/String;

.field private static mAutoUploadAlbumPrivacy:Ljava/lang/String;

.field private static mAutoUploadComponentName:Landroid/content/ComponentName;

.field private static mAutoUploadFrequence:Ljava/lang/String;

.field private static mAutoUploadService:Ljava/lang/String;

.field private static mAutoUploadServiceLabel:Ljava/lang/String;

.field private static mAutoUploadServiceTitle:Ljava/lang/String;

.field private static mIsAutoUploadInited:Z

.field private static mService:Ljava/lang/String;


# instance fields
.field public mAutoUploadUri:Landroid/net/Uri;

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mHourOfDay:I

.field private mMinOfHour:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUploaded:Z

.field private m_DialogHandle:Lcom/android/camera/Handle;

.field protected final triggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/trigger/TriggerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string v0, "Off"

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mService:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/AutoUploader;->mIsAutoUploadInited:Z

    .line 52
    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 57
    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V
    .locals 2
    .parameter "activity"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 42
    iput-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 43
    iput-object v1, p0, Lcom/android/camera/AutoUploader;->mUIHandler:Landroid/os/Handler;

    .line 54
    iput v0, p0, Lcom/android/camera/AutoUploader;->mHourOfDay:I

    .line 55
    iput v0, p0, Lcom/android/camera/AutoUploader;->mMinOfHour:I

    .line 63
    iput-boolean v0, p0, Lcom/android/camera/AutoUploader;->mUploaded:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AutoUploader;->triggers:Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 77
    iput-object p2, p0, Lcom/android/camera/AutoUploader;->mUIHandler:Landroid/os/Handler;

    .line 78
    invoke-direct {p0}, Lcom/android/camera/AutoUploader;->setupEventHandlers()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AutoUploader;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/camera/AutoUploader;->mIsAutoUploadInited:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput-boolean p0, Lcom/android/camera/AutoUploader;->mIsAutoUploadInited:Z

    return p0
.end method

.method private setupEventHandlers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 529
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/AutoUploader$6;

    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/AutoUploader$6;-><init>(Lcom/android/camera/AutoUploader;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/AutoUploader$7;

    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/AutoUploader$7;-><init>(Lcom/android/camera/AutoUploader;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/AutoUploader$8;

    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/AutoUploader$8;-><init>(Lcom/android/camera/AutoUploader;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    return-void
.end method


# virtual methods
.method public ShowAutoUploadSetting()V
    .locals 5

    .prologue
    .line 103
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.MediaAutoUploadSetting"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    const-string v2, "immediately"

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 107
    :cond_1
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting UPLOAD_FREQUENCY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "UPLOAD_FREQUENCY"

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v3, "Off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    :cond_2
    const-string v2, "AUTO_UPLOAD"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string v2, ""

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 114
    const-string v2, "AutoUploader"

    const-string v3, "ShowAutoUploadSetting AUTO_UPLOAD:false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    const-string v2, "SERVICE_LABEL"

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting SERVICE_LABEL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_AUTO_UPLOAD_SETTING:Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v3}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_1
    return-void

    .line 117
    :cond_3
    const-string v2, "AUTO_UPLOAD"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const-string v2, "AutoUploader"

    const-string v3, "ShowAutoUploadSetting AUTO_UPLOAD:true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "ALBUM_NAME"

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting ALBUM_NAME:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, RE:Ljava/lang/RuntimeException;
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting RE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleAutoUploadSettingResult(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 375
    const-string v1, "AUTO_UPLOAD"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 376
    .local v0, enable:Z
    if-eqz v0, :cond_7

    .line 378
    const-string v1, "On"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 379
    const-string v1, "SERVICE_LABEL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 380
    const-string v1, "SERVICE_TITLE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 381
    const-string v1, "SERVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mService:Ljava/lang/String;

    .line 382
    const-string v1, "SERVICE_COMPONENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 383
    const-string v1, "service_account_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    .line 384
    const-string v1, "ALBUM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Album;

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 387
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v1, :cond_2

    .line 389
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 390
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    .line 392
    :cond_0
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 393
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    .line 395
    :cond_1
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 396
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    .line 398
    :cond_2
    const-string v1, "UPLOAD_FREQUENCY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 400
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    const-string v2, "immediately"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 423
    :cond_3
    :goto_0
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_SERVICE_LABEL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_SERVICE_TITLE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_FREQUENCE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_ALBUMID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_ALBUMNAME:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_ALBUMPRIVACY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 434
    const-string v1, "AutoUploader"

    const-string v2, "mAutoUploadService is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v1, "Off"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 438
    :cond_4
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 440
    const-string v1, "AutoUploader"

    const-string v2, "mAutoUploadServiceLabel is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 444
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/AutoUploader;->setAutoUploadToPreference()V

    .line 446
    return-void

    .line 404
    :cond_6
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    const-string v2, "wifi_only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 409
    :cond_7
    const-string v1, "Off"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 410
    const-string v1, "Off"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 411
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 412
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 413
    iput v2, p0, Lcom/android/camera/AutoUploader;->mHourOfDay:I

    .line 414
    iput v2, p0, Lcom/android/camera/AutoUploader;->mMinOfHour:I

    .line 415
    sput-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 416
    sput-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 417
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    .line 418
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    .line 419
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public loadAutoUploadSettings()V
    .locals 5

    .prologue
    .line 184
    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v2, :cond_1

    .line 186
    const-string v2, "AutoUploader"

    const-string v3, "loadAutoUploadSettings: mHTCCamera = null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    .line 191
    .local v0, settings:Lcom/android/camera/CameraSettings;
    if-nez v0, :cond_2

    .line 193
    const-string v2, "AutoUploader"

    const-string v3, "loadAutoUploadSettings: settings = null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    const-string v2, "pref_auto_upload"

    const-string v3, "null"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 199
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    const-string v2, "Off"

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 202
    :cond_3
    const-string v2, "pref_auto_upload_label"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 203
    const-string v2, "pref_auto_upload_service_title"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 204
    const-string v2, "pref_auto_upload_account_type"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    .line 206
    const-string v2, "pref_auto_upload_component_name"

    const-string v3, "null"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, str:Ljava/lang/String;
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 210
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 212
    :cond_4
    const-string v2, "pref_auto_upload_frequence"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 214
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-nez v2, :cond_5

    .line 215
    new-instance v2, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v2}, Lcom/htc/opensense/social/data/Album;-><init>()V

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 217
    :cond_5
    const-string v2, "pref_auto_upload_album_id"

    const-string v3, "null"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 221
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v3, "pref_auto_upload_album_id"

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense/social/data/Album;->setAlbumId(Ljava/lang/String;)V

    .line 222
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v3, "pref_auto_upload_album_name"

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense/social/data/Album;->setName(Ljava/lang/String;)V

    .line 223
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v3, "pref_auto_upload_album_privacy"

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense/social/data/Album;->setPrivacy(Ljava/lang/String;)V

    .line 232
    :goto_1
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 233
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadAutoUploadSettings, mAutoUploadService ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_6
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 236
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadAutoUploadSettings, mAutoUploadServiceLabel ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_7
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 239
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadAutoUploadSettings, mAutoUploadServiceTitle ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_8
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_9

    .line 242
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadAutoUploadSettings, mAutoUploadComponentName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_9
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 245
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadAutoUploadSettings, mAutoUploadAccount_type ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_2
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v2, :cond_0

    .line 251
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadAutoUploadSettings, mAutoUploadAlbum.getAlbumId() ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadAutoUploadSettings, mAutoUploadAlbum.getName() ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadAutoUploadSettings, mAutoUploadAlbum.getPrivacy ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :cond_a
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/opensense/social/data/Album;->setAlbumId(Ljava/lang/String;)V

    .line 228
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/opensense/social/data/Album;->setName(Ljava/lang/String;)V

    .line 229
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/opensense/social/data/Album;->setPrivacy(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 247
    :cond_b
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadAutoUploadSettings, mAutoUploadAccount_type ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 89
    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 90
    iput-object v0, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 91
    return-void
.end method

.method public setAutoUploadToPreference()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v1, :cond_0

    .line 139
    const-string v1, "AutoUploader"

    const-string v2, "setAutoUploadToPreference: mHTCCamera = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    .line 144
    .local v0, settings:Lcom/android/camera/CameraSettings;
    if-nez v0, :cond_1

    .line 146
    const-string v1, "AutoUploader"

    const-string v2, "setAutoUploadToPreference: settings = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    const-string v1, "pref_auto_upload_service_title"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 152
    const-string v1, "pref_auto_upload_frequence"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 154
    const-string v1, "pref_auto_upload"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 156
    const-string v1, "pref_auto_upload_label"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 158
    const-string v1, "pref_auto_upload_account_type"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 161
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    .line 162
    const-string v1, "pref_auto_upload_component_name"

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 168
    :goto_1
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-nez v1, :cond_3

    .line 170
    const-string v1, "pref_auto_upload_album_id"

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 171
    const-string v1, "pref_auto_upload_album_name"

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 172
    const-string v1, "pref_auto_upload_album_privacy"

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_2
    const-string v1, "pref_auto_upload_component_name"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    :cond_3
    const-string v1, "pref_auto_upload_album_id"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 177
    const-string v1, "pref_auto_upload_album_name"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 178
    const-string v1, "pref_auto_upload_album_privacy"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public setParent(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "actParent"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v0, "AutoUploader"

    const-string v1, "setParent HTCCamera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSaveDone()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 345
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    new-instance v1, Lcom/android/camera/AutoUploader$5;

    invoke-direct {v1, p0}, Lcom/android/camera/AutoUploader$5;-><init>(Lcom/android/camera/AutoUploader;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 367
    :cond_1
    return-void

    .line 345
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public showAutoUploadDialog()V
    .locals 7

    .prologue
    .line 264
    new-instance v4, Lcom/android/camera/AutoUploader$1;

    invoke-direct {v4, p0}, Lcom/android/camera/AutoUploader$1;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 273
    .local v4, positive_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/android/camera/AutoUploader$2;

    invoke-direct {v3, p0}, Lcom/android/camera/AutoUploader$2;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 282
    .local v3, negative_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/AutoUploader$3;

    invoke-direct {v2, p0}, Lcom/android/camera/AutoUploader$3;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 293
    .local v2, mCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v5, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v6, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v5, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a00b9

    invoke-virtual {v5, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0058

    invoke-virtual {v5, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x2040008

    invoke-virtual {v5, v6, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x2040007

    invoke-virtual {v5, v6, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 300
    .local v0, AutoUploadDialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 303
    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v5

    const-class v6, Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {v5, v6}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IRotateDialogManager;

    .line 304
    .local v1, dialogManager:Lcom/android/camera/IRotateDialogManager;
    invoke-virtual {v1, v0}, Lcom/android/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;)Lcom/android/camera/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/AutoUploader;->m_DialogHandle:Lcom/android/camera/Handle;

    .line 308
    return-void
.end method

.method public showOKDialog()V
    .locals 5

    .prologue
    .line 311
    new-instance v2, Lcom/android/camera/AutoUploader$4;

    invoke-direct {v2, p0}, Lcom/android/camera/AutoUploader$4;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 318
    .local v2, positive_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a00b9

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0059

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x2040009

    invoke-virtual {v3, v4, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 323
    .local v0, OKDialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 326
    iget-object v3, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v3

    const-class v4, Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IRotateDialogManager;

    .line 327
    .local v1, dialogManager:Lcom/android/camera/IRotateDialogManager;
    invoke-virtual {v1, v0}, Lcom/android/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/AutoUploader;->m_DialogHandle:Lcom/android/camera/Handle;

    .line 328
    return-void
.end method

.method public triggerAutoUpload()V
    .locals 8

    .prologue
    .line 456
    const-string v5, "AutoUploader"

    const-string v6, "triggerAutoUpload"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v6, "Off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v5, v6, :cond_0

    .line 465
    iget-object v6, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    monitor-enter v6

    .line 468
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 469
    monitor-exit v6

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 472
    .local v2, autoUploadUri:Landroid/net/Uri;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 474
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://media/external/video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 479
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 480
    .local v1, autoUploadService:Landroid/content/Intent;
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v4, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 484
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.htc.providers.uploads"

    const-string v7, "com.htc.providers.uploads.AutoUploadService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 490
    const-string v5, "frequency"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v5, "service_title"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v5, "upload_service_component"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 493
    const-string v5, "get_album"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 494
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 497
    if-eqz v3, :cond_2

    .line 498
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_STREAM:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_2
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_FREQUENCY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_SERVICE_TITLE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v5}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 504
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_GET_ALBUM albumId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v7}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_3
    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v5}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 507
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_GET_ALBUM name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v7}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_4
    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v5}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 510
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_GET_ALBUM privacy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v7}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5, v1}, Lcom/android/camera/HTCCamera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 516
    .local v0, SE:Ljava/lang/SecurityException;
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startService SE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    .end local v0           #SE:Ljava/lang/SecurityException;
    .end local v1           #autoUploadService:Landroid/content/Intent;
    .end local v2           #autoUploadUri:Landroid/net/Uri;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
