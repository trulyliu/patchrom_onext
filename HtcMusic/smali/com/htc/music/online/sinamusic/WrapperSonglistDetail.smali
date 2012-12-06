.class public Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
.super Ljava/lang/Object;
.source "WrapperSonglistDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SongItemlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end field

.field private SonglistCollect:Ljava/lang/String;

.field private SonglistCreatetime:Ljava/lang/String;

.field private SonglistDetailUrl:Ljava/lang/String;

.field private SonglistHot:Ljava/lang/String;

.field private SonglistId:I

.field private SonglistIntro:Ljava/lang/String;

.field private SonglistName:Ljava/lang/String;

.field private SonglistOwnerImage:Ljava/lang/String;

.field private SonglistOwnerName:Ljava/lang/String;

.field private SonglistOwnerSinaId:I

.field private SonglistPhoto:Ljava/lang/String;

.field private SonglistShare:Ljava/lang/String;

.field private SonglistSongSum:Ljava/lang/String;

.field private SonglistUpdatetime:Ljava/lang/String;

.field private SonglistWeiboId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail$1;

    invoke-direct {v0}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail$1;-><init>()V

    sput-object v0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getSongItemlist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SongItemlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSonglistCollect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCollect:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistCreatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCreatetime:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistDetailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistHot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistHot:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistId:I

    return v0
.end method

.method public getSonglistIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistName:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistOwnerImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistOwnerSinaId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerSinaId:I

    return v0
.end method

.method public getSonglistPhoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistPhoto:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistShare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistShare:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistSongSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistSongSum:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistUpdatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistUpdatetime:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistWeiboId()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistWeiboId:I

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "paramParcel"

    .prologue
    .line 222
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerSinaId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistWeiboId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistSongSum:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCollect:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCreatetime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistUpdatetime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistHot:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistIntro:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistDetailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SongItemlist:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 228
    :cond_0
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v1, "Some dest is null"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 245
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistId:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerSinaId:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerName:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerImage:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistName:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistSongSum:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCollect:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCreatetime:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistUpdatetime:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistWeiboId:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistHot:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistIntro:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistDetailUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSongItemlist(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, songItemlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SongItemlist:Ljava/util/ArrayList;

    .line 210
    return-void
.end method

.method public setSonglistCollect(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistCollect"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCollect:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setSonglistCreatetime(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistCreatetime"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCreatetime:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setSonglistDetailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistDetailUrl"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistDetailUrl:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setSonglistHot(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistHot"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistHot:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setSonglistId(I)V
    .locals 0
    .parameter "songlistId"

    .prologue
    .line 58
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistId:I

    .line 59
    return-void
.end method

.method public setSonglistIntro(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistIntro"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistIntro:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setSonglistName(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistName"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setSonglistOwnerImage(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistOwnerImage"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerImage:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSonglistOwnerName(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistOwnerName"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSonglistOwnerSinaId(I)V
    .locals 0
    .parameter "songlistOwnerSinaId"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerSinaId:I

    .line 69
    return-void
.end method

.method public setSonglistPhoto(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistPhoto"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistPhoto:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setSonglistShare(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistShare"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistShare:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setSonglistSongSum(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistSongSum"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistSongSum:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSonglistUpdatetime(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistUpdatetime"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistUpdatetime:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setSonglistWeiboId(I)V
    .locals 0
    .parameter "songlistWeiboId"

    .prologue
    .line 159
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistWeiboId:I

    .line 160
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 251
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerSinaId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistWeiboId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistSongSum:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCollect:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCreatetime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistUpdatetime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistHot:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistIntro:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistDetailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SongItemlist:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 257
    :cond_0
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v1, "Some dest is null"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 274
    :goto_0
    return-void

    .line 260
    :cond_1
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerSinaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistOwnerImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistSongSum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCollect:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistCreatetime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistUpdatetime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistWeiboId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistHot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistIntro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SonglistDetailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->SongItemlist:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0
.end method
