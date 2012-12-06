.class public Lcom/htc/music/online/sinamusic/SinaAidl;
.super Ljava/lang/Object;
.source "SinaAidl.java"


# static fields
.field private static final WAIT_DURATION:I = 0x64

.field private static final WAIT_TIMES:I = 0x1e

.field private static logger:Lcom/htc/music/online/sinamusic/MyLogger;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/htc/music/online/sinamusic/SinaAidl;


# instance fields
.field private lock:Ljava/lang/Object;

.field private mSocialServiceManager:Lcom/htc/opensense/social/SocialServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/online/sinamusic/SinaAidl;->mInstance:Lcom/htc/music/online/sinamusic/SinaAidl;

    .line 21
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "cxt"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SinaAidl;->lock:Ljava/lang/Object;

    .line 27
    sput-object p1, Lcom/htc/music/online/sinamusic/SinaAidl;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic access$000()Lcom/htc/music/online/sinamusic/MyLogger;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/online/sinamusic/SinaAidl;Lcom/htc/opensense/social/SocialServiceManager;)Lcom/htc/opensense/social/SocialServiceManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/SinaAidl;->mSocialServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/online/sinamusic/SinaAidl;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SinaAidl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized bindService()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 70
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/htc/music/online/sinamusic/SinaAidl;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.friendstream.sinaweiboplugin"

    invoke-static {v3, v4}, Lcom/htc/music/online/sinamusic/InterfaceUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/music/online/sinamusic/SinaAidl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/music/online/sinamusic/InterfaceUtil;->getGoogleAccount(Landroid/content/Context;)Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 75
    :try_start_1
    sget-object v3, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v4, "---start-----connect----"

    invoke-virtual {v3, v4}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 76
    sget-object v3, Lcom/htc/music/online/sinamusic/SinaAidl;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.friendstream.sinaweiboplugin"

    invoke-static {v3, v4}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    sget-object v3, Lcom/htc/music/online/sinamusic/SinaAidl;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.friendstream.sinaweiboplugin"

    const-string v5, "SupportGallery"

    new-instance v6, Lcom/htc/music/online/sinamusic/SinaAidl$1;

    invoke-direct {v6, p0}, Lcom/htc/music/online/sinamusic/SinaAidl$1;-><init>(Lcom/htc/music/online/sinamusic/SinaAidl;)V

    invoke-static {v3, v4, v5, v6}, Lcom/htc/opensense/social/SocialServiceManager;->connectTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;)Z

    move-result v1

    .line 96
    .local v1, flag:Z
    sget-object v3, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectTo server result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    .end local v1           #flag:Z
    :goto_0
    monitor-exit p0

    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    invoke-virtual {v3, v0}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Exception;)V

    move v1, v2

    .line 102
    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    sget-object v3, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v4, " can not connect to socialservice!!!!!"

    invoke-virtual {v3, v4}, Lcom/htc/music/online/sinamusic/MyLogger;->w(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 108
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private checkManagerIsNull()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 118
    sget-object v2, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "manager--->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/online/sinamusic/SinaAidl;->mSocialServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/online/sinamusic/SinaAidl;->getSocialServiceManager()Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/online/sinamusic/SinaAidl;->mSocialServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-direct {p0}, Lcom/htc/music/online/sinamusic/SinaAidl;->bindService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v3, p0, Lcom/htc/music/online/sinamusic/SinaAidl;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 131
    :try_start_1
    sget-object v2, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v4, "before wait..."

    invoke-virtual {v2, v4}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 132
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/SinaAidl;->lock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 133
    sget-object v2, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v4, "after wait..."

    invoke-virtual {v2, v4}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 135
    :catch_1
    move-exception v1

    .line 137
    .local v1, e2:Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v2, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    invoke-virtual {v2, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/SinaAidl;
    .locals 2
    .parameter "cxt"

    .prologue
    .line 37
    sget-object v0, Lcom/htc/music/online/sinamusic/SinaAidl;->mInstance:Lcom/htc/music/online/sinamusic/SinaAidl;

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v1, "Aidi instance is null, Next step new SinaAidl"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 40
    new-instance v0, Lcom/htc/music/online/sinamusic/SinaAidl;

    invoke-direct {v0, p0}, Lcom/htc/music/online/sinamusic/SinaAidl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/music/online/sinamusic/SinaAidl;->mInstance:Lcom/htc/music/online/sinamusic/SinaAidl;

    .line 46
    :goto_0
    sget-object v0, Lcom/htc/music/online/sinamusic/SinaAidl;->mInstance:Lcom/htc/music/online/sinamusic/SinaAidl;

    return-object v0

    .line 44
    :cond_0
    sput-object p0, Lcom/htc/music/online/sinamusic/SinaAidl;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getSocialServiceManager()Lcom/htc/opensense/social/SocialServiceManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SinaAidl;->mSocialServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->SERVICE_NOT_AVAILABLE:Lcom/htc/opensense/social/ErrorCode;

    const-string v2, "service object is null"

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SinaAidl;->mSocialServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    return-object v0
.end method


# virtual methods
.method public getLoginUser()Lcom/htc/opensense/social/PersonOp;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/htc/music/online/sinamusic/SinaAidl;->checkManagerIsNull()V

    .line 152
    invoke-direct {p0}, Lcom/htc/music/online/sinamusic/SinaAidl;->getSocialServiceManager()Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v1

    sget-object v2, Lcom/htc/music/online/sinamusic/SinaAidl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/music/online/sinamusic/InterfaceUtil;->getGoogleAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/social/SocialServiceManager;->getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/social/PersonOp;

    move-result-object v0

    .line 155
    .local v0, mPersonOp:Lcom/htc/opensense/social/PersonOp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    sget-object v1, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v2, "plugin not login"

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 171
    :goto_0
    return-object v0

    .line 161
    :cond_1
    sget-object v1, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Person;->getFullname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 163
    sget-object v1, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user_name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Profile;->getUser_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 164
    sget-object v1, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display_name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 165
    sget-object v1, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 166
    sget-object v1, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profile_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Profile;->getProfile_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 167
    sget-object v1, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xtoken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    const-string v4, "xtoken"

    invoke-virtual {v3, v4}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 168
    sget-object v1, Lcom/htc/music/online/sinamusic/SinaAidl;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gtoken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    const-string v4, "gtoken"

    invoke-virtual {v3, v4}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
