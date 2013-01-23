.class public Lcom/mt/operate/ListFolderPic;
.super Ljava/lang/Object;
.source "ListFolderPic.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mt/operate/ListFolderPic$DirFilter;,
        Lcom/mt/operate/ListFolderPic$JpgFilter;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7311860f590d5db9L


# instance fields
.field public mFirstPic:Ljava/lang/String;

.field public mFolderName:Ljava/lang/String;

.field public mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastModifyTime:J

.field public mPath:Ljava/lang/String;

.field public mPicList:[Ljava/lang/String;

.field public mPicNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    .line 31
    iput-object v1, p0, Lcom/mt/operate/ListFolderPic;->mFolderName:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mt/operate/ListFolderPic;->mLastModifyTime:J

    .line 33
    return-void
.end method


# virtual methods
.method public getImageFiles()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 97
    .local v2, files:[Ljava/io/File;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v4, tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-lt v3, v5, :cond_0

    .line 110
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    .line 111
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 115
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/mt/operate/ListFolderPic;->mPicNum:I

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mt/operate/ListFolderPic;->mLastModifyTime:J

    .line 117
    iget-object v5, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/mt/operate/ListFolderPic;->mFirstPic:Ljava/lang/String;

    .line 119
    return-object v4

    .line 99
    :cond_0
    aget-object v1, v2, v3

    .line 101
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mt/mtgif/MyPro;->getImageFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v1           #file:Ljava/io/File;
    :cond_2
    const-string v6, "TEMP1"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "i="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " path="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v6, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v6, v3

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getPicList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    return-object v1

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    iget-object v1, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateImageFiles()V
    .locals 6

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 73
    .local v2, files:[Ljava/io/File;
    const/4 v0, 0x0

    .line 74
    iget-object v4, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 76
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_1

    .line 88
    iget-object v4, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/mt/operate/ListFolderPic;->mPicNum:I

    goto :goto_0

    .line 77
    :cond_1
    aget-object v1, v2, v3

    .line 79
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-nez v4, :cond_2

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/mtgif/MyPro;->getImageFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    iget-object v4, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
