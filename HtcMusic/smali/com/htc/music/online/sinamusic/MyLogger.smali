.class public Lcom/htc/music/online/sinamusic/MyLogger;
.super Ljava/lang/Object;
.source "MyLogger.java"


# static fields
.field private static final KESEN:Ljava/lang/String; = "@kesen@ "

.field private static klog:Lcom/htc/music/online/sinamusic/MyLogger; = null

.field private static final logFlag:Z = false

.field private static final logLevel:I = 0x2

.field private static sLoggerTable:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/music/online/sinamusic/MyLogger;",
            ">;"
        }
    .end annotation
.end field

.field public static final tag:Ljava/lang/String; = "SinaInterface"


# instance fields
.field private mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/music/online/sinamusic/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/MyLogger;->mClassName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private getFunctionName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 79
    .local v4, sts:[Ljava/lang/StackTraceElement;
    if-nez v4, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v5

    .line 83
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 85
    .local v3, st:Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 93
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/music/online/sinamusic/MyLogger;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private static getLogger(Ljava/lang/String;)Lcom/htc/music/online/sinamusic/MyLogger;
    .locals 2
    .parameter "className"

    .prologue
    .line 38
    sget-object v1, Lcom/htc/music/online/sinamusic/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/sinamusic/MyLogger;

    .line 39
    .local v0, classLogger:Lcom/htc/music/online/sinamusic/MyLogger;
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/htc/music/online/sinamusic/MyLogger;

    .end local v0           #classLogger:Lcom/htc/music/online/sinamusic/MyLogger;
    invoke-direct {v0, p0}, Lcom/htc/music/online/sinamusic/MyLogger;-><init>(Ljava/lang/String;)V

    .line 42
    .restart local v0       #classLogger:Lcom/htc/music/online/sinamusic/MyLogger;
    sget-object v1, Lcom/htc/music/online/sinamusic/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    return-object v0
.end method

.method public static kLog()Lcom/htc/music/online/sinamusic/MyLogger;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/htc/music/online/sinamusic/MyLogger;->klog:Lcom/htc/music/online/sinamusic/MyLogger;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v1, "@kesen@ "

    invoke-direct {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/music/online/sinamusic/MyLogger;->klog:Lcom/htc/music/online/sinamusic/MyLogger;

    .line 57
    :cond_0
    sget-object v0, Lcom/htc/music/online/sinamusic/MyLogger;->klog:Lcom/htc/music/online/sinamusic/MyLogger;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 145
    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 0
    .parameter "ex"

    .prologue
    .line 226
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/htc/music/online/sinamusic/MyLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 204
    const-string v1, "SinaInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v1, "SinaInterface"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "log"
    .parameter "tr"

    .prologue
    .line 241
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/htc/music/online/sinamusic/MyLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 115
    const-string v1, "SinaInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v1, "SinaInterface"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public v(Ljava/lang/Object;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 168
    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 191
    return-void
.end method
