.class public Lcom/scalado/caps/codec/decoder/ImageDecoder;
.super Lcom/scalado/caps/Decoder;
.source "ImageDecoder.java"


# instance fields
.field private mImage:Lcom/scalado/base/Image;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 48
    invoke-static {}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->nativeClassInit()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Image;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/codec/decoder/ImageDecoder;->mImage:Lcom/scalado/base/Image;

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Image is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->nativeCreate(Lcom/scalado/base/Image;)V

    .line 29
    iput-object p1, p0, Lcom/scalado/caps/codec/decoder/ImageDecoder;->mImage:Lcom/scalado/base/Image;

    .line 30
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/base/Image;)V
.end method


# virtual methods
.method public getImage()Lcom/scalado/base/Image;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/ImageDecoder;->mImage:Lcom/scalado/base/Image;

    return-object v0
.end method
