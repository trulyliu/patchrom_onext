.class public Lcom/mt/mtgif/MyPro;
.super Ljava/lang/Object;
.source "MyPro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mt/mtgif/MyPro$DirNumName;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static FileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 1019
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    const/4 v1, 0x1

    .line 1023
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static FittingSquare(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bmp"
    .parameter "isNeadRecycle"

    .prologue
    .line 985
    const/4 v1, 0x0

    .line 987
    .local v1, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 988
    .local v8, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 989
    .local v7, h:I
    if-ne v8, v7, :cond_0

    .line 1010
    .end local v7           #h:I
    .end local v8           #w:I
    .end local p0
    :goto_0
    return-object p0

    .line 993
    .restart local v7       #h:I
    .restart local v8       #w:I
    .restart local p0
    :cond_0
    if-le v8, v7, :cond_2

    .line 994
    move v2, v7

    .local v2, dh:I
    move v3, v7

    .line 995
    .local v3, dw:I
    sub-int v9, v8, v7

    div-int/lit8 v4, v9, 0x2

    .line 996
    .local v4, dx:I
    const/4 v5, 0x0

    .line 1002
    .local v5, dy:I
    :goto_1
    invoke-static {p0, v4, v5, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1003
    .local v0, bmpD:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 1004
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v0

    .line 1006
    goto :goto_0

    .line 998
    .end local v0           #bmpD:Landroid/graphics/Bitmap;
    .end local v2           #dh:I
    .end local v3           #dw:I
    .end local v4           #dx:I
    .end local v5           #dy:I
    :cond_2
    move v2, v8

    .restart local v2       #dh:I
    move v3, v8

    .line 999
    .restart local v3       #dw:I
    const/4 v4, 0x0

    .line 1000
    .restart local v4       #dx:I
    sub-int v9, v7, v8

    div-int/lit8 v5, v9, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v5       #dy:I
    goto :goto_1

    .line 1007
    .end local v2           #dh:I
    .end local v3           #dw:I
    .end local v4           #dx:I
    .end local v5           #dy:I
    .end local v7           #h:I
    .end local v8           #w:I
    :catch_0
    move-exception v6

    .line 1008
    .local v6, e:Ljava/lang/Exception;
    invoke-static {v6}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object p0, v1

    .line 1010
    goto :goto_0
.end method

.method public static MessageBox(Ljava/lang/String;Landroid/content/Context;)I
    .locals 1
    .parameter "content"
    .parameter "context"

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public static MessageBox(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 1
    .parameter "content"
    .parameter "title"
    .parameter "context"

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public static PreviewBigPic200(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "path"

    .prologue
    const/16 v13, 0xc8

    const/4 v10, 0x0

    .line 880
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 882
    .local v2, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 883
    const-string v11, "PreviewBigPic"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "path="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 975
    :goto_0
    :pswitch_0
    return-object v0

    .line 887
    :cond_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 888
    .local v4, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 889
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v12, 0x0

    invoke-static {v11, v12, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 893
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 894
    .local v9, width_tmp:I
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 895
    .local v3, height_tmp:I
    const/4 v7, 0x1

    .line 902
    .local v7, scale:I
    :goto_1
    if-ge v9, v13, :cond_2

    if-ge v3, v13, :cond_2

    .line 912
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 913
    .local v5, o2:Landroid/graphics/BitmapFactory$Options;
    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 914
    const/4 v11, 0x0

    iput-boolean v11, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 915
    const/4 v11, 0x0

    iput-boolean v11, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 916
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v11, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 921
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 922
    const/4 v12, 0x0

    .line 921
    invoke-static {v11, v12, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 925
    .local v0, bmp:Landroid/graphics/Bitmap;
    const-string v8, "1"

    .line 926
    .local v8, strOrival:Ljava/lang/String;
    sget-object v11, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_1

    .line 927
    invoke-static {p0}, Lcom/mt/image/ImageProcess;->getJpgOritation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 930
    :cond_1
    invoke-static {v8}, Lcom/mt/mtgif/MyPro;->stringToInt(Ljava/lang/String;)I

    move-result v6

    .line 934
    .local v6, ori:I
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 938
    :pswitch_1
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 939
    goto :goto_0

    .line 905
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #ori:I
    .end local v8           #strOrival:Ljava/lang/String;
    :cond_2
    div-int/lit8 v9, v9, 0x2

    .line 906
    div-int/lit8 v3, v3, 0x2

    .line 907
    mul-int/lit8 v7, v7, 0x2

    .line 898
    goto :goto_1

    .line 941
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v5       #o2:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #ori:I
    .restart local v8       #strOrival:Ljava/lang/String;
    :pswitch_2
    const/high16 v11, 0x4334

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 942
    goto :goto_0

    .line 944
    :pswitch_3
    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 945
    goto :goto_0

    .line 947
    :pswitch_4
    const/high16 v11, 0x42b4

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 948
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 949
    goto :goto_0

    .line 951
    :pswitch_5
    const/high16 v11, 0x42b4

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 952
    goto/16 :goto_0

    .line 954
    :pswitch_6
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 955
    const/high16 v11, 0x42b4

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 956
    goto/16 :goto_0

    .line 958
    :pswitch_7
    const/high16 v11, 0x4387

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 959
    goto/16 :goto_0

    .line 971
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #height_tmp:I
    .end local v4           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #ori:I
    .end local v7           #scale:I
    .end local v8           #strOrival:Ljava/lang/String;
    .end local v9           #width_tmp:I
    :catch_0
    move-exception v1

    .line 972
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v11, "PreviewBigPic"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "path="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v0, v10

    .line 975
    goto/16 :goto_0

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static allScan(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 291
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 301
    .local v1, lastTime:J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "___________________allScan  lastTime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v1           #lastTime:J
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static arraycopy([BI[BI)I
    .locals 3
    .parameter "src"
    .parameter "pos"
    .parameter "dst"
    .parameter "len"

    .prologue
    .line 214
    :try_start_0
    array-length v1, p0

    add-int v2, p1, p3

    if-lt v1, v2, :cond_0

    .line 215
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local p3
    :goto_0
    return p3

    .line 219
    .restart local p3
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 p3, -0x1

    goto :goto_0
.end method

.method public static arraycopy([BI[BII)I
    .locals 3
    .parameter "src"
    .parameter "posSrc"
    .parameter "dst"
    .parameter "posDst"
    .parameter "len"

    .prologue
    .line 228
    :try_start_0
    array-length v1, p0

    add-int v2, p1, p4

    if-lt v1, v2, :cond_0

    array-length v1, p2

    add-int v2, p3, p4

    if-lt v1, v2, :cond_0

    .line 229
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local p4
    :goto_0
    return p4

    .line 233
    .restart local p4
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 236
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 p4, -0x1

    goto :goto_0
.end method

.method public static bytesToInt([B)I
    .locals 4
    .parameter "bytes"

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, num:I
    const/4 v2, 0x0

    :try_start_0
    aget-byte v2, p0, v2

    and-int/lit16 v1, v2, 0xff

    .line 265
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 266
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 267
    const/4 v2, 0x3

    aget-byte v2, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 272
    :goto_0
    return v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static closeSelf()Z
    .locals 1

    .prologue
    .line 684
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method public static fileScan(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "fName"
    .parameter "context"

    .prologue
    .line 315
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 316
    .local v0, data:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0           #data:Landroid/net/Uri;
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static folderScan(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .parameter "path"
    .parameter "context"

    .prologue
    .line 325
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 329
    .local v0, array:[Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "____folderScan array num="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 330
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_1

    .line 345
    .end local v0           #array:[Ljava/io/File;
    .end local v3           #i:I
    :cond_0
    return-void

    .line 331
    .restart local v0       #array:[Ljava/io/File;
    .restart local v3       #i:I
    :cond_1
    aget-object v1, v0, v3

    .line 333
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 334
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, name:Ljava/lang/String;
    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 337
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/mt/mtgif/MyPro;->fileScan(Ljava/lang/String;Landroid/content/Context;)V

    .line 330
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/mt/mtgif/MyPro;->folderScan(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getAssertsFile(Ljava/lang/String;Landroid/content/res/AssetManager;)[Ljava/lang/String;
    .locals 5
    .parameter "path"
    .parameter "am"

    .prologue
    .line 112
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    .line 114
    .local v1, files:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 116
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 123
    .end local v2           #i:I
    :goto_1
    return-object v1

    .line 117
    .restart local v2       #i:I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2           #i:I
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B
    .locals 5
    .parameter "fileName"
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    check-cast v0, [B

    .line 57
    .local v0, data:[B
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 59
    .local v2, in:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 61
    .local v3, lenght:I
    new-array v0, v3, [B

    .line 63
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #lenght:I
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getDoubleValue(DI)D
    .locals 0
    .parameter "val"
    .parameter "num"

    .prologue
    .line 629
    return-wide p0
.end method

.method public static getFile(Ljava/lang/String;)Ljava/util/Vector;
    .locals 7
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 94
    .local v5, it:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 98
    .local v3, files:[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v3

    if-lt v4, v6, :cond_0

    .line 107
    .end local v1           #f:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    :goto_1
    return-object v5

    .line 99
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #files:[Ljava/io/File;
    .restart local v4       #i:I
    :cond_0
    aget-object v2, v3, v4

    .line 100
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mt/mtgif/MyPro;->getImageFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    .end local v1           #f:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static getFileList(Ljava/util/List;Ljava/io/File;I)V
    .locals 6
    .parameter
    .parameter "file"
    .parameter "layer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, fl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 500
    .local v2, files:[Ljava/io/File;
    add-int/lit8 p2, p2, -0x1

    .line 501
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1

    .line 530
    .end local v2           #files:[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 504
    .restart local v2       #files:[Ljava/io/File;
    :cond_1
    if-ltz p2, :cond_0

    .line 508
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 510
    aget-object v1, v2, v3

    .line 511
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 514
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/mtgif/MyPro;->getImageFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 520
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 523
    invoke-static {p0, v1, p2}, Lcom/mt/mtgif/MyPro;->getFileList(Ljava/util/List;Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 527
    .end local v1           #f:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i:I
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getFileModifyTime(Ljava/lang/String;)J
    .locals 4
    .parameter "path"

    .prologue
    .line 578
    const-wide/16 v2, 0x0

    .line 580
    .local v2, timeModify:J
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 581
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 591
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-wide v2

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getFloatValue(FI)F
    .locals 4
    .parameter "val"
    .parameter "num"

    .prologue
    .line 611
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p0

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 612
    .local v0, bd:Ljava/math/BigDecimal;
    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .line 618
    .end local v0           #bd:Ljava/math/BigDecimal;
    :goto_0
    return p0

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getImageFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "fName"

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 133
    .local v2, result:Z
    :try_start_0
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 133
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, end:Ljava/lang/String;
    const-string v3, "jpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    const-string v3, "jpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "bmp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    :cond_0
    const/4 v2, 0x1

    .line 147
    .end local v1           #end:Ljava/lang/String;
    :goto_0
    return v2

    .line 141
    .restart local v1       #end:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    .end local v1           #end:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static getImageFolder3(Landroid/content/ContentResolver;Ljava/util/List;)Z
    .locals 14
    .parameter "cr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/mt/operate/ListFolderPic;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, it:Ljava/util/List;,"Ljava/util/List<Lcom/mt/operate/ListFolderPic;>;"
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 732
    const/4 v6, 0x0

    .line 734
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 735
    const-string v5, "date_added"

    move-object v0, p0

    .line 734
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 736
    if-nez v6, :cond_0

    move v0, v12

    .line 774
    :goto_0
    return v0

    .line 740
    :cond_0
    new-instance v8, Lcom/mt/mtgif/MyPro$DirNumName;

    invoke-direct {v8, p1}, Lcom/mt/mtgif/MyPro$DirNumName;-><init>(Ljava/util/List;)V

    .line 742
    .local v8, folderRecoder:Lcom/mt/mtgif/MyPro$DirNumName;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 748
    .local v10, temp:Ljava/lang/String;
    :cond_1
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 747
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 750
    .local v11, type:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 751
    const-string v0, "image/jpeg"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 752
    const-string v0, "image/png"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 753
    const-string v0, "image/x-ms-bmp"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 761
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 746
    if-nez v0, :cond_1

    .line 763
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget-object v0, v8, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v9, v0, :cond_4

    .line 768
    invoke-virtual {v8}, Lcom/mt/mtgif/MyPro$DirNumName;->folderFilterALL()V

    .end local v8           #folderRecoder:Lcom/mt/mtgif/MyPro$DirNumName;
    .end local v9           #i:I
    .end local v10           #temp:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :cond_2
    :goto_3
    move v0, v13

    .line 774
    goto :goto_0

    .line 757
    .restart local v8       #folderRecoder:Lcom/mt/mtgif/MyPro$DirNumName;
    .restart local v10       #temp:Ljava/lang/String;
    .restart local v11       #type:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 759
    invoke-virtual {v8, v10}, Lcom/mt/mtgif/MyPro$DirNumName;->addFolderDir(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 770
    .end local v8           #folderRecoder:Lcom/mt/mtgif/MyPro$DirNumName;
    .end local v10           #temp:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 771
    .local v7, e:Ljava/lang/Exception;
    invoke-static {v7}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 764
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #folderRecoder:Lcom/mt/mtgif/MyPro$DirNumName;
    .restart local v9       #i:I
    .restart local v10       #temp:Ljava/lang/String;
    .restart local v11       #type:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v0, v8, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mt/operate/ListFolderPic;

    iget-object v1, v8, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    .line 765
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mt/operate/ListFolderPic;

    iget-object v1, v1, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 764
    iput-object v1, v0, Lcom/mt/operate/ListFolderPic;->mFirstPic:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 763
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method public static getIntData([BI)I
    .locals 4
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 689
    const/4 v1, 0x0

    .line 691
    .local v1, num:I
    add-int/lit8 v2, p1, 0x0

    :try_start_0
    aget-byte v2, p0, v2

    and-int/lit16 v1, v2, 0xff

    .line 692
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 693
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 694
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 699
    :goto_0
    return v1

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getMetaData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "id"
    .parameter "context"

    .prologue
    .line 1032
    const-string v3, ""

    .line 1034
    .local v3, myApiKey:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1035
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1036
    .local v1, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1044
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 1037
    :catch_0
    move-exception v2

    .line 1038
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1040
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 1041
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 370
    .local v2, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 374
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 378
    const-string v3, ""

    goto :goto_0
.end method

.method public static getPhotoPath()Ljava/lang/String;
    .locals 15

    .prologue
    .line 413
    const-string v11, ""

    .line 415
    .local v11, path:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 418
    .local v7, lastTimeT:J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v2, fl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    const-string v12, "/sdcard/DCIM"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_1

    .line 421
    const-string v11, ""

    .line 454
    .end local v1           #f:Ljava/io/File;
    .end local v2           #fl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #lastTimeT:J
    .end local v11           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v11

    .line 423
    .restart local v1       #f:Ljava/io/File;
    .restart local v2       #fl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #lastTimeT:J
    .restart local v11       #path:Ljava/lang/String;
    :cond_1
    const/4 v12, 0x2

    :try_start_1
    invoke-static {v2, v1, v12}, Lcom/mt/mtgif/MyPro;->getRecentFileList(Ljava/util/List;Ljava/io/File;I)V

    .line 425
    const-wide/16 v5, 0x0

    .local v5, lastTime:J
    const-wide/16 v9, 0x0

    .line 426
    .local v9, n:J
    const-string v4, ""

    .line 427
    .local v4, lastPath:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    const-wide/16 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-lt v3, v12, :cond_2

    .line 435
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "new Pic="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 436
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "cur="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  n="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 444
    sub-long v9, v7, v5

    .line 445
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "cha="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 446
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "used time="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v7

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 447
    const-wide/16 v12, 0x1388

    cmp-long v12, v9, v12

    if-gez v12, :cond_0

    .line 448
    move-object v11, v4

    goto :goto_0

    .line 428
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/mt/mtgif/MyPro;->getFileModifyTime(Ljava/lang/String;)J

    move-result-wide v9

    .line 429
    cmp-long v12, v5, v9

    if-gez v12, :cond_3

    .line 430
    move-wide v5, v9

    .line 431
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #lastPath:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 427
    .restart local v4       #lastPath:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 451
    .end local v1           #f:Ljava/io/File;
    .end local v2           #fl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #i:I
    .end local v4           #lastPath:Ljava/lang/String;
    .end local v5           #lastTime:J
    .end local v7           #lastTimeT:J
    .end local v9           #n:J
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public static getProductModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getRecentFileList(Ljava/util/List;Ljava/io/File;I)V
    .locals 12
    .parameter
    .parameter "file"
    .parameter "layer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, fl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-wide/32 v10, 0xc350

    .line 536
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 538
    .local v4, lastTime:J
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 539
    .local v2, files:[Ljava/io/File;
    add-int/lit8 p2, p2, -0x1

    .line 540
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_1

    .line 574
    .end local v2           #files:[Ljava/io/File;
    .end local v4           #lastTime:J
    :cond_0
    :goto_0
    return-void

    .line 543
    .restart local v2       #files:[Ljava/io/File;
    .restart local v4       #lastTime:J
    :cond_1
    if-ltz p2, :cond_0

    .line 547
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 549
    aget-object v1, v2, v3

    .line 550
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 553
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/mtgif/MyPro;->getImageFile(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 555
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/mtgif/MyPro;->getFileModifyTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 556
    .local v6, nn:J
    add-long v8, v6, v10

    cmp-long v8, v8, v4

    if-lez v8, :cond_2

    .line 558
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v6           #nn:J
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 561
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 563
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/mtgif/MyPro;->getFileModifyTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 564
    .restart local v6       #nn:J
    add-long v8, v6, v10

    cmp-long v8, v8, v4

    if-lez v8, :cond_2

    .line 566
    invoke-static {p0, v1, p2}, Lcom/mt/mtgif/MyPro;->getFileList(Ljava/util/List;Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 571
    .end local v1           #f:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i:I
    .end local v4           #lastTime:J
    .end local v6           #nn:J
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getReleaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getSD()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v5, it:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/sdcard/"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 78
    .local v3, files:[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v3

    if-lt v4, v6, :cond_0

    .line 87
    .end local v1           #f:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    :goto_1
    return-object v5

    .line 79
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #files:[Ljava/io/File;
    .restart local v4       #i:I
    :cond_0
    aget-object v2, v3, v4

    .line 80
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mt/mtgif/MyPro;->getImageFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v1           #f:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDPic3(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 3
    .parameter "cr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mt/operate/ListFolderPic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    invoke-static {}, Lcom/mt/tools/MTDebug;->startCount()V

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v0, it:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mt/operate/ListFolderPic;>;"
    invoke-static {p0, v0}, Lcom/mt/mtgif/MyPro;->getImageFolder3(Landroid/content/ContentResolver;Ljava/util/List;)Z

    .line 715
    const-string v1, "TEMP"

    const-string v2, "getSDPic"

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->stopCount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 716
    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 385
    .local v2, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 389
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 400
    .local v2, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 404
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 408
    const-string v3, ""

    goto :goto_0
.end method

.method public static isFloatEquals0(F)Z
    .locals 1
    .parameter "val"

    .prologue
    .line 634
    const v0, -0x4a79c843

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const v0, 0x358637bd

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    .line 635
    const/4 v0, 0x1

    .line 637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardCanUse()Z
    .locals 4

    .prologue
    .line 676
    invoke-static {}, Lcom/mt/mtgif/MyPro;->readSDCard()J

    move-result-wide v0

    const-wide/16 v2, 0x2800

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 677
    const/4 v0, 0x0

    .line 679
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static readSDCard()J
    .locals 17

    .prologue
    .line 642
    const-wide/16 v10, -0x1

    .line 644
    .local v10, sum:J
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 645
    .local v9, state:Ljava/lang/String;
    const-string v12, "mounted"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 646
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 647
    .local v7, sdcardDir:Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 648
    .local v8, sf:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v4, v12

    .line 649
    .local v4, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v2, v12

    .line 650
    .local v2, blockCount:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v0, v12

    .line 651
    .local v0, availCount:J
    mul-long v12, v4, v2

    const-wide/16 v14, 0x400

    div-long v10, v12, v14

    .line 652
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "block\u5927\u5c0f:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",block\u6570\u76ee:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",\u603b\u5927\u5c0f:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-long v13, v4, v2

    const-wide/16 v15, 0x400

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "KB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 653
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u53ef\u7528\u7684block\u6570\u76ee\uff1a:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",\u5269\u4f59\u7a7a\u95f4:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-long v13, v0, v4

    const-wide/16 v15, 0x400

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "KB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    .end local v0           #availCount:J
    .end local v2           #blockCount:J
    .end local v4           #blockSize:J
    .end local v7           #sdcardDir:Ljava/io/File;
    .end local v8           #sf:Landroid/os/StatFs;
    .end local v9           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v10

    .line 656
    :catch_0
    move-exception v6

    .line 657
    .local v6, e:Ljava/lang/Exception;
    const-string v12, "SD\u5361\u4e0d\u53ef\u7528"

    invoke-static {v12}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 658
    invoke-static {v6}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static readSystem()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x400

    .line 665
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    .line 666
    .local v6, root:Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 667
    .local v7, sf:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 668
    .local v4, blockSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v2, v8

    .line 669
    .local v2, blockCount:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 670
    .local v0, availCount:J
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "block\u5927\u5c0f:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",block\u6570\u76ee:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",\u603b\u5927\u5c0f:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-long v9, v4, v2

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 671
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u53ef\u7528\u7684block\u6570\u76ee\uff1a:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",\u53ef\u7528\u5927\u5c0f:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-long v9, v0, v4

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public static releaseBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "bmp"

    .prologue
    .line 597
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    const/4 p0, 0x0

    .line 605
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .locals 3
    .parameter "str"

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 279
    .local v1, n:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 284
    :goto_0
    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static toAngle(F)I
    .locals 5
    .parameter "val"

    .prologue
    .line 185
    const/high16 v1, 0x43b4

    mul-float/2addr v1, p0

    float-to-double v1, v1

    const-wide v3, 0x401921fb4d12d84aL

    div-double/2addr v1, v3

    double-to-int v0, v1

    .line 186
    .local v0, d:I
    return v0
.end method

.method public static toDate(J)Ljava/lang/String;
    .locals 5
    .parameter "time"

    .prologue
    .line 458
    const-string v3, ""

    .line 460
    .local v3, result:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy hh:mm:ss.SSS"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 464
    .local v2, formatter:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 465
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 467
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 472
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #formatter:Ljava/text/DateFormat;
    :goto_0
    return-object v3

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
