.class public interface abstract Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;
.super Ljava/lang/Object;
.source "AsyncQueryOnlineSong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnQuerySongOnlinelistener"
.end annotation


# virtual methods
.method public abstract onFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V
.end method

.method public abstract onFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
.end method

.method public abstract onReturnError(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/SnsException;)V
.end method

.method public abstract onStart()V
.end method
