.class public Lcom/android/camera/sina/GifGenerator;
.super Ljava/lang/Object;
.source "GifGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/sina/GifGenerator$GifGenerator_State;
    }
.end annotation


# static fields
.field public static final MAX_GIF_DURATION:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "GifGenerator"

.field public static lastGenerateGIfUri:Landroid/net/Uri;

.field private static sGifGenerator:Lcom/android/camera/sina/GifGenerator;

.field private static sHTCCamera:Lcom/android/camera/HTCCamera;

.field public static slastGifMediaInfo:Lcom/android/camera/MediaInfo;


# instance fields
.field public final isGifModeSceneReady:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isShareKeyLongPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCurState:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

.field private final mPropertyOwnerKey:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/android/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    .line 19
    sput-object v0, Lcom/android/camera/sina/GifGenerator;->sGifGenerator:Lcom/android/camera/sina/GifGenerator;

    .line 21
    sput-object v0, Lcom/android/camera/sina/GifGenerator;->sHTCCamera:Lcom/android/camera/HTCCamera;

    .line 22
    sput-object v0, Lcom/android/camera/sina/GifGenerator;->slastGifMediaInfo:Lcom/android/camera/MediaInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->Undo:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    iput-object v0, p0, Lcom/android/camera/sina/GifGenerator;->mCurState:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    .line 29
    const-string v0, "GifGenerator.IsShareKeyLongPressed"

    iget-object v1, p0, Lcom/android/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/sina/GifGenerator;->isShareKeyLongPressed:Lcom/android/camera/property/Property;

    .line 30
    const-string v0, "GifGenerator.IsGifModeSceneReady"

    iget-object v1, p0, Lcom/android/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/sina/GifGenerator;->isGifModeSceneReady:Lcom/android/camera/property/Property;

    .line 31
    return-void
.end method

.method public static getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/GifGenerator;
    .locals 2
    .parameter "cameraActitvity"

    .prologue
    .line 34
    sget-object v0, Lcom/android/camera/sina/GifGenerator;->sGifGenerator:Lcom/android/camera/sina/GifGenerator;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/android/camera/sina/GifGenerator;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/android/camera/sina/GifGenerator;->sGifGenerator:Lcom/android/camera/sina/GifGenerator;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/camera/sina/GifGenerator;

    invoke-direct {v0}, Lcom/android/camera/sina/GifGenerator;-><init>()V

    sput-object v0, Lcom/android/camera/sina/GifGenerator;->sGifGenerator:Lcom/android/camera/sina/GifGenerator;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sput-object p0, Lcom/android/camera/sina/GifGenerator;->sHTCCamera:Lcom/android/camera/HTCCamera;

    .line 42
    sget-object v0, Lcom/android/camera/sina/GifGenerator;->sGifGenerator:Lcom/android/camera/sina/GifGenerator;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getState()Lcom/android/camera/sina/GifGenerator$GifGenerator_State;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/sina/GifGenerator;->mCurState:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    return-object v0
.end method

.method public notifyGifGenerateEnd(Landroid/net/Uri;)V
    .locals 5
    .parameter "gifUri"

    .prologue
    .line 79
    sput-object p1, Lcom/android/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    .line 80
    new-instance v0, Lcom/android/camera/MediaInfo;

    sget-object v1, Lcom/android/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    new-instance v2, Lcom/android/camera/io/Path;

    sget-object v3, Lcom/android/camera/sina/GifGenerator;->sHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/camera/sina/AlbumGifStarter;->getAbsoluteImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/io/Path;-><init>(Ljava/lang/String;)V

    const-string v3, "image/gif"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/sina/GifGenerator;->slastGifMediaInfo:Lcom/android/camera/MediaInfo;

    .line 82
    sget-object v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->Undo:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    invoke-virtual {p0, v0}, Lcom/android/camera/sina/GifGenerator;->setState(Lcom/android/camera/sina/GifGenerator$GifGenerator_State;)V

    .line 83
    sget-object v0, Lcom/android/camera/sina/GifGenerator;->sHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/sina/SinaWeiboStarter;->getInst(Landroid/content/Context;)Lcom/android/camera/sina/SinaWeiboStarter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/sina/SinaWeiboStarter;->getTrigger()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/android/camera/sina/GifGenerator;->sHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableActionScreen()V

    .line 85
    sget-object v0, Lcom/android/camera/sina/GifGenerator;->sHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/sina/AlbumGifStarter;->getInst(Lcom/android/camera/HTCCamera;)Lcom/android/camera/sina/AlbumGifStarter;

    move-result-object v0

    sget-object v1, Lcom/android/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/sina/AlbumGifStarter;->start(Landroid/net/Uri;)V

    .line 87
    :cond_0
    return-void
.end method

.method public notifyGifModeEnter()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/sina/GifGenerator;->isGifModeSceneReady:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public notifySenseChange()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/sina/GifGenerator;->isShareKeyLongPressed:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/sina/GifGenerator;->sGifGenerator:Lcom/android/camera/sina/GifGenerator;

    .line 48
    return-void
.end method

.method public setState(Lcom/android/camera/sina/GifGenerator$GifGenerator_State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/camera/sina/GifGenerator;->mCurState:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    .line 75
    return-void
.end method

.method public startPhoto()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "GifGenerator"

    const-string v1, "SinaWeiboStarter startPhoto"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->Photoing:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    invoke-virtual {p0, v0}, Lcom/android/camera/sina/GifGenerator;->setState(Lcom/android/camera/sina/GifGenerator$GifGenerator_State;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/sina/GifGenerator;->isShareKeyLongPressed:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public stopPhoto()V
    .locals 3

    .prologue
    .line 58
    const-string v0, "GifGenerator"

    const-string v1, "SinaWeiboStarter stopPhoto"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/sina/GifGenerator;->isGifModeSceneReady:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->GifGenerating:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    invoke-virtual {p0, v0}, Lcom/android/camera/sina/GifGenerator;->setState(Lcom/android/camera/sina/GifGenerator$GifGenerator_State;)V

    .line 66
    const-string v0, "GifGenerator"

    const-string v1, "SinaWeiboStarter generating gif"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
