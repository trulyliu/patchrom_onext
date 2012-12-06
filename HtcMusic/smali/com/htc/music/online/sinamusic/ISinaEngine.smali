.class public interface abstract Lcom/htc/music/online/sinamusic/ISinaEngine;
.super Ljava/lang/Object;
.source "ISinaEngine.java"


# virtual methods
.method public abstract addToFavourite(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract doSinaPlaySongLog(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract getActualPlayUrl(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract getFriendSonglist(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract getLoginStatus()Z
.end method

.method public abstract getMusicCategory()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperCategory;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract getRecommendSong(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract getSelfFavouriteSong(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract getSelfSonglist(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;
.end method

.method public abstract getSongDetail(I)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract getSonglistDetail(Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract removeFromFavourite(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract requestLogin()V
.end method

.method public abstract requestLogout()V
.end method

.method public abstract searchAlbum(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method

.method public abstract searchSong(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation
.end method
