.class public Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
.super Ljava/lang/Object;
.source "MusicGridViewCoverInfo.java"


# instance fields
.field public albumArt:Ljava/lang/String;

.field public albumId:I

.field public albumKey:Ljava/lang/String;

.field public albumName:Ljava/lang/String;

.field public mCanUseAlbumIdToDecode:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "key"
    .parameter "name"
    .parameter "path"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->mCanUseAlbumIdToDecode:Z

    .line 13
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumId:I

    .line 14
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumKey:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumName:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public setCoverInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "key"
    .parameter "name"
    .parameter "path"

    .prologue
    .line 20
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumId:I

    .line 21
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumKey:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumName:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    .line 24
    return-void
.end method
