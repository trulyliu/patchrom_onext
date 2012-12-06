.class public Lcom/htc/music/util/AsyncImageDecoder;
.super Ljava/lang/Object;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;,
        Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;,
        Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;
    }
.end annotation


# static fields
.field protected static final DECODE:I = 0x1

.field private static final DECODED:I = 0x2

.field protected static final DELAY_TIME:J = 0xaL

.field private static final QUIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[AsyncImageDecoder]"

.field private static final THREAD_NAME:Ljava/lang/String; = "AsyncImageDecoderThread"

.field private static final sArtworkUri:Landroid/net/Uri;


# instance fields
.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mContext:Landroid/content/Context;

.field private mDecodeVisibleFirst:Z

.field private mEnd:I

.field private mFilter:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeight:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mMergeAfterDecoded:Z

.field private mMergeHeight:I

.field private mMergeImage:Landroid/graphics/Bitmap;

.field private mMergeImageId:I

.field private mMergeOffsetX:I

.field private mMergeOffsetY:I

.field private mMergeWidth:I

.field protected mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

.field private mPause:Z

.field private mRecycleOnPause:Z

.field private mReportError:Z

.field private mScale:Z

.field private mStart:I

.field protected mSyncObject:Ljava/lang/Object;

.field private mTouchFile:Z

.field private final mUiHandler:Landroid/os/Handler;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 68
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 74
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 76
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 80
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 92
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 96
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 145
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 146
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 147
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 148
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 149
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 150
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;II)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 68
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 74
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 76
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 80
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 92
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 96
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 161
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 162
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 163
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 164
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 165
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 166
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 167
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 168
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 68
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 74
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 76
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 80
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 92
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 96
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 180
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 181
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 182
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 183
    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 184
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 185
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 186
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 187
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"
    .parameter "touchFile"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 68
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 74
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 76
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 80
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 92
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 96
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 201
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 202
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 203
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 204
    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 205
    iput-boolean p6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 206
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 207
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 208
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 209
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    return-object v0
.end method

.method private decodeByAlbumId(IZ)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "albumId"
    .parameter "notScale"

    .prologue
    const/4 v9, 0x0

    .line 554
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 555
    .local v5, res:Landroid/content/ContentResolver;
    sget-object v10, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    int-to-long v11, p1

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 556
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 557
    const/4 v2, 0x0

    .line 559
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v10, "r"

    invoke-virtual {v5, v8, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 560
    const/4 v6, 0x1

    .line 562
    .local v6, sampleSize:I
    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_0

    .line 563
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput v11, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 564
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 565
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 566
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v10, 0x1

    .line 567
    .local v4, nextWidth:I
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v10, 0x1

    .line 568
    .local v3, nextHeight:I
    :goto_0
    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v4, v10, :cond_0

    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v3, v10, :cond_0

    .line 569
    shl-int/lit8 v6, v6, 0x1

    .line 570
    shr-int/lit8 v4, v4, 0x1

    .line 571
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 575
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    :cond_0
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 576
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 577
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 580
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_2

    if-nez p2, :cond_2

    .line 581
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v10, v11, :cond_2

    .line 582
    :cond_1
    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 583
    .local v7, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 584
    move-object v0, v7

    .line 595
    .end local v7           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v2, :cond_3

    .line 596
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 602
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v6           #sampleSize:I
    :cond_3
    :goto_1
    return-object v0

    .line 589
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 590
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v10, "[AsyncImageDecoder]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeByAlbumId failed albumId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 595
    if-eqz v2, :cond_4

    .line 596
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    move-object v0, v9

    .line 602
    goto :goto_1

    .line 591
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    .line 592
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v10, "[AsyncImageDecoder]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeByAlbumId failed albumId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 595
    if-eqz v2, :cond_4

    .line 596
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 597
    :catch_2
    move-exception v1

    .line 598
    .local v1, e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 594
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 595
    if-eqz v2, :cond_5

    .line 596
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 594
    :cond_5
    :goto_4
    throw v9

    .line 597
    :catch_3
    move-exception v1

    .line 598
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 597
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 598
    .local v1, e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 597
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v6       #sampleSize:I
    :catch_5
    move-exception v1

    .line 598
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "afd"

    .prologue
    const/4 v7, 0x0

    .line 606
    if-nez p1, :cond_1

    move-object v0, v7

    .line 652
    :cond_0
    :goto_0
    return-object v0

    .line 610
    :cond_1
    const/4 v5, 0x1

    .line 612
    .local v5, sampleSize:I
    :try_start_0
    iget-boolean v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_2

    .line 613
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 614
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 615
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 617
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v8, 0x1

    .line 618
    .local v4, nextWidth:I
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v8, 0x1

    .line 619
    .local v3, nextHeight:I
    :goto_1
    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v4, v8, :cond_2

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v3, v8, :cond_2

    .line 620
    shl-int/lit8 v5, v5, 0x1

    .line 621
    shr-int/lit8 v4, v4, 0x1

    .line 622
    shr-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 626
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    :cond_2
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 627
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 628
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 631
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    iget-boolean v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_4

    .line 632
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v8, v9, :cond_4

    .line 633
    :cond_3
    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 634
    .local v6, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    move-object v0, v6

    .line 644
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz p1, :cond_0

    .line 645
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, e:Ljava/io/IOException;
    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "IO ex catched."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 641
    .local v2, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "[AsyncImageDecoder]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodeByFileDescriptor failed, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 644
    if-eqz p1, :cond_5

    .line 645
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_5
    :goto_2
    move-object v0, v7

    .line 652
    goto/16 :goto_0

    .line 643
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 644
    if-eqz p1, :cond_6

    .line 645
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    .line 643
    :cond_6
    :goto_3
    throw v7

    .line 646
    :catch_2
    move-exception v1

    .line 647
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 648
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 649
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 646
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 647
    .local v1, e:Ljava/io/IOException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 648
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 649
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 648
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catch_6
    move-exception v1

    .line 649
    .restart local v1       #e:Ljava/lang/NullPointerException;
    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 656
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v0, v6

    .line 691
    :cond_1
    :goto_0
    return-object v0

    .line 660
    :cond_2
    const/4 v4, 0x1

    .line 662
    .local v4, sampleSize:I
    :try_start_0
    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_3

    .line 663
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 664
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 665
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 666
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v7, 0x1

    .line 667
    .local v3, nextWidth:I
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v7, 0x1

    .line 668
    .local v2, nextHeight:I
    :goto_1
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v3, v7, :cond_3

    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v2, v7, :cond_3

    .line 669
    shl-int/lit8 v4, v4, 0x1

    .line 670
    shr-int/lit8 v3, v3, 0x1

    .line 671
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 675
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    :cond_3
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 676
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 677
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 679
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_1

    .line 680
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v7, v8, :cond_1

    .line 681
    :cond_4
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 682
    .local v5, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    move-object v0, v5

    goto :goto_0

    .line 688
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v5           #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 689
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "[AsyncImageDecoder]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeBypath failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 691
    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 212
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 213
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 214
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 216
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncImageDecoderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 217
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 218
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 219
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;-><init>(Lcom/htc/music/util/AsyncImageDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 220
    return-void
.end method

.method private removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 519
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-object v5

    .line 521
    :cond_1
    const/4 v3, -0x1

    .line 522
    .local v3, start:I
    const/4 v0, -0x1

    .line 524
    .local v0, end:I
    iget-boolean v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    if-lt v6, v7, :cond_0

    .line 525
    iget v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 526
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 529
    const/4 v1, -0x1

    .line 530
    .local v1, firstVisible:I
    const/4 v4, 0x0

    .line 531
    .local v4, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 532
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    check-cast v4, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    .line 533
    .restart local v4       #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    if-eqz v4, :cond_3

    .line 534
    iget v6, v4, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    if-gt v3, v6, :cond_3

    iget v6, v4, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    if-gt v6, v0, :cond_3

    .line 535
    move v1, v2

    .line 542
    :cond_2
    const/4 v6, -0x1

    if-le v1, v6, :cond_0

    .line 543
    iget-object v5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    goto :goto_0

    .line 539
    :cond_3
    const/4 v4, 0x0

    .line 531
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public varargs add(III[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "albumId"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 335
    if-gez p2, :cond_1

    .line 336
    invoke-virtual {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;III[Ljava/lang/Object;)V

    .line 341
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-virtual {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 343
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "afd"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 359
    if-nez p2, :cond_1

    .line 360
    invoke-virtual {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V

    .line 365
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-virtual {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 367
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;II[Ljava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v7, 0x1

    .line 385
    if-nez p2, :cond_1

    if-gez p3, :cond_1

    .line 386
    invoke-virtual {p0, p4}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 391
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-virtual {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 393
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v7}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v7, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;IZ[Ljava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "notScale"
    .parameter "varargs"

    .prologue
    const/4 v7, 0x1

    .line 311
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 312
    :cond_0
    invoke-virtual {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 316
    :cond_2
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;IZ[Ljava/lang/Object;)V

    .line 317
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-virtual {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 319
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v7}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v7, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 286
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 287
    :cond_0
    invoke-virtual {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 292
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-virtual {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 294
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 407
    iget-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 409
    .local v0, indexOfTask:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 414
    :goto_0
    monitor-exit v2

    .line 415
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    .end local v0           #indexOfTask:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected asyncDecode(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    .locals 12
    .parameter "task"

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 714
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v8

    .line 715
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    .line 717
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v3

    .line 719
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 720
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 721
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 722
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    :cond_1
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    const-wide/16 v10, 0x64

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 728
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :cond_2
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 730
    if-eqz p1, :cond_7

    .line 731
    iget-object v7, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 732
    iget-object v7, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 734
    if-nez v0, :cond_3

    iget v7, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    const/4 v8, -0x1

    if-le v7, v8, :cond_3

    .line 735
    iget v7, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z
    invoke-static {p1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Z

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByAlbumId(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 743
    :cond_3
    :goto_1
    if-eqz v0, :cond_c

    .line 745
    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    if-eqz p1, :cond_4

    iget-object v7, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 747
    new-instance v4, Ljava/io/File;

    iget-object v7, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 748
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/io/File;->setLastModified(J)Z

    .line 755
    .end local v4           #file:Ljava/io/File;
    :cond_4
    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    if-eqz v7, :cond_6

    .line 756
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    if-nez v7, :cond_5

    .line 757
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 759
    :cond_5
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_6

    .line 760
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 761
    .local v2, cleanImage:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 762
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 763
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 764
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 765
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 766
    move-object v0, v2

    .line 770
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #cleanImage:Landroid/graphics/Bitmap;
    :cond_6
    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v0}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 771
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    if-eqz v7, :cond_b

    .line 772
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 773
    .local v5, message:Landroid/os/Message;
    iput-object p1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 774
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 791
    .end local v5           #message:Landroid/os/Message;
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 792
    .local v6, nonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;
    if-eqz v6, :cond_8

    .line 793
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 794
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_8

    .line 795
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 801
    :cond_8
    :goto_3
    return-void

    .line 737
    .end local v6           #nonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;
    :cond_9
    iget v7, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    const/4 v8, -0x1

    if-le v7, v8, :cond_a

    .line 738
    iget v7, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z
    invoke-static {p1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Z

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByAlbumId(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 739
    :cond_a
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;
    invoke-static {p1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$700(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 740
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;
    invoke-static {p1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$700(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 776
    :cond_b
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_7

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_7

    .line 777
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 778
    const/4 v7, 0x0

    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_2

    .line 781
    :cond_c
    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    if-eqz v7, :cond_7

    .line 782
    const/4 v7, 0x0

    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 783
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    if-eqz v7, :cond_7

    .line 784
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 785
    .restart local v5       #message:Landroid/os/Message;
    iput-object p1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 786
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 798
    .end local v5           #message:Landroid/os/Message;
    .restart local v6       #nonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;
    :cond_d
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->removeMessages(I)V

    goto :goto_3
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 478
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 480
    monitor-exit v1

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected decode()V
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/htc/music/util/AsyncImageDecoder;->getTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->asyncDecode(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 696
    return-void
.end method

.method protected getTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    .locals 5

    .prologue
    .line 699
    const/4 v1, 0x0

    .line 701
    .local v1, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    iget-object v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 702
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-result-object v1

    .line 703
    if-nez v1, :cond_0

    .line 705
    iget-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, v0

    .line 707
    :cond_0
    monitor-exit v3

    .line 708
    return-object v1

    .line 707
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected notifyError(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 271
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    .line 276
    :cond_0
    return-void
.end method

.method public pauseDecode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 457
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-ne v0, v2, :cond_0

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "pauseDecode"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iput-boolean v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    goto :goto_0
.end method

.method public quit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 435
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 441
    invoke-virtual {p0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 442
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 444
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 445
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 451
    :cond_1
    return-void

    .line 437
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resumeDecode()V
    .locals 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 467
    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "resumeDecode"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 469
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 471
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 551
    return-void
.end method

.method public setMergeImageResource(IIIII)V
    .locals 1
    .parameter "resourceId"
    .parameter "width"
    .parameter "height"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 239
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-ltz p4, :cond_0

    if-gez p5, :cond_1

    .line 240
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 249
    :goto_0
    return-void

    .line 243
    :cond_1
    iput p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 244
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 245
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 246
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 247
    iput p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    goto :goto_0
.end method

.method public setRecycleOnPause(Z)V
    .locals 0
    .parameter "recycleOnPause"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 228
    return-void
.end method

.method public setReportError(Z)V
    .locals 0
    .parameter "reportError"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 224
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 258
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p1, :cond_1

    .line 259
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    iput p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 264
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 267
    monitor-exit v1

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
