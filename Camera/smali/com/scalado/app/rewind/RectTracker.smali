.class Lcom/scalado/app/rewind/RectTracker;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RectTracker$AbstractFace;,
        Lcom/scalado/app/rewind/RectTracker$Comparison;,
        Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;,
        Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;,
        Lcom/scalado/app/rewind/RectTracker$RankedId;,
        Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;,
        Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;,
        Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;,
        Lcom/scalado/app/rewind/RectTracker$State;,
        Lcom/scalado/app/rewind/RectTracker$StatisticPoint;,
        Lcom/scalado/app/rewind/RectTracker$TrackedImage;,
        Lcom/scalado/app/rewind/RectTracker$TrackedRect;,
        Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;
    }
.end annotation


# static fields
.field private static final BLINK_DIST_THRES:I = 0x5

.field private static final BLINK_THRES:I = 0x14

.field private static final BLINK_UPPER_THRES:I = 0x5a

.field private static final DEFAULT_MAX_TRANSLATION:F = 0.15f

.field private static final MAX_REL_TRANSLATION:F = 0.06f

.field private static final TAG:Ljava/lang/String; = "RectTracker"

.field private static final UNKNOWN_SCORE:F = -4.0f

.field private static mBlinkMultiplier:F = 0.0f

.field private static final mBlinkThreshold:I = 0x3c

.field private static maxConnectTime:J

.field private static sDxdyCount:I

.field private static sLogging:Z

.field private static sMaxRelDx:F

.field private static sMaxRelDy:F

.field private static sMaxRelVftDx:F

.field private static sMaxRelVftDy:F

.field private static sSequenceCount:I

.field private static sTranslations:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlignRectSizes:Z

.field private mAllFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalyzeComplete:Z

.field private mBestImage:I

.field private mBestImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mBestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$RankedId;",
            ">;"
        }
    .end annotation
.end field

.field private mConvScreen:Lcom/scalado/caps/screen/Screen;

.field private mDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceScaleX:F

.field private mFaceScaleY:F

.field private mFaceScreen:Lcom/scalado/caps/screen/Screen;

.field private mFacesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mGuessRects:Z

.field private mImageDims:Lcom/scalado/base/Size;

.field private mImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TrackedImage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsComplete:Z

.field private mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

.field private mLockingEnabled:Z

.field private mMatches:[I

.field private mMaxNumRects:I

.field private mMaxScoreImage:I

.field private mMaxTranslation:F

.field private mMinFaceDiffX:F

.field private mMinFaceDiffY:F

.field private mMinMatches:I

.field private mNumAdded:I

.field private mNumGuessed:I

.field private mPredefined:Z

.field private mRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/scalado/app/rewind/RectTracker$State;

.field private mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

.field private mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

.field private mUseVfTracker:Z

.field private mUseVftForDelta:Z

.field private mVftDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private maxDisplacementModifier:F

.field totalFaceDetectionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    sput-boolean v3, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    .line 98
    const-wide/16 v0, 0x5dc

    sput-wide v0, Lcom/scalado/app/rewind/RectTracker;->maxConnectTime:J

    .line 99
    const/high16 v0, 0x3f80

    sput v0, Lcom/scalado/app/rewind/RectTracker;->mBlinkMultiplier:F

    .line 143
    sput v3, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    .line 144
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    .line 145
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    .line 146
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    .line 147
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    .line 149
    sput v3, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .parameter "size"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 74
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 76
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    .line 77
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v1, p0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 80
    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 85
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 89
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 90
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    .line 91
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    .line 92
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    .line 94
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    .line 95
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    .line 97
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    .line 101
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    .line 102
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    .line 105
    new-instance v1, Lcom/scalado/base/Size;

    const/16 v2, 0x400

    const/16 v3, 0x300

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 109
    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 110
    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 111
    const/high16 v1, 0x3fc0

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 112
    const/high16 v1, 0x4000

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 118
    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    .line 131
    const v1, 0x3e19999a

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    .line 135
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$State;

    invoke-direct {v1, p0, v5}, Lcom/scalado/app/rewind/RectTracker$State;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$State;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    .line 173
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 177
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-direct {v2, p0, v0, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([[Landroid/graphics/Rect;[[F)V
    .locals 12
    .parameter "rects"
    .parameter "deltas"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v8, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 74
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 75
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 76
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    .line 77
    new-instance v5, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v5, p0, v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 80
    iput v8, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 85
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 89
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 90
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    .line 91
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    .line 92
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    .line 94
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    .line 95
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    .line 97
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    .line 101
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    .line 102
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    .line 105
    new-instance v5, Lcom/scalado/base/Size;

    const/16 v6, 0x400

    const/16 v7, 0x300

    invoke-direct {v5, v6, v7}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 109
    iput v11, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 110
    iput v11, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 111
    const/high16 v5, 0x3fc0

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 112
    const/high16 v5, 0x4000

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 118
    iput-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    .line 131
    const v5, 0x3e19999a

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    .line 135
    new-instance v5, Lcom/scalado/app/rewind/RectTracker$State;

    invoke-direct {v5, p0, v10}, Lcom/scalado/app/rewind/RectTracker$State;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$State;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 138
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    .line 180
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    .line 181
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p1

    if-lt v0, v5, :cond_0

    .line 192
    const/4 v0, 0x0

    :goto_1
    array-length v5, p1

    if-lt v0, v5, :cond_1

    .line 200
    const/4 v0, 0x0

    :goto_2
    array-length v5, p2

    if-lt v0, v5, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RectTracker;->analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;

    .line 207
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    .line 208
    return-void

    .line 183
    :cond_0
    new-instance v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-direct {v4, p0, v0, v10}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    .line 184
    .local v4, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v4           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    aget-object v5, p1, v0

    array-length v5, v5

    if-lt v2, v5, :cond_2

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .line 197
    .local v1, id:I
    aget-object v5, p1, v0

    aget-object v5, v5, v2

    invoke-direct {p0, v0, v1, v5}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 201
    .end local v1           #id:I
    .end local v2           #j:I
    :cond_3
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v3, p0, v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 202
    .local v3, p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    aget-object v5, p2, v0

    aget v5, v5, v8

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 203
    aget-object v5, p2, v0

    aget v5, v5, v9

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 204
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker;)F
    .locals 1
    .parameter

    .prologue
    .line 131
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 3436
    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 3440
    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6()F
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/scalado/app/rewind/RectTracker;->mBlinkMultiplier:F

    return v0
.end method

.method static synthetic access$7(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$8(Lcom/scalado/app/rewind/RectTracker;I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1445
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9()J
    .locals 2

    .prologue
    .line 98
    sget-wide v0, Lcom/scalado/app/rewind/RectTracker;->maxConnectTime:J

    return-wide v0
.end method

.method private accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 6
    .parameter "i0"
    .parameter "i1"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;)",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;"
        }
    .end annotation

    .prologue
    .line 1529
    .local p3, deltas:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$StatisticPoint;>;"
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1530
    .local v2, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1531
    .local v1, n:I
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1532
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1533
    .local v3, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    move v0, v2

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 1537
    if-ge p2, p1, :cond_0

    .line 1538
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1539
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1541
    :cond_0
    return-object v3

    .line 1534
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v5

    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    add-float/2addr v4, v5

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1535
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v5

    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    add-float/2addr v4, v5

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private accumulateDelta(IILjava/util/Vector;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 5
    .parameter "i0"
    .parameter "i1"
    .parameter
    .parameter "dst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ")",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;"
        }
    .end annotation

    .prologue
    .local p3, deltas:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$StatisticPoint;>;"
    const/4 v3, 0x0

    .line 1547
    if-ne p1, p2, :cond_1

    .line 1548
    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1549
    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1562
    :cond_0
    :goto_0
    return-object p4

    .line 1552
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1553
    .local v2, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1554
    .local v0, end:I
    move v1, v2

    .local v1, i:I
    :goto_1
    if-le v1, v0, :cond_2

    .line 1558
    if-ge p2, p1, :cond_0

    .line 1559
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    neg-float v3, v3

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1560
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    neg-float v3, v3

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    goto :goto_0

    .line 1555
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    add-float/2addr v3, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1556
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    add-float/2addr v3, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1554
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 2
    .parameter
    .parameter "id"
    .parameter "imageIndex"
    .parameter "rect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1655
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1656
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aput-object p4, v0, p3

    .line 1657
    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;)V
    .locals 1
    .parameter "image"
    .parameter "id"
    .parameter "rect"

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 339
    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "image"
    .parameter "id"
    .parameter "rect"
    .parameter "sessionRect"

    .prologue
    .line 342
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 343
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;
    invoke-static {v0, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$11(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    .line 344
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 345
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->updateMapForRect(Ljava/util/HashMap;ILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 346
    return-void
.end method

.method private alignRectSizes()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f00

    .line 2929
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2952
    return-void

    .line 2929
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2930
    .local v2, id:I
    const/4 v4, -0x1

    .line 2931
    .local v4, wMax:I
    const/4 v0, -0x1

    .line 2932
    .local v0, hMax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v1, v7, :cond_3

    .line 2939
    const/4 v1, 0x0

    :goto_1
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 2940
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 2941
    .local v3, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v3, :cond_2

    .line 2942
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 2943
    .local v5, x:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .line 2944
    .local v6, y:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v4

    mul-float/2addr v9, v10

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->left:I

    .line 2945
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v0

    mul-float/2addr v9, v10

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 2946
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v4

    mul-float/2addr v9, v10

    add-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->right:I

    .line 2947
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v0

    mul-float/2addr v9, v10

    add-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 2939
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2933
    .end local v3           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 2934
    .restart local v3       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v3, :cond_4

    .line 2935
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2936
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2932
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private allIdsSame([Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 5
    .parameter "ranked"

    .prologue
    .line 2016
    const/4 v0, 0x1

    .line 2017
    .local v0, allEqual:Z
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2018
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lt v1, v3, :cond_0

    .line 2024
    :goto_1
    return v0

    .line 2019
    :cond_0
    aget-object v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    #calls: Lcom/scalado/app/rewind/RectTracker$RankedId;->isExactlyEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$4(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2020
    const/4 v0, 0x0

    .line 2021
    goto :goto_1

    .line 2018
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private analyze2()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1803
    new-instance v5, Ljava/util/Vector;

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    .line 1804
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    .line 1805
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1835
    return-void

    .line 1805
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1806
    .local v2, id:I
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-direct {v0, p0, v2, v8}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$AbstractFace;)V

    .line 1807
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 1818
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 1831
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1832
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1808
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 1809
    .local v3, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v3, :cond_2

    .line 1811
    invoke-direct {p0, v1, v2, v8}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 1812
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 1814
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aput-object v3, v5, v1

    .line 1815
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, v1

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {v5, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$29(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$AbstractFace;)V

    .line 1807
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1819
    .end local v3           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1820
    .local v4, trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1818
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1823
    :cond_5
    add-int/lit8 v5, v1, -0x1

    if-ltz v5, :cond_6

    .line 1824
    add-int/lit8 v5, v1, -0x1

    invoke-direct {p0, v2, v5}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/scalado/app/rewind/RectTracker;->relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v5

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;
    invoke-static {v4, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$30(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)V

    .line 1826
    :cond_6
    add-int/lit8 v5, v1, 0x1

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 1827
    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v2, v5}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/scalado/app/rewind/RectTracker;->relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v5

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;
    invoke-static {v4, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$31(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)V

    goto :goto_3
.end method

.method private applyViewfinderTracker(Lcom/scalado/base/Image;)V
    .locals 8
    .parameter "image"

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 296
    .local v0, dims:Lcom/scalado/base/Size;
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    .line 297
    .local v1, index:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-eqz v6, :cond_1

    .line 298
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 299
    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 300
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Image dimensions doesn\'t match!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 302
    :cond_1
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 303
    .local v4, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;
    invoke-static {v4, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)V

    .line 304
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-nez v6, :cond_2

    .line 305
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 307
    :cond_2
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-nez v6, :cond_3

    .line 308
    new-instance v6, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-direct {v6, v7}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    iput-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    .line 311
    :cond_3
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    invoke-virtual {v6, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    .line 312
    .local v5, transform:Lcom/scalado/caps/autorama/Transform;
    if-lez v1, :cond_5

    .line 313
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 314
    .local v2, p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 315
    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 316
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 317
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 318
    .local v3, p0:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    sub-float/2addr v6, v7

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 319
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    sub-float/2addr v6, v7

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 321
    .end local v3           #p0:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_4
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v2           #p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_5
    iget v6, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 325
    return-void
.end method

.method private approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;
    .locals 7
    .parameter "fromId"
    .parameter "toImage"
    .parameter "fromImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .local p4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v5, 0x0

    .line 1456
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1461
    .local v3, r:Landroid/graphics/Rect;
    if-le p2, p3, :cond_0

    .line 1462
    move v1, p3

    .line 1463
    .local v1, deltaIndex:I
    const/high16 v2, 0x3f80

    .line 1470
    .local v2, dir:F
    :goto_0
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1471
    .local v0, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    invoke-direct {p0, p4, p1, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1475
    .local v4, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v4, :cond_2

    move-object v3, v5

    .line 1489
    .end local v3           #r:Landroid/graphics/Rect;
    :goto_1
    return-object v3

    .line 1464
    .end local v0           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v1           #deltaIndex:I
    .end local v2           #dir:F
    .end local v4           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v3       #r:Landroid/graphics/Rect;
    :cond_0
    if-ge p2, p3, :cond_1

    .line 1465
    move v1, p2

    .line 1466
    .restart local v1       #deltaIndex:I
    const/high16 v2, -0x4080

    .restart local v2       #dir:F
    goto :goto_0

    .line 1468
    .end local v1           #deltaIndex:I
    .end local v2           #dir:F
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "toImage == fromImage"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1480
    .restart local v0       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .restart local v1       #deltaIndex:I
    .restart local v2       #dir:F
    .restart local v4       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_3

    move-object v3, v5

    .line 1483
    goto :goto_1

    .line 1487
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1488
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->offset(Landroid/graphics/Rect;F)V
    invoke-static {v0, v3, v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$11(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;Landroid/graphics/Rect;F)V

    goto :goto_1
.end method

.method private calculateOptimalImages2()V
    .locals 4

    .prologue
    .line 1739
    iget v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    if-gez v2, :cond_0

    .line 1740
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Best bg image unknown."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1744
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1745
    .local v0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImages:Ljava/util/HashMap;

    .line 1746
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1756
    .local v1, size:I
    return-void
.end method

.method private calculateStatistics()V
    .locals 6

    .prologue
    .line 1076
    const/4 v3, -0x1

    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    .line 1077
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 1085
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_2

    .line 1088
    return-void

    .line 1078
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1079
    .local v2, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1080
    .local v1, size:I
    iget v3, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-le v1, v3, :cond_1

    .line 1081
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    .line 1077
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1086
    .end local v1           #size:I
    .end local v2           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_2
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    new-instance v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1085
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private connect(II)V
    .locals 27
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v18

    .line 2984
    .local v18, fromIds:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v9

    .line 2986
    .local v9, toIds:[I
    move-object/from16 v0, v18

    array-length v4, v0

    if-eqz v4, :cond_0

    array-length v4, v9

    if-nez v4, :cond_1

    .line 3101
    :cond_0
    :goto_0
    return-void

    .line 2989
    :cond_1
    const-string v4, "*** Connecting imgs %d -> %d (#ids=(%d,%d))"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v18

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    array-length v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3003
    move-object/from16 v0, v18

    array-length v4, v0

    new-array v10, v4, [Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    .line 3004
    .local v10, buckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v19

    if-lt v0, v4, :cond_4

    .line 3026
    array-length v4, v9

    new-array v0, v4, [Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-object/from16 v23, v0

    .line 3027
    .local v23, orderedScores:[Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v19

    if-lt v0, v4, :cond_8

    .line 3030
    const/16 v19, 0x0

    :goto_3
    array-length v4, v10

    move/from16 v0, v19

    if-lt v0, v4, :cond_9

    .line 3036
    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v19

    if-lt v0, v4, :cond_b

    .line 3051
    const/4 v4, 0x0

    aget-object v4, v23, v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMaxX:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$12(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v21

    .line 3052
    .local v21, maxDist:F
    const/4 v4, 0x0

    aget-object v4, v23, v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 3053
    const/4 v4, 0x0

    aget-object v4, v23, v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$8(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    add-float v21, v21, v4

    .line 3055
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    mul-float v21, v21, v4

    .line 3057
    const/16 v22, 0x0

    .line 3058
    .local v22, maxPossibilities:I
    const/16 v19, 0x0

    :goto_5
    array-length v4, v10

    move/from16 v0, v19

    if-lt v0, v4, :cond_c

    .line 3072
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v11}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3073
    .local v3, connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->findBestConnection()V
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3074
    const/16 v26, 0x1

    .line 3075
    .local v26, tries:I
    :goto_6
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$2(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z

    move-result v4

    if-nez v4, :cond_3

    array-length v4, v9

    move/from16 v0, v26

    if-lt v0, v4, :cond_f

    .line 3085
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$2(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 3086
    const-string v4, "RectTracker"

    const-string v5, "Failed to connect!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    .line 3088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/scalado/app/rewind/RectTracker$State;->alignmentSuccessful:Z

    goto/16 :goto_0

    .line 3005
    .end local v3           #connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    .end local v21           #maxDist:F
    .end local v22           #maxPossibilities:I
    .end local v23           #orderedScores:[Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v26           #tries:I
    :cond_4
    new-instance v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    array-length v5, v9

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V

    aput-object v4, v10, v19

    .line 3006
    const/16 v20, 0x0

    .local v20, j:I
    :goto_7
    array-length v4, v9

    move/from16 v0, v20

    if-lt v0, v4, :cond_5

    .line 3013
    aget-object v4, v10, v19

    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->sort()V
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$4(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V

    .line 3016
    aget-object v4, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    const/high16 v5, 0x7f80

    cmpl-float v4, v4, v5

    if-nez v4, :cond_7

    .line 3019
    const-string v4, "RectTracker"

    const-string v5, "Failed to connect (no closest rect)!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    .line 3021
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/scalado/app/rewind/RectTracker$State;->alignmentSuccessful:Z

    goto/16 :goto_0

    .line 3007
    :cond_5
    aget v5, v18, v19

    aget v7, v9, v20

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker;->distance(IIIILjava/util/HashMap;)F

    move-result v17

    .line 3008
    .local v17, d:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    aget v5, v9, v20

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v5, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v25

    .line 3010
    .local v25, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v25, :cond_6

    .line 3011
    aget-object v4, v10, v19

    aget v5, v9, v20

    move/from16 v0, v17

    move-object/from16 v1, v25

    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->add(IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v4, v5, v0, v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$3(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 3006
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 3004
    .end local v17           #d:F
    .end local v25           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 3028
    .end local v20           #j:I
    .restart local v23       #orderedScores:[Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_8
    new-instance v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    aput-object v4, v23, v19

    .line 3027
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 3032
    :cond_9
    const/16 v20, 0x0

    .restart local v20       #j:I
    :goto_8
    aget-object v4, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    array-length v4, v4

    move/from16 v0, v20

    if-lt v0, v4, :cond_a

    .line 3030
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 3033
    :cond_a
    aget-object v4, v23, v20

    aget-object v5, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v20

    iget v5, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    const/4 v6, 0x0

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v4, v5, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$6(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    .line 3032
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 3037
    .end local v20           #j:I
    :cond_b
    aget-object v4, v23, v19

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$7(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 3036
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 3059
    .restart local v21       #maxDist:F
    .restart local v22       #maxPossibilities:I
    :cond_c
    const-string v24, ""

    .line 3060
    .local v24, s:Ljava/lang/String;
    const/16 v20, 0x0

    .line 3062
    .restart local v20       #j:I
    :goto_9
    aget-object v4, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    array-length v4, v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_d

    if-eqz v20, :cond_e

    aget-object v4, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v20

    iget v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpg-float v4, v4, v21

    if-ltz v4, :cond_e

    .line 3066
    :cond_d
    aget-object v4, v10, v19

    move/from16 v0, v20

    #setter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v4, v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$5(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V

    .line 3067
    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 3058
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 3063
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " %2d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v8

    aget-object v8, v8, v20

    iget v8, v8, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3064
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 3076
    .end local v20           #j:I
    .end local v24           #s:Ljava/lang/String;
    .restart local v3       #connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    .restart local v26       #tries:I
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/scalado/app/rewind/RectTracker;->increaseBuckets([Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V

    .line 3077
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;

    .end local v3           #connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v11}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3078
    .restart local v3       #connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mPossibilities:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)I

    move-result v4

    const v5, 0x186a0

    if-gt v4, v5, :cond_3

    .line 3081
    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->findBestConnection()V
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3082
    add-int/lit8 v26, v26, 0x1

    .line 3083
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 3092
    :cond_10
    const/16 v19, 0x0

    :goto_a
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$4(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v4

    array-length v4, v4

    move/from16 v0, v19

    if-lt v0, v4, :cond_11

    .line 3097
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Min matches = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3098
    const/16 v19, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_0

    .line 3099
    const-string v4, "   %d->%d : %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v7, v19, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v7, v7, v19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3098
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 3093
    :cond_11
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$4(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v4

    aget v12, v4, v19

    .line 3094
    .local v12, id0:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$5(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v4

    aget v13, v4, v19

    .line 3095
    .local v13, id1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v11, p0

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-direct/range {v11 .. v16}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(IIIILjava/util/HashMap;)V

    .line 3092
    add-int/lit8 v19, v19, 0x1

    goto :goto_a
.end method

.method private connectAllImages()V
    .locals 8

    .prologue
    .line 2955
    const/4 v6, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 2956
    .local v5, toOffsets:[I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v3

    .line 2957
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, imageIndex:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 2972
    return-void

    .line 2958
    :cond_0
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->numRectsInImage(I)I

    move-result v6

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-ne v6, v7, :cond_1

    .line 2959
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v6, v5

    if-lt v2, v6, :cond_2

    .line 2957
    .end local v2           #j:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2960
    .restart local v2       #j:I
    :cond_2
    aget v6, v5, v2

    add-int v4, v1, v6

    .line 2961
    .local v4, to:I
    if-ltz v4, :cond_3

    if-lt v4, v3, :cond_4

    .line 2959
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2964
    :cond_4
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2965
    .local v0, deltaIndex:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v6, v6, v0

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-eq v6, v7, :cond_3

    .line 2968
    invoke-direct {p0, v4, v1}, Lcom/scalado/app/rewind/RectTracker;->connect(II)V

    goto :goto_2

    .line 2955
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 3411
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-eqz v2, :cond_0

    .line 3412
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 3413
    .local v0, screenRect:Lcom/scalado/base/Rect;
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 3414
    .local v1, sessionRect:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v1}, Lcom/scalado/app/rewind/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3415
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, v1, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3416
    invoke-static {v0, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3420
    .end local v0           #screenRect:Lcom/scalado/base/Rect;
    .end local v1           #sessionRect:Lcom/scalado/base/Rect;
    :goto_0
    return-void

    .line 3418
    :cond_0
    invoke-static {p1, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private convertToSession(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 3423
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 3424
    .local v0, sessionRect:Lcom/scalado/base/Rect;
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v1, p1, v0}, Lcom/scalado/app/rewind/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3425
    invoke-static {v0, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3426
    return-void
.end method

.method private copy(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2802
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2803
    .local v2, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2811
    return-object v2

    .line 2803
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2804
    .local v1, key:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2805
    .local v4, oldVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    array-length v5, v4

    new-array v3, v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2806
    .local v3, newVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_1

    .line 2809
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2807
    :cond_1
    aget-object v5, v4, v0

    aput-object v5, v3, v0

    .line 2806
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private createRankedId(IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$RankedId;
    .locals 9
    .parameter "imgIndex"
    .parameter "id"
    .parameter "score"
    .parameter "tr"

    .prologue
    const/4 v6, 0x0

    .line 2028
    if-eqz p4, :cond_0

    .line 2029
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$RankedId;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$39(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$RankedId;)V

    .line 2031
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$RankedId;

    const/high16 v5, -0x3f80

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v8, v6

    invoke-direct/range {v1 .. v8}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$RankedId;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private distance(IIIILjava/util/HashMap;)F
    .locals 4
    .parameter "fromImage"
    .parameter "fromId"
    .parameter "toImage"
    .parameter "toId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)F"
        }
    .end annotation

    .prologue
    .local p5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/high16 v3, 0x7f80

    .line 2856
    invoke-direct {p0, p2, p3, p1, p5}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v1

    .line 2859
    .local v1, r1:Landroid/graphics/Rect;
    if-nez v1, :cond_1

    .line 2870
    :cond_0
    :goto_0
    return v3

    .line 2864
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v2

    .line 2865
    .local v2, tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v2, :cond_0

    .line 2866
    invoke-direct {p0, p5, p4, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2867
    .local v0, r0:Landroid/graphics/Rect;
    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v3

    goto :goto_0
.end method

.method private enlargeRectangles(FF)V
    .locals 46
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_0
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-nez v41, :cond_2

    .line 498
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 499
    .local v16, intersection:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 500
    .local v10, faceIntersection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_1
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-nez v41, :cond_8

    .line 595
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/rewind/RectTracker;->filterFaces()Ljava/util/Vector;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    .line 596
    return-void

    .line 438
    .end local v10           #faceIntersection:Landroid/graphics/Rect;
    .end local v16           #intersection:Landroid/graphics/Rect;
    :cond_2
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 439
    .local v23, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_3
    :goto_0
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_0

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 440
    .local v24, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_3

    .line 443
    const/high16 v3, 0x3fc0

    .line 444
    .local v3, baseX:F
    const v5, 0x3e4ccccd

    .line 445
    .local v5, breakPoint:F
    mul-float v42, v3, p2

    div-float v4, v42, p1

    .line 446
    .local v4, baseY:F
    sub-float v21, p1, v3

    .line 447
    .local v21, sxBackoffPart:F
    sub-float v22, p2, v4

    .line 448
    .local v22, syBackoffPart:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v20

    .line 450
    .local v20, rect:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    if-eqz v42, :cond_4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v42, v42, v43

    if-nez v42, :cond_5

    .line 459
    :cond_4
    const-string v42, "No eye rects for img=%d, id=%d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 462
    :cond_5
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getWidth()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v11, v42, v43

    .line 463
    .local v11, faceRelativeSizeX:F
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getHeight()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v12, v42, v43

    .line 468
    .local v12, faceRelativeSizeY:F
    cmpl-float v42, v11, v5

    if-lez v42, :cond_6

    .line 470
    const/16 v34, 0x0

    .line 476
    .local v34, xBackoffMultiplier:F
    :goto_1
    cmpl-float v42, v12, v5

    if-lez v42, :cond_7

    .line 478
    const/16 v37, 0x0

    .line 485
    .local v37, yBackoffMultiplier:F
    :goto_2
    new-instance v42, Landroid/graphics/Rect;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$15(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    .line 486
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v36

    .line 487
    .local v36, xc:F
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v39

    .line 488
    .local v39, yc:F
    mul-float v42, v21, v34

    add-float v42, v42, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v31, v42, v43

    .line 489
    .local v31, w:F
    mul-float v42, v22, v37

    add-float v42, v42, v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v14, v42, v43

    .line 491
    .local v14, h:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v36, v31

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 492
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v39, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 493
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v36, v31

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 494
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v39, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 495
    new-instance v42, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$17(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 474
    .end local v14           #h:F
    .end local v31           #w:F
    .end local v34           #xBackoffMultiplier:F
    .end local v36           #xc:F
    .end local v37           #yBackoffMultiplier:F
    .end local v39           #yc:F
    :cond_6
    const/high16 v42, 0x3f80

    div-float v43, v11, v5

    sub-float v34, v42, v43

    .restart local v34       #xBackoffMultiplier:F
    goto/16 :goto_1

    .line 482
    :cond_7
    const/high16 v42, 0x3f80

    div-float v43, v12, v5

    sub-float v37, v42, v43

    .restart local v37       #yBackoffMultiplier:F
    goto/16 :goto_2

    .line 500
    .end local v3           #baseX:F
    .end local v4           #baseY:F
    .end local v5           #breakPoint:F
    .end local v11           #faceRelativeSizeX:F
    .end local v12           #faceRelativeSizeY:F
    .end local v20           #rect:Landroid/graphics/Rect;
    .end local v21           #sxBackoffPart:F
    .end local v22           #syBackoffPart:F
    .end local v23           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v24           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v34           #xBackoffMultiplier:F
    .end local v37           #yBackoffMultiplier:F
    .restart local v10       #faceIntersection:Landroid/graphics/Rect;
    .restart local v16       #intersection:Landroid/graphics/Rect;
    :cond_8
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 501
    .restart local v23       #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v15, v0, :cond_1

    .line 502
    add-int/lit8 v17, v15, 0x1

    .local v17, j:I
    :goto_4
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->size()I

    move-result v41

    move/from16 v0, v17

    move/from16 v1, v41

    if-lt v0, v1, :cond_9

    .line 501
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 503
    :cond_9
    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 502
    :cond_a
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 506
    :cond_b
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 507
    .local v25, tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 508
    .local v26, tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    if-eqz v41, :cond_a

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    if-eqz v41, :cond_a

    .line 511
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$18(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v18

    .line 512
    .local v18, r0:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$18(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v19

    .line 513
    .local v19, r1:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 514
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 517
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 518
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    .line 519
    .local v13, facesIntersects:Z
    if-eqz v13, :cond_c

    .line 520
    const-string v41, "*** Faces intersects: %d - %d"

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 522
    :cond_c
    const/4 v7, 0x0

    .line 527
    .local v7, didLock:Z
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v41

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_12

    .line 531
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_10

    .line 532
    move-object/from16 v28, v25

    .line 533
    .local v28, trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v29, v26

    .line 538
    .local v29, trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :goto_6
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->width()I

    move-result v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v6, v0

    .line 539
    .local v6, dSum:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->width()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v32, v41, v6

    .line 540
    .local v32, wLeft:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    sub-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v8, v0

    .line 541
    .local v8, diff:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v42, v32, v8

    add-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v35

    .line 543
    .local v35, xBorder:I
    const/4 v9, 0x0

    .line 544
    .local v9, doLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    move/from16 v41, v0

    cmpl-float v41, v8, v41

    if-ltz v41, :cond_11

    .line 545
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    move/from16 v0, v35

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 546
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move/from16 v0, v35

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 547
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v41, v0

    move/from16 v0, v35

    move/from16 v1, v41

    if-le v0, v1, :cond_d

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    move/from16 v0, v35

    move/from16 v1, v41

    if-lt v0, v1, :cond_e

    .line 548
    :cond_d
    const/4 v9, 0x1

    .line 553
    :cond_e
    :goto_7
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    move/from16 v41, v0

    if-eqz v41, :cond_f

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 555
    const/4 v7, 0x1

    .line 588
    .end local v28           #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v29           #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v32           #wLeft:F
    .end local v35           #xBorder:I
    :cond_f
    :goto_8
    if-eqz v7, :cond_a

    .line 589
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static/range {v25 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$19(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 590
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$19(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    goto/16 :goto_5

    .line 535
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    :cond_10
    move-object/from16 v28, v26

    .line 536
    .restart local v28       #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v29, v25

    .restart local v29       #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    goto/16 :goto_6

    .line 551
    .restart local v6       #dSum:F
    .restart local v8       #diff:F
    .restart local v9       #doLock:Z
    .restart local v32       #wLeft:F
    .restart local v35       #xBorder:I
    :cond_11
    const/4 v9, 0x1

    goto :goto_7

    .line 561
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v28           #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v29           #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v32           #wLeft:F
    .end local v35           #xBorder:I
    :cond_12
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_15

    .line 562
    move-object/from16 v30, v25

    .line 563
    .local v30, trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v27, v26

    .line 568
    .local v27, trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :goto_9
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->height()I

    move-result v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v6, v0

    .line 569
    .restart local v6       #dSum:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->height()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v33, v41, v6

    .line 570
    .local v33, wTop:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    sub-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v8, v0

    .line 571
    .restart local v8       #diff:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v42, v33, v8

    add-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v38

    .line 573
    .local v38, yBorder:I
    const/4 v9, 0x0

    .line 574
    .restart local v9       #doLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    move/from16 v41, v0

    cmpl-float v41, v8, v41

    if-ltz v41, :cond_16

    .line 575
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    move/from16 v0, v38

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 576
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move/from16 v0, v38

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 577
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v41, v0

    move/from16 v0, v38

    move/from16 v1, v41

    if-le v0, v1, :cond_13

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    move/from16 v0, v38

    move/from16 v1, v41

    if-lt v0, v1, :cond_14

    .line 578
    :cond_13
    const/4 v9, 0x1

    .line 583
    :cond_14
    :goto_a
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    move/from16 v41, v0

    if-eqz v41, :cond_f

    .line 584
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 585
    const/4 v7, 0x1

    goto/16 :goto_8

    .line 565
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v27           #trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v30           #trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v33           #wTop:F
    .end local v38           #yBorder:I
    :cond_15
    move-object/from16 v30, v26

    .line 566
    .restart local v30       #trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v27, v25

    .restart local v27       #trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    goto/16 :goto_9

    .line 581
    .restart local v6       #dSum:F
    .restart local v8       #diff:F
    .restart local v9       #doLock:Z
    .restart local v33       #wTop:F
    .restart local v38       #yBorder:I
    :cond_16
    const/4 v9, 0x1

    goto :goto_a
.end method

.method private estimateDeltas()V
    .locals 14

    .prologue
    .line 1091
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    .line 1092
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1110
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-lt v5, v10, :cond_4

    .line 1125
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->updateMinMatches()V

    .line 1126
    const-string v10, "Total Delta: (%f,%f) std dev = (%f, %f)"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 1127
    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$8(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 1128
    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevY:F
    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$9(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1126
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1129
    return-void

    .line 1092
    .end local v5           #i:I
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1093
    .local v6, id:I
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1094
    .local v7, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v5, 0x1

    .restart local v5       #i:I
    :goto_1
    array-length v10, v7

    if-ge v5, v10, :cond_0

    .line 1095
    add-int/lit8 v10, v5, -0x1

    aget-object v9, v7, v10

    .line 1096
    .local v9, prevTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aget-object v1, v7, v5

    .line 1097
    .local v1, curTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v9, :cond_2

    if-nez v1, :cond_3

    .line 1094
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1101
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1102
    .local v8, prev:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1103
    .local v0, cur:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v12

    sub-float v3, v10, v12

    .line 1104
    .local v3, dx:F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v12

    sub-float v4, v10, v12

    .line 1105
    .local v4, dy:F
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v10, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1106
    .local v2, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$6(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    .line 1107
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v10, v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$6(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    goto :goto_2

    .line 1111
    .end local v0           #cur:Landroid/graphics/Rect;
    .end local v1           #curTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v2           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v6           #id:I
    .end local v7           #indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v8           #prev:Landroid/graphics/Rect;
    .end local v9           #prevTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_4
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1112
    .restart local v2       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$7(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1113
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$7(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1115
    const-string v10, "Delta       %d -> %d: (%f,%f), std dev = (%f, %f), n = %d"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v13, v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 1116
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$8(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevY:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$9(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1114
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1117
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1118
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1120
    .restart local v2       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    const-string v10, "(VFT) Delta %d -> %d: (%f,%f)"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v13, v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 1121
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1119
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1123
    :cond_5
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v11

    aput v11, v10, v5

    .line 1110
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private filterFaces()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1863
    new-instance v2, Ljava/util/Vector;

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/Vector;-><init>(I)V

    .line 1864
    .local v2, faces:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$AbstractFace;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 1881
    return-object v2

    .line 1865
    :cond_0
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1866
    .local v1, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1867
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1864
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1869
    :cond_2
    const/4 v0, 0x1

    .line 1870
    .local v0, add:Z
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1876
    :goto_2
    if-eqz v0, :cond_1

    .line 1877
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1870
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1871
    .local v4, lockedWith:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1872
    const/4 v0, 0x0

    .line 1873
    goto :goto_2
.end method

.method private findFirstImage(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, -0x1

    .line 1591
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1592
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_1

    move v0, v2

    .line 1600
    :cond_0
    :goto_0
    return v0

    .line 1595
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_2

    move v0, v2

    .line 1600
    goto :goto_0

    .line 1596
    :cond_2
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    .line 1595
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private findLastImage(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, -0x1

    .line 1604
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1605
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_1

    move v0, v2

    .line 1613
    :cond_0
    :goto_0
    return v0

    .line 1608
    :cond_1
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_2

    move v0, v2

    .line 1613
    goto :goto_0

    .line 1609
    :cond_2
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    .line 1608
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 3
    .parameter "index"

    .prologue
    .line 1447
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1448
    .local v0, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    if-eqz v1, :cond_0

    .line 1449
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    check-cast v0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1451
    .restart local v0       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_0
    return-object v0
.end method

.method private getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .locals 1
    .parameter "id"
    .parameter "index"

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    return-object v0
.end method

.method private getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .locals 4
    .parameter
    .parameter "id"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v1, 0x0

    .line 1681
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1682
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRectInImage error:no map "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1690
    :goto_0
    return-object v1

    .line 1685
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1686
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aget-object v2, v0, p3

    if-eqz v2, :cond_1

    .line 1687
    aget-object v1, v0, p3

    goto :goto_0

    .line 1689
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRectInImage error:no index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTransforms()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1521
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    if-nez v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 1524
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    goto :goto_0
.end method

.method private guessRects(I)V
    .locals 26
    .parameter "numSteps"

    .prologue
    .line 1368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v20

    .line 1369
    .local v20, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1370
    .local v11, done:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 1371
    .local v16, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    .line 1372
    .local v22, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1375
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1442
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 1443
    return-void

    .line 1372
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1373
    .local v15, id:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1375
    .end local v15           #id:I
    :cond_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1376
    .local v6, id0:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v14

    .line 1377
    .local v14, first:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v17

    .line 1378
    .local v17, last:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v21

    .line 1380
    .local v21, numImgs:I
    const/16 v19, 0x0

    .line 1382
    .local v19, nTot:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v21

    if-eq v0, v4, :cond_0

    .line 1385
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1388
    const/16 v18, 0x0

    .line 1389
    .local v18, n:I
    :goto_2
    if-lez v14, :cond_3

    move/from16 v0, v18

    move/from16 v1, p1

    if-lt v0, v1, :cond_4

    .line 1409
    :cond_3
    move/from16 v0, v18

    move/from16 v1, p1

    if-lt v0, v1, :cond_6

    .line 1410
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v20

    .line 1411
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v20

    .line 1412
    goto/16 :goto_1

    .line 1390
    :cond_4
    add-int/lit8 v5, v14, -0x1

    .line 1391
    .local v5, index:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v14}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v9

    .line 1392
    .local v9, curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    new-instance v7, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1393
    .local v7, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v10

    .line 1394
    .local v10, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    neg-int v12, v4

    .line 1395
    .local v12, dx:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    neg-int v13, v4

    .line 1396
    .local v13, dy:I
    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1397
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1398
    .local v3, newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v4, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1399
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1400
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 1401
    const-string v4, "Making up rect (img=%d id=%d %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v24, 0x0

    .line 1402
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x2

    aput-object v7, v8, v24

    .line 1401
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1403
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1404
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1406
    :cond_5
    add-int/lit8 v18, v18, 0x1

    .line 1407
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_2

    .line 1414
    .end local v3           #newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v5           #index:I
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v9           #curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v10           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v12           #dx:I
    .end local v13           #dy:I
    :cond_6
    move/from16 v19, v18

    .line 1415
    const/16 v18, 0x0

    .line 1416
    :goto_3
    if-ltz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v17

    if-ge v0, v4, :cond_7

    move/from16 v0, v18

    move/from16 v1, p1

    if-lt v0, v1, :cond_8

    .line 1436
    :cond_7
    add-int v19, v19, v18

    .line 1437
    if-lez v19, :cond_0

    .line 1438
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v20

    .line 1439
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v20

    goto/16 :goto_1

    .line 1417
    :cond_8
    add-int/lit8 v5, v17, 0x1

    .line 1418
    .restart local v5       #index:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-direct {v0, v1, v6, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v9

    .line 1419
    .restart local v9       #curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    new-instance v7, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1420
    .restart local v7       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v10

    .line 1421
    .restart local v10       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1422
    .restart local v12       #dx:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1423
    .restart local v13       #dy:I
    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1424
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1425
    .restart local v3       #newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v4, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1426
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1427
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 1428
    const-string v4, "Making up rect (img=%d id=%d %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v24, 0x0

    .line 1429
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x2

    aput-object v7, v8, v24

    .line 1428
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1430
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1431
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1433
    :cond_9
    add-int/lit8 v18, v18, 0x1

    .line 1434
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3
.end method

.method private idsOverlaps(Ljava/util/HashMap;II)Z
    .locals 5
    .parameter
    .parameter "id0"
    .parameter "id1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v3, 0x0

    .line 1617
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1618
    .local v1, indexes0:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1621
    .local v2, indexes1:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return v3

    .line 1626
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 1627
    aget-object v4, v1, v0

    if-eqz v4, :cond_2

    aget-object v4, v2, v0

    if-eqz v4, :cond_2

    .line 1628
    const/4 v3, 0x1

    goto :goto_0

    .line 1626
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private inNumImages(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1577
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, 0x0

    .line 1578
    .local v2, n:I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1579
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_0

    .line 1580
    const/4 v3, 0x0

    .line 1587
    :goto_0
    return v3

    .line 1582
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    move v3, v2

    .line 1587
    goto :goto_0

    .line 1583
    :cond_1
    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    .line 1584
    add-int/lit8 v2, v2, 0x1

    .line 1582
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private increaseBuckets([Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V
    .locals 3
    .parameter "buckets"
    .parameter "maxNum"

    .prologue
    .line 3104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 3109
    return-void

    .line 3105
    :cond_0
    aget-object v1, p1, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_1

    .line 3106
    aget-object v1, p1, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$5(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V

    .line 3104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isComplete(Ljava/util/HashMap;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1695
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1701
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1695
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1696
    .local v0, id:I
    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v1

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1697
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not complete id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1698
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 5
    .parameter "tr0"
    .parameter "tr1"

    .prologue
    .line 1705
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$28(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v1

    .line 1706
    .local v1, face0:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$28(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v2

    .line 1708
    .local v2, face1:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    if-nez v1, :cond_1

    .line 1736
    :cond_0
    return-void

    .line 1711
    :cond_1
    if-eqz v2, :cond_0

    .line 1714
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1715
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1, v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$13(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Ljava/util/Vector;)V

    .line 1717
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1718
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1720
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1721
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$13(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Ljava/util/Vector;)V

    .line 1723
    :cond_4
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1724
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1726
    :cond_5
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1731
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1732
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1733
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1726
    .end local v0           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1727
    .restart local v0       #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1728
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static logDumpTranslations()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 982
    const-string v4, "*** Translations ***"

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 983
    const-string v4, "Count = %d"

    new-array v5, v9, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 984
    const-string v4, "Relative to FD dims."

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 985
    const-string v4, "Max (%f, %f)"

    new-array v5, v10, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 986
    const-string v4, "Max VFT (%f, %f)"

    new-array v5, v10, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 988
    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    if-eqz v4, :cond_0

    .line 989
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 999
    :cond_0
    return-void

    .line 990
    :cond_1
    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;

    .line 991
    .local v3, s:Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$0(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$1(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 992
    .local v0, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$2(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 994
    .local v1, dy:F
    const-string v4, "%03d. img%d->%d, id%d: (%f, %f), VFT (%f, %f), diff (%f, %f)"

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mSeqCount:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$4(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 995
    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mImageIndex:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$5(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mImageIndex:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$5(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$6(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$0(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 996
    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$2(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$1(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    .line 993
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 989
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private logTranslations()V
    .locals 24

    .prologue
    .line 1023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    int-to-float v14, v1

    .line 1024
    .local v14, fdw:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    int-to-float v13, v1

    .line 1025
    .local v13, fdh:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1072
    sget v1, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    .line 1073
    return-void

    .line 1025
    :cond_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1026
    .local v5, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1027
    const/4 v15, 0x1

    .local v15, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v15, v1, :cond_0

    .line 1028
    add-int/lit8 v1, v15, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v21

    .line 1029
    .local v21, trPrev:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v20

    .line 1030
    .local v20, trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v21, :cond_2

    if-nez v20, :cond_3

    .line 1031
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%d -> %d: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1027
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1034
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1035
    :cond_4
    const-string v1, "%d -> %d: no rects"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    goto :goto_1

    .line 1038
    :cond_5
    const/high16 v1, 0x3f00

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v18, v1, v2

    .line 1039
    .local v18, mw:F
    const/high16 v1, 0x3f00

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v16, v1, v2

    .line 1040
    .local v16, mh:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v11, v1

    .line 1041
    .local v11, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v12, v1

    .line 1042
    .local v12, dy:F
    div-float v6, v11, v18

    .line 1043
    .local v6, relDx:F
    div-float v7, v12, v16

    .line 1044
    .local v7, relDy:F
    const-string v1, "%d -> %d: (dx, dy) = (%f, %f) (rel to f. size)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1045
    .local v17, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    if-eqz v1, :cond_b

    .line 1046
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    add-int/lit8 v2, v15, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1047
    .local v19, sp:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    div-float v6, v11, v14

    .line 1048
    div-float v7, v12, v13

    .line 1049
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    div-float v8, v1, v14

    .line 1050
    .local v8, relVftDx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    div-float v9, v1, v13

    .line 1051
    .local v9, relVftDy:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", (%f, %f), vft=(%f, %f)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1052
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 1053
    sput v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    .line 1055
    :cond_6
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 1056
    sput v7, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    .line 1058
    :cond_7
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 1059
    sput v8, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    .line 1061
    :cond_8
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 1062
    sput v9, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    .line 1064
    :cond_9
    sget-object v1, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    if-eqz v1, :cond_a

    .line 1065
    sget-object v23, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    new-instance v1, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;

    sget v3, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    add-int/lit8 v4, v15, -0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;-><init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFFLcom/scalado/app/rewind/RectTracker$TranslationStatistics;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1067
    :cond_a
    sget v1, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    .line 1069
    .end local v8           #relVftDx:F
    .end local v9           #relVftDy:F
    .end local v19           #sp:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_b
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3441
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3442
    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    :cond_0
    return-void
.end method

.method private static final logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 3447
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3448
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    :cond_0
    return-void
.end method

.method private static final logdind(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 3453
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3454
    const-string v0, "RectTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    :cond_0
    return-void
.end method

.method private static final logw(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3437
    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    return-void
.end method

.method private meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .parameter "r0"
    .parameter "r1"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, 0x3f00

    .line 1508
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    add-float/2addr v5, v6

    div-float v3, v5, v8

    .line 1509
    .local v3, xc:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    add-float/2addr v5, v6

    div-float v4, v5, v8

    .line 1510
    .local v4, yc:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v2, v5, v7

    .line 1511
    .local v2, w:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v0, v5, v7

    .line 1512
    .local v0, h:F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1513
    .local v1, r:Landroid/graphics/Rect;
    mul-float v5, v7, v2

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 1514
    mul-float v5, v7, v0

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1515
    mul-float v5, v7, v2

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 1516
    mul-float v5, v7, v0

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 1517
    return-object v1
.end method

.method private mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 27
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1293
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    .local p2, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v13

    .line 1294
    .local v13, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 1295
    .local v18, toRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1296
    .local v8, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_3

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 1301
    .local v16, overlaps:[F
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_4

    .line 1353
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_d

    .line 1356
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "# ids = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1357
    if-eqz p2, :cond_2

    .line 1358
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_e

    .line 1364
    :cond_2
    return-object v13

    .line 1296
    .end local v16           #overlaps:[F
    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1297
    .local v4, id:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1301
    .end local v4           #id:I
    .restart local v16       #overlaps:[F
    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1302
    .local v5, id0:I
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_5
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1303
    .local v6, id1:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    if-eq v5, v6, :cond_5

    .line 1306
    if-eqz p2, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 1309
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v11

    .line 1310
    .local v11, n0:I
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v12

    .line 1311
    .local v12, n1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-ne v11, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-ne v12, v0, :cond_5

    .line 1314
    const/4 v14, 0x0

    .line 1315
    .local v14, numOverlaps:I
    const/4 v10, 0x0

    .line 1316
    .local v10, meanOverlap:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v3, v0, :cond_9

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v10, v21

    .line 1328
    if-lez v14, :cond_7

    .line 1329
    const-string v21, "id=%d and id=%d #overlaps=%d."

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1331
    :cond_7
    const/4 v7, 0x0

    .line 1332
    .local v7, isOverlap:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-ne v14, v0, :cond_b

    .line 1333
    const/4 v7, 0x1

    .line 1337
    :cond_8
    :goto_5
    if-eqz v7, :cond_5

    .line 1340
    const-string v21, "id=%d and id=%d equal, merging (approx.)."

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1341
    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v3, v0, :cond_c

    .line 1350
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1317
    .end local v7           #isOverlap:Z
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v19

    .line 1318
    .local v19, tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v20

    .line 1319
    .local v20, tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v21

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v15

    .line 1320
    .local v15, overlap:F
    aput v15, v16, v3

    .line 1321
    add-float/2addr v10, v15

    .line 1322
    const v21, 0x3e4ccccd

    cmpg-float v21, v15, v21

    if-ltz v21, :cond_a

    .line 1324
    add-int/lit8 v14, v14, 0x1

    .line 1316
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 1334
    .end local v15           #overlap:F
    .end local v19           #tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v20           #tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v7       #isOverlap:Z
    :cond_b
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v14, v0, :cond_8

    const v21, 0x3e19999a

    cmpl-float v21, v10, v21

    if-lez v21, :cond_8

    .line 1335
    const/4 v7, 0x1

    goto :goto_5

    .line 1342
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1343
    .local v17, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v19

    .line 1344
    .restart local v19       #tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v20

    .line 1345
    .restart local v20       #tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v21

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 1346
    .local v9, mean:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0, v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$27(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    .line 1347
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1341
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 1353
    .end local v3           #i:I
    .end local v5           #id0:I
    .end local v6           #id1:I
    .end local v7           #isOverlap:Z
    .end local v9           #mean:Landroid/graphics/Rect;
    .end local v10           #meanOverlap:F
    .end local v11           #n0:I
    .end local v12           #n1:I
    .end local v14           #numOverlaps:I
    .end local v17           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v19           #tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v20           #tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1354
    .restart local v4       #id:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1358
    .end local v4           #id:I
    :cond_e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1359
    .restart local v4       #id:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 1360
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private mergeIds(Ljava/util/HashMap;II)V
    .locals 4
    .parameter
    .parameter "master"
    .parameter "slave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1635
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1636
    .local v1, indexes0:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1638
    .local v2, indexes1:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1640
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 1647
    .end local v0           #i:I
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    return-void

    .line 1641
    .restart local v0       #i:I
    :cond_1
    aget-object v3, v1, v0

    if-nez v3, :cond_2

    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    .line 1642
    aget-object v3, v2, v0

    aput-object v3, v1, v0

    .line 1640
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 27
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1232
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    .local p2, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v16

    .line 1233
    .local v16, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    .line 1234
    .local v21, toRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 1235
    .local v14, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1240
    invoke-virtual {v14}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1281
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "# ids = "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1282
    if-eqz p2, :cond_2

    .line 1283
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1289
    :cond_2
    return-object v16

    .line 1235
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1236
    .local v12, id:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1240
    .end local v12           #id:I
    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1241
    .local v6, id0:I
    invoke-virtual {v14}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_5
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1242
    .local v13, id1:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eq v6, v13, :cond_5

    .line 1245
    if-eqz p2, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1248
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v15

    .line 1249
    .local v15, last0:I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lcom/scalado/app/rewind/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v10

    .line 1250
    .local v10, first1:I
    add-int/lit8 v5, v15, 0x1

    .line 1251
    .local v5, imageIndex:I
    if-ltz v15, :cond_5

    if-ltz v10, :cond_5

    add-int/lit8 v4, v15, 0x2

    if-ne v4, v10, :cond_5

    .line 1254
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v5, v15, v1}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v18

    .line 1255
    .local v18, r0:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v5, v10, v1}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v19

    .line 1256
    .local v19, r1:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v17

    .line 1257
    .local v17, overlap:F
    const v4, 0x3e4ccccd

    cmpl-float v4, v17, v4

    if-ltz v4, :cond_5

    .line 1260
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1261
    .local v7, r:Landroid/graphics/Rect;
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1262
    .local v3, newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1263
    .local v9, curImage:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v9, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1264
    const-string v20, ""

    .line 1265
    .local v20, s:Ljava/lang/String;
    move v11, v10

    .local v11, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v11, v4, :cond_7

    .line 1274
    const-string v4, "Merging (approx.) %d with %d (in images %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v25, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v8, v25

    const/16 v25, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v8, v25

    const/16 v25, 0x2

    aput-object v20, v8, v25

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1275
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1276
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v13}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 1277
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1266
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13, v11}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v22

    .line 1267
    .local v22, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v7, :cond_8

    if-eqz v22, :cond_8

    .line 1268
    move-object/from16 v0, v22

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v0, v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$26(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 1269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1265
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1271
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " X"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_4

    .line 1283
    .end local v3           #newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v5           #imageIndex:I
    .end local v6           #id0:I
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v9           #curImage:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v10           #first1:I
    .end local v11           #i:I
    .end local v13           #id1:I
    .end local v15           #last0:I
    .end local v17           #overlap:F
    .end local v18           #r0:Landroid/graphics/Rect;
    .end local v19           #r1:Landroid/graphics/Rect;
    .end local v20           #s:Ljava/lang/String;
    .end local v22           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1284
    .restart local v12       #id:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1285
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 24
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1141
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    .local p2, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v14

    .line 1142
    .local v14, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 1143
    .local v19, toFix:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    .line 1144
    .local v20, toRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 1145
    .local v13, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1149
    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1212
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "# ids = "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1213
    if-eqz p2, :cond_2

    .line 1214
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1220
    :cond_2
    return-object v14

    .line 1145
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1146
    .local v10, id:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1149
    .end local v10           #id:I
    :cond_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1150
    .local v11, id0:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1153
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v6

    .line 1159
    .local v6, last:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v6, v3, :cond_0

    .line 1162
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_0

    .line 1163
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v6}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1164
    .local v4, curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v3, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1165
    .local v12, img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/16 v16, 0x0

    .line 1166
    .local v16, rectMin:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v8, 0x0

    .line 1167
    .local v8, bestCmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v12}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_5
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1186
    if-eqz v16, :cond_0

    if-eqz v8, :cond_0

    #calls: Lcom/scalado/app/rewind/RectTracker$Comparison;->isOk()Z
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$Comparison;->access$2(Lcom/scalado/app/rewind/RectTracker$Comparison;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1188
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v16 .. v16}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v17

    .line 1189
    .local v17, rmId:I
    const-string v18, ""

    .line 1190
    .local v18, s:Ljava/lang/String;
    add-int/lit8 v9, v6, 0x1

    .local v9, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v9, v3, :cond_9

    .line 1199
    const-string v3, "Merging %d with %d (in images %s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v22, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v22

    const/16 v22, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v22

    const/16 v22, 0x2

    aput-object v18, v7, v22

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1200
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1201
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1203
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1204
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v11, v1}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 1208
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v6

    goto/16 :goto_2

    .line 1167
    .end local v9           #i:I
    .end local v17           #rmId:I
    .end local v18           #s:Ljava/lang/String;
    :cond_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1168
    .local v5, rect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    if-eq v3, v11, :cond_5

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v3}, Lcom/scalado/app/rewind/RectTracker;->idsOverlaps(Ljava/util/HashMap;II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1169
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1177
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$Comparison;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/scalado/app/rewind/RectTracker$Comparison;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;ILcom/scalado/app/rewind/RectTracker$Comparison;)V

    .line 1178
    .local v2, cmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    if-eqz v8, :cond_8

    #calls: Lcom/scalado/app/rewind/RectTracker$Comparison;->compare(Lcom/scalado/app/rewind/RectTracker$Comparison;)I
    invoke-static {v2, v8}, Lcom/scalado/app/rewind/RectTracker$Comparison;->access$1(Lcom/scalado/app/rewind/RectTracker$Comparison;Lcom/scalado/app/rewind/RectTracker$Comparison;)I

    move-result v3

    if-lez v3, :cond_5

    .line 1179
    :cond_8
    move-object v8, v2

    .line 1180
    move-object/from16 v16, v5

    goto/16 :goto_3

    .line 1191
    .end local v2           #cmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    .end local v5           #rect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v9       #i:I
    .restart local v17       #rmId:I
    .restart local v18       #s:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1, v9}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v15

    .line 1192
    .local v15, r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v15, :cond_a

    .line 1193
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v15, v11}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$26(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 1194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1190
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 1196
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " X"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 1214
    .end local v4           #curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v6           #last:I
    .end local v8           #bestCmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    .end local v9           #i:I
    .end local v11           #id0:I
    .end local v12           #img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v15           #r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v16           #rectMin:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v17           #rmId:I
    .end local v18           #s:Ljava/lang/String;
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1215
    .restart local v10       #id:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1216
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private mergeRects(IIIILjava/util/HashMap;)V
    .locals 10
    .parameter "masterId"
    .parameter "slaveId"
    .parameter "masterImg"
    .parameter "slaveImg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2892
    .local p5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    if-ne p3, p4, :cond_0

    .line 2893
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master image == slave image."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2895
    :cond_0
    sub-int v6, p3, p4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 2896
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master image and slave image not next to each other."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2898
    :cond_1
    if-ne p1, p2, :cond_2

    .line 2899
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master ID == slave ID."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2902
    :cond_2
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 2903
    .local v5, size:I
    if-le p4, p3, :cond_4

    .line 2904
    const/4 v1, 0x1

    .line 2909
    .local v1, dir:I
    :goto_0
    const-string v4, ""

    .line 2910
    .local v4, s:Ljava/lang/String;
    add-int v2, p3, v1

    .line 2911
    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_3

    if-lt v2, v5, :cond_5

    .line 2921
    :cond_3
    const-string v6, "Merging %d with %d (in images %s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 2922
    invoke-direct {p0, p5, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 2923
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2924
    .local v0, deltaIndex:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v7, v6, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v0

    .line 2925
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->updateMinMatches()V

    .line 2926
    return-void

    .line 2906
    .end local v0           #deltaIndex:I
    .end local v1           #dir:I
    .end local v2           #i:I
    .end local v4           #s:Ljava/lang/String;
    :cond_4
    const/4 v1, -0x1

    .restart local v1       #dir:I
    goto :goto_0

    .line 2912
    .restart local v2       #i:I
    .restart local v4       #s:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p5, p2, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 2913
    .local v3, r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v3, :cond_6

    .line 2914
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2915
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$26(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 2919
    :goto_2
    add-int/2addr v2, v1

    goto :goto_1

    .line 2917
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private nonOverlapsBetween(Ljava/util/HashMap;II)[I
    .locals 6
    .parameter
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .line 2817
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v1, 0x0

    .line 2818
    .local v1, n:I
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2824
    new-array v0, v1, [I

    .line 2825
    .local v0, fromIds:[I
    const/4 v1, 0x0

    .line 2826
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2833
    return-object v0

    .line 2818
    .end local v0           #fromIds:[I
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2819
    .local v2, trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 2820
    .local v3, trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v3, :cond_0

    .line 2821
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2826
    .end local v2           #trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v3           #trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v0       #fromIds:[I
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2827
    .restart local v2       #trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 2828
    .restart local v3       #trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v3, :cond_1

    .line 2829
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    aput v5, v0, v1

    .line 2830
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private numRectsInImage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private optimizeSelection()V
    .locals 14

    .prologue
    .line 1759
    new-instance v8, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V

    .line 1760
    .local v8, so:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;
    #calls: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimize()V
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V

    .line 1761
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1762
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    .line 1763
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/scalado/app/rewind/RectTracker$State;->compositionSuccessful:Z

    .line 1764
    const-string v9, "RectTracker"

    const-string v10, "Failed to determine best images."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :goto_0
    return-void

    .line 1767
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    .line 1768
    .local v6, sel:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mBg:I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$6(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)I

    move-result v0

    .line 1769
    .local v0, bg:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-lt v3, v9, :cond_1

    .line 1772
    const-string v9, "bg = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1773
    const/4 v3, 0x0

    :goto_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v9

    array-length v9, v9

    if-lt v3, v9, :cond_2

    .line 1797
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 1798
    const-string v9, "num poss %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1770
    :cond_1
    const-string v10, "cand %f"

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1769
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1774
    :cond_2
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1775
    .local v1, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v4

    .line 1776
    .local v4, id:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v9

    aget v2, v9, v3

    .line 1779
    .local v2, fg:I
    if-gez v2, :cond_3

    .line 1780
    const-string v9, "%d (don\'t care)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1781
    .local v5, msg:Ljava/lang/String;
    move v7, v0

    .line 1794
    .local v7, selected:I
    :goto_3
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mSelectedImageIndex:I
    invoke-static {v1, v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$15(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)V

    .line 1795
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "id %d: "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1773
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1782
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #selected:I
    :cond_3
    if-eq v0, v2, :cond_5

    .line 1783
    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->canReplace(II)Z
    invoke-static {v1, v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$14(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1784
    const-string v9, "%d, cost = %f"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v12

    aget v12, v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1785
    .restart local v5       #msg:Ljava/lang/String;
    move v7, v2

    .restart local v7       #selected:I
    goto :goto_3

    .line 1787
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #selected:I
    :cond_4
    const-string v9, "%d, (don\'t dare, %d cost = %f)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v12

    aget v12, v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1788
    .restart local v5       #msg:Ljava/lang/String;
    move v7, v0

    .restart local v7       #selected:I
    goto :goto_3

    .line 1791
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #selected:I
    :cond_5
    const-string v9, "%d (bg)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1792
    .restart local v5       #msg:Ljava/lang/String;
    move v7, v0

    .restart local v7       #selected:I
    goto/16 :goto_3
.end method

.method private privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V
    .locals 21
    .parameter "image"
    .parameter "image2"
    .parameter "imgIndex"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 3297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-nez v3, :cond_0

    .line 3299
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 3303
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 3304
    .local v12, before:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    if-eqz v3, :cond_1

    .line 3307
    const/16 v17, 0x0

    .line 3308
    .local v17, mBitmap:Landroid/graphics/Bitmap;
    const-string v3, "RectTracker"

    const-string v4, "privateAddImage:decode to bmp"

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v18

    .line 3311
    .local v18, size:Lcom/scalado/base/Size;
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 3312
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3313
    const-string v3, "RectTracker"

    const-string v4, "privateAddImage:setImagebuffer bmp"

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->setImagebuffer(Landroid/graphics/Bitmap;)V

    .line 3315
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 3321
    .end local v17           #mBitmap:Landroid/graphics/Bitmap;
    .end local v18           #size:Lcom/scalado/base/Size;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3322
    .local v10, after:J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    sub-long v8, v10, v12

    add-long/2addr v3, v8

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 3323
    const/4 v3, 0x4

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 3325
    const-string v3, "RectTracker.Benchmark"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Face detection time is = "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3329
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    invoke-interface {v3}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getFaceNum()I

    move-result v18

    .line 3330
    .local v18, size:I
    const-string v3, "[%d] Faces detected = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3331
    if-lez v18, :cond_3

    .line 3332
    const/16 v16, 0x0

    .local v16, j:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 3389
    .end local v10           #after:J
    .end local v12           #before:J
    .end local v16           #j:I
    .end local v18           #size:I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    if-eqz v3, :cond_4

    .line 3390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    move/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onImageAnalyzed(I)V

    .line 3392
    :cond_4
    return-void

    .line 3336
    .restart local v10       #after:J
    .restart local v12       #before:J
    .restart local v16       #j:I
    .restart local v18       #size:I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getSmileValue(I)I

    move-result v19

    .line 3337
    .local v19, smile:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getBlinkValue(I)I

    move-result v14

    .line 3338
    .local v14, blink:I
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 3340
    .local v20, tmpRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v20

    .line 3342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getFaceID(I)I

    move-result v5

    .line 3343
    .local v5, id:I
    if-ltz v19, :cond_6

    .line 3347
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v5, v2}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 3350
    const/4 v6, 0x0

    .line 3351
    .local v6, left:Landroid/graphics/Rect;
    const/4 v7, 0x0

    .line 3354
    .local v7, right:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getLeftEyeRect(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 3355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getRightEyeRect(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 3377
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct/range {v3 .. v9}, Lcom/scalado/app/rewind/RectTracker;->setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3378
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v5, v2, v14}, Lcom/scalado/app/rewind/RectTracker;->setSmileBlink(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3332
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 3386
    .end local v5           #id:I
    .end local v6           #left:Landroid/graphics/Rect;
    .end local v7           #right:Landroid/graphics/Rect;
    .end local v10           #after:J
    .end local v12           #before:J
    .end local v14           #blink:I
    .end local v16           #j:I
    .end local v18           #size:I
    .end local v19           #smile:I
    .end local v20           #tmpRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v15

    .line 3387
    .local v15, e:Ljava/lang/Exception;
    const-string v3, "RectTracker"

    const-string v4, "Excpetion:"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private rankId(I[Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 18
    .parameter "id"
    .parameter "ranked"

    .prologue
    .line 1981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v17

    .line 1982
    .local v17, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, v17

    if-lt v4, v0, :cond_0

    .line 1999
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RectTracker;->allIdsSame([Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v16

    .line 2000
    .local v16, allEqual:Z
    if-eqz v16, :cond_3

    .line 2001
    const/4 v4, 0x0

    :goto_1
    move/from16 v0, v17

    if-lt v4, v0, :cond_2

    .line 2004
    const/4 v2, 0x0

    .line 2012
    :goto_2
    return v2

    .line 1983
    .end local v16           #allEqual:Z
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v7

    .line 1985
    .local v7, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v7, :cond_1

    .line 1986
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->computeScore()F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$37(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {v7, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$38(Lcom/scalado/app/rewind/RectTracker$TrackedRect;F)V

    .line 1987
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$RankedId;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$39(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$RankedId;)V

    aput-object v2, p2, v4

    .line 1982
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1989
    :cond_1
    new-instance v8, Lcom/scalado/app/rewind/RectTracker$RankedId;

    const/high16 v12, -0x3f80

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move v10, v4

    move/from16 v11, p1

    invoke-direct/range {v8 .. v15}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$RankedId;)V

    aput-object v8, p2, v4

    goto :goto_3

    .line 2002
    .end local v7           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v16       #allEqual:Z
    :cond_2
    aget-object v2, p2, v4

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v3, -0x1

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$40(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 2001
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2006
    :cond_3
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2007
    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v17

    if-lt v4, v0, :cond_4

    .line 2012
    const/4 v2, 0x1

    goto :goto_2

    .line 2008
    :cond_4
    aget-object v2, p2, v4

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v2, :cond_5

    .line 2009
    aget-object v2, p2, v4

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v2, v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$40(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 2007
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method private rankImages()I
    .locals 22

    .prologue
    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v13

    .line 1886
    .local v13, size:I
    new-array v0, v13, [I

    move-object/from16 v16, v0

    .line 1893
    .local v16, votes:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_1

    .line 1932
    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->fill([II)V

    .line 1933
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v6, v0, :cond_6

    .line 1967
    const/4 v9, -0x1

    .line 1968
    .local v9, maxVotes:I
    const/4 v4, -0x1

    .line 1969
    .local v4, bestPic:I
    const/4 v6, 0x0

    :goto_1
    if-lt v6, v13, :cond_b

    .line 1975
    move-object/from16 v0, p0

    iput v4, v0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 1976
    move-object/from16 v0, p0

    iput v4, v0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 1977
    return v4

    .line 1893
    .end local v4           #bestPic:I
    .end local v6           #i:I
    .end local v9           #maxVotes:I
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1894
    .local v5, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 1897
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v8, v0, [Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1898
    .local v8, locked:[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/16 v17, 0x0

    aput-object v5, v8, v17

    .line 1899
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_2

    .line 1915
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v12, v0, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 1916
    .local v12, ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 1917
    const/4 v7, 0x0

    :goto_4
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_3

    .line 1921
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1922
    const/4 v7, 0x0

    :goto_5
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_4

    .line 1916
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1900
    .end local v6           #i:I
    .end local v12           #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    :cond_2
    add-int/lit8 v19, v7, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    aput-object v17, v8, v19

    .line 1899
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1918
    .restart local v6       #i:I
    .restart local v12       #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    :cond_3
    aget-object v17, v8, v7

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v17

    aget-object v15, v17, v6

    .line 1919
    .local v15, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/16 v17, -0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v6, v1, v2, v15}, Lcom/scalado/app/rewind/RectTracker;->createRankedId(IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v17

    aput-object v17, v12, v7

    .line 1917
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1923
    .end local v15           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_4
    aget-object v17, v8, v7

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v17

    aget-object v15, v17, v6

    .line 1924
    .restart local v15       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/16 v17, 0x1

    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z
    invoke-static {v15, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$32(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    .line 1925
    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$25(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v17

    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededBlink:I
    invoke-static {v15, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$33(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 1926
    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$24(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v17

    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededSmile:I
    invoke-static {v15, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$34(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 1927
    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$23(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v17

    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z
    invoke-static {v15, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$35(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    .line 1928
    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v17

    if-eqz v17, :cond_5

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasRect:Z
    invoke-static {v15, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$36(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    .line 1922
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 1928
    :cond_5
    const/16 v17, 0x0

    goto :goto_6

    .line 1934
    .end local v5           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v7           #j:I
    .end local v8           #locked:[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v12           #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    .end local v15           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1935
    .restart local v5       #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    new-array v12, v13, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 1936
    .restart local v12       #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v12}, Lcom/scalado/app/rewind/RectTracker;->rankId(I[Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v11

    .line 1937
    .local v11, rankSuccessful:Z
    add-int/lit8 v17, v13, -0x1

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iget v3, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    .line 1938
    .local v3, best:I
    const-string v14, "   "

    .line 1939
    .local v14, spc:Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 1940
    const-string v17, "id %d (best img = %d)"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1941
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_7
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_7

    .line 1958
    aget v17, v16, v3

    add-int/lit8 v17, v17, 0x1

    aput v17, v16, v3

    .line 1964
    .end local v7           #j:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v5, v12}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$18(Lcom/scalado/app/rewind/RectTracker$AbstractFace;[Lcom/scalado/app/rewind/RectTracker$RankedId;)V

    .line 1933
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1942
    .restart local v7       #j:I
    :cond_7
    aget-object v17, v12, v7

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1943
    .restart local v15       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const-string v17, "%simg=%d, (score=%1.5f)"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    const/16 v19, 0x1

    .line 1944
    aget-object v20, v12, v7

    move-object/from16 v0, v20

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    aget-object v20, v12, v7

    move-object/from16 v0, v20

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mScore:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    .line 1943
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1945
    .local v10, msg:Ljava/lang/String;
    if-eqz v15, :cond_9

    .line 1946
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static {v15}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$23(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1947
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ", rank=%d, (s=%d, b=%d)"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 1948
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v15}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static {v15}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$24(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static {v15}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$25(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    .line 1947
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1956
    :goto_9
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1941
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 1950
    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ", rank=%d, [no s & b]"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 1951
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v15}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    .line 1950
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    .line 1954
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ", [no rect]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    .line 1960
    .end local v7           #j:I
    .end local v10           #msg:Ljava/lang/String;
    .end local v15           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_a
    const-string v17, "id %d (best img = ?)"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1961
    const-string v17, "%sWARNING: id %d couldn\'t determine best image."

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    const/16 v19, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1962
    const/16 v17, 0x1

    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mAllSame:Z
    invoke-static {v5, v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$17(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V

    goto/16 :goto_8

    .line 1970
    .end local v3           #best:I
    .end local v5           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v11           #rankSuccessful:Z
    .end local v12           #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    .end local v14           #spc:Ljava/lang/String;
    .restart local v4       #bestPic:I
    .restart local v9       #maxVotes:I
    :cond_b
    aget v17, v16, v6

    move/from16 v0, v17

    if-le v0, v9, :cond_c

    .line 1971
    aget v9, v16, v6

    .line 1972
    move v4, v6

    .line 1969
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method

.method private rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 2844
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float v0, v2, v3

    .line 2845
    .local v0, dx:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float v1, v2, v3

    .line 2846
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 1493
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1494
    .local v1, intRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 1495
    .local v2, overlap:F
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1496
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    .line 1497
    .local v0, intArea:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v3, v4

    .line 1498
    .local v3, totArea:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1499
    sub-float/2addr v3, v0

    .line 1500
    div-float v2, v0, v3

    .line 1504
    .end local v0           #intArea:F
    .end local v3           #totArea:F
    :goto_0
    return v2

    .line 1502
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private recycleFaceDetection()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3429
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    .line 3430
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    .line 3432
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->reset()V

    .line 3433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 3434
    return-void
.end method

.method private relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;
    .locals 8
    .parameter "trPrev"
    .parameter "trCur"

    .prologue
    const/4 v6, 0x0

    .line 1838
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1858
    :cond_0
    :goto_0
    return-object v6

    .line 1841
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1844
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v3, v6

    .line 1845
    .local v3, fdw:F
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v2, v6

    .line 1851
    .local v2, fdh:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v0, v6

    .line 1852
    .local v0, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v1, v6

    .line 1856
    .local v1, dy:F
    div-float v4, v0, v3

    .line 1857
    .local v4, relDx:F
    div-float v5, v1, v2

    .line 1858
    .local v5, relDy:F
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method private setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "image"
    .parameter "id"
    .parameter "leftEye"
    .parameter "rightEye"
    .parameter "mouth"
    .parameter "nose"

    .prologue
    const/4 v2, 0x0

    .line 358
    invoke-direct {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 359
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 360
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_1

    .line 361
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$13(Lcom/scalado/app/rewind/RectTracker$TrackedRect;[Landroid/graphics/Rect;)V

    .line 363
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    aput-object v1, v3, v4

    .line 364
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_2
    aput-object v2, v1, v3

    .line 366
    :cond_3
    return-void

    :cond_4
    move-object v1, v2

    .line 363
    goto :goto_0
.end method

.method public static setLogging(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 211
    sput-boolean p0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    .line 212
    return-void
.end method

.method private translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 5
    .parameter "i0"
    .parameter "i1"
    .parameter "id"

    .prologue
    .line 1566
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1569
    .local v2, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    invoke-direct {p0, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1570
    .local v0, r0:Landroid/graphics/Rect;
    invoke-direct {p0, p3, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1571
    .local v1, r1:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v3, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1572
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    sub-float/2addr v3, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1573
    return-object v2
.end method

.method private updateMapForRect(Ljava/util/HashMap;ILcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 7
    .parameter
    .parameter "imageIndex"
    .parameter "rect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1661
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1662
    .local v4, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1663
    .local v3, rectIndex:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {p3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    .line 1664
    .local v0, id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1665
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v1, v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1666
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_1

    .line 1669
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    .end local v1           #indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v2           #k:I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    aput-object v6, v5, p2

    .line 1673
    return-void

    .line 1667
    .restart local v1       #indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v2       #k:I
    :cond_1
    const/4 v5, 0x0

    aput-object v5, v1, v2

    .line 1666
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateMinMatches()V
    .locals 3

    .prologue
    .line 2837
    const v1, 0x7fffffff

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    .line 2838
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2841
    return-void

    .line 2839
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    .line 2838
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public analyze()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 384
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->calculateStatistics()V

    .line 385
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->estimateDeltas()V

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# ids = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 387
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    if-nez v1, :cond_0

    .line 388
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    if-eqz v1, :cond_3

    .line 389
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->connectAllImages()V

    .line 390
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 411
    .end local v0           #i:I
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    if-eqz v1, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->alignRectSizes()V

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->logTranslations()V

    .line 418
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->isComplete(Ljava/util/HashMap;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 419
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v2, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    iput-boolean v2, v1, Lcom/scalado/app/rewind/RectTracker$State;->isComplete:Z

    .line 420
    return-void

    .line 391
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 392
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 394
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->guessRects(I)V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    goto :goto_1
.end method

.method public analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 277
    :goto_0
    return-object v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RectTracker;->analyze()V

    .line 265
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    goto :goto_0

    .line 268
    :cond_1
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->analyze2()V

    .line 269
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->enlargeRectangles(FF)V

    .line 270
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->rankImages()I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 271
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->calculateOptimalImages2()V

    .line 272
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->optimizeSelection()V

    .line 273
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->recycleFaceDetection()V

    .line 274
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onAnalyzeComplete()V

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    goto :goto_0
.end method

.method public canReplace()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deltaForRectX(III)I
    .locals 2
    .parameter "id"
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 923
    invoke-direct {p0, p2, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 924
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaForRectY(III)I
    .locals 2
    .parameter "id"
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 935
    invoke-direct {p0, p2, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 936
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaX(II)I
    .locals 2
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/app/rewind/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 900
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaY(II)I
    .locals 2
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/app/rewind/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 912
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public getBestImage(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 631
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 632
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    return v1
.end method

.method public getBestImage(II)I
    .locals 4
    .parameter "id"
    .parameter "n"

    .prologue
    .line 636
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 637
    .local v0, ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p2

    aget-object v1, v0, v2

    .line 638
    .local v1, ri:Lcom/scalado/app/rewind/RectTracker$RankedId;
    iget-boolean v2, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mKnownRect:Z

    if-eqz v2, :cond_0

    .line 639
    iget v2, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    .line 641
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getBestStartImage()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    return v0
.end method

.method public getEnlargedRect(II)Landroid/graphics/Rect;
    .locals 7
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 792
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 793
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v1, :cond_0

    aget-object v5, v1, p1

    if-nez v5, :cond_2

    :cond_0
    move-object v3, v4

    .line 810
    :cond_1
    :goto_0
    return-object v3

    .line 796
    :cond_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 797
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 798
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v3, v4

    .line 799
    goto :goto_0

    .line 801
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 802
    .local v3, r:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 803
    .local v2, lockedFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    aget-object v6, v6, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v3, v4

    .line 804
    goto :goto_0

    .line 806
    :cond_4
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    aget-object v6, v6, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 810
    .end local v2           #lockedFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_5
    aget-object v4, v1, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_0
.end method

.method public getError()Z
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    return v0
.end method

.method public getId(II)I
    .locals 1
    .parameter "imageIndex"
    .parameter "rectIndex"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    return v0
.end method

.method public getIds()[I
    .locals 3

    .prologue
    .line 723
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 725
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 726
    .local v1, ids:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 731
    .end local v0           #i:I
    .end local v1           #ids:[I
    :goto_1
    return-object v1

    .line 727
    .restart local v0       #i:I
    .restart local v1       #ids:[I
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v2

    aput v2, v1, v0

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    .end local v0           #i:I
    .end local v1           #ids:[I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getListener()Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    return-object v0
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 845
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 846
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 858
    return-object v3

    .line 846
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 847
    .local v1, id:I
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v2, v5, [I

    .line 848
    .local v2, indexes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v2

    if-lt v0, v5, :cond_1

    .line 856
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 849
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 850
    .local v4, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v4, :cond_2

    .line 851
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aput v5, v2, v0

    .line 848
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 853
    :cond_2
    const/4 v5, -0x1

    aput v5, v2, v0

    goto :goto_2
.end method

.method public getMaxScoreImage()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    return v0
.end method

.method public getOriginalEnlargedRectangle(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 815
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 816
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 817
    :cond_0
    const/4 v1, 0x0

    .line 819
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$18(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getRect(II)Landroid/graphics/Rect;
    .locals 2
    .parameter "imageIndex"
    .parameter "rectIndex"

    .prologue
    .line 744
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 745
    .local v0, r:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getRectById(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 759
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 760
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 761
    :cond_0
    const/4 v1, 0x0

    .line 763
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getRectInImage(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 11
    .parameter "rect"
    .parameter "srcImage"
    .parameter "dstImage"

    .prologue
    .line 863
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v9, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 864
    .local v5, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v4, 0x0

    .line 865
    .local v4, srcFace:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v3, 0x0

    .line 866
    .local v3, retRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 867
    .local v7, x:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 868
    .local v8, y:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 874
    :goto_0
    if-eqz v4, :cond_3

    .line 875
    if-ne p2, p3, :cond_2

    .line 876
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 888
    :goto_1
    return-object v9

    .line 868
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 869
    .local v6, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    if-eqz v10, :cond_0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 870
    move-object v4, v6

    .line 871
    goto :goto_0

    .line 878
    .end local v6           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v9

    invoke-direct {p0, v9, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 879
    .local v0, dstFace:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #retRect:Landroid/graphics/Rect;
    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 880
    .restart local v3       #retRect:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    .line 881
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    .line 880
    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 882
    .local v1, dx:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    .line 883
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    .line 882
    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 884
    .local v2, dy:I
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .end local v0           #dstFace:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v1           #dx:I
    .end local v2           #dy:I
    :cond_3
    move-object v9, v3

    .line 888
    goto :goto_1
.end method

.method public getRelativeAbsTranslation(III)F
    .locals 9
    .parameter "id"
    .parameter "img0"
    .parameter "img1"

    .prologue
    .line 674
    invoke-virtual {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v3

    .line 675
    .local v3, r0:Landroid/graphics/Rect;
    invoke-virtual {p0, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 676
    .local v4, r1:Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 679
    :cond_0
    const/4 v0, 0x0

    .line 687
    :goto_0
    return v0

    .line 681
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    sub-float v1, v5, v6

    .line 682
    .local v1, dx:F
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    sub-float v2, v5, v6

    .line 683
    .local v2, dy:F
    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 684
    .local v0, d:F
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v1, v5

    .line 685
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 686
    float-to-double v5, v0

    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-float v0, v5

    .line 687
    goto :goto_0
.end method

.method public getScore(II)F
    .locals 2
    .parameter "id"
    .parameter "image"

    .prologue
    .line 659
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 660
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    .line 662
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    int-to-float v1, v1

    .line 664
    :goto_0
    return v1

    :cond_0
    const/high16 v1, -0x80

    goto :goto_0
.end method

.method public getSelectedBg(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 646
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    return v0
.end method

.method public getSelectedFg(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 650
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 651
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    if-nez v0, :cond_0

    .line 652
    const/4 v1, -0x1

    .line 654
    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mSelectedImageIndex:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$11(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v1

    goto :goto_0
.end method

.method public getSessionRectById(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 767
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 768
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 769
    :cond_0
    const/4 v1, 0x0

    .line 771
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$22(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/scalado/app/rewind/RectTracker$State;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    return-object v0
.end method

.method public hasNeighbours(II)Z
    .locals 2
    .parameter "id"
    .parameter "image"

    .prologue
    .line 669
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 670
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$21(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$21(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    return v0
.end method

.method public logDump(Z)V
    .locals 13
    .parameter "smileBlink"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 956
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 978
    const-string v4, "Face detection dims: %dx%d"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 979
    return-void

    .line 957
    :cond_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 958
    .local v2, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 960
    .local v3, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_2

    .line 958
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 963
    :cond_2
    if-nez p1, :cond_3

    .line 964
    const-string v4, "[%d, %d] id=%d, rect=%s"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 965
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 964
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 972
    :cond_3
    const-string v4, "[%d, %d] id=%d, rect=%s, smile=%d, blink=%d, score=%d"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 973
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$24(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x5

    .line 974
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$25(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 971
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public numImages()I
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public numRects()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    return v0
.end method

.method public numRects(I)I
    .locals 1
    .parameter "imageIndex"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 945
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 948
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->recycleFaceDetection()V

    .line 949
    return-void

    .line 945
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 946
    .local v0, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v2, 0x0

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)V

    goto :goto_0
.end method

.method public setFaceDectionExtern(Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;)V
    .locals 0
    .parameter "FDE"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    .line 231
    return-void
.end method

.method public setFaceDetectionDims(Lcom/scalado/base/Size;)V
    .locals 5
    .parameter "dims"

    .prologue
    const/high16 v4, 0x40e0

    const/high16 v3, 0x3f80

    .line 241
    new-instance v0, Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 242
    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    const/high16 v1, 0x444c

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    .line 243
    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    const/high16 v1, 0x4419

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    .line 244
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    .line 245
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    .line 246
    return-void
.end method

.method public setListener(Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    .line 282
    return-void
.end method

.method public setMaxTranslation(F)V
    .locals 0
    .parameter "maxValue"

    .prologue
    .line 285
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    .line 286
    return-void
.end method

.method public setRectScaling(FF)V
    .locals 0
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 223
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 224
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 225
    return-void
.end method

.method public setSmileBlink(IIII)V
    .locals 1
    .parameter "image"
    .parameter "id"
    .parameter "smile"
    .parameter "blink"

    .prologue
    .line 376
    invoke-direct {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 377
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->setSmileBlink(II)V
    invoke-static {v0, p3, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$14(Lcom/scalado/app/rewind/RectTracker$TrackedRect;II)V

    .line 378
    return-void
.end method

.method public trackImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V
    .locals 1
    .parameter "image"
    .parameter "image2"
    .parameter "index"

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker;->applyViewfinderTracker(Lcom/scalado/base/Image;)V

    .line 252
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/RectTracker;->privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V

    .line 253
    return-void
.end method

.method public wasFound(II)Z
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 775
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 776
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 777
    :cond_0
    const/4 v1, 0x0

    .line 779
    :goto_0
    return v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$23(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v1

    goto :goto_0
.end method
