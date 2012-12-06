.class public Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
.super Ljava/lang/Object;
.source "MusicGridViewUtil.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/sunnyCore/IMediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParentMediaList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/SectionIndexer;",
        "Lcom/htc/sunnyCore/IMediaList",
        "<",
        "Lcom/htc/music/widget/gridview/MusicGridViewMediaData;",
        ">;"
    }
.end annotation


# instance fields
.field private childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

.field private expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

.field protected mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexPositionMap:Landroid/util/SparseIntArray;

.field private mIndexStringArray:[Ljava/lang/String;

.field private mIsContentChanged:Z

.field private mNewArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedCount:I

.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1028
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    .line 1036
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    .line 1037
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    return-void
.end method

.method private initParentFieldId(Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V
    .locals 2
    .parameter "c"
    .parameter "type"

    .prologue
    .line 1056
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$602(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    .line 1058
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$702(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    .line 1059
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "album_art"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$802(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$602(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    .line 1062
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$702(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    goto :goto_0

    .line 1063
    :cond_2
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1064
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$602(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    .line 1065
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$702(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    goto :goto_0

    .line 1066
    :cond_3
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1067
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$602(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    .line 1068
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$702(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    goto :goto_0

    .line 1069
    :cond_4
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->FOLDER_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "bucket_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$602(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    .line 1071
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "bucket_display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$702(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    .line 1072
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const-string v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentLocationField:I
    invoke-static {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$902(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I

    goto/16 :goto_0
.end method

.method private obtainNewMediaData(Landroid/database/Cursor;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .locals 10
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 1077
    const/4 v2, 0x0

    .line 1080
    .local v2, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    const/4 v4, 0x0

    .line 1082
    .local v4, path:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I
    invoke-static {v8}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$600(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, id:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I
    invoke-static {v8}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$700(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1084
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v8, "<unknown>"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_0
    move v5, v7

    .line 1085
    .local v5, unknown:Z
    :goto_0
    if-eqz v5, :cond_1

    .line 1086
    iget-object v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1000(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/lang/String;

    move-result-object v3

    .line 1088
    :cond_1
    iget-object v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I
    invoke-static {v8}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$800(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v8

    if-ne v8, v9, :cond_5

    .line 1089
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local v2           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, v6, v3, v0, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1100
    .restart local v2       #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentLocationField:I
    invoke-static {v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$900(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 1101
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentLocationField:I
    invoke-static {v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$900(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->filterFolderLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setLocation(Ljava/lang/String;)V

    .line 1104
    :cond_3
    return-object v2

    .end local v5           #unknown:Z
    :cond_4
    move v5, v6

    .line 1084
    goto :goto_0

    .line 1091
    .restart local v5       #unknown:Z
    :cond_5
    iget-object v7, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I
    invoke-static {v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$800(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1092
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local v2           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v7, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, v7, v3, v0, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1094
    .restart local v2       #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    const-string v6, "album_key"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1095
    .local v1, keyField:I
    if-eq v1, v9, :cond_2

    .line 1096
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setCoverInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private obtainNewMediaData(Lcom/htc/music/widget/gridview/DataPrototype;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .locals 5
    .parameter "data"

    .prologue
    .line 1108
    if-nez p1, :cond_0

    .line 1109
    const-string v3, "[MusicGridViewUtil]"

    const-string v4, "obtainNewMediaData, data is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const/4 v1, 0x0

    .line 1123
    :goto_0
    return-object v1

    .line 1113
    :cond_0
    const/4 v1, 0x0

    .line 1117
    .local v1, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v0, p1, Lcom/htc/music/widget/gridview/DataPrototype;->mId:Ljava/lang/String;

    .line 1118
    .local v0, id:Ljava/lang/String;
    iget-object v2, p1, Lcom/htc/music/widget/gridview/DataPrototype;->mIdName:Ljava/lang/String;

    .line 1120
    .local v2, name:Ljava/lang/String;
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local v1           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1121
    .restart local v1       #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v3, p1, Lcom/htc/music/widget/gridview/DataPrototype;->mData:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setLocation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareParentMediaData()V
    .locals 4

    .prologue
    .line 1189
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemCount()I

    move-result v0

    .local v0, count:I
    if-gtz v0, :cond_1

    .line 1203
    :cond_0
    return-void

    .line 1193
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1194
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v2

    .line 1195
    .local v2, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v2, :cond_0

    .line 1196
    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->isItemDataReady()Z

    .line 1193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getChildIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    if-gt p1, v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    sub-int v0, p1, v0

    .line 1450
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getChildMediaList()Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1455
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1456
    .local v0, count:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v1, :cond_0

    .line 1458
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    add-int/2addr v0, v1

    .line 1461
    .end local v0           #count:I
    :cond_0
    return v0

    .line 1455
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCountOnlyParent()I
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDeselectedCount()I
    .locals 2

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    return-object v0
.end method

.method public getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    .locals 3
    .parameter "itemIndex"

    .prologue
    const/4 v1, 0x0

    .line 1467
    if-gez p1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return-object v1

    .line 1468
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    if-eqz v2, :cond_3

    .line 1469
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getChildIndex(I)I

    move-result v0

    .line 1470
    .local v0, childIndex:I
    if-ltz v0, :cond_2

    .line 1471
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v1

    goto :goto_0

    .line 1473
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getParentIndex(I)I

    move-result p1

    .line 1477
    .end local v0           #childIndex:I
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1480
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1028
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    return-object v0
.end method

.method public getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .locals 2
    .parameter "parentItemIndex"

    .prologue
    const/4 v0, 0x0

    .line 1373
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-object v0

    .line 1374
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    goto :goto_0
.end method

.method public getParentIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ne v0, p1, :cond_1

    .line 1440
    :cond_0
    :goto_0
    return p1

    .line 1432
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    if-lt p1, v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    if-le p1, v0, :cond_2

    .line 1435
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    sub-int/2addr p1, v0

    goto :goto_0

    .line 1437
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget p1, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "sectionIndex"

    .prologue
    .line 1522
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1523
    .local v1, position:I
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getParentIndex(I)I

    move-result v0

    .line 1524
    .local v0, parentIndex:I
    if-gt v1, v0, :cond_0

    .line 1525
    .end local v1           #position:I
    :goto_0
    return v1

    .restart local v1       #position:I
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1530
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionObject()[Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1486
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1487
    .local v5, indexStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    if-nez v9, :cond_0

    .line 1488
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    .line 1490
    :cond_0
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 1493
    const/4 v0, 0x0

    .line 1495
    .local v0, cnt:I
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    iget-object v9, v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1496
    .local v7, src:C
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 1497
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 1498
    .local v8, str:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #cnt:I
    .local v1, cnt:I
    invoke-virtual {v9, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 1500
    const/4 v4, 0x1

    .local v4, i:I
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1501
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    iget-object v9, v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1502
    .local v3, dest:C
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 1503
    const/16 v9, 0x5a

    if-le v3, v9, :cond_2

    .line 1511
    .end local v3           #dest:C
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 1512
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_3

    .line 1513
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v6

    .line 1512
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1504
    .end local v6           #j:I
    .restart local v3       #dest:C
    :cond_2
    if-eq v7, v3, :cond_4

    .line 1505
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 1506
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    invoke-virtual {v9, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 1508
    move v7, v3

    .line 1500
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #cnt:I
    .restart local v1       #cnt:I
    goto :goto_0

    .line 1517
    .end local v1           #cnt:I
    .end local v2           #count:I
    .end local v3           #dest:C
    .end local v4           #i:I
    .end local v7           #src:C
    .end local v8           #str:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    return-object v9

    .restart local v1       #cnt:I
    .restart local v2       #count:I
    .restart local v3       #dest:C
    .restart local v4       #i:I
    .restart local v7       #src:C
    .restart local v8       #str:Ljava/lang/String;
    :cond_4
    move v0, v1

    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    goto :goto_2
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 1417
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    return v0
.end method

.method public indexOf(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)I
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 1346
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1349
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isAllParentMediaDataReady()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1158
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    .local v0, count:I
    if-gtz v0, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return v3

    .line 1162
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1163
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v2

    .line 1164
    .local v2, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v2, :cond_0

    .line 1165
    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isItemDataReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1174
    .end local v2           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public prepareNewMediaListData(Landroid/database/Cursor;)Z
    .locals 12
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1208
    if-nez p1, :cond_0

    .line 1262
    :goto_0
    return v8

    .line 1209
    :cond_0
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->initParentFieldId(Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V

    .line 1211
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    .line 1212
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1214
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    .line 1215
    iput-boolean v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    .line 1216
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v10, :cond_3

    .line 1217
    if-eqz p1, :cond_2

    .line 1218
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1219
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1220
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->obtainNewMediaData(Landroid/database/Cursor;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1224
    :cond_2
    iput-boolean v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    .line 1262
    :goto_2
    iget-boolean v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    goto :goto_0

    .line 1228
    :cond_3
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v10

    sget-object v11, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v10, v11}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v7, v8

    .line 1229
    .local v7, refreshName:Z
    :goto_3
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v10

    sget-object v11, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v10, v11}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v3, v8

    .line 1230
    .local v3, isDataReady:Z
    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1233
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 1234
    .local v5, newCount:I
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1236
    .local v6, oldCount:I
    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1237
    const/4 v4, 0x0

    .line 1238
    .local v4, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I
    invoke-static {v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$600(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1239
    .local v2, id:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 1240
    .local v0, data:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v10, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1241
    move-object v4, v0

    .line 1242
    iput-boolean v3, v4, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    .line 1244
    invoke-virtual {v4, v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setDecodeStatus(I)V

    .line 1245
    invoke-virtual {v4, v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setViewDecodeStatus(I)V

    .line 1246
    if-eqz v7, :cond_5

    .line 1247
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I
    invoke-static {v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$700(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    .line 1253
    .end local v0           #data:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :cond_5
    if-nez v4, :cond_6

    .line 1254
    invoke-direct {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->obtainNewMediaData(Landroid/database/Cursor;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v4

    .line 1255
    iput-boolean v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    .line 1257
    :cond_6
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #isDataReady:Z
    .end local v4           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .end local v5           #newCount:I
    .end local v6           #oldCount:I
    .end local v7           #refreshName:Z
    :cond_7
    move v7, v9

    .line 1228
    goto :goto_3

    .restart local v7       #refreshName:Z
    :cond_8
    move v3, v9

    .line 1229
    goto :goto_4

    .line 1260
    .restart local v3       #isDataReady:Z
    .restart local v5       #newCount:I
    .restart local v6       #oldCount:I
    :cond_9
    iget-boolean v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    if-eq v5, v6, :cond_a

    :goto_6
    or-int/2addr v8, v10

    iput-boolean v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    goto/16 :goto_2

    :cond_a
    move v8, v9

    goto :goto_6
.end method

.method public prepareNewMediaListData(Ljava/util/ArrayList;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/gridview/DataPrototype;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/DataPrototype;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1266
    if-nez p1, :cond_0

    .line 1267
    const-string v9, "[MusicGridViewUtil]"

    const-string v10, "updateMediaListData, dataList is null!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :goto_0
    return v8

    .line 1271
    :cond_0
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    .line 1272
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1274
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    .line 1277
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1278
    .local v0, count:I
    iput-boolean v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    .line 1279
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v10, :cond_5

    .line 1280
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1281
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/widget/gridview/DataPrototype;

    .local v7, tempData:Lcom/htc/music/widget/gridview/DataPrototype;
    if-eqz v7, :cond_2

    .line 1282
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->obtainNewMediaData(Lcom/htc/music/widget/gridview/DataPrototype;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1285
    :cond_2
    const-string v9, "[MusicGridViewUtil]"

    const-string v10, "updateMediaListData, tempData is null!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1288
    .end local v7           #tempData:Lcom/htc/music/widget/gridview/DataPrototype;
    :cond_3
    iput-boolean v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    .line 1324
    :cond_4
    iget-boolean v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    goto :goto_0

    .line 1292
    .end local v2           #i:I
    :cond_5
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v10

    sget-object v11, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v10, v11}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move v6, v8

    .line 1294
    .local v6, refreshName:Z
    :goto_3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v0, :cond_4

    .line 1295
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/widget/gridview/DataPrototype;

    .restart local v7       #tempData:Lcom/htc/music/widget/gridview/DataPrototype;
    if-eqz v7, :cond_a

    .line 1296
    const/4 v5, 0x0

    .line 1298
    .local v5, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v4, v7, Lcom/htc/music/widget/gridview/DataPrototype;->mId:Ljava/lang/String;

    .line 1299
    .local v4, id:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 1300
    .local v1, data:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v10, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1301
    move-object v5, v1

    .line 1302
    iput-boolean v9, v5, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    .line 1304
    invoke-virtual {v5, v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setDecodeStatus(I)V

    .line 1305
    invoke-virtual {v5, v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setViewDecodeStatus(I)V

    .line 1306
    if-eqz v6, :cond_7

    .line 1307
    iget-object v10, v7, Lcom/htc/music/widget/gridview/DataPrototype;->mIdName:Ljava/lang/String;

    iput-object v10, v5, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    .line 1313
    .end local v1           #data:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :cond_7
    if-nez v5, :cond_8

    .line 1314
    invoke-direct {p0, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->obtainNewMediaData(Lcom/htc/music/widget/gridview/DataPrototype;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v5

    .line 1315
    iput-boolean v8, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    .line 1317
    :cond_8
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2           #i:I
    .end local v6           #refreshName:Z
    .end local v7           #tempData:Lcom/htc/music/widget/gridview/DataPrototype;
    :cond_9
    move v6, v9

    .line 1292
    goto :goto_3

    .line 1320
    .restart local v2       #i:I
    .restart local v6       #refreshName:Z
    .restart local v7       #tempData:Lcom/htc/music/widget/gridview/DataPrototype;
    :cond_a
    const-string v10, "[MusicGridViewUtil]"

    const-string v11, "updateMediaListData, tempData is null!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1041
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1043
    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1048
    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    .line 1051
    :cond_1
    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 1053
    return-void
.end method

.method public remove(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .locals 2
    .parameter "parentIndex"

    .prologue
    .line 1353
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1355
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 1356
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSectionObject()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 1358
    .end local v0           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public remove(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1364
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSectionObject()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 1366
    :cond_0
    return-void
.end method

.method public resetSelectedCount()V
    .locals 1

    .prologue
    .line 1425
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    .line 1426
    return-void
.end method

.method public setChildMediaList(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;)V
    .locals 0
    .parameter "childList"

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    .line 1128
    return-void
.end method

.method public setItemDeselected(I)V
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 1405
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    .line 1406
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v0, :cond_0

    .line 1407
    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 1411
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    goto :goto_0
.end method

.method public setItemSelected(I)V
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 1393
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    .line 1394
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v0, :cond_0

    .line 1395
    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1402
    :cond_0
    :goto_0
    return-void

    .line 1398
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 1399
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    goto :goto_0
.end method

.method public switchItemSelectedStatus(I)I
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 1379
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    .line 1380
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v0, :cond_0

    .line 1381
    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1382
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 1383
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    .line 1389
    :cond_0
    :goto_0
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    return v1

    .line 1385
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 1386
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    goto :goto_0
.end method

.method public updateExpGridViewParams(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    .line 1136
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 1137
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 1138
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 1139
    return-void
.end method

.method public updateNewMediaListAfterPrepare()Z
    .locals 3

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1329
    const-string v1, "[MusicGridViewUtil]"

    const-string v2, "please call the function prepareNewMediaListData first to prepare a new list"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const/4 v1, 0x1

    .line 1342
    :goto_0
    return v1

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 1333
    .local v0, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;>;"
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 1334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mNewArrayList:Ljava/util/ArrayList;

    .line 1335
    if-eqz v0, :cond_1

    .line 1336
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1338
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->prepareParentMediaData()V

    .line 1339
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setTotalCount(I)V

    .line 1340
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSectionObject()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 1342
    iget-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIsContentChanged:Z

    goto :goto_0
.end method
