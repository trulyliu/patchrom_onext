.class public Lcom/mt/image/ImageGif;
.super Ljava/lang/Object;
.source "ImageGif.java"


# static fields
.field private static jni:Lcom/image/gif/JNI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/image/gif/JNI;

    invoke-direct {v0}, Lcom/image/gif/JNI;-><init>()V

    sput-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddFrame([I[BII)Z
    .locals 1
    .parameter "data"
    .parameter "mask"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 68
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/image/gif/JNI;->EffectAdd([I[BII)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public static ReadGifFrame(ILandroid/graphics/Bitmap;II)I
    .locals 3
    .parameter "id"
    .parameter "bmp"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 21
    mul-int v2, p2, p3

    new-array v0, v2, [I

    .line 22
    .local v0, data:[I
    sget-object v2, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v2, v0, p0}, Lcom/image/gif/JNI;->ReadGifFrame([II)I

    move-result v1

    .line 23
    .local v1, time:I
    invoke-static {p1, v0}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 24
    return v1
.end method

.method public static ReadGifInfo(Ljava/lang/String;[I)Z
    .locals 2
    .parameter "path"
    .parameter "info"

    .prologue
    .line 16
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Lcom/image/gif/JNI;->ReadGifInfo(Ljava/lang/String;[II)V

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public static ReadGifRelease()Z
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v0}, Lcom/image/gif/JNI;->ReadGifRelease()V

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public static Resample([III[BII)Z
    .locals 7
    .parameter "data"
    .parameter "w"
    .parameter "h"
    .parameter "src"
    .parameter "sw"
    .parameter "sh"

    .prologue
    .line 73
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/image/gif/JNI;->Resample([III[BII)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public static SaveAsGif(Ljava/lang/String;[Ljava/lang/String;III)Z
    .locals 9
    .parameter "pathSave"
    .parameter "pathPic"
    .parameter "w"
    .parameter "h"
    .parameter "timeDelay"

    .prologue
    .line 39
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    array-length v2, p1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/image/gif/JNI;->SaveGifInit(Ljava/lang/String;IIII)V

    .line 40
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p1

    if-lt v8, v0, :cond_0

    .line 46
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v0}, Lcom/image/gif/JNI;->SaveGifFinish()V

    .line 47
    const/4 v0, 0x1

    return v0

    .line 41
    :cond_0
    aget-object v0, p1, v8

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/mt/image/ImageProcess;->PreviewBigPic(Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 42
    .local v6, bmp:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v7

    .line 43
    .local v7, data:[I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v0, v7, v8}, Lcom/image/gif/JNI;->SaveGifAddFrame([II)V

    .line 40
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public static SaveBmp2Gif(Ljava/lang/String;Ljava/util/List;III)Z
    .locals 8
    .parameter "pathSave"
    .parameter
    .parameter "w"
    .parameter "h"
    .parameter "timeDelay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;III)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/image/gif/JNI;->SaveGifInit(Ljava/lang/String;IIII)V

    .line 56
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    .line 63
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v0}, Lcom/image/gif/JNI;->SaveGifFinish()V

    .line 64
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_0
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v6

    .line 60
    .local v6, data:[I
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v0, v6, v7}, Lcom/image/gif/JNI;->SaveGifAddFrame([II)V

    .line 56
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
