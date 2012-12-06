.class public Lcom/htc/music/online/sinamusic/WrapperSongDetail;
.super Ljava/lang/Object;
.source "WrapperSongDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSongDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AlbumId:I

.field private AlbumName:Ljava/lang/String;

.field private SingerId:I

.field private SingerName:Ljava/lang/String;

.field private SongDetailUrl:Ljava/lang/String;

.field private SongDownFlag:Ljava/lang/String;

.field private SongId:I

.field private SongImage:Ljava/lang/String;

.field private SongLyric:Ljava/lang/String;

.field private SongName:Ljava/lang/String;

.field private SongPlayTime:Ljava/lang/String;

.field private SongPlayUrl:Ljava/lang/String;

.field private SongStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/htc/music/online/sinamusic/WrapperSongDetail$1;

    invoke-direct {v0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail$1;-><init>()V

    sput-object v0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumId:I

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getSingerId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerId:I

    return v0
.end method

.method public getSingerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDetailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSongDownFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDownFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongId:I

    return v0
.end method

.method public getSongImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSongLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongLyric:Ljava/lang/String;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPlayTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPlayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSongStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongStyle:Ljava/lang/String;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "paramParcel"

    .prologue
    .line 186
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongStyle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDetailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDownFlag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongLyric:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 191
    :cond_0
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v1, "Some dest is null"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 208
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongId:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerId:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumId:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongName:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumName:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongImage:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongStyle:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayTime:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayUrl:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDetailUrl:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDownFlag:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongLyric:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAlbumId(I)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 94
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumId:I

    .line 95
    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .parameter "albumName"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setSingerId(I)V
    .locals 0
    .parameter "singerId"

    .prologue
    .line 74
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerId:I

    .line 75
    return-void
.end method

.method public setSingerName(Ljava/lang/String;)V
    .locals 0
    .parameter "singerName"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setSongDetailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "songDetailUrl"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDetailUrl:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setSongDownFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "songDownFlag"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDownFlag:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setSongId(I)V
    .locals 0
    .parameter "songId"

    .prologue
    .line 54
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongId:I

    .line 55
    return-void
.end method

.method public setSongImage(Ljava/lang/String;)V
    .locals 0
    .parameter "songImage"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongImage:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setSongLyric(Ljava/lang/String;)V
    .locals 0
    .parameter "songLyric"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongLyric:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0
    .parameter "songName"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSongPlayTime(Ljava/lang/String;)V
    .locals 0
    .parameter "songPlayTime"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayTime:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setSongPlayUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "songPlayUrl"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayUrl:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setSongStyle(Ljava/lang/String;)V
    .locals 0
    .parameter "songStyle"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongStyle:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 214
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongStyle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDetailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDownFlag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongLyric:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 219
    :cond_0
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v1, "Some dest is null"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 235
    :goto_0
    return-void

    .line 222
    :cond_1
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SingerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->AlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongLyric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongPlayUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDownFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->SongDetailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
