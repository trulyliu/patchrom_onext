.class public Lcom/mt/tools/MTDebug;
.super Ljava/lang/Object;
.source "MTDebug.java"


# static fields
.field private static final IS_DEBUG_LOG:Z = false

.field private static final IS_DEBUG_LOG_FILE:Z = false

.field public static final mLogPath:Ljava/lang/String; = "/sdcard/MTGIF/test.log"

.field private static nLastTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mt/tools/MTDebug;->nLastTime:J

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Print(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 233
    const-string v0, "log"

    invoke-static {v0, p0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public static Print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 101
    return-void
.end method

.method public static PrintD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 263
    invoke-static {p0, p1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public static PrintError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "ex"

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    return-void
.end method

.method public static PrintError(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 261
    return-void
.end method

.method public static PrintPT(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 236
    const-string v0, "log"

    invoke-static {v0, p0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public static createLogFile()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 224
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yy/MM/dd/ HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 226
    .local v0, curDate:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, str:Ljava/lang/String;
    return-object v2
.end method

.method public static getMaxMem()Ljava/lang/String;
    .locals 6

    .prologue
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, maxMem:Ljava/lang/String;
    return-object v0
.end method

.method public static getMemState()Ljava/lang/String;
    .locals 16

    .prologue
    const-wide/high16 v14, 0x4090

    const-wide/high16 v12, 0x4130

    .line 137
    const-string v9, ""

    .line 138
    .local v9, val:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    long-to-double v10, v10

    div-double v7, v10, v12

    .line 139
    .local v7, total:D
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    long-to-double v10, v10

    div-double v3, v10, v12

    .line 140
    .local v3, freeMem:D
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    long-to-double v10, v10

    div-double v5, v10, v12

    .line 144
    .local v5, maxMem:D
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v10, v14

    div-double v1, v10, v14

    .line 146
    .local v1, exernalMem:D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v10, "0.000"

    invoke-direct {v0, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, df:Ljava/text/DecimalFormat;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[Memery State] [used]="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-double v11, v7, v3

    invoke-virtual {v0, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 149
    const-string v11, "[exernalMem]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " [totalUsed]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-double v11, v7, v3

    add-double/2addr v11, v1

    invoke-virtual {v0, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " [maxMem]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 148
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 150
    return-object v9
.end method

.method public static memeryUsed(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 239
    const-string v0, "log"

    invoke-static {v0, p0}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public static memeryUsed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "title"

    .prologue
    .line 110
    return-void
.end method

.method public static printAvilableMemery2(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 266
    const-string v0, "log"

    invoke-static {v0, p0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public static printConfig(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter "bmp"
    .parameter "str"

    .prologue
    .line 188
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] printConfig=ARGB_8888"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] printConfig=RGB_565"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startCount()V
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mt/tools/MTDebug;->nLastTime:J

    .line 158
    return-void
.end method

.method public static stopCount(Ljava/lang/String;)Z
    .locals 6
    .parameter "str"

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mt/tools/MTDebug;->nLastTime:J

    sub-long v0, v2, v4

    .line 169
    .local v0, n:J
    const/4 v2, 0x1

    return v2
.end method

.method public static stopCount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mt/tools/MTDebug;->nLastTime:J

    sub-long v0, v2, v4

    .line 182
    .local v0, n:J
    const/4 v2, 0x1

    return v2
.end method
