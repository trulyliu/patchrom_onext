.class public Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.super Ljava/lang/Object;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MusicGridViewUtil]"


# instance fields
.field private mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

.field private mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

.field private mChildUnknowName:Ljava/lang/String;

.field private mGridViewLayoutOrientation:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field protected mMusicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;

.field private mNewParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

.field private mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

.field private mParentIdField:I

.field private mParentImagePathField:I

.field private mParentLocationField:I

.field private mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

.field private mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

.field private mParentNameField:I

.field private mParentUnknowName:Ljava/lang/String;

.field private mQueryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

.field private mQueryOrderListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V
    .locals 7
    .parameter "parentType"
    .parameter "childType"
    .parameter "activity"

    .prologue
    const v6, 0x7f06003e

    const v5, 0x7f06003d

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryList:Ljava/util/List;

    .line 37
    iput v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I

    .line 38
    iput v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I

    .line 39
    iput v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I

    .line 40
    iput v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentLocationField:I

    .line 41
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    .line 43
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    .line 45
    iput v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mGridViewLayoutOrientation:I

    .line 47
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 148
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$1;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$1;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    .line 60
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    .line 61
    iput-object p2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    .line 63
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    if-eqz v1, :cond_7

    .line 65
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    .line 79
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 81
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    .line 91
    :cond_1
    :goto_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MusicGridViewUtilWorker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 92
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1, v4}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 93
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    .line 95
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    if-nez v1, :cond_2

    .line 96
    const-string v1, "[MusicGridViewUtil]"

    const-string v2, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_2
    new-instance v1, Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    const/16 v2, 0xa

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderListener:Lcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;-><init>(IILcom/htc/music/widget/gridview/ProcessOrderHelper$IProcessListener;)V

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    .line 103
    return-void

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_4
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_5
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->FOLDER_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    :cond_6
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    goto/16 :goto_0

    .line 76
    :cond_7
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "ParentType should not be null"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_8
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 83
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    goto/16 :goto_1

    .line 84
    :cond_9
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 85
    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    goto/16 :goto_1

    .line 86
    :cond_a
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateAlbumartForGenreArtist(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/ProcessOrderHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentLocationField:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/music/widget/gridview/MusicGridViewUtil;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentLocationField:I

    return p1
.end method

.method private updateAlbumartForGenreArtist(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    .locals 9
    .parameter "mediaData"

    .prologue
    const/4 v7, 0x0

    .line 518
    if-eqz p1, :cond_0

    iget-boolean v5, p1, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    if-eqz v5, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mMusicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;

    iget-object v6, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;->getCoverInfo(Ljava/lang/String;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;

    move-result-object v4

    .line 524
    .local v4, updateInfo:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    if-eqz v4, :cond_0

    .line 527
    iget-object v1, v4, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;->mList:Landroid/util/SparseArray;

    .line 529
    .local v1, list:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;>;"
    if-eqz v1, :cond_3

    .line 531
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 545
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    .line 547
    .local v0, coverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->getCoverInfo()Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    move-result-object v2

    .line 548
    .local v2, oldCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    iget-object v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    .line 549
    .local v3, oldPath:Ljava/lang/String;
    if-eqz v3, :cond_2

    iget-object v5, v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 551
    :cond_2
    invoke-virtual {p1, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setDecodeStatus(I)V

    .line 552
    invoke-virtual {p1, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setViewDecodeStatus(I)V

    .line 553
    iget v5, v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumId:I

    iget-object v6, v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumKey:Ljava/lang/String;

    iget-object v7, v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumName:Ljava/lang/String;

    iget-object v8, v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setCoverInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :goto_1
    iget v5, v4, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;->mTotalChild:I

    iput v5, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mNumberOfChilds:I

    .line 633
    .end local v0           #coverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    .end local v2           #oldCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    .end local v3           #oldPath:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    goto :goto_0

    .line 555
    .restart local v0       #coverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    .restart local v2       #oldCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    .restart local v3       #oldPath:Ljava/lang/String;
    :cond_4
    iget v5, v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumId:I

    iget-object v6, v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumKey:Ljava/lang/String;

    iget-object v7, v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumName:Ljava/lang/String;

    iget-object v8, v0, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumArt:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setCoverInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateExpandableGridViewParameters(ILcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 2
    .parameter "globalIndex"
    .parameter "childMediaList"
    .parameter "gridView"
    .parameter "expParams"

    .prologue
    .line 314
    if-nez p2, :cond_0

    .line 315
    invoke-virtual {p4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 341
    .end local p4
    :goto_0
    return-object p4

    .line 319
    .restart local p4
    :cond_0
    iget v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v0, :cond_4

    .line 320
    iget v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ne v0, p1, :cond_1

    .line 321
    invoke-virtual {p4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    goto :goto_0

    .line 323
    :cond_1
    iget v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    if-ge p1, v0, :cond_2

    .line 324
    iput p1, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 334
    :goto_1
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mGridViewLayoutOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 335
    iget v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    invoke-virtual {p3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getNumColumn()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getBestChildInsertIndex(II)I

    move-result v0

    iput v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 339
    :goto_2
    iget v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    invoke-virtual {p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 340
    invoke-virtual {p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getCount()I

    move-result v0

    iput v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    goto :goto_0

    .line 325
    :cond_2
    iget v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    if-le p1, v0, :cond_3

    .line 326
    iget v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    sub-int v0, p1, v0

    iput v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    goto :goto_1

    .line 328
    :cond_3
    const/4 p4, 0x0

    goto :goto_0

    .line 331
    :cond_4
    iput p1, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    goto :goto_1

    .line 337
    :cond_5
    iget v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    invoke-virtual {p3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getNumRow()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getBestChildInsertIndex(II)I

    move-result v0

    iput v0, p4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    goto :goto_2
.end method


# virtual methods
.method public deleteItems(ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V
    .locals 8
    .parameter "globalIndex"
    .parameter "gridView"

    .prologue
    .line 190
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v2

    .line 191
    .local v2, expParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildIndex(I)I

    move-result v3

    .local v3, j:I
    if-ltz v3, :cond_4

    .line 192
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getChildMediaList()Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    move-result-object v0

    .line 193
    .local v0, childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;
    if-nez v0, :cond_1

    .line 226
    .end local v0           #childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;
    .end local v2           #expParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .end local v3           #j:I
    :cond_0
    :goto_0
    return-void

    .line 194
    .restart local v0       #childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;
    .restart local v2       #expParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .restart local v3       #j:I
    :cond_1
    invoke-virtual {v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->remove(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    .line 196
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    if-eqz v6, :cond_3

    .line 197
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 198
    .local v5, msg:Landroid/os/Message;
    const/4 v6, 0x2

    iput v6, v5, Landroid/os/Message;->what:I

    .line 200
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v4

    .line 201
    .local v4, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v4, :cond_2

    .line 202
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    .line 203
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setDecodeStatus(I)V

    .line 204
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setViewDecodeStatus(I)V

    .line 207
    :cond_2
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v6, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    .end local v4           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .end local v5           #msg:Landroid/os/Message;
    :cond_3
    iget v6, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 213
    iget v6, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    .line 214
    invoke-virtual {p2, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v0           #childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;
    .end local v2           #expParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .end local v3           #j:I
    :catch_0
    move-exception v1

    .line 223
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "[MusicGridViewUtil]"

    const-string v7, "deleteItem : index out of bounds"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #expParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .restart local v3       #j:I
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 216
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v6, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->remove(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 217
    iget v6, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v6, :cond_0

    .line 218
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 219
    invoke-virtual {p2, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public deleteParentItems([ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V
    .locals 6
    .parameter "list"
    .parameter "gridView"

    .prologue
    .line 230
    if-eqz p1, :cond_2

    :try_start_0
    array-length v4, p1

    if-eqz v4, :cond_2

    .line 232
    array-length v4, p1

    new-array v3, v4, [Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 233
    .local v3, mediaList:[Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 234
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v2

    .line 235
    .local v2, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    aput-object v2, v3, v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v2           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 238
    aget-object v4, v3, v1

    if-eqz v4, :cond_1

    .line 239
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->remove(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    .end local v1           #i:I
    .end local v3           #mediaList:[Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "[MusicGridViewUtil]"

    const-string v5, "deleteItem : index out of bounds"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 108
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 113
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    if-eqz v0, :cond_2

    .line 131
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->release()V

    .line 133
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->release()V

    .line 138
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->release()V

    .line 143
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    .line 146
    :cond_4
    return-void

    .line 133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public forceUpdateParentAlbumart(I)V
    .locals 4
    .parameter "globalIndex"

    .prologue
    .line 174
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 176
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 178
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v0

    .line 179
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    .line 180
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    .line 182
    :cond_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 183
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    .end local v0           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public getChildIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getChildIndex(I)I

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getChildItemCount()I
    .locals 2

    .prologue
    .line 473
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getChildMediaList()Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    move-result-object v0

    .line 474
    .local v0, childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getCount()I

    move-result v1

    .line 477
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildItemCount(I)I
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 481
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 483
    .local v0, mediatData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    .line 484
    iget v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mNumberOfChilds:I

    .line 488
    .end local v0           #mediatData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildItemCount(Lcom/htc/sunnyCore/IMediaData;)I
    .locals 1
    .parameter "parentMediaData"

    .prologue
    .line 492
    instance-of v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v0, :cond_0

    .line 493
    check-cast p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local p1
    iget v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mNumberOfChilds:I

    .line 495
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildMediaDataId(I)Ljava/lang/String;
    .locals 3
    .parameter "childIndex"

    .prologue
    .line 433
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getChildMediaList()Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    move-result-object v0

    .line 434
    .local v0, childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    .line 436
    .local v1, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;
    if-eqz v1, :cond_0

    .line 437
    iget-object v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mId:Ljava/lang/String;

    .line 440
    .end local v1           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChildMediaDataName(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 398
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getChildMediaList()Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    move-result-object v0

    .line 399
    .local v0, childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    .line 401
    .local v1, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;
    if-eqz v1, :cond_0

    .line 402
    iget-object v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    .line 405
    .end local v1           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstChildId(I)Ljava/lang/String;
    .locals 2
    .parameter "parentIndex"

    .prologue
    .line 452
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v0

    .line 453
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    .line 454
    iget-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 456
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaDataLocation(I)Ljava/lang/String;
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 499
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 501
    .local v0, mediatData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    .line 502
    iget-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mLocation:Ljava/lang/String;

    .line 506
    .end local v0           #mediatData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaDataLocation(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 510
    instance-of v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v0, :cond_0

    .line 511
    check-cast p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaDataName(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 416
    instance-of v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v0, :cond_0

    .line 417
    check-cast p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    .line 418
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    if-eqz v0, :cond_1

    .line 419
    check-cast p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 421
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getParentIndex(I)I

    move-result p1

    .line 302
    .end local p1
    :cond_0
    return p1
.end method

.method public getParentItemCount()I
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCountOnlyParent()I

    move-result v0

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentItemDeselectedCount()I
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getDeselectedCount()I

    move-result v0

    .line 813
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentItemIdFieldSelectedList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 823
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v4, :cond_0

    .line 825
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    .local v0, count:I
    if-gtz v0, :cond_1

    .line 836
    .end local v0           #count:I
    :cond_0
    return-object v2

    .line 827
    .restart local v0       #count:I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 829
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 830
    .local v3, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 831
    new-instance v4, Ljava/lang/Integer;

    iget-object v5, v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getParentItemSelectedCount()I
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSelectedCount()I

    move-result v0

    .line 806
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentItemSelectedList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 840
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v4, :cond_0

    .line 842
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    .local v0, count:I
    if-gtz v0, :cond_1

    .line 853
    .end local v0           #count:I
    :cond_0
    return-object v2

    .line 844
    .restart local v0       #count:I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 846
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 847
    .local v3, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 848
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getParentMediaDataId(I)Ljava/lang/String;
    .locals 2
    .parameter "parentIndex"

    .prologue
    .line 444
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v0

    .line 445
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    .line 448
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentMediaDataName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 390
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v0

    .line 391
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    .line 392
    iget-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    .line 394
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentMediaDataName(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 409
    instance-of v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v0, :cond_0

    .line 410
    check-cast p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentMediaList()Lcom/htc/sunnyCore/IMediaList;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    return-object v0
.end method

.method public isContainOnlyOneChild(I)Z
    .locals 3
    .parameter "parentIndex"

    .prologue
    const/4 v1, 0x1

    .line 467
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v0

    .line 468
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mNumberOfChilds:I

    if-ne v2, v1, :cond_0

    .line 469
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGridViewExpanded()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameParentClicked(I)Z
    .locals 1
    .parameter "parentIndex"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareAndCompareForParentMediaList(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "parentCursor"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->prepareNewMediaListData(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public prepareAndCompareForParentMediaList(Ljava/util/ArrayList;)Z
    .locals 1
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
    .line 276
    .local p1, parentDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/DataPrototype;>;"
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->prepareNewMediaListData(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public prepareChildMediaList(Landroid/database/Cursor;)V
    .locals 1
    .parameter "childCursor"

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    goto :goto_0
.end method

.method public refreshDownloadedArtForMediaData(I)V
    .locals 4
    .parameter "albumId"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public resetParentItemSelectedCount()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->resetSelectedCount()V

    .line 820
    :cond_0
    return-void
.end method

.method public setAllParentItemDeselected()I
    .locals 3

    .prologue
    .line 792
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v2, :cond_1

    .line 793
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    .line 794
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 795
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->setItemDeselected(I)V

    .line 794
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 797
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSelectedCount()I

    move-result v2

    .line 799
    .end local v0           #count:I
    .end local v1           #i:I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setAllParentItemSelected()I
    .locals 3

    .prologue
    .line 781
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v2, :cond_1

    .line 782
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    .line 783
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 784
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->setItemSelected(I)V

    .line 783
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 786
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSelectedCount()I

    move-result v2

    .line 788
    .end local v0           #count:I
    .end local v1           #i:I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setGridViewVisibleRange(III)V
    .locals 1
    .parameter "count"
    .parameter "firstVisibleIndex"
    .parameter "lastVisibleIndex"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->setVisibleRange(III)V

    .line 171
    :cond_0
    return-void
.end method

.method public setMediaDataName(Lcom/htc/sunnyCore/IMediaData;Ljava/lang/String;)V
    .locals 1
    .parameter "mediaData"
    .parameter "name"

    .prologue
    .line 425
    instance-of v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v0, :cond_1

    .line 426
    check-cast p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->setName(Ljava/lang/String;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 427
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    if-eqz v0, :cond_0

    .line 428
    check-cast p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 761
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mMusicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;

    .line 762
    return-void
.end method

.method public switchParentItemSelectedStatus(I)I
    .locals 1
    .parameter "parentIndex"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->switchItemSelectedStatus(I)I

    move-result v0

    .line 777
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateExpandableGridView(ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V
    .locals 6
    .parameter "globalIndex"
    .parameter "gridView"

    .prologue
    .line 363
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v3

    .line 364
    .local v3, oldParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    invoke-direct {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;-><init>()V

    .line 365
    .local v2, newParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    iget v4, v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    iput v4, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    .line 366
    iget v4, v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    iput v4, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 367
    iget v4, v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iput v4, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 368
    iget v4, v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    iput v4, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 369
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-direct {p0, p1, v4, p2, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridViewParameters(ILcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    .line 370
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    if-eqz v4, :cond_0

    .line 371
    iget v4, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v4, :cond_1

    iget v0, v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 373
    .local v0, index:I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v1

    .line 374
    .local v1, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewTitle(Ljava/lang/String;)V

    .line 376
    .end local v0           #index:I
    .end local v1           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->setChildMediaList(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;)V

    .line 377
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->updateExpGridViewParams(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 378
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {p2, v4, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildMediaList(Lcom/htc/sunnyCore/IMediaList;Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 379
    return-void

    :cond_1
    move v0, p1

    .line 371
    goto :goto_0
.end method

.method public updateExpandableGridView(ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V
    .locals 0
    .parameter "globalIndex"
    .parameter "gridView"
    .parameter "layoutOrientation"

    .prologue
    .line 358
    iput p3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mGridViewLayoutOrientation:I

    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridView(ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 360
    return-void
.end method

.method public updateExpandableGridViewParameters(IILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 4
    .parameter "parentClickIndex"
    .parameter "parentColumn"
    .parameter "gridView"

    .prologue
    .line 346
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    .line 347
    .local v1, expParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getChildMediaList()Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    move-result-object v0

    .line 348
    .local v0, childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;
    if-eqz v0, :cond_0

    .line 349
    iget v2, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    invoke-virtual {p3, v2, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getBestChildInsertIndex(II)I

    move-result v2

    iput v2, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 350
    iget v2, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->updateExpGridViewParams(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 353
    return-object v1
.end method

.method public updateParentMediaListAfterPrepare()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->updateNewMediaListAfterPrepare()Z

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateParentViewItem()V
    .locals 3

    .prologue
    .line 765
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 768
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 769
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
