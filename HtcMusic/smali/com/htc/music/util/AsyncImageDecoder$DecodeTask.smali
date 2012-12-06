.class public Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
.super Ljava/lang/Object;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AsyncImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DecodeTask"
.end annotation


# instance fields
.field protected mAlbumId:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDescriptor:Landroid/content/res/AssetFileDescriptor;

.field protected mKey:I

.field private mNotScale:Z

.field protected mPath:Ljava/lang/String;

.field protected mPosition:I

.field private mTimeStamp:J

.field protected mVarargs:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/music/util/AsyncImageDecoder;


# direct methods
.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;III[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "albumId"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 859
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 833
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 834
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 835
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 836
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 837
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 838
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 839
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 840
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 860
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 861
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 863
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 864
    iput-object p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 865
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "afd"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 867
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 833
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 834
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 835
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 836
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 837
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 838
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 839
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 840
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 868
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 869
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 871
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 872
    iput-object p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 873
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;II[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 875
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 833
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 834
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 835
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 836
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 837
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 838
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 839
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 840
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 876
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 877
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 878
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 880
    iput p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 881
    iput-object p6, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 882
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;IZ[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "notScale"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 850
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 833
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 834
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 835
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 836
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 837
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 838
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 839
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 840
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 851
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 852
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 853
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 854
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 855
    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 856
    iput-object p6, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 857
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 842
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 833
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 834
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 835
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 836
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 837
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 838
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 839
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 840
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 843
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 844
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 846
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 847
    iput-object p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 848
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    .locals 4
    .parameter
    .parameter "task"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 884
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 833
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 834
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 835
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 836
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 837
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 838
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 839
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 840
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 885
    if-nez p2, :cond_0

    .line 895
    :goto_0
    return-void

    .line 888
    :cond_0
    iget v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 889
    iget-object v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 890
    iget v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 891
    iget-object v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 893
    iget v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 894
    iget-object v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 831
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 831
    iget-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 899
    instance-of v2, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    if-nez v2, :cond_1

    .line 903
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 902
    check-cast v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    .line 903
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    iget v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    iget v3, v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 909
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "mKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    iget v1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 911
    const-string v1, ", mRequestTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    iget-wide v1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
