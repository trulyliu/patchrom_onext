.class final Lcom/htc/music/online/sinamusic/WrapperSongDetail$1;
.super Ljava/lang/Object;
.source "WrapperSongDetail.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/sinamusic/WrapperSongDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/music/online/sinamusic/WrapperSongDetail;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    .locals 1
    .parameter "paramParcel"

    .prologue
    .line 32
    new-instance v0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    invoke-direct {v0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;-><init>()V

    .line 33
    .local v0, mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    invoke-virtual {v0, p1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 41
    new-array v0, p1, [Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail$1;->newArray(I)[Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    move-result-object v0

    return-object v0
.end method
