.class public Lcom/htc/music/widget/MiniPlayer2LineText;
.super Landroid/widget/LinearLayout;
.source "MiniPlayer2LineText.java"


# instance fields
.field private mTextView:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/htc/music/widget/MiniPlayer2LineText;->init(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/htc/music/widget/MiniPlayer2LineText;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0, p1}, Lcom/htc/music/widget/MiniPlayer2LineText;->init(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 28
    invoke-virtual {p0, v5}, Lcom/htc/music/widget/MiniPlayer2LineText;->setOrientation(I)V

    .line 29
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MiniPlayer2LineText;->setGravity(I)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 33
    .local v0, m2:I
    invoke-virtual {p0, v0, v6, v0, v6}, Lcom/htc/music/widget/MiniPlayer2LineText;->setPadding(IIII)V

    .line 35
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    .line 36
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v6

    .line 37
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v5

    .line 39
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 40
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 42
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    const v4, 0x2030052

    invoke-virtual {v3, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 43
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    const v4, 0x2030057

    invoke-virtual {v3, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 46
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    .line 47
    .local v1, primaryColor:I
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    .line 48
    .local v2, secondaryColor:I
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 52
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 54
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/widget/MiniPlayer2LineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v3, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/widget/MiniPlayer2LineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    return-void
.end method


# virtual methods
.method public setPrimaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public setPrimaryTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public setSecondaryTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MiniPlayer2LineText;->mTextView:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    return-void
.end method
