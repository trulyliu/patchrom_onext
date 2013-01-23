.class Lcom/scalado/app/rewind/RectTracker$RankedId;
.super Ljava/lang/Object;
.source "RectTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankedId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final GOOD_ENOUGH_SMILE_DIFF_MAX:I = 0x5


# instance fields
.field mImageIndex:I

.field mKnownRect:Z

.field mScore:F

.field mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 1
    .parameter
    .parameter "imageIndex"
    .parameter "id"
    .parameter "score"
    .parameter "trackedRect"

    .prologue
    .line 2042
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2043
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    .line 2044
    iput p4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mScore:F

    .line 2045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mKnownRect:Z

    .line 2046
    iput-object p5, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2047
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$RankedId;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2042
    invoke-direct/range {p0 .. p5}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method

.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V
    .locals 1
    .parameter
    .parameter "imageIndex"
    .parameter "id"
    .parameter "score"
    .parameter "trackedRect"
    .parameter "knownRect"

    .prologue
    .line 2049
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    .line 2051
    iput p4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mScore:F

    .line 2052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mKnownRect:Z

    .line 2053
    iput-object p5, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2054
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$RankedId;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2049
    invoke-direct/range {p0 .. p6}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 1
    .parameter

    .prologue
    .line 2181
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2158
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->isGoodEnoughEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2150
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->isExactlyEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v0

    return v0
.end method

.method private compareByBlink(Lcom/scalado/app/rewind/RectTracker$RankedId;)I
    .locals 7
    .parameter "them"

    .prologue
    const/16 v6, 0x5a

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 2093
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    .line 2094
    .local v0, myBlink:I
    iget-object v5, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    .line 2096
    .local v1, theirBlink:I
    if-ne v0, v4, :cond_1

    if-ne v1, v4, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return v2

    .line 2098
    :cond_1
    if-ne v0, v4, :cond_2

    move v2, v3

    .line 2099
    goto :goto_0

    .line 2100
    :cond_2
    if-ne v1, v4, :cond_3

    move v2, v4

    .line 2101
    goto :goto_0

    .line 2104
    :cond_3
    if-lt v0, v6, :cond_4

    if-ge v1, v6, :cond_0

    .line 2106
    :cond_4
    if-lt v0, v6, :cond_5

    move v2, v4

    .line 2107
    goto :goto_0

    .line 2108
    :cond_5
    if-lt v1, v6, :cond_6

    move v2, v3

    .line 2109
    goto :goto_0

    .line 2113
    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_0

    .line 2115
    :cond_7
    if-nez v0, :cond_8

    move v2, v4

    .line 2116
    goto :goto_0

    .line 2117
    :cond_8
    if-nez v1, :cond_9

    move v2, v3

    .line 2118
    goto :goto_0

    .line 2122
    :cond_9
    sub-int v5, v0, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    .line 2127
    if-ge v0, v1, :cond_a

    move v2, v3

    .line 2128
    goto :goto_0

    .line 2129
    :cond_a
    if-eq v0, v1, :cond_0

    move v2, v4

    .line 2132
    goto :goto_0
.end method

.method private compareBySmile(Lcom/scalado/app/rewind/RectTracker$RankedId;)I
    .locals 3
    .parameter "them"

    .prologue
    .line 2137
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    .line 2138
    .local v0, mySmile:I
    iget-object v2, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    .line 2141
    .local v1, theirSmile:I
    if-ge v0, v1, :cond_0

    .line 2142
    const/4 v2, -0x1

    .line 2146
    :goto_0
    return v2

    .line 2143
    :cond_0
    if-ne v0, v1, :cond_1

    .line 2144
    const/4 v2, 0x0

    goto :goto_0

    .line 2146
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private goodEnoughBlink()Z
    .locals 2

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private goodEnoughSmile()Z
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNoRealibleInfo()Z
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isExactlyEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 3
    .parameter "them"

    .prologue
    const/4 v0, 0x1

    .line 2151
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2155
    :cond_0
    :goto_0
    return v0

    .line 2154
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    iget-object v2, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2155
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    iget-object v2, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    .line 2154
    goto :goto_0
.end method

.method private isGoodEnoughEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 4
    .parameter "them"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2159
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2169
    :cond_0
    :goto_0
    return v0

    .line 2162
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    iget-object v3, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2163
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    iget-object v3, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2166
    :cond_2
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughBlink()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughBlink()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughSmile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughSmile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2167
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    iget-object v3, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2169
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 2057
    move-object v1, p1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 2060
    .local v1, them:Lcom/scalado/app/rewind/RectTracker$RankedId;
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v4, :cond_1

    .line 2089
    :cond_0
    :goto_0
    return v0

    .line 2062
    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v4, :cond_2

    move v0, v2

    .line 2063
    goto :goto_0

    .line 2064
    :cond_2
    iget-object v4, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v4, :cond_3

    move v0, v3

    .line 2065
    goto :goto_0

    .line 2067
    :cond_3
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2069
    :cond_4
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    .line 2070
    goto :goto_0

    .line 2071
    :cond_5
    iget-object v4, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_6

    move v0, v3

    .line 2072
    goto :goto_0

    .line 2076
    :cond_6
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2078
    :cond_7
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v2

    .line 2079
    goto :goto_0

    .line 2080
    :cond_8
    iget-object v2, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v3

    .line 2081
    goto :goto_0

    .line 2084
    :cond_9
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->compareByBlink(Lcom/scalado/app/rewind/RectTracker$RankedId;)I

    move-result v0

    .line 2085
    .local v0, blinkRes:I
    if-nez v0, :cond_0

    .line 2089
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->compareBySmile(Lcom/scalado/app/rewind/RectTracker$RankedId;)I

    move-result v0

    goto :goto_0
.end method
