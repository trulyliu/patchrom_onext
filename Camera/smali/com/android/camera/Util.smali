.class public Lcom/android/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcLagrange(FFFFFFF)F
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"
    .parameter "x"

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, value:F
    sub-float v1, p6, p2

    sub-float v2, p6, p4

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float v2, p0, p2

    sub-float v3, p0, p4

    mul-float/2addr v2, v3

    div-float v0, v1, v2

    .line 35
    sub-float v1, p6, p0

    sub-float v2, p6, p4

    mul-float/2addr v1, v2

    mul-float/2addr v1, p3

    sub-float v2, p2, p0

    sub-float v3, p2, p4

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 36
    sub-float v1, p6, p0

    sub-float v2, p6, p2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p5

    sub-float v2, p4, p0

    sub-float v3, p4, p2

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 41
    return v0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 131
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 132
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 134
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 136
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 140
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 151
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 134
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 136
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 145
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 151
    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 113
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 117
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 118
    const/4 v1, 0x1

    .line 119
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 120
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 126
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "path"
    .parameter "str"

    .prologue
    .line 46
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 50
    :cond_0
    const/4 v3, 0x0

    .line 51
    .local v3, output:Ljava/io/BufferedWriter;
    new-instance v3, Ljava/io/BufferedWriter;

    .end local v3           #output:Ljava/io/BufferedWriter;
    new-instance v6, Ljava/io/FileWriter;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 52
    .restart local v3       #output:Ljava/io/BufferedWriter;
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 54
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 666 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, mCmd:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 58
    .local v5, runtime:Ljava/lang/Runtime;
    invoke-virtual {v5, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 59
    .local v4, proc:Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1           #file:Ljava/io/File;
    .end local v2           #mCmd:Ljava/lang/String;
    .end local v3           #output:Ljava/io/BufferedWriter;
    .end local v4           #proc:Ljava/lang/Process;
    .end local v5           #runtime:Ljava/lang/Runtime;
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Util"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFile failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static cropSquareImg([BIII)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jpegData"
    .parameter "width"
    .parameter "height"
    .parameter "crop_size"

    .prologue
    .line 203
    if-nez p0, :cond_0

    .line 204
    const-string v2, "Util"

    const-string v3, "cropSquareImg() - jpegData = null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    .line 208
    :cond_0
    if-ge p1, p2, :cond_1

    move v1, p1

    .line 209
    .local v1, size:I
    :goto_1
    if-ge v1, p3, :cond_2

    .line 210
    :goto_2
    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v1, v2, v3}, Lcom/android/camera/Util;->makeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    .local v0, rawPic:Landroid/graphics/Bitmap;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cropSquareImg() decode - width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 214
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    const/4 v2, 0x1

    invoke-static {v0, p3, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cropSquareImg() crop - width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #rawPic:Landroid/graphics/Bitmap;
    .end local v1           #size:I
    :cond_1
    move v1, p2

    .line 208
    goto/16 :goto_1

    .restart local v1       #size:I
    :cond_2
    move v1, p3

    .line 209
    goto/16 :goto_2

    .line 213
    .restart local v0       #rawPic:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_3
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static disableSketcher(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 225
    .local v1, w:Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;

    .line 228
    .local v0, lp:Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;->getExtraFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;->setExtraFlags(I)V

    .line 231
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 232
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableSketcher(), LayoutParams.extraFlags : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;->getExtraFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v0           #lp:Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static distanceBetweenP2P(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 12
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 239
    const-wide/16 v0, 0x0

    .line 241
    .local v0, distance:D
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 243
    :cond_0
    const-string v8, "Util"

    const-string v9, "distanceBetweenP2P() - One of the points is null."

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 254
    .end local v0           #distance:D
    .local v2, distance:D
    :goto_0
    return-wide v2

    .line 247
    .end local v2           #distance:D
    .restart local v0       #distance:D
    :cond_1
    iget v8, p1, Landroid/graphics/PointF;->x:F

    iget v9, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    float-to-double v4, v8

    .line 248
    .local v4, dx:D
    iget v8, p1, Landroid/graphics/PointF;->y:F

    iget v9, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    float-to-double v6, v8

    .line 250
    .local v6, dy:D
    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 252
    const-string v8, "Util"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "distanceBetweenP2P() - distance is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 254
    .end local v0           #distance:D
    .restart local v2       #distance:D
    goto :goto_0
.end method

.method public static getIntegerFromFile(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 79
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 81
    :cond_0
    const-string v6, "Util"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIntegerFromFile: no file - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v2           #file:Ljava/io/File;
    :goto_0
    return-object v5

    .line 85
    .restart local v2       #file:Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    .line 86
    .local v3, input:Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/BufferedReader;

    .end local v3           #input:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 87
    .restart local v3       #input:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v0, contents:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 90
    .local v4, line:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 96
    .end local v0           #contents:Ljava/lang/StringBuffer;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "Util"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIntegerFromFile failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static makeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 157
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 161
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 174
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 165
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    invoke-static {v1, p1, p2}, Lcom/android/camera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 166
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 168
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 169
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 170
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 172
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 173
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .parameter "bitmap"
    .parameter "path"

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, output:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 183
    .end local v1           #output:Ljava/io/BufferedOutputStream;
    .local v2, output:Ljava/io/BufferedOutputStream;
    if-eqz p0, :cond_0

    .line 184
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 185
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 191
    if-eqz v2, :cond_3

    .line 193
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 199
    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .restart local v1       #output:Ljava/io/BufferedOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 194
    .end local v1           #output:Ljava/io/BufferedOutputStream;
    .restart local v2       #output:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 195
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "Util"

    const-string v4, "close output stream with exception: "

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 196
    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .restart local v1       #output:Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 186
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 187
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    :goto_1
    :try_start_3
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    if-eqz v1, :cond_1

    .line 193
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 194
    :catch_2
    move-exception v0

    .line 195
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "Util"

    const-string v4, "close output stream with exception: "

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 188
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 189
    .restart local v0       #ex:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v3, "Util"

    const-string v4, "Got exception "

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    if-eqz v1, :cond_1

    .line 193
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 194
    :catch_4
    move-exception v0

    .line 195
    const-string v3, "Util"

    const-string v4, "close output stream with exception: "

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 193
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 196
    :cond_2
    :goto_4
    throw v3

    .line 194
    :catch_5
    move-exception v0

    .line 195
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v4, "Util"

    const-string v5, "close output stream with exception: "

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 191
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #output:Ljava/io/BufferedOutputStream;
    .restart local v2       #output:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .restart local v1       #output:Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 188
    .end local v1           #output:Ljava/io/BufferedOutputStream;
    .restart local v2       #output:Ljava/io/BufferedOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .restart local v1       #output:Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 186
    .end local v1           #output:Ljava/io/BufferedOutputStream;
    .restart local v2       #output:Ljava/io/BufferedOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .restart local v1       #output:Ljava/io/BufferedOutputStream;
    goto :goto_1

    .end local v1           #output:Ljava/io/BufferedOutputStream;
    .restart local v2       #output:Ljava/io/BufferedOutputStream;
    :cond_3
    move-object v1, v2

    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .restart local v1       #output:Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method
