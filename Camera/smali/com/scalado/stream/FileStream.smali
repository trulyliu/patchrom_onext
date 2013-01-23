.class public final Lcom/scalado/stream/FileStream;
.super Lcom/scalado/jni/JniPeer;
.source "FileStream.java"

# interfaces
.implements Lcom/scalado/stream/Stream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/stream/FileStream$Access;
    }
.end annotation


# instance fields
.field private access:Lcom/scalado/stream/FileStream$Access;

.field private filename:Ljava/lang/String;

.field private isClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 113
    invoke-static {}, Lcom/scalado/stream/FileStream;->nativeClassInit()V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    .locals 1
    .parameter "filename"
    .parameter "access"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/stream/FileStream;->isClosed:Z

    .line 51
    iget v0, p2, Lcom/scalado/stream/FileStream$Access;->value:I

    invoke-direct {p0, p1, v0}, Lcom/scalado/stream/FileStream;->nativeCreate(Ljava/lang/String;I)V

    .line 52
    iput-object p2, p0, Lcom/scalado/stream/FileStream;->access:Lcom/scalado/stream/FileStream$Access;

    .line 53
    iput-object p1, p0, Lcom/scalado/stream/FileStream;->filename:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeClose()V
.end method

.method private native nativeCreate(Ljava/lang/String;I)V
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/scalado/stream/FileStream;->isClosed:Z

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/scalado/stream/FileStream;->nativeClose()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/stream/FileStream;->isClosed:Z

    .line 67
    :cond_0
    return-void
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/scalado/stream/FileStream;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public isReadable()Z
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/scalado/stream/FileStream;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scalado/stream/FileStream;->access:Lcom/scalado/stream/FileStream$Access;

    sget-object v1, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/scalado/stream/FileStream;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scalado/stream/FileStream;->access:Lcom/scalado/stream/FileStream$Access;

    sget-object v1, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
