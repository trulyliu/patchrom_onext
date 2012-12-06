.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
.super Ljava/lang/Object;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseItem"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumKey:Ljava/lang/String;

.field private mArtPath:Ljava/lang/String;

.field mId:J

.field private mPrimaryText:Ljava/lang/String;

.field private mSecondaryText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 927
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 928
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mId:J

    .line 929
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 930
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 931
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 932
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mAlbum:Ljava/lang/String;

    .line 933
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mAlbumKey:Ljava/lang/String;

    .line 934
    return-void
.end method

.method static synthetic access$4300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 918
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 918
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 918
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 918
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getArtPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    return-object v0
.end method

.method private getId()J
    .locals 2

    .prologue
    .line 961
    iget-wide v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mId:J

    return-wide v0
.end method

.method private getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    return-object v0
.end method

.method private getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method protected getAlbumKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mAlbumKey:Ljava/lang/String;

    return-object v0
.end method

.method protected setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 953
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mAlbum:Ljava/lang/String;

    .line 954
    return-void
.end method

.method protected setAlbumKey(Ljava/lang/String;)V
    .locals 0
    .parameter "albumKey"

    .prologue
    .line 957
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mAlbumKey:Ljava/lang/String;

    .line 958
    return-void
.end method

.method protected setArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 949
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 950
    return-void
.end method

.method protected setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 937
    iput-wide p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mId:J

    .line 938
    return-void
.end method

.method protected setPrimaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 941
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 942
    return-void
.end method

.method protected setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 945
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 946
    return-void
.end method
