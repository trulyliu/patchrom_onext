.class public Lcom/htc/music/lyrics/Lyrics;
.super Ljava/lang/Object;
.source "Lyrics.java"


# static fields
.field static final LAST_SENTENCE_TIME:I = 0x3e8

.field public static final LYRICTYPE_LRC:I = 0x0

.field public static final LYRICTYPE_STR:I = 0x1


# instance fields
.field private mContent:Ljava/lang/String;

.field private mCurrentPos:J

.field private mCurrentSongId:I

.field private mLengthArray:[I

.field private mLyricType:I

.field private mLyricsArray:[Ljava/lang/String;

.field private mLyricsVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Ljava/lang/String;

.field private mPoss:Ljava/lang/Integer;

.field private mTimeArray:[Ljava/lang/Integer;

.field private mTimeVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v2, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    .line 12
    iput-object v2, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    .line 13
    iput-object v2, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsVector:Ljava/util/Vector;

    .line 14
    iput-object v2, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeVector:Ljava/util/Vector;

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mPoss:Ljava/lang/Integer;

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/lyrics/Lyrics;->mCurrentPos:J

    .line 27
    iput-object v2, p0, Lcom/htc/music/lyrics/Lyrics;->mContent:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/htc/music/lyrics/Lyrics;->mLengthArray:[I

    return-void
.end method

.method private generateLengthArray()V
    .locals 6

    .prologue
    .line 132
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 147
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    array-length v0, v3

    .line 137
    .local v0, arrayLength:I
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mLengthArray:[I

    .line 138
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 139
    if-nez v1, :cond_1

    .line 140
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mLengthArray:[I

    iget-object v4, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aput v4, v3, v1

    .line 144
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_1
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mLengthArray:[I

    iget-object v4, p0, Lcom/htc/music/lyrics/Lyrics;->mLengthArray:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v1

    goto :goto_2

    .line 146
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mContent:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public GetLyricCount()I
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    array-length v0, v1

    .line 289
    .local v0, nCount:I
    :goto_0
    return v0

    .line 287
    .end local v0           #nCount:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #nCount:I
    goto :goto_0
.end method

.method public endIndexOf(I)I
    .locals 4
    .parameter "line"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, index:I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mLengthArray:[I

    aget v0, v1, p1

    .line 157
    :goto_0
    const-string v1, "Lyrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "line is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return v0

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPos()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/htc/music/lyrics/Lyrics;->mCurrentPos:J

    return-wide v0
.end method

.method public getCurrentSongId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/music/lyrics/Lyrics;->mCurrentSongId:I

    return v0
.end method

.method public getIndexByTime(J)I
    .locals 8
    .parameter "lPos"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 211
    iget v6, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 215
    :cond_1
    const/4 v3, 0x0

    .line 216
    .local v3, nIndex:I
    iget-object v4, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    .line 218
    .local v4, timeArray:[Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 221
    array-length v0, v4

    .line 222
    .local v0, arrayLen:I
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, p1, v6

    if-gez v6, :cond_2

    move v2, v5

    .line 223
    goto :goto_0

    .line 226
    :cond_2
    add-int/lit8 v5, v0, -0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_3

    .line 227
    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    .line 230
    :cond_3
    const/4 v2, 0x0

    .line 231
    .local v2, i:I
    add-int/lit8 v1, v0, -0x1

    .line 232
    .local v1, bound:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 233
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_0

    .line 232
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v3

    .line 237
    goto :goto_0
.end method

.method public getLyric(J)Ljava/lang/String;
    .locals 6
    .parameter "lPos"

    .prologue
    const/4 v5, 0x0

    .line 182
    const-string v1, ""

    .line 183
    .local v1, strRet:Ljava/lang/String;
    const/4 v0, 0x0

    .line 185
    .local v0, nIndex:I
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    aget-object v1, v3, v5

    move-object v2, v1

    .line 207
    .end local v1           #strRet:Ljava/lang/String;
    .local v2, strRet:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 191
    .end local v2           #strRet:Ljava/lang/String;
    .restart local v1       #strRet:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 192
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    aget-object v1, v3, v0

    move-object v2, v1

    .line 194
    .end local v1           #strRet:Ljava/lang/String;
    .restart local v2       #strRet:Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v2           #strRet:Ljava/lang/String;
    .restart local v1       #strRet:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_2
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_4

    .line 201
    iget-object v3, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    aget-object v1, v3, v0

    :cond_3
    :goto_2
    move-object v2, v1

    .line 207
    .end local v1           #strRet:Ljava/lang/String;
    .restart local v2       #strRet:Ljava/lang/String;
    goto :goto_0

    .line 203
    .end local v2           #strRet:Ljava/lang/String;
    .restart local v1       #strRet:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getLyricByIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 241
    const-string v0, ""

    .line 243
    .local v0, strRet:Ljava/lang/String;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 249
    :goto_0
    return-object v0

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLyricStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricType:I

    return v0
.end method

.method public getLyricsArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLyricsBetween(II)[Ljava/lang/String;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 253
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/lyrics/Lyrics;->getLyricsMaxLine()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 254
    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 258
    .local v0, retLyrics:[Ljava/lang/String;
    goto :goto_0
.end method

.method public getLyricsMaxLine()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getLyricsVector()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsVector:Ljava/util/Vector;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPoss()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mPoss:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPossValue()I
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mPoss:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mPoss:Ljava/lang/Integer;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mPoss:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTimeArray()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimeByIndex(I)I
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 269
    iget v1, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 270
    const/4 v0, -0x1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    const/4 v0, -0x1

    .line 273
    .local v0, lTime:I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getTimeVector()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeVector:Ljava/util/Vector;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mPoss:Ljava/lang/Integer;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsVector:Ljava/util/Vector;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeVector:Ljava/util/Vector;

    .line 34
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 35
    iget-object v0, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 36
    return-void
.end method

.method public setCurrentPos(J)V
    .locals 0
    .parameter "mCurrentPos"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/htc/music/lyrics/Lyrics;->mCurrentPos:J

    .line 93
    return-void
.end method

.method public setCurrentSongId(I)V
    .locals 0
    .parameter "currentSongId"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/music/lyrics/Lyrics;->mCurrentSongId:I

    .line 44
    return-void
.end method

.method public setLyricStr(Ljava/lang/String;)V
    .locals 0
    .parameter "lyricStr"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/music/lyrics/Lyrics;->mContent:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setLyricType(I)V
    .locals 0
    .parameter "mLyricType"

    .prologue
    .line 119
    iput p1, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricType:I

    .line 120
    return-void
.end method

.method public setLyricsArray([Ljava/lang/String;)V
    .locals 0
    .parameter "lyricsArray"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/htc/music/lyrics/Lyrics;->generateLengthArray()V

    .line 61
    return-void
.end method

.method public setLyricsVector(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, lyricsVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsVector:Ljava/util/Vector;

    .line 69
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/music/lyrics/Lyrics;->mPath:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPoss(Ljava/lang/Integer;)V
    .locals 0
    .parameter "poss"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/music/lyrics/Lyrics;->mPoss:Ljava/lang/Integer;

    .line 85
    return-void
.end method

.method public setTimeArray([Ljava/lang/Integer;)V
    .locals 0
    .parameter "timeArray"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeArray:[Ljava/lang/Integer;

    .line 52
    return-void
.end method

.method public setTimeVector(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, timeVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/htc/music/lyrics/Lyrics;->mTimeVector:Ljava/util/Vector;

    .line 77
    return-void
.end method

.method public startIndexOf(I)I
    .locals 4
    .parameter "line"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, index:I
    if-nez p1, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 173
    :goto_0
    const-string v1, "Lyrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "line is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return v0

    .line 167
    :cond_0
    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mLyricsArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/htc/music/lyrics/Lyrics;->mLengthArray:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v1, v2

    goto :goto_0

    .line 171
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method
