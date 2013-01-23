.class public Lcom/scalado/base/Iterator$CommonIterator;
.super Lcom/scalado/jni/JniPeer;
.source "Iterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/base/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CommonIterator"
.end annotation


# instance fields
.field private mIsDone:Z

.field private mIterationCount:I

.field private mTotalIterations:I

.field final synthetic this$0:Lcom/scalado/base/Iterator;


# direct methods
.method public constructor <init>(Lcom/scalado/base/Iterator;Lcom/scalado/base/Iterator;)V
    .locals 2
    .parameter
    .parameter "iterator"

    .prologue
    const/4 v1, -0x1

    .line 109
    iput-object p1, p0, Lcom/scalado/base/Iterator$CommonIterator;->this$0:Lcom/scalado/base/Iterator;

    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    .line 106
    iput v1, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIterationCount:I

    .line 107
    iput v1, p0, Lcom/scalado/base/Iterator$CommonIterator;->mTotalIterations:I

    .line 110
    invoke-direct {p0, p2}, Lcom/scalado/base/Iterator$CommonIterator;->nativeCreate(Lcom/scalado/base/Iterator;)V

    .line 111
    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeGetTotalIterations()V

    .line 112
    return-void
.end method

.method private native nativeAbort()V
.end method

.method private native nativeBeginRender(Lcom/scalado/base/Image;Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeCreate(Lcom/scalado/base/Iterator;)V
.end method

.method private native nativeGetIterationCount()V
.end method

.method private native nativeGetTotalIterations()V
.end method

.method private native nativeStep()V
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeAbort()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    .line 150
    :cond_0
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    return v0
.end method

.method public step()F
    .locals 4

    .prologue
    const/high16 v1, 0x3f80

    .line 121
    iget-boolean v2, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    if-eqz v2, :cond_0

    .line 122
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeStep()V

    .line 126
    iget-boolean v2, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 142
    :cond_1
    :goto_0
    return v0

    .line 130
    :cond_2
    iget v2, p0, Lcom/scalado/base/Iterator$CommonIterator;->mTotalIterations:I

    if-gtz v2, :cond_3

    move v0, v1

    .line 131
    goto :goto_0

    .line 134
    :cond_3
    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeGetIterationCount()V

    .line 135
    iget v2, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIterationCount:I

    int-to-float v2, v2

    iget v3, p0, Lcom/scalado/base/Iterator$CommonIterator;->mTotalIterations:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 138
    .local v0, progress:F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    move v0, v1

    .line 139
    goto :goto_0
.end method
