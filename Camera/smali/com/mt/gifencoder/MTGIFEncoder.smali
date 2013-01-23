.class public Lcom/mt/gifencoder/MTGIFEncoder;
.super Ljava/lang/Object;
.source "MTGIFEncoder.java"


# static fields
.field public static final BUNDLEKEY_HEIGHT:Ljava/lang/String; = "Height"

.field public static final BUNDLEKEY_TIMEDELAY:Ljava/lang/String; = "TimeDelay"

.field public static final BUNDLEKEY_WIDTH:Ljava/lang/String; = "Width"

.field public static final ERROR:J = -0x1L

.field private static final MAX_OUTPUT_HEIGHT:I = 0x258

.field private static final MAX_OUTPUT_WIDTH:I = 0x258

.field public static final NO_ERROR:J

.field private static mHeight:I

.field private static mTimeDelay:I

.field private static mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x190

    .line 34
    sput v0, Lcom/mt/gifencoder/MTGIFEncoder;->mWidth:I

    .line 35
    sput v0, Lcom/mt/gifencoder/MTGIFEncoder;->mHeight:I

    .line 36
    const/16 v0, 0x64

    sput v0, Lcom/mt/gifencoder/MTGIFEncoder;->mTimeDelay:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GIFEncoder(Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Bundle;)J
    .locals 7
    .parameter
    .parameter "gif_path"
    .parameter "gif_parma"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")J"
        }
    .end annotation

    .prologue
    .local p0, jpeg_path:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    .line 52
    if-eqz p2, :cond_0

    .line 53
    const-string v5, "Width"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/mt/gifencoder/MTGIFEncoder;->mWidth:I

    .line 54
    const-string v5, "Height"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/mt/gifencoder/MTGIFEncoder;->mHeight:I

    .line 55
    const-string v5, "TimeDelay"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/mt/gifencoder/MTGIFEncoder;->mTimeDelay:I

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/mt/gifencoder/MTGIFEncoder;->getBitmapListFromPath(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, listBitmap:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_2

    .line 60
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 73
    :cond_1
    :goto_0
    return-wide v3

    .line 67
    :cond_2
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 68
    .local v2, nBitmapWidth:I
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 69
    .local v1, nBitmapHeight:I
    sget v3, Lcom/mt/gifencoder/MTGIFEncoder;->mTimeDelay:I

    invoke-static {p1, v0, v2, v1, v3}, Lcom/mt/image/ImageGif;->SaveBmp2Gif(Ljava/lang/String;Ljava/util/List;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1           #nBitmapHeight:I
    .end local v2           #nBitmapWidth:I
    :goto_1
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static getBitmapListFromPath(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, arrayListPic:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 84
    const/4 v3, 0x0

    .line 96
    :cond_0
    return-object v3

    .line 86
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v3, listBitmap:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x258

    const/16 v6, 0x258

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6, v7}, Lcom/mt/image/ImageProcess;->PreviewBigPic(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget v4, Lcom/mt/gifencoder/MTGIFEncoder;->mWidth:I

    sget v5, Lcom/mt/gifencoder/MTGIFEncoder;->mHeight:I

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Lcom/mt/image/ImageProcess;->FittingWindow(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    .local v1, bitmapZoom:Landroid/graphics/Bitmap;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapZoom:Landroid/graphics/Bitmap;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v4

    goto :goto_1
.end method
