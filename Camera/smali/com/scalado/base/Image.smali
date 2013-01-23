.class public final Lcom/scalado/base/Image;
.super Lcom/scalado/jni/JniPeer;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/base/Image$Config;
    }
.end annotation


# instance fields
.field private config:Lcom/scalado/base/Image$Config;

.field private dimensions:Lcom/scalado/base/Size;

.field private sourceBuffer:Lcom/scalado/base/Buffer;

.field private sourceByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 134
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 281
    .local v0, dummy:Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v1}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v1}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 282
    invoke-static {}, Lcom/scalado/base/Image;->nativeClassInit()V

    .line 283
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 3
    .parameter "buffer"
    .parameter "dimensions"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 140
    iput-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    .line 141
    iput-object v0, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    .line 216
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 221
    :cond_1
    iput-object p1, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    .line 222
    iput-object p2, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    .line 223
    iput-object p3, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 225
    iget-object v0, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    iget-object v1, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    #getter for: Lcom/scalado/base/Image$Config;->colormode:I
    invoke-static {v2}, Lcom/scalado/base/Image$Config;->access$000(Lcom/scalado/base/Image$Config;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/scalado/base/Image;->nativeCreateFromBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 1
    .parameter "dimensions"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 140
    iput-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    .line 141
    iput-object v0, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    .line 154
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 159
    :cond_1
    iput-object p1, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    .line 160
    iput-object p2, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 162
    #getter for: Lcom/scalado/base/Image$Config;->colormode:I
    invoke-static {p2}, Lcom/scalado/base/Image$Config;->access$000(Lcom/scalado/base/Image$Config;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/scalado/base/Image;->nativeCreateFromSize(Lcom/scalado/base/Size;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/scalado/base/Size;ILcom/scalado/base/Image$Config;)V
    .locals 3
    .parameter "byteBuffer"
    .parameter "dimensions"
    .parameter "scanline"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 140
    iput-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    .line 141
    iput-object v0, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    .line 182
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 187
    :cond_1
    iput-object p2, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    .line 188
    iput-object p4, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 190
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iput-object p1, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    .line 192
    iget-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    #getter for: Lcom/scalado/base/Image$Config;->colormode:I
    invoke-static {v2}, Lcom/scalado/base/Image$Config;->access$000(Lcom/scalado/base/Image$Config;)I

    move-result v2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/scalado/base/Image;->nativeCreateFromByteBuffer(Ljava/nio/ByteBuffer;Lcom/scalado/base/Size;II)V

    .line 199
    :goto_0
    return-void

    .line 194
    :cond_2
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, p1}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    .line 195
    iget-object v0, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    iget-object v1, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    #getter for: Lcom/scalado/base/Image$Config;->colormode:I
    invoke-static {v2}, Lcom/scalado/base/Image$Config;->access$000(Lcom/scalado/base/Image$Config;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/scalado/base/Image;->nativeCreateFromBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;I)V

    goto :goto_0
.end method

.method private native nativeAsBuffer()Ljava/nio/ByteBuffer;
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreateFromBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;I)V
.end method

.method private native nativeCreateFromByteBuffer(Ljava/nio/ByteBuffer;Lcom/scalado/base/Size;II)V
.end method

.method private native nativeCreateFromSize(Lcom/scalado/base/Size;I)V
.end method


# virtual methods
.method public final asBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/scalado/base/Image;->nativeAsBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getConfig()Lcom/scalado/base/Image$Config;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method public final getDimensions()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method
