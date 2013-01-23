.class public Lcom/mt/mtgif/MyPro$DirNumName;
.super Ljava/lang/Object;
.source "MyPro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mt/mtgif/MyPro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirNumName"
.end annotation


# instance fields
.field public mFolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mt/operate/ListFolderPic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mt/operate/ListFolderPic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    .local p1, it:Ljava/util/List;,"Ljava/util/List<Lcom/mt/operate/ListFolderPic;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p1, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    .line 791
    return-void
.end method


# virtual methods
.method public addFolderDir(Ljava/lang/String;)Z
    .locals 10
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 802
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 805
    .local v2, index:I
    if-gez v2, :cond_0

    move v4, v5

    .line 835
    :goto_0
    return v4

    .line 808
    :cond_0
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, dir:Ljava/lang/String;
    const-string v4, "/."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v9, :cond_1

    move v4, v5

    .line 810
    goto :goto_0

    .line 813
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 820
    :goto_2
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_6

    .line 821
    new-instance v3, Lcom/mt/operate/ListFolderPic;

    invoke-direct {v3}, Lcom/mt/operate/ListFolderPic;-><init>()V

    .line 822
    .local v3, tempdir:Lcom/mt/operate/ListFolderPic;
    iput-object v0, v3, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    .line 824
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mt/operate/ListFolderPic;->mFolderName:Ljava/lang/String;

    .line 825
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/mt/operate/ListFolderPic;->mLastModifyTime:J

    .line 826
    iget-object v4, v3, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 827
    iput v6, v3, Lcom/mt/operate/ListFolderPic;->mPicNum:I

    .line 828
    const-string v4, "MTXX"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_2

    const-string v4, "DCIM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v9, :cond_5

    .line 829
    :cond_2
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_3
    move v4, v6

    .line 833
    goto :goto_0

    .line 814
    .end local v3           #tempdir:Lcom/mt/operate/ListFolderPic;
    :cond_3
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mt/operate/ListFolderPic;

    iget-object v4, v4, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 815
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mt/operate/ListFolderPic;

    iget v7, v4, Lcom/mt/operate/ListFolderPic;->mPicNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/mt/operate/ListFolderPic;->mPicNum:I

    .line 816
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mt/operate/ListFolderPic;

    iget-object v4, v4, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 813
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 831
    .restart local v3       #tempdir:Lcom/mt/operate/ListFolderPic;
    :cond_5
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v3           #tempdir:Lcom/mt/operate/ListFolderPic;
    :cond_6
    move v4, v5

    .line 835
    goto/16 :goto_0
.end method

.method public folderFilter(Ljava/lang/String;)V
    .locals 7
    .parameter "foldername"

    .prologue
    .line 857
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v3, 0x0

    .local v3, sdnum:I
    const/4 v2, 0x0

    .local v2, sdindex:I
    const/4 v1, 0x0

    .line 860
    .local v1, mntsdindex:I
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 870
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 871
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 861
    :cond_2
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mt/operate/ListFolderPic;

    iget-object v4, v4, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 862
    move v2, v0

    .line 863
    add-int/lit8 v3, v3, 0x1

    .line 865
    :cond_3
    iget-object v4, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mt/operate/ListFolderPic;

    iget-object v4, v4, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/mnt"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 866
    move v1, v0

    .line 867
    add-int/lit8 v3, v3, 0x1

    .line 860
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public folderFilterALL()V
    .locals 4

    .prologue
    .line 842
    iget-object v2, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 843
    .local v1, path:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 846
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 851
    return-void

    .line 844
    :cond_0
    iget-object v2, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mt/operate/ListFolderPic;

    iget-object v2, v2, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 843
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    :cond_1
    aget-object v2, v1, v0

    const-string v3, "/mnt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 848
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/mt/mtgif/MyPro$DirNumName;->folderFilter(Ljava/lang/String;)V

    .line 846
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
