.class public final Lcom/scalado/stream/BufferStream;
.super Lcom/scalado/jni/JniPeer;
.source "BufferStream.java"

# interfaces
.implements Lcom/scalado/stream/Stream;


# instance fields
.field private buffer:Lcom/scalado/base/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 76
    invoke-static {}, Lcom/scalado/stream/BufferStream;->nativeClassInit()V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Buffer;I)V
    .locals 0
    .parameter "buffer"
    .parameter "maxSize"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/scalado/stream/BufferStream;->nativeCreate(Lcom/scalado/base/Buffer;I)V

    .line 26
    iput-object p1, p0, Lcom/scalado/stream/BufferStream;->buffer:Lcom/scalado/base/Buffer;

    .line 27
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/base/Buffer;I)V
.end method

.method private native nativeGetPosition()J
.end method


# virtual methods
.method public getBuffer()Lcom/scalado/base/Buffer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/scalado/stream/BufferStream;->buffer:Lcom/scalado/base/Buffer;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/scalado/stream/BufferStream;->nativeGetPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
