.class Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;
.super Ljava/lang/Object;
.source "MusicGridViewUtil.java"

# interfaces
.implements Lcom/htc/sunnyCore/IMediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildMediaList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/sunnyCore/IMediaList",
        "<",
        "Lcom/htc/music/widget/gridview/MusicGridViewMediaData;",
        ">;"
    }
.end annotation


# instance fields
.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mChildIdField:I

.field private mChildImageKeyField:I

.field private mChildImagePathField:I

.field private mChildNameField:I

.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "cursor"

    .prologue
    const/4 v0, -0x1

    .line 921
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildIdField:I

    .line 874
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildNameField:I

    .line 875
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildImagePathField:I

    .line 876
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildImageKeyField:I

    .line 922
    invoke-virtual {p0, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->updateMediaList(Landroid/database/Cursor;)V

    .line 923
    return-void
.end method

.method private initChildFieldId(Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V
    .locals 1
    .parameter "c"
    .parameter "type"

    .prologue
    .line 887
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildIdField:I

    .line 889
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildNameField:I

    .line 890
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildImagePathField:I

    .line 891
    const-string v0, "album_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildImageKeyField:I

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildIdField:I

    .line 894
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildNameField:I

    goto :goto_0

    .line 895
    :cond_2
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 896
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildIdField:I

    .line 897
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildNameField:I

    goto :goto_0

    .line 898
    :cond_3
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildIdField:I

    .line 900
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildNameField:I

    goto :goto_0
.end method

.method private obtainNewMediaData(Landroid/database/Cursor;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;
    .locals 7
    .parameter "cursor"

    .prologue
    .line 910
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildIdField:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 911
    .local v4, id:I
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildNameField:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 912
    .local v2, name:Ljava/lang/String;
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildImagePathField:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 913
    .local v3, path:Ljava/lang/String;
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mChildImageKeyField:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 914
    .local v5, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v6, 0x1

    .line 915
    .local v6, unknown:Z
    :goto_0
    if-eqz v6, :cond_1

    .line 916
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$400(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/lang/String;

    move-result-object v2

    .line 918
    :cond_1
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 914
    .end local v6           #unknown:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 971
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 972
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 871
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 884
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 977
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    goto :goto_0
.end method

.method public updateMediaList(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 926
    if-nez p1, :cond_1

    .line 927
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$500(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->initChildFieldId(Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V

    .line 933
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->updateMediaListData(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public updateMediaListData(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 937
    if-eqz p1, :cond_2

    .line 939
    const/4 v1, 0x0

    .line 941
    .local v1, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 942
    .local v0, count:I
    const-string v3, "[MusicGridViewUtil]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "child count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    if-lez v0, :cond_0

    .line 944
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .restart local v1       #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 946
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 947
    invoke-direct {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->obtainNewMediaData(Landroid/database/Cursor;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 955
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 956
    .local v2, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 957
    if-eqz v2, :cond_1

    .line 958
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 960
    :cond_1
    const/4 v1, 0x0

    .line 962
    .end local v0           #count:I
    .end local v1           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    .end local v2           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;>;"
    :cond_2
    return-void
.end method
