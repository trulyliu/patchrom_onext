.class public Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;
.super Lcom/scalado/caps/Decoder;
.source "LocalTimeWarpDecoder.java"


# instance fields
.field private mLocalTimewarp:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 27
    invoke-static {}, Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;->nativeClassInit()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/scalado/caps/localtimewarp/LocalTimeWarp;)V
    .locals 1
    .parameter "localTimeWarp"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;->mLocalTimewarp:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 19
    iget-object v0, p0, Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;->mLocalTimewarp:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-direct {p0, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;->nativeCreate(Lcom/scalado/caps/localtimewarp/LocalTimeWarp;)V

    .line 20
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/caps/localtimewarp/LocalTimeWarp;)V
.end method
