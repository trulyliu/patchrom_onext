.class public Lcom/android/camera/sina/SinaWeiboStarter;
.super Ljava/lang/Object;
.source "SinaWeiboStarter.java"


# static fields
.field private static final START_CLASS_NAME:Ljava/lang/String; = "com.sina.mfweibo.EditActivity"

.field private static final START_PACKAGE_NAME:Ljava/lang/String; = "com.sina.mfweibo"

.field private static final TAG:Ljava/lang/String; = "SinaWeiboStarter"

.field private static sContext:Landroid/content/Context;

.field private static sWeiboStarter:Lcom/android/camera/sina/SinaWeiboStarter;


# instance fields
.field private mTrigger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/sina/SinaWeiboStarter;->sWeiboStarter:Lcom/android/camera/sina/SinaWeiboStarter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/sina/SinaWeiboStarter;->mTrigger:Z

    .line 21
    return-void
.end method

.method public static getInst(Landroid/content/Context;)Lcom/android/camera/sina/SinaWeiboStarter;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 24
    sget-object v0, Lcom/android/camera/sina/SinaWeiboStarter;->sWeiboStarter:Lcom/android/camera/sina/SinaWeiboStarter;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/android/camera/sina/SinaWeiboStarter;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/android/camera/sina/SinaWeiboStarter;->sWeiboStarter:Lcom/android/camera/sina/SinaWeiboStarter;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/camera/sina/SinaWeiboStarter;

    invoke-direct {v0}, Lcom/android/camera/sina/SinaWeiboStarter;-><init>()V

    sput-object v0, Lcom/android/camera/sina/SinaWeiboStarter;->sWeiboStarter:Lcom/android/camera/sina/SinaWeiboStarter;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sput-object p0, Lcom/android/camera/sina/SinaWeiboStarter;->sContext:Landroid/content/Context;

    .line 32
    sget-object v0, Lcom/android/camera/sina/SinaWeiboStarter;->sWeiboStarter:Lcom/android/camera/sina/SinaWeiboStarter;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getTrigger()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/camera/sina/SinaWeiboStarter;->mTrigger:Z

    return v0
.end method

.method public setTrigger(Z)V
    .locals 0
    .parameter "trigger"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/camera/sina/SinaWeiboStarter;->mTrigger:Z

    .line 63
    return-void
.end method

.method public start(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 37
    :try_start_0
    sget-object v5, Lcom/android/camera/sina/SinaWeiboStarter;->sContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/camera/sina/AlbumGifStarter;->getAbsoluteImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, filePath:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.sina.mfweibo"

    const-string v6, "com.sina.mfweibo.EditActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.STREAM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    const-string v5, "image/*"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 46
    sget-object v5, Lcom/android/camera/sina/SinaWeiboStarter;->sContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 47
    sget-object v5, Lcom/android/camera/sina/SinaWeiboStarter;->sContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    const-string v5, "SinaWeiboStarter"

    const-string v6, "SinaWeiboStarter start()"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v4, 0x1

    .line 57
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return v4

    .line 51
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v2       #filePath:Ljava/lang/String;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_0
    const-string v5, "SinaWeiboStarter"

    const-string v6, "SinaWeiboStarter start() sContext == null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 56
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "SinaWeiboStarter"

    const-string v6, "SinaWeiboStarter start() with exception: "

    invoke-static {v5, v6, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
