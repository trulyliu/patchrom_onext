.class public Lcom/htc/music/online/sinamusic/SinaFactory;
.super Ljava/lang/Object;
.source "SinaFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;
    .locals 1
    .parameter "cxt"

    .prologue
    .line 15
    new-instance v0, Lcom/htc/music/online/sinamusic/SSinaEngine;

    invoke-direct {v0, p0}, Lcom/htc/music/online/sinamusic/SSinaEngine;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 20
    new-instance v0, Lcom/htc/music/online/sinamusic/SnsException;

    invoke-direct {v0, p0}, Lcom/htc/music/online/sinamusic/SnsException;-><init>(I)V

    return-object v0
.end method
