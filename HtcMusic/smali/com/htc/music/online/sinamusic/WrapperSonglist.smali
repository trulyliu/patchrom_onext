.class public Lcom/htc/music/online/sinamusic/WrapperSonglist;
.super Ljava/lang/Object;
.source "WrapperSonglist.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Image:Landroid/graphics/Bitmap;

.field private SonglistCreater:Ljava/lang/String;

.field private SonglistCreaterId:I

.field private SonglistDetailUrl:Ljava/lang/String;

.field private SonglistId:I

.field private SonglistImage:Ljava/lang/String;

.field private SonglistName:Ljava/lang/String;

.field private SonglistUrl:Ljava/lang/String;

.field private TotalSonglist:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/htc/music/online/sinamusic/WrapperSonglist$1;

    invoke-direct {v0}, Lcom/htc/music/online/sinamusic/WrapperSonglist$1;-><init>()V

    sput-object v0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->Image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSonglistCreater()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreater:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistCreaterId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreaterId:I

    return v0
.end method

.method public getSonglistDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistDetailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistId:I

    return v0
.end method

.method public getSonglistImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistName:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglistUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSonglist()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->TotalSonglist:I

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "paramParcel"

    .prologue
    .line 125
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreaterId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistDetailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreater:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v1, "Some dest is null"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistId:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistName:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistImage:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistUrl:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreaterId:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreater:Ljava/lang/String;

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->Image:Landroid/graphics/Bitmap;

    .line 57
    return-void
.end method

.method public setSonglistCreater(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistCreater"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreater:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setSonglistCreaterId(I)V
    .locals 0
    .parameter "songlistCreaterId"

    .prologue
    .line 105
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreaterId:I

    .line 106
    return-void
.end method

.method public setSonglistDetailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistDetailUrl"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistDetailUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSonglistId(I)V
    .locals 0
    .parameter "songlistId"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistId:I

    .line 66
    return-void
.end method

.method public setSonglistImage(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistImage"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistImage:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSonglistName(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistName"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSonglistUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "songlistUrl"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistUrl:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setTotalSonglist(I)V
    .locals 0
    .parameter "totalSonglist"

    .prologue
    .line 47
    iput p1, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->TotalSonglist:I

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreaterId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistDetailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreater:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    const-string v1, "Some dest is null"

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_1
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistDetailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreaterId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/WrapperSonglist;->SonglistCreater:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
