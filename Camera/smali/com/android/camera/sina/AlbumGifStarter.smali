.class public Lcom/android/camera/sina/AlbumGifStarter;
.super Ljava/lang/Object;
.source "AlbumGifStarter.java"


# static fields
.field private static final ALBUM_EXTRA_PATH:Ljava/lang/String; = "path"

.field public static final ALBUM_REQUEST_CODE:I = 0x64

.field private static final START_CLASS_NAME:Ljava/lang/String; = "com.htc.album.SinaCollage.SinaGifPlayer"

.field private static final START_PACKAGE_NAME:Ljava/lang/String; = "com.htc.album"

.field private static final TAG:Ljava/lang/String; = "AlbumGifStarter"

.field private static sAlbumStarter:Lcom/android/camera/sina/AlbumGifStarter;

.field private static sHTCCamera:Lcom/android/camera/HTCCamera;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/android/camera/sina/AlbumGifStarter;->sAlbumStarter:Lcom/android/camera/sina/AlbumGifStarter;

    .line 21
    sput-object v0, Lcom/android/camera/sina/AlbumGifStarter;->sHTCCamera:Lcom/android/camera/HTCCamera;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getAbsoluteImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "ctx"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 63
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 64
    .local v2, proj:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 66
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 67
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 68
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 70
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .end local v6           #column_index:I
    :cond_0
    return-object v3
.end method

.method public static getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/AlbumGifStarter;
    .locals 2
    .parameter "cameraActitvity"

    .prologue
    .line 28
    sget-object v0, Lcom/android/camera/sina/AlbumGifStarter;->sAlbumStarter:Lcom/android/camera/sina/AlbumGifStarter;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/android/camera/sina/AlbumGifStarter;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/android/camera/sina/AlbumGifStarter;->sAlbumStarter:Lcom/android/camera/sina/AlbumGifStarter;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/camera/sina/AlbumGifStarter;

    invoke-direct {v0}, Lcom/android/camera/sina/AlbumGifStarter;-><init>()V

    sput-object v0, Lcom/android/camera/sina/AlbumGifStarter;->sAlbumStarter:Lcom/android/camera/sina/AlbumGifStarter;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sput-object p0, Lcom/android/camera/sina/AlbumGifStarter;->sHTCCamera:Lcom/android/camera/HTCCamera;

    .line 36
    sget-object v0, Lcom/android/camera/sina/AlbumGifStarter;->sAlbumStarter:Lcom/android/camera/sina/AlbumGifStarter;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleOnActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 77
    const-string v0, "AlbumGifStarter"

    const-string v1, "AlbumGifStarter handleOnActivityResult()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 79
    const-string v0, "AlbumGifStarter"

    const-string v1, "AlbumGifStarter handleOnActivityResult() requestCode = ALBUM_REQUEST_CODE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/android/camera/sina/AlbumGifStarter;->sHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/sina/SinaWeiboStarter;->getInst(Landroid/content/Context;)Lcom/android/camera/sina/SinaWeiboStarter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/sina/SinaWeiboStarter;->getTrigger()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "AlbumGifStarter"

    const-string v1, "AlbumGifStarter handleOnActivityResult() getTrigger()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/android/camera/sina/AlbumGifStarter;->sHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/sina/SinaWeiboStarter;->getInst(Landroid/content/Context;)Lcom/android/camera/sina/SinaWeiboStarter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/sina/SinaWeiboStarter;->setTrigger(Z)V

    .line 83
    sget-object v0, Lcom/android/camera/sina/AlbumGifStarter;->sHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableActionScreen()V

    .line 85
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 86
    const-string v0, "AlbumGifStarter"

    const-string v1, "AlbumGifStarter handleOnActivityResult() resultCode = Activity.RESULT_OK"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/android/camera/sina/AlbumGifStarter;->sHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/sina/SinaWeiboStarter;->getInst(Landroid/content/Context;)Lcom/android/camera/sina/SinaWeiboStarter;

    move-result-object v0

    sget-object v1, Lcom/android/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/sina/SinaWeiboStarter;->start(Landroid/net/Uri;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public start(Landroid/net/Uri;)V
    .locals 5
    .parameter "uriGif"

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.SinaCollage.SinaGifPlayer"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    sget-object v3, Lcom/android/camera/sina/AlbumGifStarter;->sHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v3, p1}, Lcom/android/camera/sina/AlbumGifStarter;->getAbsoluteImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, path:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 45
    const-string v3, "AlbumGifStarter"

    const-string v4, "AlbumGifStarter start() getAbsoluteImagePathFromUri() return null, cancel start album"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #path:Ljava/lang/String;
    :goto_0
    return-void

    .line 48
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #path:Ljava/lang/String;
    :cond_0
    const-string v3, "path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    sget-object v3, Lcom/android/camera/sina/AlbumGifStarter;->sHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v3, :cond_1

    .line 51
    sget-object v3, Lcom/android/camera/sina/AlbumGifStarter;->sHTCCamera:Lcom/android/camera/HTCCamera;

    const/16 v4, 0x64

    invoke-virtual {v3, v1, v4}, Lcom/android/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    const-string v3, "AlbumGifStarter"

    const-string v4, "AlbumGifStarter start()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 58
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "AlbumGifStarter"

    const-string v4, "AlbumGifStarter start() with exception: "

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #path:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "AlbumGifStarter"

    const-string v4, "AlbumGifStarter start() sContext == null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
