.class public Lcom/htc/music/util/MusicUtils$DecodeInfo;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeInfo"
.end annotation


# instance fields
.field public mAlbumId:I

.field public mPath:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "albumId"
    .parameter "path"

    .prologue
    .line 4732
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4733
    iput p1, p0, Lcom/htc/music/util/MusicUtils$DecodeInfo;->mAlbumId:I

    .line 4734
    iput-object p2, p0, Lcom/htc/music/util/MusicUtils$DecodeInfo;->mPath:Ljava/lang/String;

    .line 4735
    return-void
.end method
