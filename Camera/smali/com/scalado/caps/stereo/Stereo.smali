.class public Lcom/scalado/caps/stereo/Stereo;
.super Lcom/scalado/jni/JniPeer;
.source "Stereo.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 66
    invoke-static {}, Lcom/scalado/caps/stereo/Stereo;->nativeClassInit()V

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 17
    invoke-direct {p0}, Lcom/scalado/caps/stereo/Stereo;->nativeCreate()V

    .line 18
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate()V
.end method

.method private native nativeFinalizeJps(Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeSetLeftEyeSession(Lcom/scalado/caps/Session;)V
.end method

.method private native nativeSetRightEyeSession(Lcom/scalado/caps/Session;)V
.end method


# virtual methods
.method public finalizeJps(Lcom/scalado/stream/Stream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/stereo/Stereo;->nativeFinalizeJps(Lcom/scalado/stream/Stream;)V

    .line 55
    return-void
.end method

.method public setLeftEyeSession(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/stereo/Stereo;->nativeSetLeftEyeSession(Lcom/scalado/caps/Session;)V

    .line 31
    return-void
.end method

.method public setRightEyeSession(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/stereo/Stereo;->nativeSetRightEyeSession(Lcom/scalado/caps/Session;)V

    .line 43
    return-void
.end method
