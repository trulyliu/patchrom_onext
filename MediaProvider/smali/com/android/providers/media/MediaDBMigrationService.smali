.class public Lcom/android/providers/media/MediaDBMigrationService;
.super Landroid/app/Service;
.source "MediaDBMigrationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;
    }
.end annotation


# static fields
.field protected static final ID_UPDATE_REQUEST:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_REQUEST"

.field protected static final ID_UPDATE_RESPONSE:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_RESPONSE"

#the value of this static final field might be set in the static constructor
.field private static final LOGD:Z = false

.field protected static final MEDIA_CATEGORY:Ljava/lang/String; = "category"

.field protected static final MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field protected static final MEDIA_TYPE_AUDIO:I = 0x2

.field protected static final MEDIA_TYPE_IMAGE:I = 0x1

.field protected static final MEDIA_TYPE_NONE:I = 0x0

.field protected static final MEDIA_TYPE_PLAYLIST:I = 0x4

.field protected static final MEDIA_TYPE_VIDEO:I = 0x3

.field protected static final MEDIA_URIS_REQ:Ljava/lang/String; = "media_ids_req"

.field protected static final MEDIA_URIS_RES:Ljava/lang/String; = "media_ids_res"

.field private static final TAG:Ljava/lang/String; = "MediaIntentService"

.field protected static final UPGRADE_COMPLETE_INTENT:Ljava/lang/String; = "com.htc.providers.media.DB_UPGRADE_COMPLETE"

.field private static final tableName:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/providers/media/MediaDBMigrationService;->LOGD:Z

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "images_old"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "audio_meta_old"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "video_old"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaDBMigrationService;->tableName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/providers/media/MediaDBMigrationService;->LOGD:Z

    return v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/providers/media/MediaDBMigrationService;->tableName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 67
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDBMigrationService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaDBMigrationService;->mContext:Landroid/content/Context;

    .line 68
    sget-boolean v0, Lcom/android/providers/media/MediaDBMigrationService;->LOGD:Z

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "MediaIntentService"

    const-string v1, "media db migration service create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, action:Ljava/lang/String;
    sget-boolean v2, Lcom/android/providers/media/MediaDBMigrationService;->LOGD:Z

    if-eqz v2, :cond_0

    .line 78
    const-string v2, "MediaIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media DB migration service on start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    const-string v2, "com.htc.providers.media.ID_UPDATE_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    new-instance v1, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;

    iget-object v2, p0, Lcom/android/providers/media/MediaDBMigrationService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;-><init>(Lcom/android/providers/media/MediaDBMigrationService;Landroid/content/Context;Landroid/content/Intent;)V

    .line 82
    .local v1, mIdMigerationThread:Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;
    invoke-virtual {v1}, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->start()V

    .line 86
    .end local v1           #mIdMigerationThread:Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;
    :cond_1
    const/4 v2, 0x3

    return v2
.end method
