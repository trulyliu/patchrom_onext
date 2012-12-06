.class final Lcom/htc/music/online/sinamusic/WrapperSong$1;
.super Ljava/lang/Object;
.source "WrapperSong.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/sinamusic/WrapperSong;
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
        "Lcom/htc/music/online/sinamusic/WrapperSong;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/music/online/sinamusic/WrapperSong;
    .locals 1
    .parameter "paramParcel"

    .prologue
    .line 51
    new-instance v0, Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-direct {v0}, Lcom/htc/music/online/sinamusic/WrapperSong;-><init>()V

    .line 52
    .local v0, mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    invoke-virtual {v0, p1}, Lcom/htc/music/online/sinamusic/WrapperSong;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/htc/music/online/sinamusic/WrapperSong$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/music/online/sinamusic/WrapperSong;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 60
    new-array v0, p1, [Lcom/htc/music/online/sinamusic/WrapperSong;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/htc/music/online/sinamusic/WrapperSong$1;->newArray(I)[Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v0

    return-object v0
.end method
