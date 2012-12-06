.class public Lcom/htc/music/online/sinamusic/WrapperSong;
.super Ljava/lang/Object;
.source "WrapperSong.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AlbumId:I

.field private AlbumName:Ljava/lang/String;

.field private SingerId:I

.field private SingerName:Ljava/lang/String;

.field private SongDescription:Ljava/lang/String;

.field private SongDetailUrl:Ljava/lang/String;

.field private SongId:I

.field private SongImage:Ljava/lang/String;

.field private SongName:Ljava/lang/String;

.field private SongPlayTime:Ljava/lang/String;

.field private SongPlayUrl:Ljava/lang/String;

.field private TestImage:Landroid/graphics/Bitmap;

.field private TotalSong:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/htc/music/online/sinamusic/WrapperSong$1;

    invoke-direct {v0}, Lcom/htc/music/online/sinamusic/WrapperSong$1;-><init>()V

    sput-object v0, Lcom/htc/music/online/sinamusic/WrapperSong;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumId:I

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getSingerId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SingerId:I

    return v0
.end method

.method public getSingerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SingerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSongDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDetailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongId:I

    return v0
.end method

.method public getSongImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPlayTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPlayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTestImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->TestImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTotalSong()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->TotalSong:I

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "paramParcel"

    .prologue
    .line 220
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SingerId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SingerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDetailUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 225
    :cond_0
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v1, "Some dest is null"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 239
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongId:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumId:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SingerName:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongName:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumName:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongImage:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDescription:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayTime:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayUrl:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDetailUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAlbumId(I)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 135
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumId:I

    .line 136
    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .parameter "albumName"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setSingerId(I)V
    .locals 0
    .parameter "singerId"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SingerId:I

    .line 96
    return-void
.end method

.method public setSingerName(Ljava/lang/String;)V
    .locals 0
    .parameter "singerName"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SingerName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSongDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "songDescription"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDescription:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setSongDetailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "songdetailUrl"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDetailUrl:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setSongId(I)V
    .locals 0
    .parameter "songId"

    .prologue
    .line 87
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongId:I

    .line 88
    return-void
.end method

.method public setSongImage(Ljava/lang/String;)V
    .locals 0
    .parameter "songImage"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongImage:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0
    .parameter "songName"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongName:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setSongPlayTime(Ljava/lang/String;)V
    .locals 0
    .parameter "songPlayTime"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayTime:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setSongPlayUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "songPlayUrl"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayUrl:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setTestImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->TestImage:Landroid/graphics/Bitmap;

    .line 80
    return-void
.end method

.method public setTotalSong(I)V
    .locals 0
    .parameter "totalSong"

    .prologue
    .line 70
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->TotalSong:I

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 245
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SingerId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SingerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDetailUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 250
    :cond_0
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v1, "Some dest is null"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 269
    :goto_0
    return-void

    .line 253
    :cond_1
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SingerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SingerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->AlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongPlayUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSong;->SongDetailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
